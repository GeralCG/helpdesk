<!DOCTYPE html>
<?php 
session_start();
include('./db_connect.php');
?>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema De HelpDesk - MPCH</title>
    <meta property="og:url"            content="https://municipalidadchincha.gob.pe/gsistema/login.php" />
    <meta property="og:type"               content="website" />
    <meta property="og:title"              content="Sistema HelpDesk -  MPCH" />
    <meta property="og:description"        content="Sistema Helpdesk de la Municipalidad Provincial de Chincha" />
    <link rel="icon" type="image/x-icon"href="assets/dist/img/logmpch.ico">
  <?php include('./header.php'); ?>
</head>

<style>
body {
  width: 100%;
  height: 100vh;
  background-image: url(./assets/dist/img/fondosistema.png);
  background-color: #1a1a2e;
  display: flex;
  align-items: center;
  justify-content: center;
}

.card {
  background-color: white;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  padding: 20px;
  border-radius: 10px;
}

.form-group {
  margin-bottom: 1rem;
}

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
}

.form-control {
  width: 100%;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  color: #495057;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
}

.btn-login {
  width: 100%;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
  background-color: #007bff;
  color: #fff;
  border: none;
  cursor: pointer;
}

.btn-login:hover {
  background-color: #0056b3;
}

</style>

<body>

  <div class="card col-md-4">
    <h4 class="text-center"><b>Municipalidad Provincial de Chincha</b></h4>
    <form id="login-form">
      <div class="form-group">
        <label for="username" class="text-dark">Usuario</label>
        <input type="text" id="username" name="username" class="form-control">
      </div>
      <div class="form-group">
        <label for="password" class="text-dark">Contraseña</label>
        <input type="password" id="password" name="password" class="form-control">
      </div>
      <div class="form-group">
        <label for="type" class="text-dark">Tipo de usuario</label>
        <select class="form-control" name="type">
          <option value="3">Trabajador</option>
          <option value="2">Gsistemas</option>
          <option value="1">Admin</option>
        </select>
      </div>
      <button class="btn-login" type="submit">Ingresar</button>
    </form>
  </div>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $('#login-form').submit(function(e) {
      e.preventDefault();
      $('.btn-login').attr('disabled', true).html('Iniciando sesión...');
      if ($(this).find('.alert-danger').length > 0)
        $(this).find('.alert-danger').remove();
      $.ajax({
        url: 'ajax.php?action=login',
        method: 'POST',
        data: $(this).serialize(),
        error: err => {
          console.log(err);
          $('.btn-login').removeAttr('disabled').html('Ingresar');
        },
        success: function(resp) {
          if (resp == 1) {
            location.href = 'index.php?page=home';
          } else {
            $('#login-form').prepend('<div class="alert alert-danger">Usuario o contraseña incorrecta.</div>');
            $('.btn-login').removeAttr('disabled').html('Ingresar');
          }
        }
      });
    });
  </script>

</body>
</html>
