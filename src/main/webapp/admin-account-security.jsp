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
        <title>Account Security - Schools Finder</title>
        <link href="npm/litepicker/dist/css/litepicker.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements="" defer="" src="ajax/libs/font-awesome/5.15.3/js/all.min.js" ></script>
        <script src="ajax/libs/feather-icons/4.28.0/feather.min.js" ></script>
    <script async src='cdn-cgi/bm/cv/669835187/api.js'></script></head>
    <body class="nav-fixed">
    <%@include file="includes-backend/navbar-admin.jsp" %>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <%@include file="includes-backend/admin-sidenav.jsp" %>
            </div>
            <div id="layoutSidenav_content">
                              <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-xl px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="user"></i></div>
                                            Account Settings - Security
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-4">
                        <!-- Account page navigation-->
                     <nav class="nav nav-borders">
                            <a class="nav-link ms-0" href="admin-account-profile.jsp">Profile</a>
                            <a class="nav-link" href="admin-account-billing.jsp">Billing</a>
                            <a class="nav-link active" href="admin-account-security.jsp">Security</a>
                            <a class="nav-link" href="admin-account-notifications.jsp">Notifications</a>
                        </nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-lg-8">
                                <!-- Change password card-->
                                <div class="card mb-4">
                                    <div class="card-header">Change Password</div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (current password)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="currentPassword">Current Password</label>
                                                <input class="form-control" id="currentPassword" type="password" placeholder="Enter current password" />
                                            </div>
                                            <!-- Form Group (new password)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="newPassword">New Password</label>
                                                <input class="form-control" id="newPassword" type="password" placeholder="Enter new password" />
                                            </div>
                                            <!-- Form Group (confirm password)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="confirmPassword">Confirm Password</label>
                                                <input class="form-control" id="confirmPassword" type="password" placeholder="Confirm new password" />
                                            </div>
                                            <button class="btn btn-primary" type="button">Save</button>
                                        </form>
                                    </div>
                                </div>
                                <!-- Security preferences card-->
                                <div class="card mb-4">
                                    <div class="card-header">Security Preferences</div>
                                    <div class="card-body">
                                        <!-- Account privacy optinos-->
                                        <h5 class="mb-1">Account Privacy</h5>
                                        <p class="small text-muted">By setting your account to private, your profile information and posts will not be visible to users outside of your user groups.</p>
                                        <form>
                                            <div class="form-check">
                                                <input class="form-check-input" id="radioPrivacy1" type="radio" name="radioPrivacy" checked="" />
                                                <label class="form-check-label" for="radioPrivacy1">Public (posts are available to all users)</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="radioPrivacy2" type="radio" name="radioPrivacy" />
                                                <label class="form-check-label" for="radioPrivacy2">Private (posts are available to only users in your groups)</label>
                                            </div>
                                        </form>
                                        <hr class="my-4" />
                                        <!-- Data sharing options-->
                                        <h5 class="mb-1">Data Sharing</h5>
                                        <p class="small text-muted">Sharing usage data can help us to improve our products and better serve our users as they navigation through our application. When you agree to share usage data with us, crash reports and usage analytics will be automatically sent to our development team for investigation.</p>
                                        <form>
                                            <div class="form-check">
                                                <input class="form-check-input" id="radioUsage1" type="radio" name="radioUsage" checked="" />
                                                <label class="form-check-label" for="radioUsage1">Yes, share data and crash reports with app developers</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="radioUsage2" type="radio" name="radioUsage" />
                                                <label class="form-check-label" for="radioUsage2">No, limit my data sharing with app developers</label>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <!-- Two factor authentication card-->
                                <div class="card mb-4">
                                    <div class="card-header">Two-Factor Authentication</div>
                                    <div class="card-body">
                                        <p>Add another level of security to your account by enabling two-factor authentication. We will send you a text message to verify your login attempts on unrecognized devices and browsers.</p>
                                        <form>
                                            <div class="form-check">
                                                <input class="form-check-input" id="twoFactorOn" type="radio" name="twoFactor" checked="" />
                                                <label class="form-check-label" for="twoFactorOn">On</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="twoFactorOff" type="radio" name="twoFactor" />
                                                <label class="form-check-label" for="twoFactorOff">Off</label>
                                            </div>
                                            <div class="mt-3">
                                                <label class="small mb-1" for="twoFactorSMS">SMS Number</label>
                                                <input class="form-control" id="twoFactorSMS" type="tel" placeholder="Enter a phone number" value="555-123-4567" />
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- Delete account card-->
                                <div class="card mb-4">
                                    <div class="card-header">Delete Account</div>
                                    <div class="card-body">
                                        <p>Deleting your account is a permanent action and cannot be undone. If you are sure you want to delete your account, select the button below.</p>
                                        <button class="btn btn-danger-soft text-danger" type="button">I understand, delete my account</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>    
        <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="npm/bootstrap_5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="js/scripts.js"></script>
        <script src="ajax/libs/Chart_js/2.9.4/Chart.min.js" ></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="assets/demo/chart-pie-demo.js"></script>
        <script src="npm/litepicker/dist/bundle.js" ></script>
        <script src="js/litepicker.js"></script>
        <script src="assets_subdomain/js/sb-customizer.js"></script>     
        <script src="npm/simple-datatables_latest.js" ></script>
        <script src="js/datatables/datatables-simple-demo.js"></script>
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6c4ea2239ebbfec6',m:'T5xq12oOWC5BGv3hKgXPzvqQLtGpd7VMyzhVhwDW1N8-1640734823-0-AUMUvxxKVYNApay9k10vk0mK1mmlrBfqnI8Sb9evrI/UsGFwPCv10FNPEo16jky4YXrYKCgiN+0DgbzxzB5U9CYqg0+01Boxao3jP0/R0IE0Nd+XFkXqLEsSAPvYt7wXt4B8N1mjlnZMNJvEHkgNCDY=',s:[0x4c319ae30d,0x9c45274cce],}})();</script><script defer src="beacon.min.js" data-cf-beacon='{"rayId":"6c4ea2239ebbfec6","token":"6e2c2575ac8f44ed824cef7899ba8463","version":"2021.12.0","si":100}' ></script>
</body>
</html>
