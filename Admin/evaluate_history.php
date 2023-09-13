<title>i-CCIT Faculty Evaluation System | Evaluation history</title>
<?php include 'navbar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h3>Evaluation history</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Evaluation history</li>
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
              <div class="card-header p-2">
                <a href="evaluate_history_print.php" class="btn btn-success btn-sm float-sm-right mr-2"><i class="fa-solid fa-print"></i> Print</a>
                <!-- <div class="card-tools mr-1 mt-1">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div> -->
              </div>
              <div class="card-body p-3">

                 <table id="example11" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr> 
                    <th>INSTRUCTOR'S NAME</th>
                    <th>SECTION</th>
                    <th>SUBJECT</th>
                    <th>TOTAL SCORE</th>
                    <th>RATINGS</th>
                    <th>EVALUATION DATE</th>
                    <th>TOOLS</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                      <?php 
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
                        <td>


                          <a class="btn btn-primary btn-xs" href="evaluate_view.php?Id=<?php echo $row['Id']; ?>"><i class="fa-solid fa-eye"></i> View</a>
                        </td> 
                    </tr>

                    <?php } ?>

                  </tbody>
                </table>

              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

<?php include 'footer.php';  ?>
<!-- <script>
  window.addEventListener("load", window.print());
</script> -->

