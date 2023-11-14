<title>i-CCIT Faculty Evaluation System | Evaluation history</title>
<?php 
    include 'navbar.php'; 

    // GET ACTIVE YEAR FOR EVALUATION
    $active = mysqli_query($conn, "SELECT * FROM academic_year WHERE status = 1");
    $activeId = mysqli_fetch_array($active);

    // Split the academic year into two years
    $years = explode('-', $activeId['year']);
?>

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
              <div class="card-header p-2 text-center">
                <h5><b>People who evaluated you
                  <?php 
                    if (count($years) === 2) {
                        $startYear = trim($years[0]);
                        $endYear = trim($years[1]);
                        echo '<h6>Rating Period: <span class="text-bold" style="text-decoration: underline;">'.$startYear.'</span> to <span class="text-bold" style="text-decoration: underline;">'.$endYear.'</span></h6>';
                    } else {
                        // Handle the case where the data is not in the expected format
                        echo "<h6>Invalid academic year format</h6>";
                    }
                  ?></b>
                </h5>
              </div>
              <div class="card-body p-3">
                 <table id="example111" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr> 
                    <th>EVALUATOR'S NAME</th>
                    <th>SUBJECT</th>
                    <th>TOTAL SCORE</th>
                    <th>EVALUATION DATE</th>
                    <th>TOOLS</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                      <?php 
                        $sql = mysqli_query($conn, "SELECT * FROM evaluation JOIN users ON evaluation.user_Id=users.user_Id JOIN subject ON evaluation.subject_Id=subject.sub_Id WHERE evaluation.user_Id='$id' ");
                        while ($row = mysqli_fetch_array($sql)) {
                          $evaluated_by = $row['evaluated_by'];
                          $sql2 = mysqli_query($conn, "SELECT * FROM users WHERE user_Id='$evaluated_by'");
                          $row2 = mysqli_fetch_array($sql2);
                      ?>
                    <tr>
                       
                        <td><?php echo ' '.$row2['firstname'].' '.$row2['middlename'].' '.$row2['lastname'].' '.$row2['suffix'].' '; ?></td>
                        <td><?php echo $row['name']; ?></td>
                        <td>
                          <?php if($row['grand_total'] <= 60): ?>
                          <span class="badge bg-danger pt-1"><?php echo $row['grand_total']; ?> / 100</span>
                          <?php elseif($row['grand_total'] <= 75): ?>
                          <span class="badge bg-warning pt-1"><?php echo $row['grand_total']; ?> / 100</span>
                          <?php elseif($row['grand_total'] <= 95): ?>
                          <span class="badge bg-primary pt-1"><?php echo $row['grand_total']; ?> / 100</span>
                          <?php else: ?>
                          <span class="badge bg-success pt-1"><?php echo $row['grand_total']; ?> / 100</span>
                        <?php endif; ?>
                        </td>
                        <td class="text-primary"><?php echo date("F d, Y h:i A", strtotime($row['date_evaluated'])); ?></td>
                        <td>
                          <a class="btn btn-primary btn-xs" href="evaluated_by_view.php?Id=<?php echo $row['Id']; ?>"><i class="fa-solid fa-eye"></i> View </a>
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

