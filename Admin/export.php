<?php 
	include '../config.php';
	include("XLSXLibrary.php");


	// SAVE ADMIN - ADMIN_MGMT.PHP
	if (isset($_POST['export_evaluation'])) {
      $year = mysqli_real_escape_string($conn, $_POST['year']);

      $visitor = [ ['No.', 'Instructor name', 'Section', 'Subject', 'Total Score', 'Ratings', 'Evaluation Date'] ];
 
 	  $id = 0;
  	  $sql = "SELECT *, subject.name, section.section, section.yr_level, AVG(evaluation.grand_total) AS avg_grand_total
                        FROM evaluation
                        JOIN users ON evaluation.user_Id = users.user_Id
                        JOIN subject ON evaluation.subject_Id = subject.sub_Id
                        JOIN section ON evaluation.section_Id = section.section_Id
                        WHERE evaluation.evaluation_status = 1
                        AND YEAR(evaluation.date_evaluated) = $year
                        GROUP BY evaluation.user_Id, evaluation.subject_Id ";
      $res = mysqli_query($conn, $sql);
      if (mysqli_num_rows($res) > 0) {
        foreach ($res as $row) {
          $id++;
          $evaluatedInstructorUserId = $row['user_Id'];
          $evaluatedInstructorQuery = mysqli_query($conn, "SELECT CONCAT(firstname, ' ', middlename, ' ', lastname, ' ', suffix) AS evaluatedInstructor FROM users WHERE user_Id = '$evaluatedInstructorUserId'");
          $evaluatedInstructorRow = mysqli_fetch_array($evaluatedInstructorQuery);

            $avg_grand_total = $row['avg_grand_total'];
            $ratings = "";
	        if ($avg_grand_total >= 95 && $avg_grand_total <= 100) {
	            $ratings = "Outstanding";
	        } elseif ($avg_grand_total >= 90 && $avg_grand_total < 95) {
	            $ratings = "Very Satisfactory";
	        } elseif ($avg_grand_total >= 85 && $avg_grand_total < 90) {
	            $ratings = "Satisfactory";
	        } elseif ($avg_grand_total >= 80 && $avg_grand_total < 85) {
	            $ratings = "Moderately Satisfactory";
	        } elseif ($avg_grand_total >= 75 && $avg_grand_total < 80) {
	            $ratings = "Fair";
	        } elseif ($avg_grand_total < 75) {
	            $ratings = "Poor";
	        }

          $name = $evaluatedInstructorRow['evaluatedInstructor'];
          $visitor = array_merge($visitor, array(array($id, $name, $row['yr_level'].' - '.$row['section'], $row['name'], $row['avg_grand_total'].'/100', $ratings, date("F d, Y", strtotime($row['date_evaluated'])))));
        }
      } else {
        $_SESSION['message'] = "No record found in the database.";
        $_SESSION['text'] = "Please try again.";
        $_SESSION['status'] = "error";
        header("Location: evaluate_history.php");
      }

      $xlsx = SimpleXLSXGen::fromArray($visitor);
      $xlsx->downloadAs('Visitor records.xlsx'); // This will download the file to your local system

      // $xlsx->saveAs('resident.xlsx'); // This will save the file to your server

      echo "<pre>";

      print_r($visitor);

      header('Location: evaluate_history.php');

	}




	
?>



