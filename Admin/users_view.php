<title>i-CCIT Faculty Evaluation System| Student's info</title>
<?php 
    include 'navbar.php';

    if(isset($_GET['user_Id'])) {
    $user_Id = $_GET['user_Id'];
    $fetch = mysqli_query($conn, "SELECT * FROM users WHERE user_Id='$user_Id'");
    $row = mysqli_fetch_array($fetch);
    $sec = $row['year_section'];
    $fetch2 = mysqli_query($conn, "SELECT * FROM section WHERE section_Id='$sec'");
    $row2 = mysqli_fetch_array($fetch2);

  ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h3>Student's info</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Student's info</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- /.col -->
          <div class="col-md-12">
            <div class="card">      
              <div class="card-body">
                  <div class="row p-2">
                    <div class="col-lg-12 mt-1 mb-2">
                      <a class="h5 text-primary"><b>Basic information</b></a>
                      <div class="dropdown-divider"></div>
                    </div>
                    <div class="col-lg-9 col-md-6 col-12">
                      <div class="row">
                        <div class="col-12">
                          <div class="form-group">
                            <small class="text-muted"><b>Student type:</b></small>
                            <h6><?php echo $row['stud_type']; ?></h6>
                          </div>
                        </div>
                        <div class="col-lg-4 col col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                              <small class="text-muted"><b>Full name:</b></small>
                              <h6><?php echo ' '.$row['firstname'].' '.$row['middlename'].' '.$row['lastname'].' '.$row['suffix'].' '; ?></h6>
                            </div>
                        </div>
                        <div class="col-lg-2 col col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                              <small class="text-muted"><b>Student ID:</b></small>
                              <h6><?php echo $row['student_ID']; ?></h6>
                            </div>
                        </div>
                        <div class="col-lg-3 col col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                              <small class="text-muted"><b>Year and Section:</b></small>
                              <h6><?php echo $row2['yr_level'].' - '.$row2['section']; ?></h6>
                            </div>
                        </div>
                        <div class="col-lg-3 col col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                              <small class="text-muted"><b>Department:</b></small>
                              <h6><?php echo $row['department']; ?></h6>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                              <small class="text-muted"><b>Date of Birth:</b></small>
                              <h6><?php echo date("F d, Y", strtotime($row['dob'])); ?></h6>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                              <small class="text-muted"><b>Age:</b></small>
                              <h6><?php echo $row['age']; ?></h6>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                              <small class="text-muted"><b>Sex:</b></small>
                              <h6><?php echo $row['gender']; ?></h6>
                            </div>
                        </div>
                        <div class="col-lg-6 col col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <small class="text-muted"><b>Email:</b></small>
                                <h6><?php echo $row['email']; ?></h6>
                              </div>
                          </div>
                      </div>
                    </div>
                     
                  </div>
                 
              </div>
              <div class="card-footer float-right">
                <a href="users.php" class="btn bg-secondary"><i class="fa-solid fa-circle-left"></i> Back to list</a>
                <!-- <a class="btn btn-info" href="users_mgmt.php?page=<?php //echo $row['user_Id']; ?>"><i class="fas fa-pencil-alt"></i> Edit</a> -->
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <?php } else { include '404.php'; } ?>
<?php include 'footer.php';  ?>

