<title>i-CCIT Faculty Evaluation System | Register</title>
<?php include 'navbar.php';?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" >
    
    <!-- Main content -->
    <div class="content">
      <div class="container">
        <div class="row d-flex justify-content-center">

          <div class="col-lg-10 mt-5">
            <form action="processes.php" method="POST" enctype="multipart/form-data">
            <div class="card card-outline card-primary">
              <div class="card-header text-center">
                <a href="#" class="h1"><b>Student registration</b></a>
              </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12 mt-1 mb-2">
                          <a class="h5 text-primary"><b>Basic information</b></a>
                          <div class="dropdown-divider"></div>
                        </div>
                        <div class="col-lg-4">
                          <div class="form-group">
                            <span class="text-dark"><b>Student type</b></span>
                            <select class="form-control" name="stud_type" id="stud_type" required>
                              <option selected disabled value="">Select type</option>
                              <option value="Regular">Regular student</option>
                              <option value="Irregular">Irregular student</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-lg-4"></div>
                        <div class="col-lg-4"></div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                            <span class="text-dark"><b>Student ID</b></span>
                            <input type="text" class="form-control"  placeholder="Student ID" name="student_ID" required>
                          </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                            <span class="text-dark"><b>Year and Section</b></span>
                            <select class="form-control" name="year_section" id="year_section" required>
                              <option selected disabled value="">Select section</option>
                              <?php 
                                $fetch = mysqli_query($conn, "SELECT * FROM section");
                                if(mysqli_num_rows($fetch) > 0) {
                                  while ($row = mysqli_fetch_array($fetch)) {
                                    ?>
                                    <option value="<?php echo $row['section_Id']; ?>"><?php echo $row['yr_level'].' - '.$row['section']; ?></option>
                                    <?php
                                  }
                                } else { ?>
                                  <option value="">No record found</option>
                              <?php } ?>
                            </select>
                          </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                            <span class="text-dark"><b>Department name</b></span>
                            <select class="form-control" name="department" id="department" required>
                              <option selected disabled value="">Select department</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-lg-4 col col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>First name</b></span>
                              <input type="text" class="form-control"  placeholder="First name" name="firstname" required onkeyup="lettersOnly(this)">
                            </div>
                        </div>
                        <div class="col-lg-3 col col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                              <span class="text-dark"><b>Middle name</b></span>
                              <input type="text" class="form-control"  placeholder="Middle name" name="middlename" onkeyup="lettersOnly(this)">
                          </div>
                        </div>
                        <div class="col-lg-3 col col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>Last name</b></span>
                              <input type="text" class="form-control"  placeholder="Last name" name="lastname" required onkeyup="lettersOnly(this)">
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                            <span class="text-dark"><b>Ext/Suffix</b></span>
                            <input type="text" class="form-control"  placeholder="Ext/Suffix" name="suffix">
                          </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>Date of Birth</b></span>
                              <input type="date" class="form-control" name="dob" placeholder="Date of birth" required id="birthdate" onchange="calculateAge()">
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>Age</b></span>
                              <input type="text" class="form-control bg-white" placeholder="Age" required id="txtage" name="age" readonly>
                            </div>
                        </div>
                       
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                            <span class="text-dark"><b>Sex</b></span>
                            <select class="form-control" name="gender" required>
                              <option selected disabled value="">Select sex</option>
                              <option value="Male">Male</option>
                              <option value="Female">Female</option>
                              <option value="Non-Binary">Non-Binary</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>Email</b></span>
                              <input type="email" class="form-control" placeholder="email@gmail.com" name="email" id="email"  onkeydown="validation()" onkeyup="validation()" required>
                              <small id="text" style="font-style: italic;"></small>
                            </div>
                        </div>

                      
                        <div class="col-lg-12 mt-3 mb-2 col-md-12 col-sm-12 col-12">
                          <a class="h5 text-primary"><b>Account password</b></a>
                          <div class="dropdown-divider"></div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>Password</b></span>
                              <input type="password" id="password" class="form-control" name="password" placeholder="Password" minlength="8">
                              <span id="password-message" class="text-bold" style="font-style: italic;font-size: 12px;color: #e60000;"></span>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>Confirm password</b></span>
                              <input type="password" class="form-control" name="cpassword" placeholder="Retype password" id="cpassword" onkeyup="validate_password_confirm_password()" required minlength="8">
                              <small id="wrong_pass_alert" class="text-bold" style="font-style: italic;font-size: 12px;"></small>
                            </div>
                        </div>


                        <div class="col-lg-12 mt-3 mb-2">
                          <a class="h5 text-primary"><b>Additional information</b></a>
                          <div class="dropdown-divider"></div>
                        </div>
                        
                        <div class="col-lg-8 col-md-8 col-sm-6 col-12">
                            <div class="form-group">
                              <span class="text-dark"><b>Upload photo (COR or ID)</b></span>
                              <div class="input-group">
                                <div class="custom-file">
                                  <input type="file" class="custom-file-input" id="exampleInputFile" name="fileToUpload" onchange="getImagePreview(event)" required>
                                  <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                                <!-- <div class="input-group-append">
                                  <span class="input-group-text">Upload</span>
                                </div> -->

                              </div>
                              <p class="help-block text-danger">Max. 500KB</p>
                            </div>
                        </div>
                         <!-- LOAD IMAGE PREVIEW -->
                        <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                            <div class="form-group" id="preview">
                            </div>
                        </div>
                        <div class="col-12">
                          <hr>
                          <p>Already have an account? <a href="login.php">Click here!</a></p>
                        </div>

                    </div>
                    <!-- END ROW -->
                </div>
                <div class="card-footer">
                  <div class="float-right">
                    <button type="submit" class="btn bg-primary" name="create_user" id="create_admin"><i class="fa-solid fa-floppy-disk"></i> Submit</button>
                  </div>
                </div>
            </div>
            </form>
          </div>
        </div>
      </div>
    <!-- /.content -->
    </div>
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
  // Get references to the dropdowns
  var studentTypeDropdown = document.getElementById('stud_type');
  var yearSectionDropdown = document.getElementById('year_section');

  // Add an event listener to the Student Type dropdown
  studentTypeDropdown.addEventListener('change', function() {
    if (studentTypeDropdown.value === 'Irregular') {
      // If Irregular is selected, disable Year and Section dropdown
      yearSectionDropdown.disabled = true;
      yearSectionDropdown.removeAttribute('required');
    } else {
      // If Regular is selected, enable Year and Section dropdown and make it required
      yearSectionDropdown.disabled = false;
      yearSectionDropdown.setAttribute('required', 'required');
    }
  });

  $(document).ready(function () {
    // When the "Year and Section" dropdown changes
    $('#year_section').on('change', function () {
      // Get the selected section ID
      var sectionId = $(this).val();
      
      if (sectionId) {
        // Make an Ajax request to fetch the department for the selected section
        $.ajax({
          type: 'POST',
          url: 'processes.php', // Create this PHP file to handle the request
          data: { section_id: sectionId },
          success: function (response) {
            // Update the "Department name" dropdown with the received data
            $('#department').html(response);
          }
        });
      } else {
        // Clear the "Department name" dropdown if no section is selected
        $('#department').html('<option selected disabled value="">Select department</option>');
      }
    });
  });
</script>
