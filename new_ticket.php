<?php
if (!isset($conn)) {
	include 'db_connect.php';
}
?>
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Ticket</h1>
            </div><!-- /.col -->

        </div><!-- /.row -->
        <hr class="border-primary">
    </div><!-- /.container-fluid -->
</div>
<div class="col-lg-12">
	<div class="card">
		<div class="card-body">
			<form action="" id="manage_ticket">
				<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
				<div class="col-md-6">
						<!-- /.primer script editado GSP --> 
						<div class="form-group">
							<label for="" class="control-label">Oficina</label>
							<select name="oficina_id" id="oficina_id" class="custom-select custom-select-sm select2">
								<?php
								$proble = $conn->query("SELECT * FROM oficina");
								while ($row = $proble->fetch_assoc()) :
								?>
									<option value="<?php echo $row['oficina_id'] ?>" 
									<?php echo isset($problema_id) && $oficina_id == $row['oficina_id'] ? "selected" : '' ?>>
									<?php echo ucwords($row['nombre_ofi']) ?>
									</option>
								<?php endwhile; ?>
							</select>
						</div> 
						<!-- /.fin primer script editado GSP --> 
					<?php if ($_SESSION['login_type'] != 3) : ?>
						<div class="form-group">
							<label for="" class="control-label">Nombre del Trabajador</label>
							<select name="customer_id" id="customer_id" class="custom-select custom-select-sm select2">
								<option value=""></option>
								<?php
								$department = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM customers order by concat(lastname,', ',firstname,' ',middlename) asc");
								while ($row = $department->fetch_assoc()) :
								?>
									<option value="<?php echo $row['id'] ?>" <?php echo isset($customer_id) && $customer_id == $row['id'] ? "selected" : '' ?>><?php echo ucwords($row['name']) ?></option>
								<?php endwhile; ?>
							</select>
						</div>
						<!-- /.segundo script nuevo GSP -->
						<div class="form-group">
						<label for="" class="control-label">Codigo Patrimonial</label>
						<input type="text" name="codigop" class="form-control form-control-sm" required value="<?php echo isset($codigop) ? $codigop : '' ?>">
					</div>
							<!-- /.script roles de campos para trabajadores, especialistas -->
					<?php endif; ?>
						<!-- /.tercer script -->            
 						<div class="form-group">
							<label for="" class="control-label">Problema</label>
							<select name="problema_id" id="problema_id" class="custom-select custom-select-sm select2">
								<?php
								$proble = $conn->query("SELECT * FROM problema");
								while ($row = $proble->fetch_assoc()) :
								?>
									<option value="<?php echo $row['problema_id'] ?>" 
									<?php echo isset($problema_id) && $problema_id == $row['problema_id'] ? "selected" : '' ?>>
									<?php echo ucwords($row['nombre_prob']) ?>
									</option>
								<?php endwhile; ?>
							</select>
						</div> 
						<!-- /.cierre del script nuevo GSP -->
					<div class="form-group">
						<label for="" class="control-label">Personal de GSP</label>
						<select name="department_id" id="department_id" class="custom-select custom-select-sm select2">
							<option value=""></option>
							<?php
							$department = $conn->query("SELECT * FROM departments order by name asc");
							while ($row = $department->fetch_assoc()) :
							?>
								<option value="<?php echo $row['id'] ?>" <?php echo isset($department_id) && $department_id == $row['id'] ? "selected" : '' ?>><?php echo ucwords($row['name']) ?></option>
							<?php endwhile; ?>
						</select>
					</div>
				</div>
				<div class="col-md-12">
					<div class="form-group">
						<label class="control-label">Descripción</label>
						<textarea name="description" id="" cols="30" rows="10" class="form-control summernote"><?php echo isset($description) ? $description : '' ?></textarea>
					</div>
				</div>
				<hr>
				<div class="col-lg-12 text-right justify-content-center d-flex">
					<button class="btn btn-primary mr-2">Guardar</button>
					<button class="btn btn-secondary" type="reset">Resetear</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	$('#manage_ticket').submit(function(e) {
		e.preventDefault()
		$('input').removeClass("border-danger")
		start_load()
		$('#msg').html('')
		$.ajax({
			url: 'ajax.php?action=save_ticket',
			data: new FormData($(this)[0]),
			cache: false,
			contentType: false,
			processData: false,
			method: 'POST',
			type: 'POST',
			success: function(resp) {
				if (resp == 1) {
					alert_toast('Datos guardados correctamente', "success");
					setTimeout(function() {
						location.replace('index.php?page=ticket_list')
					}, 750)
				}
			}
		})
	})
</script>