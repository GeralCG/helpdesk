<?php include 'db_connect.php' ?>
<?php 
$qry = $conn->query("SELECT * FROM tickets where id = ".$_GET['id'])->fetch_array();
foreach($qry as $k => $v){
	$$k = $v;
}
?>
<div class="container-fluid">
	<form action="" id="update-ticket">
		<input type="hidden" value="<?php echo $id ?>" name='id'>
		<div class="form-group">
			<label for="" class="control-label">Estado</label>
			<select name="status" id="" class="custom-select custom-select-sm">
				<option value="0" <?php echo $status == 0 ? 'selected' : ''; ?>>Abierto/Pendiente</option>
				<option value="1" <?php echo $status == 1 ? 'selected' : ''; ?>>En proceso</option>
				<option value="2" <?php echo $status == 2 ? 'selected' : ''; ?>>Finalizado</option>
				<option value="3" <?php echo $status == 3 ? 'selected' : ''; ?>>Cerrado</option>
			</select>
		</div>
	</form>
</div>
<script>
	$('#update-ticket').submit(function(e){
		e.preventDefault()
		start_load()
		// $('#msg').html('')
		$.ajax({
			url:'ajax.php?action=update_ticket',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp == 1){
					alert_toast('Datos actualizados exitosamente.',"success");
					setTimeout(function(){
						location.reload()
					},1500)
				}
			}
		})
	})
</script>