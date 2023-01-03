<?php session_start();
//DB conncetion
include_once('includes/config.php');
error_reporting(0);

if (strlen($_SESSION['aid'] == 0)) {
    header('location:logout.php');
} else {

?>

    <!DOCTYPE html>
    <html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin | Generate E-certificate</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <style type="text/css">
            label {
                font-size: 16px;
                font-weight: bold;
                color: #000;
            }
        </style>


    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <?php include_once('includes/sidebar.php'); ?>

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <?php include_once('includes/topbar.php'); ?>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-4 text-gray-800">Certificate with Person No #<?php echo intval($_GET['cid']); ?></h1>
                        <div class="row">
                            <?php
                            $cid = intval($_GET['cid']);
                            $query = mysqli_query($con, "select * from vaccine_certificate
join Vaccination_Info on Vaccination_Info.vaccine_id=vaccine_certificate.certificate_no
where vaccine_id='$cid'");
                            while ($row = mysqli_fetch_array($query)) {
                            ?>
                        </div>

                        <div class="row">
                            <div class="col-lg-8">

                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary" align="center">E-certificate</h6>
                                    </div>
                                    <div class="card-body">
                                        <table width="60%" cellspacing="0" cellpadding="10" align="center">
                                            <tr align="center">
                                                <th colspan="2"><u>DIGITAL CERTIFICATE FOR COVID-19 VACCINATION</u></th>
                                            </tr>
                                            <tr align="center">
                                                <td colspan="2">NAME: <?php echo $row['person_name']; ?></td>
                                            </tr>
                                            <tr align="center">
                                                <td colspan="2">AGE: <?php echo $row['person_age']; ?></td>
                                            </tr>
                                            <tr align="center">
                                                <td colspan="2">DOSE #<?php echo $row['numberOfDose']; ?></td>
                                            </tr>
                                        </table>
                                        <table class="table table-bordered" width="60%" cellspacing="0" cellpadding="10" align="center">
                                            <tr align="center">
                                                <th>Certificate No</th>
                                                <td><?php echo $row['certificate_no']; ?></td>
                                            </tr>
                                            <tr align="center">
                                                <th>Vaccination Date</th>
                                                <td><?php echo $row['date']; ?></td>
                                            </tr>
                                            <tr align="center">
                                                <th>Vaccine Type</th>
                                                <td><?php echo $row['vaccine_type']; ?></td>
                                            </tr>
                                            <tr align="center">
                                                <th>Manufacturer</th>
                                                <td><?php echo $row['manufacturer']; ?></td>
                                            </tr>
                                            <tr align="center">
                                                <th>Health Facility</th>
                                                <td><?php echo $row['facility']; ?></td>
                                            </tr>
                                            <tr align="center">
                                                <th>Batch</th>
                                                <td><?php echo $row['batch']; ?></td>
                                            </tr>
                                        </table>

                                    <?php } ?>


                                    </div>
                                </div>

                            </div>
                        </div>

                        </form>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <?php include_once('includes/footer.php'); ?>

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>




        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>
    </body>

    </html>
<?php } ?>