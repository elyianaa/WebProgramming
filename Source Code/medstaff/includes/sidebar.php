        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-virus"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Get Vaccinated!</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            <?php if ($_SESSION['aid']) : ?>


                <li class="nav-item">
                    <a class="nav-link" href="dashboard.php">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <i class="fas fa-fw fa-users"></i>
                        <span>Medical Center</span>
                    </a>
                    <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <a class="collapse-item" href="add-medical-center.php">Add Medical<br>Center</a>
                            <a class="collapse-item" href="manage-medical-center.php">Manage Medical<br>Center</a>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-virus"></i>
                        <span>Vaccination</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <a class="collapse-item" href="view-users.php">User Details</a>
                            <a class="collapse-item" href="view-concernForm.php">Concern Form</a>
                            <a class="collapse-item" href="view-dependents.php">Users' Dependents</a>
                            <a class="collapse-item" href="view-vacstatus.php">Vaccination Status</a>
                            <a class="collapse-item" href="upd-vacstatus.php">Update Vaccination<br>Status</a>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="report-search.php">
                        <i class="fas fa-fw fa-file"></i>
                        <span>Report</span></a>
                </li>

            <?php endif;    ?>


            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>