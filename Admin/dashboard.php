<title>i-CCIT Faculty Evaluation System | Dashboard</title>
<?php include 'navbar.php'; ?>
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row d-flex justify-content-start">

          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <?php
                  $admin = mysqli_query($conn, "SELECT user_Id from users WHERE user_type='Admin'");
                  $row_admin = mysqli_num_rows($admin);
                ?>
                <h3><?php echo $row_admin; ?></h3>

                <p>Administrators</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-user-secret"></i>
              </div>
              <a href="admin.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

          <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
              <div class="inner">
                <?php
                  $faculty = mysqli_query($conn, "SELECT user_Id from users WHERE user_type='Dean'");
                  $row_faculty = mysqli_num_rows($faculty);
                ?>
                <h3><?php echo $row_faculty; ?></h3>

                <p>Registered Dean</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-chalkboard-user"></i>
              </div>
              <a href="dean.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>


          <div class="col-lg-3 col-6">
            <div class="small-box bg-danger">
              <div class="inner">
                <?php
                  $faculty = mysqli_query($conn, "SELECT user_Id from users WHERE user_type='Faculty'");
                  $row_faculty = mysqli_num_rows($faculty);
                ?>
                <h3><?php echo $row_faculty; ?></h3>

                <p>Registered faculties</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-chalkboard-user"></i>
              </div>
              <a href="faculty.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

          <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
              <div class="inner">
                <?php
                  $approve = mysqli_query($conn, "SELECT user_Id FROM users WHERE user_type='Student' AND student_status=1");
                  $row_approve = mysqli_num_rows($approve);
                ?>
                <h3><?php echo $row_approve; ?></h3>

                <p>Verified students</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-users"></i>
              </div>
              <a href="users.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>


          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <?php
                  $pending = mysqli_query($conn, "SELECT user_Id FROM users WHERE user_type='Student' AND student_status=0");
                  $row_pending = mysqli_num_rows($pending);
                ?>
                <h3><?php echo $row_pending; ?></h3>

                <p>Pending students</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-users"></i>
              </div>
              <a href="users.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>


          <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
              <div class="inner">
                <?php
                  $eval = mysqli_query($conn, "SELECT Id FROM evaluation WHERE evaluation_status=1");
                  $row_eval = mysqli_num_rows($eval);
                ?>
                <h3><?php echo $row_eval; ?></h3>

                <p>Evaluated Faculty</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-check"></i>
              </div>
              <a href="evaluate_history.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>


        </div>
      </div>
    </section>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php include 'footer.php'; ?>
