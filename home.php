<?php include('db_connect.php') ?>
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Gerencia de Sistemas y Procesos</h1>
            </div><!-- /.col -->

        </div><!-- /.row -->
        <hr c lass="border-primary">
    </div><!-- /.container-fluid -->
</div>
<!-- Info boxes -->
<?php if ($_SESSION['login_type'] == 1): ?>
    <div class="row">
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-gray elevation-1"><i class="fas fa-users"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Trabajadores</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT * FROM customers")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-info elevation-1"><i class="fas fa-user"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total de Usuarios</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT * FROM staff")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix hidden-md-up"></div>

        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-columns"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total de Especialistas</span>
                    <span class="info-box-number"><?php echo $conn->query("SELECT * FROM departments")->num_rows; ?></span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-navy elevation-1"><i class="fas fa-ticket-alt"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Tickets</span>
                    <span class="info-box-number"><?php echo $conn->query("SELECT * FROM tickets")->num_rows; ?></span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <?php
        $pendientes = $conn->query("SELECT * FROM tickets WHERE status='0'")->num_rows; ?>
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-ticket-alt"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Tickets pendientes</span>
                    <span class="info-box-number"><?php echo $pendientes; ?></span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <?php $procesos = $conn->query("SELECT * FROM tickets WHERE status='1'")->num_rows; ?>
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-purple elevation-1"><i class="fas fa-ticket-alt"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Tickets en proceso</span>
                    <span class="info-box-number"><?php echo $procesos; ?></span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <?php $finalizados = $conn->query("SELECT * FROM tickets WHERE status='2'")->num_rows; ?>
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-success elevation-1"><i class="fas fa-ticket-alt"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Tickets finalizados</span>
                    <span class="info-box-number"><?php echo $finalizados; ?></span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <?php $cerrados = $conn->query("SELECT * FROM tickets WHERE status='3'")->num_rows; ?>
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-ticket-alt"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Tickets Cerrados</span>
                    <span class="info-box-number"><?php echo $cerrados; ?></span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
    </div>


    <div class="contenedor">
        <div class="row">

            <div class="col-md-6">

                <div class="card card-navy">
                    <div class="card-header">
                        <h3 class="card-title">Gráfico de Tickets</h3>
                    </div>
                    <div class="card-body">
                        <canvas id="donutChart"
                            style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                    </div>

                </div>
            </div>

            <div class="col-md-3"></div>
        </div>

        <div class="row">

            <div class="col-md-6">

                <div class="card card-navy">
                    <div class="card-header">
                        <h3 class="card-title">Tickets por Usuarios
                            <?php
                            // Ejecuta la consulta para obtener nombres, apellidos y la cantidad de tickets
                            $result = $conn->query("SELECT s.firstname, s.lastname, COUNT(t.id) AS total 
                                            from staff s, tickets t 
                                            WHERE (s.department_id=t.department_id) 
                                            GROUP BY s.firstname");

                            // Inicializa las variables que usaremos en JavaScript
                            $labels = [];
                            $ticketCounts = [];

                            // Itera sobre los resultados y construye los arrays
                            while ($row = $result->fetch_assoc()) {
                                $labels[] = "'" . $row['firstname'] . "" . $row['lastname'] . "'";
                                $ticketCounts[] = $row['total'];
                            }

                            // Convierte los arrays PHP a formato de JavaScript
                            $labels = implode(", ", $labels);
                            $ticketCounts = implode(", ", $ticketCounts);
                            ?>

                        </h3>
                    </div>
                    <div class="card-body">
                        <canvas id="donutChart2"
                            style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                    </div>

                </div>
            </div>

            <div class="col-md-3"></div>
        </div>


    </div>


    <script>
        $(function() {
            /* ChartJS
             * -------
             * Here we will create a few charts using ChartJS
             */

            //-------------
            //- DONUT CHART -

            //-------------
            // Get context with jQuery - using jQuery's .get() method.
            var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
            var donutData = {
                labels: [
                    'pendientes',
                    'En proceso',
                    'Finalizados',
                    'Cerrados',
                ],
                datasets: [{
                    data: [<?php echo $pendientes; ?>, <?php echo $procesos; ?>, <?php echo $finalizados; ?>, <?php echo $cerrados; ?>],
                    backgroundColor: ['#f39c12', '#810de0', '#00a65a', '#f56954'],
                }]
            }
            var donutOptions = {
                maintainAspectRatio: false,
                responsive: true,
            }
            //Create pie or douhnut chart
            // You can switch between pie and douhnut using the method below.
            new Chart(donutChartCanvas, {
                type: 'doughnut',
                data: donutData,
                options: donutOptions
            })

        })
    </script>

    <script>
        $(function() {
            /* ChartJS
             * -------
             * Creamos el gráfico usando ChartJS
             */

            // Función para generar un color hexadecimal aleatorio
            function getRandomColor() {
                var letters = '0123456789ABCDEF';
                var color = '#';
                for (var i = 0; i < 6; i++) {
                    color += letters[Math.floor(Math.random() * 16)];
                }
                return color;
            }

            // Función para generar un array de colores aleatorios
            function generateColors(count) {
                var colors = [];
                for (var i = 0; i < count; i++) {
                    colors.push(getRandomColor());
                }
                return colors;
            }

            // Los datos que has obtenido en PHP para etiquetas y cantidades
            var labels = [<?php echo $labels; ?>]; // Etiquetas generadas en PHP
            var data = [<?php echo $ticketCounts; ?>]; // Cantidades generadas en PHP

            // Generamos colores aleatorios en base al número de etiquetas
            var backgroundColors = generateColors(labels.length);

            // Preparamos los datos para ChartJS
            var donutData = {
                labels: labels, // Etiquetas
                datasets: [{
                    data: data, // Cantidades
                    backgroundColor: backgroundColors // Colores generados dinámicamente
                }]
            };

            var donutOptions = {
                maintainAspectRatio: false,
                responsive: true,
            };

            // Get context with jQuery - using jQuery's .get() method.
            var donutChartCanvas = $('#donutChart2').get(0).getContext('2d');

            // Crea el gráfico
            new Chart(donutChartCanvas, {
                type: 'doughnut',
                data: donutData,
                options: donutOptions
            });
        });
    </script>



<?php else: ?>
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                Bienvenido <?php echo $_SESSION['login_name'] ?>!
            </div>
        </div>
    </div>
<?php endif; ?>