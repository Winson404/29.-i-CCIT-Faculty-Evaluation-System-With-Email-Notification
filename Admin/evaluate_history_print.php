<title>i-CCIT Faculty Evaluation System | Evaluation History reports</title>
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
            <h1 class="m-0">Evaluation History reports</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="profile.php">Home</a></li>
              <li class="breadcrumb-item active">Evaluation History reports</li>
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
             <a href="evaluate_history.php" type="button" class="btn btn-secondary btn-sm float-sm-right mr-2"><i class="fa-solid fa-backward"></i> Back</a>
          </div>
            <div class="card-body">
              <div id="printElement">
                <div class="row d-flex ">
                    <img src="../images/CCIT.png" alt="" width="100">
                    <p class="ml-2 mt-3">College of Communication And Information Technology <br>Palanginan Iba Zambales <br> <span class="text-sm text-muted"><b>Printed by:</b> <?= $printed_by; ?> on <?= date('Y-m-d h:i A') ?></span></p>
                </div>
                <hr>
                <p class="text-center"><b>EVALUATION HISTORY RECORDS</b></p>
                <table id="example11" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr>
                    <th>#</th>  
                    <th>INSTRUCTOR'S NAME</th>
                    <th>SECTION</th>
                    <th>SUBJECT</th>
                    <th>TOTAL SCORE</th>
                    <th>RATINGS</th>
                    <th>EVALUATION DATE</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                      <?php
                        $i = 1;  
                        $sql = mysqli_query($conn, "SELECT *, subject.name, section.section, section.yr_level, AVG(evaluation.grand_total) AS avg_grand_total
                        FROM evaluation
                        JOIN users ON evaluation.user_Id = users.user_Id
                        JOIN subject ON evaluation.subject_Id = subject.sub_Id
                        JOIN section ON evaluation.section_Id = section.section_Id
                        WHERE evaluation.evaluation_status = 1
                        GROUP BY evaluation.user_Id, evaluation.subject_Id ");
                        while ($row = mysqli_fetch_array($sql)) {
                      ?>
                    <tr>
                        <td><?php echo $i++; ?></td>
                        <td>
                          <?php
                            $evaluatedInstructorUserId = $row['user_Id'];
                            $evaluatedInstructorQuery = mysqli_query($conn, "SELECT CONCAT(firstname, ' ', middlename, ' ', lastname, ' ', suffix) AS evaluatedInstructor FROM users WHERE user_Id = '$evaluatedInstructorUserId'");
                            $evaluatedInstructorRow = mysqli_fetch_array($evaluatedInstructorQuery);
                            echo $evaluatedInstructorRow['evaluatedInstructor'];
                          ?>
                        </td>
                        <td><?php echo $row['yr_level'].' - '.$row['section']; ?></td>
                        <td><?php echo $row['name']; ?></td>
                        <td>
                          <?php if($row['avg_grand_total'] <= 60): ?>
                          <span class="badge bg-danger pt-1"><?php echo number_format($row['avg_grand_total'], 2, '.', ','); ?> / 100</span>
                          <?php elseif($row['avg_grand_total'] <= 75): ?>
                          <span class="badge bg-warning pt-1"><?php echo number_format($row['avg_grand_total'], 2, '.', ','); ?> / 100</span>
                          <?php elseif($row['avg_grand_total'] <= 95): ?>
                          <span class="badge bg-primary pt-1"><?php echo number_format($row['avg_grand_total'], 2, '.', ','); ?> / 100</span>
                          <?php else: ?>
                          <span class="badge bg-success pt-1"><?php echo number_format($row['avg_grand_total'], 2, '.', ','); ?> / 100</span>
                        <?php endif; ?>
                        </td>
                        <td>
                          <?php
                            $avg_grand_total = $row['avg_grand_total'];
                            if ($avg_grand_total >= 95 && $avg_grand_total <= 100) {
                                echo '<span class="badge bg-danger pt-1">Outstanding</span>';
                            } elseif ($avg_grand_total >= 90 && $avg_grand_total < 95) {
                                echo '<span class="badge bg-warning pt-1">Very Satisfactory</span>';
                            } elseif ($avg_grand_total >= 85 && $avg_grand_total < 90) {
                                echo '<span class="badge bg-info pt-1">Satisfactory</span>';
                            } elseif ($avg_grand_total >= 80 && $avg_grand_total < 85) {
                                echo '<span class="badge bg-success pt-1">Moderately Satisfactory</span>';
                            } elseif ($avg_grand_total >= 75 && $avg_grand_total < 80) {
                                echo '<span class="badge bg-primary pt-1">Fair</span>';
                            } elseif ($avg_grand_total < 75) {
                                echo '<span class="badge bg-secondary pt-1">Poor</span>';
                            }
                            ?>
                        </td>
                        <td class="text-primary"><?php echo date("F d, Y h:i A", strtotime($row['date_evaluated'])); ?></td>
                    </tr>

                    <?php } ?>

                  </tbody>
                </table>
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