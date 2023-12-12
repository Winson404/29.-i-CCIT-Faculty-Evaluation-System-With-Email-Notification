<title>i-CCIT Faculty Evaluation System | Faculty profile</title>
<?php 
    include 'navbar.php';
    if(isset($_GET['Id'])) {
      $Id = $_GET['Id'];
     
      if($row['user_type'] == 'Student') {
        $faculty = mysqli_query($conn, "SELECT * FROM evaluation JOIN users ON evaluation.user_Id=users.user_Id JOIN subject ON evaluation.subject_Id=subject.sub_Id JOIN section ON evaluation.section_Id=section.section_Id WHERE evaluation.evaluated_by='$id' AND evaluation.Id='$Id' ");

      } else {
        $faculty = mysqli_query($conn, "SELECT * FROM evaluation JOIN users ON evaluation.user_Id=users.user_Id WHERE evaluation.evaluated_by='$id' AND evaluation.Id='$Id' ");

      }

      
      // $faculty = mysqli_query($conn, "SELECT * FROM users WHERE user_Id='$user_Id'");
      $fac = mysqli_fetch_array($faculty);

      // GET ACTIVE YEAR FOR EVALUATION
      $active = mysqli_query($conn, "SELECT * FROM academic_year WHERE status = 1");
      $activeId = mysqli_fetch_array($active); 

      // RATINGS FOR A B C D
     $grades = [
          'A' => $fac['A_Total'],
          'B' => $fac['B_Total'],
          'C' => $fac['C_Total'],
          'D' => $fac['D_Total'],
      ];

      foreach ($grades as $grade => $value) {
          if ($value >= 21 && $value <= 25) {
              $evaluations[$grade] = "Outstanding";
          } elseif ($value >= 16 && $value <= 20) {
              $evaluations[$grade] = "Very Satisfactory";
          } elseif ($value >= 11 && $value <= 15) {
              $evaluations[$grade] = "Satisfactory";
          } elseif ($value >= 6 && $value <= 10) {
              $evaluations[$grade] = "Moderately Satisfactory";
          } elseif ($value >= 4 && $value <= 5) {
              $evaluations[$grade] = "Fair";
          } else {
              $evaluations[$grade] = "Poor";
          }
      }



?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h1><?php echo $fac['firstname'].' '.$fac['middlename'].' '.$fac['lastname'].' '.$fac['suffix']; ?></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Faculty profile</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
         <!--  <div class="col-md-3">

            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                    <?php //if($fac['image'] == ""): ?>
                    <img src="../dist/img/avatar.png" alt="User Avatar" class="img-size-50 img-circle">
                    <?php// else: ?>
                    <img class="profile-user-img img-fluid img-circle"src="../images-users/<?php //echo $fac['image']; ?>"alt="User profile picture"  style="height: 90px; width: 90px; border-radius: 50%;">
                    <?php// endif; ?>
                    
                </div>
                <h3 class="profile-username text-center"><?php //echo ' '.$fac['firstname'].' '.$fac['lastname'].' '; ?></h3>
                <p class="text-muted text-center"><?php //echo $fac['user_type']; ?></p>
                <a class="btn bg-gradient-primary btn-block">Profile</a>
              </div>
            </div>

          </div> -->


          <!-- /.col -->
          <div class="col-md-12">
            <div class="card">
              <div class="card-header p-2">
                <!-- <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#evaltion_history" data-toggle="tab">Evalution record</a></li> -->
                 <!--  <li class="nav-item"><a class="nav-link" href="#viewprofile" data-toggle="tab">Faculty profile</a></li>
                  <li class="nav-item"><a class="nav-link" href="#subjectinfo" data-toggle="tab">Subject info</a></li> -->
                <button id="printButton" class="btn btn-success btn-sm float-sm-right"><i class="fa-solid fa-print"></i> Print</button>

                <!-- </ul> -->
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">


                  <div class="active tab-pane" id="printElement">
                    <div class="row d-flex ">
                    <img src="../images/CCIT.png" alt="" width="100">
                        <p class="ml-2 mt-3">College of Communication And Information Technology <br>Palanginan Iba Zambales <br> <span class="text-sm text-muted"><b>Printed by:</b> <?= $logged_in; ?> on <?= date('Y-m-d h:i A') ?></span></p>
                    </div>
                    <hr>
                    <p class="text-center"><b>EVALUATION RECORDS FOR <?php echo strtoupper($fac['firstname'].' '.$fac['middlename'].' '.$fac['lastname'].' '.$fac['suffix']); ?></b></p>
                    <table id="" class="table table-bordered table-hover text-sm table-sm">
                        <thead>
                          <tr>
                            <th>A. Commitment</th>
                            <th>Score</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1.  Demonstrates sensitivity to student’s ability to attend and absorb content information.</td>
                            <td class="p-2 text-center"><span id="A1_Sub"><?php echo $fac['A1']; ?></span></td>
                          </tr>
                          <tr>
                            <td>2.  Integrates sensitivity his/her learning objectives with those of the students in a collaborative process.</td>
                            <td class="p-2 text-center"><span id="A2_Sub"><?php echo $fac['A2']; ?></span></td>
                          </tr>
                          <tr>
                            <td>3.  Makes self-available to students beyond official time.</td>
                            <td class="p-2 text-center"><span id="A3_Sub"><?php echo $fac['A3']; ?></span></td>
                          </tr><tr>
                            <td>4.  Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities.</td>
                            <td class="p-2 text-center"><span id="A4_Sub"><?php echo $fac['A4']; ?></span></td>
                          </tr>
                          <tr>
                            <td>5.  Keeps acurate records of student’s performance and prompt submission of the same.</td>
                            <td class="p-2 text-center"><span id="A5_Sub"><?php echo $fac['A5']; ?></span></td>
                          </tr>
                        </tbody>
                        <tfoot>
                          <tr>
                            <td class="text-center text-bold">Total Score</td>
                            <td class="text-center text-bold"><span id="A_Total"><?php echo $fac['A_Total'] ?></span></td>
                          </tr>
                          <tr>
                            <td class="text-center text-bold">Ratings</td>
                            <td class="text-center text-bold"><span id="A_Total"><?php echo $evaluations['A'] ?></span></td>
                          </tr>
                        </tfoot>
                    </table>

                    <br>

                    <table id="" class="table table-bordered table-hover text-sm table-sm">
                      <thead>
                        <tr>
                          <th>B.  Knowledge of Subject</th>
                          <th>Score</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1.  Demonstrates mastery of the subject matter (explain the subject matter without relying solely on the prescribe textbook).</td>
                          <td class="p-2 text-center"><span id="B1_Sub"><?php echo $fac['B1']; ?></span></td>
                        </tr>
                        <tr>
                          <td>2.  Draws and share information on the stage of the art of the theory and practice in his/her discipline.</td>
                          <td class="p-2 text-center"><span id="B2_Sub"><?php echo $fac['B2']; ?></span></td>
                        </tr>
                        <tr>
                          <td>3.  Integrates subject to practical circumstances learning intents/purposes of the students.</td>
                          <td class="p-2 text-center"><span id="B3_Sub"><?php echo $fac['B3']; ?></span></td>
                        </tr><tr>
                          <td>4.  Explains the relevance of present topics to the previous lessons and relates the subject matter to relevant current issues and/or daily life activities.</td>
                          <td class="p-2 text-center"><span id="B4_Sub"><?php echo $fac['B4']; ?></span></td>
                        </tr>
                        <tr>
                          <td>5.  Demonstrate up-to-date knowledge and/or awareness on current trends and issues of the subject.</td>
                          <td class="p-2 text-center"><span id="B5_Sub"><?php echo $fac['B5']; ?></span></td>
                        </tr>
                      </tbody>
                      <tfoot>
                          <tr>
                            <td class="text-center text-bold">Total Score</td>
                            <td class="text-center text-bold"><span id="A_Total"><?php echo $fac['B_Total'] ?></span></td>
                          </tr>
                          <tr>
                            <td class="text-center text-bold">Ratings</td>
                            <td class="text-center text-bold"><span id="A_Total"><?php echo $evaluations['B'] ?></span></td>
                          </tr>
                        </tfoot>
                    </table>

                    <br>

                    <table id="" class="table table-bordered table-hover text-sm table-sm">
                      <thead>
                        <tr>
                          <th>C.  Teaching for independent learning</th>
                          <th>Score</th>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1.  Creates teaching strategies that allow students to practice using concept they need to understand (interactive discussion).</td>
                          <td class="p-2 text-center"><span id="C1_Sub"><?php echo $fac['C1']; ?></span></td>
                        </tr>
                        <tr>
                          <td>2.  Enhances student self-steem and/or gives due recognition to students performance/ potencial </td>
                          <td class="p-2 text-center"><span id="C2_Sub"><?php echo $fac['C2']; ?></span></td>
                        </tr>
                        <tr>
                          <td>3.  Allows students to create their own course with objectives and realistically defined student- professor rules and make them accountable for their performance.</td>
                          <td class="p-2 text-center"><span id="C3_Sub"><?php echo $fac['C3']; ?></span></td>
                        </tr><tr>
                          <td>4.  Allows students to think independently and make their own decisions and holding them accountable for their performance based largely on their success in executing decisions.</td>
                          <td class="p-2 text-center"><span id="C4_Sub"><?php echo $fac['C4']; ?></span></td>
                        </tr>
                        <tr>
                          <td>5.  Encourages students to learn beyond what is required and help/guide the students how to apply the concept learned. </td>
                          <td class="p-2 text-center"><span id="C5_Sub"><?php echo $fac['C5']; ?></span></td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td class="text-center text-bold">Total Score</td>
                          <td class="text-center text-bold"><span id="A_Total"><?php echo $fac['C_Total'] ?></span></td>
                        </tr>
                        <tr>
                          <td class="text-center text-bold">Ratings</td>
                          <td class="text-center text-bold"><span id="A_Total"><?php echo $evaluations['C'] ?></span></td>
                        </tr>
                      </tfoot>
                    </table>

                    <br>

                    <table id="" class="table table-bordered table-hover text-sm table-sm">
                      <thead>
                        <tr>
                          <th>D.  Management of Learning</th>
                          <th>Score</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1.  Create opportunities for intensive and/or extensive contribution of students in the class activities(eg.breaks class into dyads, triads or buzz/ task group).</td>
                          <td class="p-2 text-center"><span id="D1_Sub"><?php echo $fac['D1']; ?></span></td>
                        </tr>
                        <tr>
                          <td>2.  Assumes roles as facilitators, resource person, coach inquisitor, integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands.</td>
                          <td class="p-2 text-center"><span id="D2_Sub"><?php echo $fac['D2']; ?></span></td>
                        </tr>
                        <tr>
                          <td>3.  Designs and implements learning conditions  and  experience that promotes healthy exchange  and/or confrontations</td>
                          <td class="p-2 text-center"><span id="D3_Sub"><?php echo $fac['D3']; ?></span></td>
                        </tr><tr>
                          <td>4.  Structures/re-structures learning and teaching-learning context to enhance attaiment of collective learning objectives.</td>
                          <td class="p-2 text-center"><span id="D4_Sub"><?php echo $fac['D4']; ?></span></td>
                        </tr>
                        <tr>
                          <td>5.  Use of Instructional Materials (audio/video materials: fieldtrips, film showing, computer aided instruction and etc.) to reinforces learning processors. </td>
                          <td class="p-2 text-center"><span id="D5_Sub"><?php echo $fac['D5']; ?></span></td>
                        </tr>
                      </tbody>
                      <tfoot>
                          <tr>
                            <td class="text-center text-bold">Total Score</td>
                            <td class="text-center text-bold"><span id="A_Total"><?php echo $fac['D_Total'] ?></span></td>
                          </tr>
                          <tr>
                            <td class="text-center text-bold">Ratings</td>
                            <td class="text-center text-bold"><span id="A_Total"><?php echo $evaluations['D'] ?></span></td>
                          </tr>
                        </tfoot>
                    </table>

                    <div class="container">
                      <p class="float-right">Overall Rating: 
                          <?php
                            $avg_grand_total = $fac['grand_total'];
                            if ($avg_grand_total >= 95 && $avg_grand_total <= 100) {
                                echo '<span class="badge bg-primary pt-1">Outstanding</span>';
                            } elseif ($avg_grand_total >= 90 && $avg_grand_total < 95) {
                                echo '<span class="badge bg-info pt-1">Very Satisfactory</span>';
                            } elseif ($avg_grand_total >= 85 && $avg_grand_total < 90) {
                                echo '<span class="badge bg-success pt-1">Satisfactory</span>';
                            } elseif ($avg_grand_total >= 80 && $avg_grand_total < 85) {
                                echo '<span class="badge bg-warning pt-1">Moderately Satisfactory</span>';
                            } elseif ($avg_grand_total >= 75 && $avg_grand_total < 80) {
                                echo '<span class="badge bg-light pt-1">Fair</span>';
                            } elseif ($avg_grand_total < 75) {
                                echo '<span class="badge bg-secondary pt-1">Poor</span>';
                            }
                            ?>
                      </p>
                    </div>
                  </div>

                  <div class="tab-pane" id="viewprofile">
                      <div class="form-group row">
                        <label for="First name" class="col-sm-2 col-form-label">Department</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="First name" placeholder="First name" value="<?php echo $fac['department']; ?>" readonly>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="First name" class="col-sm-2 col-form-label">Full name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="First name" placeholder="First name" value="<?php echo ' '.$fac['firstname'].' '.$fac['middlename'].' '.$fac['lastname'].' '.$fac['suffix'].' '; ?>" readonly>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="First name" class="col-sm-2 col-form-label">Date of birth</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="First name" placeholder="First name" value="<?php echo date("F d, Y", strtotime($fac['dob'])); echo ' - '; echo $fac['age'] ?>" readonly>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="First name" class="col-sm-2 col-form-label">Gender</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="First name" placeholder="Gender" value="<?php echo $fac['gender']; ?>" readonly>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="Email" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="Email" placeholder="Email" value="<?php echo $fac['email']; ?>" readonly>
                        </div>
                      </div>
                  </div>

                  <div class="tab-pane" id="subjectinfo">
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Subject name</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" value="<?php echo $fac['name']; ?>" readonly>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Subject Code</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" value="<?php echo $fac['code']; ?>" readonly>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">No of units</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" value="<?php echo $fac['units']; ?>" readonly>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Assigned instructor</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" value="<?php echo $fac['firstname'].' '.$fac['middlename'].' '.$fac['lastname'].' '.$fac['suffix']; ?>" readonly>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Year and Section</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" value="<?php echo $fac['yr_level'].' - '.$fac['section']; ?>" readonly>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Date created</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" value="<?php echo date("F d, Y", strtotime($fac['date_created'])); ?>" readonly>
                      </div>
                    </div>
                  </div>




                </div>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
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

<?php } else { include '404.php'; } include 'footer.php'; ?>


<script>

 function newgetImagePreview(event)
  {
    var image=URL.createObjectURL(event.target.files[0]);
    var imagediv= document.getElementById('user_preview');
    var newimg=document.createElement('img');
    imagediv.innerHTML='';
    newimg.src=image;
    newimg.width="100";
    newimg.height="100";
    newimg.style['border-radius']="50%";
    newimg.style['display']="block";
    newimg.style['margin-left']="auto";
    newimg.style['margin-right']="auto";
    newimg.style['box-shadow']="rgba(100, 100, 111, 0.2) 0px 7px 29px 0px";
    imagediv.appendChild(newimg);
  }

</script>
