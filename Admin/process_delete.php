<?php 
	include '../config.php';

	function msg_success($page) {
		$_SESSION['message'] = "Record has been deleted!";
        $_SESSION['text']    = "Deleted successfully!";
        $_SESSION['status']  = "success";
		header("Location: $page");
		exit();
	}


	function msg_failed($page) {
	    $_SESSION['message'] = "Something went wrong while deleting the record";
        $_SESSION['text'] = "Please try again.";
        $_SESSION['status'] = "error";
		header("Location: $page");
		exit();
	}


	// DELETE ADMIN - ADMIN_DELETE.PHP
	if(isset($_POST['delete_admin'])) {
		$user_Id = $_POST['user_Id'];

		$delete = mysqli_query($conn, "DELETE FROM users WHERE user_Id='$user_Id'");
		if($delete) {
			msg_success("academic_mgmt.php?page=create");
		} else {
			msg_failed("admin.php");
        }
	}


	// DELETE USER - USERS_DELETE.PHP
	if(isset($_POST['delete_user'])) {
		$user_Id = $_POST['user_Id'];

		$delete = mysqli_query($conn, "UPDATE users SET student_status=2 WHERE user_Id='$user_Id'");
		if($delete) {
			msg_success("users.php");
		} else {
			msg_failed("users.php");
        }
	}
	


	// DELETE FACULTY - FACULTY_DELETE.PHP
	if(isset($_POST['delete_faculty'])) {
		$user_Id = $_POST['user_Id'];

		$delete = mysqli_query($conn, "DELETE FROM users WHERE user_Id='$user_Id'");
		if($delete) {
			msg_success("faculty.php");
		} else {
			msg_failed("faculty.php");
        }
	}



	// DELETE SUPERVISOR - SUPERVISOR_DELETE.PHP
	if(isset($_POST['delete_supervisor'])) {
		$user_Id = $_POST['user_Id'];

		$delete = mysqli_query($conn, "DELETE FROM users WHERE user_Id='$user_Id'");
		if($delete) {
			msg_success("supervisor.php");
		} else {
			msg_failed("supervisor.php");
        }
	}




	// DELETE SUPERVISORS - SUPERVISORS_DELETE.PHP
	if(isset($_POST['delete_academic_year'])) {
		$acad_Id = $_POST['acad_Id'];

		$delete = mysqli_query($conn, "DELETE FROM academic_year WHERE acad_Id='$acad_Id'");
		if($delete) {
			msg_success("academic.php");
		} else {
			msg_failed("academic.php");
        }
	}



	// DELETE SUBJECT - SUBJECT_DELETE.PHP
	if(isset($_POST['delete_subject'])) {
		$sub_Id = $_POST['sub_Id'];

		$delete = mysqli_query($conn, "DELETE FROM subject WHERE sub_Id='$sub_Id'");
		if($delete) {
		   msg_success("subject.php");
        } else {
		   msg_failed("subject.php");
        }
	}



	// DELETE SeCTION - SeCTION_DELETE.PHP
	if(isset($_POST['delete_section'])) {
		$section_Id = $_POST['section_Id'];

		$delete = mysqli_query($conn, "DELETE FROM section WHERE section_Id='$section_Id'");
		if($delete) {
		   msg_success("section.php");
        } else {
		   msg_failed("section.php");
        }
	}

	


	// Retrieve the values sent via AJAX
	$evaluatedBy = $_POST['evaluated_by'];
	$sectionId = $_POST['section_Id'];
	$subjectId = $_POST['subject_Id'];
	$userId = $_POST['user_Id'];
	$acadId = $_POST['acad_Id'];

	// Prepare the SQL statement to delete the record
	$stmt = $conn->prepare('DELETE FROM evaluation WHERE evaluated_by = ? AND section_Id = ? AND subject_Id = ? AND user_Id = ? AND acad_Id = ?');
	$stmt->bind_param('sssss', $evaluatedBy, $sectionId, $subjectId, $userId, $acadId);
	$stmt->execute();

	// Close the database connection
	$conn->close();

	// Return a response to the AJAX request
	$response = array('success' => true);
	echo json_encode($response);



?>




