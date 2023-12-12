<title>i-CCIT Faculty Evaluation System | Subject info</title>
<?php 
    include 'navbar.php'; 
    if(isset($_GET['page'])) {
      $page = $_GET['page'];
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">



<?php if($page === 'create') { ?>

    <!-- CREATION -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h3>New Subject</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Subject info</li>
            </ol>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row d-flex justify-content-center">
          <div class="col-md-6">
            <form action="process_save.php" method="POST" enctype="multipart/form-data">
              <div class="card">
                <div class="card-body">
                
                  <div class="form-group">
                    <span class="text-dark"><b>Subject name</b></span>
                    <input type="text" class="form-control" placeholder="Enter subject name" name="name" required>
                  </div>

                  <div class="form-group">
                    <span class="text-dark"><b>Subject code</b></span>
                    <input type="text" class="form-control" placeholder="Enter subject code" name="code" required>
                  </div>

                  <div class="form-group">
                    <span class="text-dark"><b>Subject units</b></span>
                    <input type="number" class="form-control" placeholder="Enter subject units" name="units" required>
                  </div>

                  <div class="form-group">
                    <span class="text-dark">Instructor's name</span>
                    <select name="instructor_Id" class="form-control" required>
                      <option value="" selected disabled>Select faculty name</option>
                      <?php 
                        $fact = mysqli_query($conn, "SELECT * FROM users WHERE user_type='Faculty' AND is_deleted=0 GROUP BY user_Id ORDER BY lastname ");
                        if(mysqli_num_rows($fact) > 0) {
                          while ($f = mysqli_fetch_array($fact)) {
                            ?>
                            <option value="<?php echo $f['user_Id']; ?>"><?php echo $f['firstname'].' '.$f['middlename'].' '.$f['lastname'].' '.$f['suffix']; ?></option>
                            <?php
                          }
                        } else {
                      ?>
                        <option value="">No record found</option>
                      <?php
                        }
                      ?>
                    </select>
                  </div>


                  <div class="form-group">
                    <span class="text-dark">Section name</span>
                    <select name="section_Id" class="form-control" required>
                      <option value="" selected disabled>Select section</option>
                      <?php 
                        $sec = mysqli_query($conn, "SELECT * FROM section ORDER BY yr_level ");
                        if(mysqli_num_rows($sec) > 0) {
                          while ($s = mysqli_fetch_array($sec)) {
                            ?>
                            <option value="<?php echo $s['section_Id']; ?>"><?php echo $s['yr_level'].' - '.$s['section'].' - '.$s['department']; ?></option>
                            <?php
                          }
                        } else {
                      ?>
                        <option value="">No record found</option>
                      <?php
                        }
                      ?>
                    </select>
                  </div>

                </div>
                <div class="card-footer">
                  <div class="float-right">
                    <a href="subject.php" class="btn bg-secondary"><i class="fa-solid fa-backward"></i> Back to list</a>
                    <button type="submit" class="btn bg-primary" name="create_subject" id="create_admin"><i class="fa-solid fa-floppy-disk"></i> Submit</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  <!-- END CREATION -->



<?php } else { 
  $sub_Id = $page;
  $fetch = mysqli_query($conn, "SELECT * FROM subject WHERE sub_Id='$sub_Id'");
  $row = mysqli_fetch_array($fetch);

?>

  <!-- UPDATE -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-6">
          <h3>Update Subject</h3>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Subject info</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row d-flex justify-content-center">
        <div class="col-md-6">
          <form action="process_update.php" method="POST" enctype="multipart/form-data">
            <input type="hidden" class="form-control" name="sub_Id" required value="<?php echo $sub_Id; ?>">
            <div class="card">
              <div class="card-body">

                    <div class="form-group">
                      <span class="text-dark"><b>Subject name</b></span>
                      <input type="text" class="form-control" placeholder="Enter subject name" name="name" required value="<?php echo $row['name']; ?>">
                    </div>

                    <div class="form-group">
                      <span class="text-dark"><b>Subject code</b></span>
                      <input type="text" class="form-control" placeholder="Enter subject code" name="code" required value="<?php echo $row['code']; ?>">
                    </div>

                    <div class="form-group">
                      <span class="text-dark"><b>Subject units</b></span>
                      <input type="number" class="form-control" placeholder="Enter subject units" name="units" required value="<?php echo $row['units']; ?>">
                    </div>

                    <div class="form-group">
                      <span class="text-dark">Instructor's name</span>
                      <select name="instructor_Id" class="form-control" required>
                        <option value="" selected disabled>Select faculty name</option>
                        <?php 
                          $instructor_Id = $row['instructor_Id'];
                          $fact = mysqli_query($conn, "SELECT * FROM users WHERE user_type='Faculty' AND is_deleted=0 GROUP BY user_Id ORDER BY lastname");
                          if(mysqli_num_rows($fact) > 0) {
                            while ($f = mysqli_fetch_array($fact)) {
                              ?>
                              <option value="<?php echo $f['user_Id']; ?>" <?php if($f['user_Id'] == $instructor_Id) { echo 'selected'; } ?>><?php echo $f['firstname'].' '.$f['middlename'].' '.$f['lastname'].' '.$f['suffix']; ?></option>
                              <?php
                            }
                          } else {
                        ?>
                          <option value="">No record found</option>
                        <?php
                          }
                        ?>
                      </select>
                    </div>

                    <div class="form-group">
                      <span class="text-dark">Section name</span>
                      <select name="section_Id" class="form-control" required>
                        <option value="" selected disabled>Select section</option>
                        <?php 
                          $section_Id = $row['section_Id'];
                          $sec = mysqli_query($conn, "SELECT * FROM section ORDER BY yr_level ");
                          if(mysqli_num_rows($sec) > 0) {
                            while ($s = mysqli_fetch_array($sec)) {
                              ?>
                              <option value="<?php echo $s['section_Id']; ?>" <?php if($s['section_Id'] == $section_Id) { echo 'selected'; } ?> ><?php echo $s['yr_level'].' - '.$s['section'].' - '.$s['department']; ?></option>
                              <?php
                            }
                          } else {
                        ?>
                          <option value="">No record found</option>
                        <?php
                          }
                        ?>
                      </select>
                    </div>

              </div>
              <div class="card-footer">
                <div class="float-right">
                  <a href="subject.php" class="btn bg-secondary"><i class="fa-solid fa-backward"></i> Back to list</a>
                  <button type="submit" class="btn bg-primary" name="update_subject" id="create_admin"><i class="fa-solid fa-floppy-disk"></i> Submit</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
  <!-- END UPDATE -->


<?php } ?>


  </div>

<?php } else { include '404.php'; } ?>


<br>
<br>
<br>
<br>
<br>
<br>
<?php include 'footer.php';  ?>

