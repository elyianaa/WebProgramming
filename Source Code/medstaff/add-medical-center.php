<?php session_start();
//DB conncetion
include_once('includes/config.php');
//validating Session
if (strlen($_SESSION['aid'] == 0)) {
    header('location:logout.php');
} else {
    if (isset($_POST['submit'])) {
        //getting post values
        $center_id = $_POST['center_id'];
        $centerName = $_POST['centerName'];
        $vaccine_type = $_POST['vaxtype'];
        $query = "insert into medicalcenter values('$center_id','$centerName','$vaccine_type')";
        $result = mysqli_query($con, $query);
        if ($result) {
            echo '<script>alert("Medical Center added successfully.")</script>';
            echo "<script>window.location.href='add-medical-center.php'</script>";
        } else {
            echo "<script>alert('Something went wrong. Please try again.');</script>";
            echo "<script>window.location.href='add-medical-center.php'</script>";
        }
    }
?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Medical Staff | Add Medical Center</title>

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
                        <h1 class="h3 mb-4 text-gray-800">Add Medical Center</h1>
                        <form name="addmedicalcenter" method="post">
                            <div class="row">

                                <div class="col-lg-8">

                                    <!-- Basic Card Example -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Center Information</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label>Center Id</label>
                                                <input type="text" class="form-control" id="center_id" name="center_id" placeholder="Enter center ID" pattern="[0-9]+" title="3 numeric characters only" required="true">
                                                <span id="empid-availability-status" style="font-size:12px;"></span>
                                            </div>

                                            <div class="form-group">
                                                <label>Center Name</label>
                                                <input type="text" class="form-control" id="centerName" name="centerName" placeholder="Enter center name" pattern="[A-Za-z ]+" title="letters only" required="true">
                                            </div>
                                            <div class="form-group">
                                                <label>Vaccine Type</label>
                                                <input type="text" class="form-control" id="vaxtype" name="vaxtype" placeholder="Enter vaccine type" pattern="[A-Za-z ]+" title="letters characters only" required="true">
                                            </div>

                                            <div class="form-group">
                                                <input type="submit" class="btn btn-primary btn-user btn-block" name="submit" id="submit">
                                            </div>

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

        <!-- Scroll to Top Button-->
        <?php include_once('includes/footer2.php'); ?>



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