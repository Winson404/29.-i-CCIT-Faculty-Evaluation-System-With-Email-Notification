<title>i-CCIT Faculty Evaluation System | Evaluation criteria</title>
<?php  
    include 'navbar.php'; 
    // GET ACTIVE YEAR FOR EVALUATION
    $active = mysqli_query($conn, "SELECT * FROM academic_year WHERE status = 1");
    $activeId = mysqli_fetch_array($active);

    // Split the academic year into two years
    $years = explode('-', $activeId['year']);
    
    if(isset($_GET['section_Id']) && isset($_GET['subject_Id']) && isset($_GET['user_Id'])) {
      $section_Id = mysqli_real_escape_string($conn, $_GET['section_Id']);
      $subject_Id = mysqli_real_escape_string($conn, $_GET['subject_Id']);
      $user_Id    = mysqli_real_escape_string($conn, $_GET['user_Id']);

      $faculty = mysqli_query($conn, "SELECT * FROM users WHERE user_Id='$user_Id'");
      $fac     = mysqli_fetch_array($faculty);

      
?>
<style>
 #example111 th:first-child {
    width: 700px; /* Adjust the width as needed */
  }
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Evaluation criteria</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="profile.php">Home</a></li>
              <li class="breadcrumb-item active">Evaluation criteria</li>
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
          <div class="card-header text-center">
            <button id="printButton" class="btn btn-success btn-sm float-sm-right mr-4 mb-3"><i class="fa-solid fa-print"></i> Print</button>
             <a href="evaluate_dean.php?section_Id=<?= $section_Id; ?>&&subject_Id=<?= $subject_Id; ?>&&user_Id=<?= $user_Id; ?>" type="button" class="btn btn-secondary btn-sm float-sm-right mr-2"><i class="fa-solid fa-backward"></i> Back</a>
            <div class="card-body">
              <div id="printElement">
                <h6>Instrument for Instruction/Teaching Effectiveness</h6>
                <?php 
                  if (count($years) === 2) {
                      $startYear = trim($years[0]);
                      $endYear = trim($years[1]);
                      echo '<h6>Rating Period: <span class="text-bold" style="text-decoration: underline;">'.$startYear.'</span> to <span class="text-bold" style="text-decoration: underline;">'.$endYear.'</span></h6>';
                  } else {
                      // Handle the case where the data is not in the expected format
                      echo "<h6>Invalid academic year format</h6>";
                  }
                ?>

                <br>

                <p class="text-left">Instructions: Please evaluate the faculty using the scale below. Encircle your rating.</p>
                <table class="table table-bordered table-hover text-sm table-sm">
                  <thead>
                  <tr class="text-center"> 
                    <th>SCALE</th>
                    <th>DESCRIPTIVE RATING</th>
                    <th>QUALTITATIVE DESCRIPTION</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                    <tr>
                       <td class="text-center">5</td>
                       <td class="text-center">Outstanding</td>
                       <td class="text-justify text-center">The performance almost always exceeds the job requirements. The Faculty is an exceptional role model</td>
                    </tr>
                    <tr>
                       <td class="text-center">4</td>
                       <td class="text-center">Very Satisfactory</td>
                       <td class="text-justify text-center">The performance meets and often exceeds the job requirements</td>
                    </tr>
                    <tr>
                       <td class="text-center">3</td>
                       <td class="text-center">Satisfactory</td>
                       <td class="text-justify text-center">The performance meets job requirements</td>
                    </tr>
                    <tr>
                       <td class="text-center">2</td>
                       <td class="text-center">Fair</td>
                       <td class="text-justify text-center">The performance needs some development to meet job requirements</td>
                    </tr>
                    <tr>
                       <td class="text-center">1</td>
                       <td class="text-center">Poor</td>
                       <td class="text-justify text-center">The faculty fails to meet the job requirements</td>
                    </tr>
                  </tbody>
                </table>
         
                <br><br>

                <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                  <thead>
                    <tr>
                      <th scope="col">A. Commitment</th>
                      <th colspan="5" scope="col">Scale</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1.  Demonstrates sensitivity to student’s ability to attend and absorb content information.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                    <tr>
                      <td>2.  Integrates sensitivity his/her learning objectives with those of the students in a collaborative process.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                    <tr>
                      <td>3.  Makes self-available to students beyond official time.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr><tr>
                      <td>4.  Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                    <tr>
                      <td>5.  Keeps acurate records of student’s performance and prompt submission of the same.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                  </tbody>
                </table>

              <br>

              <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                <thead>
                  <tr>
                    <th scope="col">B.  Knowledge of Subject</th>
                    <th colspan="5" scope="col">Scale</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1.  Demonstrates mastery of the subject matter (explain the subject matter without relying solely on the prescribe textbook).</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>2.  Draws and share information on the stage of the art of the theory and practice in his/her discipline.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>3.  Integrates subject to practical circumstances learning intents/purposes of the students.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>4.  Explains the relevance of present topics to the previous lessons and relates the subject matter to relevant current issues and/or daily life activities.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>5.  Demonstrate up-to-date knowledge and/or awareness on current trends and issues of the subject.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                </tbody>
              </table>

              <br>

              <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                <thead>
                  <tr>
                    <th scope="col">C.  Teaching for independent learning</th>
                    <th colspan="5" scope="col">Scale</th>
                </thead>
                <tbody>
                  <tr>
                    <td>1.  Creates teaching strategies that allow students to practice using concept they need to understand (interactive discussion).</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>2.  Enhances student self-steem and/or gives due recognition to students performance/ potencial </td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>3.  Allows students to create their own course with objectives and realistically defined student- professor rules and make them accountable for their performance.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr><tr>
                    <td>4.  Allows students to think independently and make their own decisions and holding them accountable for their performance based largely on their success in executing decisions.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>5.  Encourages students to learn beyond what is required and help/guide the students how to apply the concept learned. </td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                </tbody>
              </table>

              <br>

              <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                <thead>
                  <tr>
                    <th scope="col">D.  Management of Learning</th>
                    <th colspan="5" scope="col">Scale</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1.  Create opportunities for intensive and/or extensive contribution of students in the class activities(eg.breaks class into dyads, triads or buzz/ task group).</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>2.  Assumes roles as facilitators, resource person, coach inquisitor, integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>3.  Designs and implements learning conditions  and  experience that promotes healthy exchange  and/or confrontations</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr><tr>
                    <td>4.  Structures/re-structures learning and teaching-learning context to enhance attaiment of collective learning objectives.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>5.  Use of Instructional Materials (audio/video materials: fieldtrips, film showing, computer aided instruction and etc.) to reinforces learning processors. </td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
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
<script src="print.js"></script>
<?php } else { ?>




<!-- PRINT CRITERIA FOR EVALUATION FOR LOGGED IN ADMIN ONLY -->
<style>
 #example111 th:first-child {
    width: 700px; /* Adjust the width as needed */
  }
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Evaluation criteria</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="profile.php">Home</a></li>
              <li class="breadcrumb-item active">Evaluation criteria</li>
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
          <div class="card-header text-center">
            <button id="printButton" class="btn btn-success btn-sm float-sm-right mr-4 mb-3"><i class="fa-solid fa-print"></i> Print</button>
            <div class="card-body">
              <div id="printElement">
                <h6>Instrument for Instruction/Teaching Effectiveness</h6>
                <?php 
                  if (count($years) === 2) {
                      $startYear = trim($years[0]);
                      $endYear = trim($years[1]);
                      echo '<h6>Rating Period: <span class="text-bold" style="text-decoration: underline;">'.$startYear.'</span> to <span class="text-bold" style="text-decoration: underline;">'.$endYear.'</span></h6>';
                  } else {
                      // Handle the case where the data is not in the expected format
                      echo "<h6>Invalid academic year format</h6>";
                  }
                ?>

                <br>

                <p class="text-left">Instructions: Please evaluate the faculty using the scale below. Encircle your rating.</p>
                <table class="table table-bordered table-hover text-sm table-sm">
                  <thead>
                  <tr class="text-center"> 
                    <th>SCALE</th>
                    <th>DESCRIPTIVE RATING</th>
                    <th>QUALTITATIVE DESCRIPTION</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                    <tr>
                       <td class="text-center">5</td>
                       <td class="text-center">Outstanding</td>
                       <td class="text-justify text-center">The performance almost always exceeds the job requirements. The Faculty is an exceptional role model</td>
                    </tr>
                    <tr>
                       <td class="text-center">4</td>
                       <td class="text-center">Very Satisfactory</td>
                       <td class="text-justify text-center">The performance meets and often exceeds the job requirements</td>
                    </tr>
                    <tr>
                       <td class="text-center">3</td>
                       <td class="text-center">Satisfactory</td>
                       <td class="text-justify text-center">The performance meets job requirements</td>
                    </tr>
                    <tr>
                       <td class="text-center">2</td>
                       <td class="text-center">Fair</td>
                       <td class="text-justify text-center">The performance needs some development to meet job requirements</td>
                    </tr>
                    <tr>
                       <td class="text-center">1</td>
                       <td class="text-center">Poor</td>
                       <td class="text-justify text-center">The faculty fails to meet the job requirements</td>
                    </tr>
                  </tbody>
                </table>
         
                <br><br>

                <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                  <thead>
                    <tr>
                      <th scope="col">A. Commitment</th>
                      <th colspan="5" scope="col">Scale</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1.  Demonstrates sensitivity to student’s ability to attend and absorb content information.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                    <tr>
                      <td>2.  Integrates sensitivity his/her learning objectives with those of the students in a collaborative process.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                    <tr>
                      <td>3.  Makes self-available to students beyond official time.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr><tr>
                      <td>4.  Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                    <tr>
                      <td>5.  Keeps acurate records of student’s performance and prompt submission of the same.</td>
                      <td class="p-2 text-center">1</td>
                      <td class="p-2 text-center">2</td>
                      <td class="p-2 text-center">3</td>
                      <td class="p-2 text-center">4</td>
                      <td class="p-2 text-center">5</td>
                    </tr>
                  </tbody>
                </table>

              <br>

              <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                <thead>
                  <tr>
                    <th scope="col">B.  Knowledge of Subject</th>
                    <th colspan="5" scope="col">Scale</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1.  Demonstrates mastery of the subject matter (explain the subject matter without relying solely on the prescribe textbook).</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>2.  Draws and share information on the stage of the art of the theory and practice in his/her discipline.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>3.  Integrates subject to practical circumstances learning intents/purposes of the students.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>4.  Explains the relevance of present topics to the previous lessons and relates the subject matter to relevant current issues and/or daily life activities.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>5.  Demonstrate up-to-date knowledge and/or awareness on current trends and issues of the subject.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                </tbody>
              </table>

              <br>

              <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                <thead>
                  <tr>
                    <th scope="col">C.  Teaching for independent learning</th>
                    <th colspan="5" scope="col">Scale</th>
                </thead>
                <tbody>
                  <tr>
                    <td>1.  Creates teaching strategies that allow students to practice using concept they need to understand (interactive discussion).</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>2.  Enhances student self-steem and/or gives due recognition to students performance/ potencial </td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>3.  Allows students to create their own course with objectives and realistically defined student- professor rules and make them accountable for their performance.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr><tr>
                    <td>4.  Allows students to think independently and make their own decisions and holding them accountable for their performance based largely on their success in executing decisions.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>5.  Encourages students to learn beyond what is required and help/guide the students how to apply the concept learned. </td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                </tbody>
              </table>

              <br>

              <table id="example111" class="table table-bordered table-hover text-sm table-sm">
                <thead>
                  <tr>
                    <th scope="col">D.  Management of Learning</th>
                    <th colspan="5" scope="col">Scale</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1.  Create opportunities for intensive and/or extensive contribution of students in the class activities(eg.breaks class into dyads, triads or buzz/ task group).</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>2.  Assumes roles as facilitators, resource person, coach inquisitor, integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>3.  Designs and implements learning conditions  and  experience that promotes healthy exchange  and/or confrontations</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr><tr>
                    <td>4.  Structures/re-structures learning and teaching-learning context to enhance attaiment of collective learning objectives.</td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
                  <tr>
                    <td>5.  Use of Instructional Materials (audio/video materials: fieldtrips, film showing, computer aided instruction and etc.) to reinforces learning processors. </td>
                    <td class="p-2 text-center">1</td>
                    <td class="p-2 text-center">2</td>
                    <td class="p-2 text-center">3</td>
                    <td class="p-2 text-center">4</td>
                    <td class="p-2 text-center">5</td>
                  </tr>
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
<script src="print.js"></script>

<!-- END PRINT CRITERIA FOR EVALUATION FOR LOGGED IN ADMIN ONLY -->



<?php } include 'footer.php'; ?>

<script>
   $(window).on('load', function() {
    document.getElementById("printButton").click();
   })
 </script>