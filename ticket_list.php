<?php include 'db_connect.php' ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.16.2/xlsx.full.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.14/jspdf.plugin.autotable.min.js"></script>

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Lista de Tickets</h1>
            </div><!-- /.col -->

        </div><!-- /.row -->
        <hr class="border-primary">
    </div><!-- /.container-fluid -->
</div>
<div class="col-lg-12">
	<div class="card card-outline card-info">
	<div class="card-header">
		<a href="./index.php?page=new_ticket" class="btn btn-primary"><i class="fa fa-plus"></i> Agregar Nuevo</a>
	
	
	
	
	
	

	
	
		<!-- ---------------------------------- -->
		<button id="exportBtn" class="btn btn-success"><i class="fa fa-file-excel"></i> Descargar Excel</button>

<script>
document.getElementById('exportBtn').addEventListener('click', function() {
    // Obtener los datos de la tabla
    var table = document.getElementById('list');
    var data = [];
    
    // Recorremos cada fila de la tabla y obtenemos las celdas
    for (var i = 0, row; row = table.rows[i]; i++) {
        var rowData = [];
        for (var j = 0, col; col = row.cells[j]; j++) {
            rowData.push(col.innerText);
        }
        data.push(rowData);
    }

    // Convertir los datos a una hoja de cálculo
    var wb = XLSX.utils.book_new();  // Crear un nuevo libro
    var ws = XLSX.utils.aoa_to_sheet(data);  // Convertir array a hoja de cálculo
    XLSX.utils.book_append_sheet(wb, ws, "Tickets");  // Añadir la hoja al libro

    // Exportar el archivo Excel
    XLSX.writeFile(wb, "tickets_export.xlsx");
});
</script>
<!-- ---------------------------------- -->





<button id="exportPdfBtn" class="btn btn-danger"><i class="fa fa-file-pdf"></i> Descargar PDF</button>

<script>
document.getElementById('exportPdfBtn').addEventListener('click', function() {
    // Crear un nuevo documento PDF
    const { jsPDF } = window.jspdf;
    const doc = new jsPDF();

    // Obtener los datos de la tabla
    var table = document.getElementById('list');
    var data = [];
    
    // Recorremos cada fila de la tabla y obtenemos las celdas
    for (var i = 0, row; row = table.rows[i]; i++) {
        var rowData = [];
        for (var j = 0, col; col = row.cells[j]; j++) {
            rowData.push(col.innerText);
        }
        data.push(rowData);
    }

    // Configuración de autoTable
    doc.autoTable({
        head: [data[0]],  // Usar la primera fila como los encabezados
        body: data.slice(1),  // Resto de las filas como cuerpo
    });

    // Descargar el archivo PDF
    doc.save('tickets_export.pdf');
});
</script>

<!-- ---------------------------------- -->














	</div>
		<div class="card-body">
			<table class="table table-hover table-bordered" id="list">
				<colgroup>
					<col width="3%">
					<col width="10%">
					<col width="13%">
					<col width="13%">
					<col width="10%">
					<col width="15%">
					<col width="7%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>Fecha Creación</th>
						<th>Ticket</th>
						<th>Oficina</th>
						<th>Problema</th>
						<th>Descripcion</th>
						<th>CodPatrimonio</th>
						<th>Personal</th>
						<th>Estado</th>
						<th>Acción</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$where = '';
					if ($_SESSION['login_type'] == 2)
						$where .= " where t.department_id = {$_SESSION['login_department_id']} ";
					if ($_SESSION['login_type'] == 3)
						$where .= " where t.customer_id = {$_SESSION['login_id']} ";
					$qry = $conn->query("SELECT t.*,d.name as personal,t.codigop,o.nombre_ofi  as noficina,p.nombre_prob as problema,concat(c.lastname,', ',c.firstname,' ',c.middlename) as cname FROM tickets t inner join customers c on c.id= t.customer_id inner join oficina o on o.oficina_id= t.oficina_id inner join problema p on p.problema_id= t.problema_id inner join departments d on d.id= t.department_id    $where order by unix_timestamp(t.date_created) desc");
					while ($row = $qry->fetch_assoc()) :
						$trans = get_html_translation_table(HTML_ENTITIES, ENT_QUOTES);
						unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
						$desc = strtr(html_entity_decode($row['description']), $trans);
						$desc = str_replace(array("<li>", "</li>"), array("", ", "), $desc);
					?>
						<tr>
							<th class="text-center"><?php echo $i++ ?></th>
							<td><b><?php echo date("M d, Y", strtotime($row['date_created'])) ?></b></td>
							<td><b><?php echo ucwords($row['cname']) ?></b></td>
							<td><b><?php echo $row['noficina'] ?></b></td>
							<td><b><?php echo $row['problema'] ?></b></td>
							<td><b class="truncate"><?php echo strip_tags($desc) ?></b></td>
							<td><b><?php echo $row['codigop'] ?></b></td>
							<td><b><?php echo $row['personal'] ?></b></td>
							<td>
								<?php if ($row['status'] == 0) : ?>
									<span class="badge badge-primary">Abierto/Pendiente</span>
								<?php elseif ($row['status'] == 1) : ?>
									<span class="badge badge-Info">En Proceso</span>
								<?php elseif ($row['status'] == 2) : ?>
									<span class="badge badge-success">Finalizado</span>
								<?php else : ?>
									<span class="badge badge-secondary">Cerrado</span>
								<?php endif; ?>
							</td>
							<td class="text-center">
								<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
									Acción
								</button>
								<div class="dropdown-menu" style="">
									<a class="dropdown-item view_ticket" href="./index.php?page=view_ticket&id=<?php echo $row['id'] ?>" data-id="<?php echo $row['id'] ?>">Ver</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="./index.php?page=edit_ticket&id=<?php echo $row['id'] ?>">Editar</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item delete_ticket" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Eliminar</a>
								</div>
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		// $('#list').dataTable()
		$('#list').dataTable({
        "lengthMenu": [[10, 25, 50, 75, 100, -1], [10, 25, 50, 75, 100, "Todos"]],  // Añadimos la opción "Todos"
        "pageLength": 75  // Mostrar todas las filas por defecto
    });

		$('.delete_ticket').click(function() {
			_conf("Deseas eliminar este ticket?", "delete_ticket", [$(this).attr('data-id')])
		})
	})

	function delete_ticket($id) {
		start_load()
		$.ajax({
			url: 'ajax.php?action=delete_ticket',
			method: 'POST',
			data: {
				id: $id
			},
			success: function(resp) {
				if (resp == 1) {
					alert_toast("Datos eliminados correctamente", 'success')
					setTimeout(function() {
						location.reload()
					}, 1500)

				}
			}
		})
	}
</script>