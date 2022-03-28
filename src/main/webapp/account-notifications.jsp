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
        <title>Account Settings - Notifications - Schools Finder</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements="" defer="" src="ajax/libs/font-awesome/5.15.3/js/all.min.js" ></script>
        <script src="ajax/libs/feather-icons/4.28.0/feather.min.js" ></script>
    <script async src='cdn-cgi/bm/cv/669835187/api.js'></script></head>
    <body class="nav-fixed">
    <!-- NAVIGATION BAR (Includes)  -->
     <%@include file="includes-backend/navbar.jsp" %> 
     <!-- END -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <%@include file="includes-backend/sidenav.jsp"%> 
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
                            <a class="nav-link ms-0" href="account-profile.jsp">Profile</a>
                            <a class="nav-link" href="account-billing.jsp">Billing</a>
                            <a class="nav-link" href="account-security.jsp">Security</a>
                            <a class="nav-link active" href="account-notifications.jsp">Notifications</a>
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
                <footer class="footer-admin mt-auto footer-light">
                 <%@include file="includes-backend/footer.jsp" %>
                </footer>
            </div>
        </div>
        <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="npm/bootstrap_5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="js/scripts.js"></script>
        <script src="assets_subdomain/js/sb-customizer.js"></script>
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6c4ea2258ec0feda',m:'7YjGhcscDRf4slHbtkykw5I93S67_OjN1eNfy0wqYjU-1640734823-0-AWUrZA4D7xGCXfrJA4jEtR7V0ix21zguxxlMDDq7rtt2hyaW8jWC89fvgA5YMFV2aG4wk2irilIWX2U17xqVih5QldkP/i3HfCr+pugNaeY7qkWzENStYTUCo8UtpPivP1BQ2wxuOuRryibViioO7rM=',s:[0x5cd09d6c5a,0x9d1d78ebc5],}})();</script><script defer src="beacon.min.js" data-cf-beacon='{"rayId":"6c4ea2258ec0feda","token":"6e2c2575ac8f44ed824cef7899ba8463","version":"2021.12.0","si":100}' ></script>
</body>
</html>
