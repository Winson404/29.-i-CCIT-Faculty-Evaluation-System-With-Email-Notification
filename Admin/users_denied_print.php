<title>i-CCIT Faculty Evaluation System | Denied student reports</title>
<?php  
    include 'navbar.php'; 
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Denied student reports</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="profile.php">Home</a></li>
              <li class="breadcrumb-item active">Denied student reports</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card p-3">
          <div class="card-header">
            <button id="printButton" class="btn btn-success btn-sm float-sm-right mb-3"><i class="fa-solid fa-print"></i> Print</button>
             <a href="users_denied.php" type="button" class="btn btn-secondary btn-sm float-sm-right mr-2"><i class="fa-solid fa-backward"></i> Back</a>
          </div>
            <div class="card-body">
              <div id="printElement">
                <div class="row d-flex ">
                    <img src="../images/CCIT.png" alt="" width="100">
                    <p class="ml-2 mt-3">College of Communication And Information Technology <br>Palanginan Iba Zambales <br> <span class="text-sm text-muted"><b>Printed by:</b> <?= $printed_by; ?> on <?= date('Y-m-d h:i A') ?></span></p>
                </div>
                <hr>
                <p class="text-center"><b>DENIED STUDENT RECORDS</b></p>
                <table id="example111" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr> 
                    <th>#</th>
                    <th>STUD ID</th>
                    <th>FULL NAME</th>
                    <th>SECTION</th>
                    <th>DEPARTMENT</th>
                    <th>BIRTHDAY</th>
                    <th>AGE</th>
                    <th>SEX</th>
                    <th>EMAIL</th>
                    <th>TYPE</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                      <?php 
                        $i = 1;
                        $sql = mysqli_query($conn, "SELECT * FROM users JOIN section ON users.year_section=section.section_Id WHERE user_type = 'Student' AND student_status=2 ORDER BY firstname");
                        while ($row = mysqli_fetch_array($sql)) {
                      ?>
                    <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $row['student_ID']; ?></td>
                        <td><?php echo ' '.$row['firstname'].' '.$row['middlename'].' '.$row['lastname'].' '.$row['suffix'].' '; ?></td>
                        <td><?php echo $row['yr_level'].' - '.$row['section']; ?></td>
                        <td>
                          <?php 
                            if ($row['department'] == "Bachelor of Science in Computer Science") {
                                echo "BS in Computer Science";
                            } elseif ($row['department'] == "Bachelor of Science in Information Technology") {
                                echo "BS in Information Technology";
                            } else {
                                // Handle other cases if needed
                            }
                          ?>                          
                         </td>
                        <td><?php echo $row['dob']; ?></td>
                        <td><?php echo $row['age']; ?></td>
                        <td><?php echo $row['gender']; ?></td>
                        <td><?php echo $row['email']; ?></td>
                        <td><?php echo $row['stud_type']; ?></td>
                    </tr>
                    <?php } ?>
                  </tbody>
                </table>
                <div class="container mt-5 ">
                  <hr>
                  <div class="d-flex flex-column align-items-end">
                    <p class="text-center "><?= ucwords($printed_by) ?><br> __________________________________ <br><b>Signed and Approved by</b></p>
                  </div>
                </div>
              </div>
            </div>
          <div class="card-footer">
          </div>
        </div>
      </div>
    </section>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<?php include 'footer.php'; ?>

<script>
   $(window).on('load', function() {
    document.getElementById("printButton").click();
   })
 </script>