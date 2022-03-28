<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sign Up - Schools in Rwanda</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements="" defer="" src="ajax/libs/font-awesome/5.15.3/js/all.min.js" ></script>
        <script src="ajax/libs/feather-icons/4.28.0/feather.min.js" ></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script async src='cdn-cgi/bm/cv/669835187/api.js'></script></head>
    <body class="bg-dark">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container-xl px-4">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <!-- Basic registration form-->
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header justify-content-center"><h3 class="fw-light my-6">Create Account</h3>                                
                                    </div>
                                    <div class="card-body">
                                        <!-- Registration form-->
                                        <form action="Signup_auth" method="post">
                                            <!-- Form Row-->
                                            <div class="row gx-3">
                                                <div class="col-md-6">
                                                    <!-- Form Group (first name)-->
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="inputFirstName">First Name</label>
                                                        <input class="form-control" id="inputFirstName" type="text" name="fname" placeholder="Enter first name" required />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <!-- Form Group (last name)-->
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="inputLastName">Last Name</label>
                                                        <input class="form-control" id="inputLastName" type="text" name="lname" placeholder="Enter last name" required />
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Form Group (email address)            -->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control" id="inputEmailAddress" type="email" name="email" aria-describedby="emailHelp" placeholder="Enter email address" required />
                                            </div>
                                            <!-- Form Row    -->
                                            <div class="row gx-3">
                                                <div class="col-md-6">
                                                    <!-- Form Group (password)-->
                                                    <div class="mb-3" id="CheckPasswordMatch">
                                                        <label class="small mb-1" for="inputPassword">Password (max 6 characters)</label>
                                                        <input class="form-control" id="inputPassword" type="password" name="password" placeholder="Enter password" maxlength="8" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  required />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <!-- Form Group (confirm password)-->
                                                    <div class="mb-3" id="CheckPasswordMatch">
                                                        <label class="small mb-1" for="inputConfirmPassword">Confirm Password</label>
                                                        
                                                        <input class="form-control" id="inputConfirmPassword" type="password" name="password2" placeholder="Confirm password" maxlength="8" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  required/>
                                                    </div>
                                                </div>                                               
                                            </div>
                                           <!-- Form Row address  --> 
                                         <div class="row gx-3">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="inputPhone">Phone</label>
                                                        <input class="form-control" id="inputPhone" type="tel" name="phone" placeholder="Enter phone number" maxlength="10" required />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="inputStatus" >Who are you?</label>
                                                        <select class="form-select" aria-label="Default select example" name="role">
                                                        <option> -- Your Role --</option>
                                                        <option value="Dean">School Owner</option>
                                                        <option value="Student">Student</option>
                                                        <option value="Parent">Parent</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <label class="small mb-1" for="input">Gender</label>
                                              <label class="radio-inline">
												 <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="Male"> Male &nbsp; &nbsp;
												 <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="Female"> Female
												</label>
											
                                            </div>
                                             <hr>
                                              <div class="mb-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" id="rememberPasswordCheck" type="checkbox" name="terms" value="Agreed" required />
                                                    <label class="form-check-label" for="rememberPasswordCheck">By clicking the bellow button, you have agreed to our <a href="#">Terms & Conditions</a></label>
                                                </div>
                                            </div>
                                            <p id="validate-status"></p>
                                            <script>
                                            $(document).ready(function() {
                                            	  $("#password2").keyup(validate);
                                            	});


                                            	function validate() {
                                            	  var password = $("#password").val();
                                            	  var password2 = $("#password2").val();

                                            	    
                                            	 
                                            	    if(password == password2) {
                                            	       $("#validate-status").text("valid");        
                                            	    }
                                            	    else {
                                            	        $("#validate-status").text("invalid");  
                                            	    }
                                            	    
                                            	}
    										</script>
                                            <!-- Form Group (create account submit)-->
                                            <button type="submit" class="btn btn-primary btn-block">Create Account</button>                                      
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="auth-login.jsp">Have an account? Go to login</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
           <div id="layoutAuthentication_footer">
                <footer class="footer-admin mt-auto footer-dark">
                    <div class="container-xl px-4">
                        <div class="row">
                        <div class="col-md-6 small">
                            <p><a target="_blank" href="https://www.schoolsfinder.com">&copy Schools Finder</a>&nbsp; <script>document.write(new Date().getFullYear());</script>, All rights reserved.
                             </p>

                            </div>
                            <div class="col-md-6 text-md-end small">
                                <a href="#!">Privacy Policy</a>
                                ·
                                <a href="#!">Terms & Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="npm/bootstrap_5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="js/scripts.js"></script>
        <script src="assets_subdomain/js/sb-customizer.js"></script>
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6c4ea22f4922b3ee',m:'qLaCmCIkHG9hA212P068oSXjhuSmoNwcjQ.rjXVSdNk-1640734824-0-Aea5Jyy5ns3vp4xulY1LugZq9XX1mUpX2K9sJ/4RxVJidgZwT+0Qq+c8LV2e4NKXhzdxntkvMAvzev1+h0yr02L0f2rtJncoAbmDmKFbsuDkyDyNflw5Tbo5ZJl2boce/EMbOpBNP3NzOIBT7wVrYBE=',s:[0x919b57e152,0x27f70aaaf0],}})();</script><script defer src="beacon.min.js" data-cf-beacon='{"rayId":"6c4ea22f4922b3ee","token":"6e2c2575ac8f44ed824cef7899ba8463","version":"2021.12.0","si":100}' ></script>
</body>
</html>
