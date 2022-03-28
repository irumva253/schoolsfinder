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
        <title>Account Notifications - Schools Finder</title>
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
                                            Account Settings - Notifications
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
                            <a class="nav-link" href="admin-account-security.jsp">Security</a>
                            <a class="nav-link active" href="admin-account-notifications.jsp">Notifications</a>
                        </nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-lg-8">
                                <!-- Email notifications preferences card-->
                                <div class="card card-header-actions mb-4">
                                    <div class="card-header">
                                        Email Notifications
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" id="flexSwitchCheckChecked" type="checkbox" checked="" />
                                            <label class="form-check-label" for="flexSwitchCheckChecked"></label>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (default email)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputNotificationEmail">Default notification email</label>
                                                <input class="form-control" id="inputNotificationEmail" type="email" value="name@example.com" disabled="" />
                                            </div>
                                            <!-- Form Group (email updates checkboxes)-->
                                            <div class="mb-0">
                                                <label class="small mb-2">Choose which types of email updates you receive</label>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkAccountChanges" type="checkbox" checked="" />
                                                    <label class="form-check-label" for="checkAccountChanges">Changes made to your account</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkAccountGroups" type="checkbox" checked="" />
                                                    <label class="form-check-label" for="checkAccountGroups">Changes are made to groups you're part of</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkProductUpdates" type="checkbox" checked="" />
                                                    <label class="form-check-label" for="checkProductUpdates">Product updates for products you've purchased or starred</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkProductNew" type="checkbox" checked="" />
                                                    <label class="form-check-label" for="checkProductNew">Information on new products and services</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkPromotional" type="checkbox" />
                                                    <label class="form-check-label" for="checkPromotional">Marketing and promotional offers</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" id="checkSecurity" type="checkbox" checked="" disabled="" />
                                                    <label class="form-check-label" for="checkSecurity">Security alerts</label>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- SMS push notifications card-->
                                <div class="card card-header-actions mb-4">
                                    <div class="card-header">
                                        Push Notifications
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" id="smsToggleSwitch" type="checkbox" checked="" />
                                            <label class="form-check-label" for="smsToggleSwitch"></label>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (default SMS number)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputNotificationSms">Default SMS number</label>
                                                <input class="form-control" id="inputNotificationSms" type="tel" value="123-456-7890" disabled="" />
                                            </div>
                                            <!-- Form Group (SMS updates checkboxes)-->
                                            <div class="mb-0">
                                                <label class="small mb-2">Choose which types of push notifications you receive</label>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsComment" type="checkbox" checked="" />
                                                    <label class="form-check-label" for="checkSmsComment">Someone comments on your post</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsShare" type="checkbox" />
                                                    <label class="form-check-label" for="checkSmsShare">Someone shares your post</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsFollow" type="checkbox" checked="" />
                                                    <label class="form-check-label" for="checkSmsFollow">A user follows your account</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsGroup" type="checkbox" />
                                                    <label class="form-check-label" for="checkSmsGroup">New posts are made in groups you're part of</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" id="checkSmsPrivateMessage" type="checkbox" checked="" />
                                                    <label class="form-check-label" for="checkSmsPrivateMessage">You receive a private message</label>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <!-- Notifications preferences card-->
                                <div class="card">
                                    <div class="card-header">Notification Preferences</div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (notification preference checkboxes)-->
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkAutoGroup" type="checkbox" checked="" />
                                                <label class="form-check-label" for="checkAutoGroup">Automatically subscribe to group notifications</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="checkAutoProduct" type="checkbox" />
                                                <label class="form-check-label" for="checkAutoProduct">Automatically subscribe to new product notifications</label>
                                            </div>
                                            <!-- Submit button-->
                                            <button class="btn btn-danger-soft text-danger">Unsubscribe from all notifications</button>
                                        </form>
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
