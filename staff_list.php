<?php include 'db_connect.php' ?>
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Lista de Usuarios</h1>
            </div><!-- /.col -->

        </div><!-- /.row -->
        <hr class="border-primary">
    </div><!-- /.container-fluid -->
</div>
<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <a href="./index.php?page=new_staff" class="btn btn-primary"><i class="fa fa-plus"></i> Agregar Nuevo</a>
        </div>
        <div class="card-body">
            <table class="table tabe-hover table-bordered" id="list">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Especialista</th>
                        <th>DNI</th>
                        <th>Dirección</th>
                        <th>Correo</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
					$i = 1;
					$qry = $conn->query("SELECT staff.*, 
                    CONCAT(lastname, ', ', firstname, ' ', middlename) AS name,
                    departments.name AS departamento
             FROM staff 
             JOIN departments ON staff.department_id = departments.id
             ORDER BY CONCAT(lastname, ', ', firstname, ' ', middlename) ASC
             ");
					while ($row = $qry->fetch_assoc()) :
                        
					?>
                    <tr>
                        <th class="text-center"><?php echo $i++ ?></th>
                        <td><b><?php echo ucwords($row['name']) ?></b></td>
                        <td><b><?php echo $row['departamento'] ?></b></td>
                        <td><b><?php echo $row['contact'] ?></b></td>
                        <td><b><?php echo $row['address'] ?></b></td>
                        <td><b><?php echo $row['email'] ?></b></td>
                        <td class="text-center">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown"
                                aria-expanded="true">
                                Acción
                            </button>
                            <div class="dropdown-menu" style="">
                                <a class="dropdown-item"
                                    href="./index.php?page=edit_staff&id=<?php echo $row['id'] ?>">Editar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item delete_staff" href="javascript:void(0)"
                                    data-id="<?php echo $row['id'] ?>">Eliminar</a>
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
    $('#list').dataTable()
    $('.delete_staff').click(function() {
        _conf("Deseas eliminar este empleado?", "delete_staff", [$(this).attr('data-id')])
    })
})

function delete_staff($id) {
    start_load()
    $.ajax({
        url: 'ajax.php?action=delete_staff',
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