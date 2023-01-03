<?php session_start();
//DB conncetion
include_once('includes/config.php');  //need to change nammmmeeeeeee
//validating Session
if (strlen($_SESSION['aid'] == 0)) {
    header('location:logout.php');
} else {

    /*---------------------------------------------------remark---------------------------------------------------*/
    if (isset($_POST['submit'])) {
        //getting post values
        $name = $_POST['name'];
        $username = $_POST['username'];
        $gender = $_POST['gender'];
        $email = $_POST['email'];
        $pnumber = $_POST['phonenumber'];
        $address = $_POST['address'];
        $position = $_POST['position'];
        $password = md5($_POST['password']);
        $query = "insert into medicalstaff(Name,UserName,Gender,Email,PhoneNumber,Address,Password,Position) values('$name','$username','$gender','$email','$pnumber','$address','$password','$position')";
        $result = mysqli_query($con, $query);
        if ($result) {
            echo '<script>alert("Medical staff added successfully.")</script>';
            echo "<script>window.location.href='add-medicalstaff.php'</script>";
        } else {
            echo "<script>alert('Something went wrong. Please try again.');</script>";
            echo "<script>window.location.href='add-medicalstaff.php'</script>";
        }
    }
    /*---------------------------------------------------remark---------------------------------------------------*/
?>

    <!DOCTYPE html>
    <html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin | Add Medical Staff</title>

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
        <script type="text/javascript">
            function checkpass() {
                if (document.addmedicalstaff.password.value != document.addmedicalstaff.confirmpassword.value) {
                    alert('Password and Confirm Password field does not match');
                    document.addmedicalstaff.confirmpassword.focus();
                    return false;
                }
                return true;
            }
        </script>
    </head>


    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <?php include_once('includes/sidebar.php'); ?>
            <!--need to change nammmmeeeeeee-->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <?php include_once('includes/topbar.php'); ?>
                    <!--need to checkkkkkk-->
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-4 text-gray-800">Add Medical Staff</h1>
                        <form name="addmedicalstaff" method="post" onsubmit="return checkpass();">
                            <div class="row">

                                <div class="col-lg-8">

                                    <!-- Basic Card Example -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Medical Staff Information</h6>

                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter medical staff's full name..." pattern="[A-Za-z ]+" title="letters only" required="true">
                                                <span id="ic-availability-status" style="font-size:12px;"></span>
                                            </div>
                                            <div class="form-group">
                                                <label>User Name</label>
                                                <input type="text" class="form-control" id="username" name="username" placeholder="Enter user name..." title="letters only" required="true">
                                            </div>
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <div class="form-check">
                                                    <input type="radio" class="form-check-input" id="gender" name="gender" value="Male">Male<br></input>
                                                    <input type="radio" class="form-check-input" id="gender" name="gender" value="Female" required="true">Female<br></input>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="email" class="form-control" id="email" name="email" placeholder="eg: abc@htdocs.com" required="true">
                                            </div>
                                            <div class="form-group">
                                                <label>Phone Number</label>
                                                <input type="text" class="form-control" id="phonenumber" name="phonenumber" placeholder="eg: 60123456789" pattern="[0-9]{11,12}" title="11 or 12 numeric characters only" required="true">
                                            </div>
                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <textarea class="form-control" id="address" name="address" placeholder="Current Address" required="true" rows="3"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Position</label>
                                                <div class="form-check">
                                                    <input type="radio" class="form-check-input" id="position" name="position" value="Doctor" required="true">Doctor<br></input>
                                                    <input type="radio" class="form-check-input" id="position" name="position" value="Nurse">Nurse<br></input>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" id="password" name="password" placeholder="Password" autocomplete="off" class="form-control" required="true">
                                                <input type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" autocomplete="off" class="form-control" required="true">
                                            </div>
                                            <br>
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
                <!--need to checkkkkkk-->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <?php include_once('includes/footer2.php'); ?>
        <!--need to checkkkkkk-->



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
