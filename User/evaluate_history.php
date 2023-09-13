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
                <div class="card-tools mr-1 mt-1">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body p-3">

                 <table id="example11" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr> 
                    <th>INSTRUCTOR'S NAME</th>
                    <th>SUBJECT</th>
                    <th>TOTAL SCORE</th>
                    <th>EVALUATION DATE</th>
                    <th>TOOLS</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                      <?php 
                        $sql = mysqli_query($conn, "SELECT * FROM evaluation JOIN users ON evaluation.user_Id=users.user_Id JOIN subject ON evaluation.subject_Id=subject.sub_Id WHERE evaluation.evaluated_by='$id' ");
                        while ($row = mysqli_fetch_array($sql)) {
                      ?>
                    <tr>
                       
                        <td><?php echo ' '.$row['firstname'].' '.$row['middlename'].' '.$row['lastname'].' '.$row['suffix'].' '; ?></td>
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

