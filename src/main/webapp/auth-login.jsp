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
        <title>Login - Schools in Rwanda </title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements="" defer="" src="ajax/libs/font-awesome/5.15.3/js/all.min.js" ></script>
        <script src="ajax/libs/feather-icons/4.28.0/feather.min.js" ></script>
    <script async src='cdn-cgi/bm/cv/669835187/api.js'></script></head>
    
    <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
    
    <body class="bg-dark">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container-xl px-4">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <!-- Basic login form-->
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header justify-content-center"><h4 class="fw-light my-1">Login</h4></div>
                                    <div class="card-body">
                                        <!-- Login form-->
                                        <form action="Login_auth" method="post">
                                            <!-- Form Group (email address)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control" id="inputEmailAddress" type="email" name="email" placeholder="Enter email address"  required/>
                                            </div>
                                            <!-- Form Group (password)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputPassword">Password</label>
                                                <input class="form-control" id="inputPassword" type="password" name="password" placeholder="Enter password" required />
                                            </div>
                                            <!-- Form Group (remember password checkbox)-->
                                            <div class="mb-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" id="rememberPasswordCheck" type="checkbox" value="" />
                                                    <label class="form-check-label" for="rememberPasswordCheck">Remember password</label>
                                                </div>
                                            </div>
                                            <!-- Form Group (login box)-->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="auth-password-recovery.jsp">Forgot Password?</a>
                                                <button type="submit" class="btn btn-primary">Login</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">      
                                          <p> ${message}</p>
                                        <div class="small"><a href="auth-signup.jsp">Need an account? Sign up!</a></div>
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
        <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6c4ea22d4bbcfed2',m:'34atcFGP8_ZtiZ6PSy_str_2zqred5m0E3omDyTSSSY-1640734824-0-AX7XqyovSNQbFgiimyHH33vuWJ+OQZuJbDjyVhztQTlPfvxJmHzQ0mhHUF5zt9ic50CTPMbvL5QuXwwTlZJfu8mKiE6L7hg23QZXXUtGtrorNim8IPTLaDAB90Q4zs5dYgahrjyx0Msin9/oHM6Dhb8=',s:[0x9f06b201ad,0xb86b6470c4],}})();</script><script defer src="beacon.min.js" data-cf-beacon='{"rayId":"6c4ea22d4bbcfed2","token":"6e2c2575ac8f44ed824cef7899ba8463","version":"2021.12.0","si":100}' ></script>
        <script type="text/javascript">
 
		    $(document).ready(function() {
		        $("#loginForm").validate({
		            rules: {
		                email: {
		                    required: true,
		                    email: true
		                },
		         
		                password: "required",
		            },
		             
		            messages: {
		                email: {
		                    required: "Please enter email",
		                    email: "Please enter a valid email address"
		                },
		                 
		                password: "Please enter password"
		            }
		        });
		 
               });
</script>
</body>
</html>
