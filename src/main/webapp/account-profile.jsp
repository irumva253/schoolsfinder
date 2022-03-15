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
        <title>Account Settings - Profile - Schools Finder</title>
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
                <nav class="sidenav shadow-right sidenav-light">
                    <div class="sidenav-menu">
                        <div class="nav accordion" id="accordionSidenav">
                            <!-- Sidenav Menu Heading (Account)-->
                            <!-- * * Note: * * Visible only on and above the sm breakpoint-->
                            <div class="sidenav-menu-heading d-sm-none">Account</div>
                            <!-- Sidenav Link (Alerts)-->
                            <!-- * * Note: * * Visible only on and above the sm breakpoint-->
                            <a class="nav-link d-sm-none" href="#!">
                                <div class="nav-link-icon"><i data-feather="bell"></i></div>
                                Alerts
                                <span class="badge bg-warning-soft text-warning ms-auto">4 New!</span>
                            </a>
                            <!-- Sidenav Link (Messages)-->
                            <!-- * * Note: * * Visible only on and above the sm breakpoint-->
                            <a class="nav-link d-sm-none" href="#!">
                                <div class="nav-link-icon"><i data-feather="mail"></i></div>
                                Messages
                                <span class="badge bg-success-soft text-success ms-auto">2 New!</span>
                            </a>
                            <!-- Sidenav Menu Heading (Core)-->
                            <div class="sidenav-menu-heading">Core</div>
                            <!-- Sidenav Accordion (Dashboard)-->
                            <a class="nav-link" href="dashboard-admin.jsp">
                                <div class="nav-link-icon"><i data-feather="activity"></i></div>
                                Dashboard
                            </a>
                            <!-- Sidenav Heading (Custom)-->
                            <div class="sidenav-menu-heading">Custom</div>
                            <!-- Sidenav Accordion (Applications)-->
                            <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseApps" aria-expanded="false" aria-controls="collapseApps">
                                <div class="nav-link-icon"><i data-feather="globe"></i></div>
                                Applications
                                <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseApps" data-bs-parent="#accordionSidenav">
                                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavAppsMenu">
                                    <!-- Nested Sidenav Accordion (Apps -> User Management)-->
                                    <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#appsCollapseUserManagement" aria-expanded="false" aria-controls="appsCollapseUserManagement">
                                        User Management
                                        <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="appsCollapseUserManagement" data-bs-parent="#accordionSidenavAppsMenu">
                                        <nav class="sidenav-menu-nested nav">
                                            <a class="nav-link" href="user-management-list.jsp">Users List</a>
                                            <a class="nav-link" href="user-management-edit-user.jsp">Edit User</a>
                                            <a class="nav-link" href="user-management-add-user.jsp">Add User</a>
                                            <a class="nav-link" href="user-management-groups-list.jsp">Groups List</a>
                                            <a class="nav-link" href="user-management-org-details.jsp">Organization Details</a>
                                        </nav>
                                    </div>
                                    <!-- Nested Sidenav Accordion (Apps -> Posts Management)-->
                                    <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#appsCollapsePostsManagement" aria-expanded="false" aria-controls="appsCollapsePostsManagement">
                                        Posts Management
                                        <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="appsCollapsePostsManagement" data-bs-parent="#accordionSidenavAppsMenu">
                                        <nav class="sidenav-menu-nested nav">
                                            <a class="nav-link" href="blog-management-posts-list.jsp">Posts List</a>
                                            <a class="nav-link" href="blog-management-create-post.jsp">Create Post</a>
                                            <a class="nav-link" href="blog-management-edit-post.jsp">Edit Post</a>
                                            <a class="nav-link" href="blog-management-posts-admin.jsp">Posts Admin</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <!-- Sidenav Accordion (Account)-->
                            <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseFlows" aria-expanded="false" aria-controls="collapseFlows">
                                <div class="nav-link-icon"><i data-feather="users"></i></div>
                                Account
                                <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseFlows" data-bs-parent="#accordionSidenav">
                                        <nav class="sidenav-menu-nested nav">
                                            <a class="nav-link" href="account-profile.jsp">Profile</a>
                                            <a class="nav-link" href="account-billing.jsp">Billing</a>
                                            <a class="nav-link" href="account-security.jsp">Security</a>
                                            <a class="nav-link" href="account-notifications.jsp">Notifications</a>
                                        </nav>
                            </div>
                            <!-- Sidenav Heading -->
                           <!-- 
                           
                           
                           
                           
                           
                           
                           
                           
                            -->
                            <!-- Sidenav Heading (Overview)-->
                            <div class="sidenav-menu-heading">Overview</div>
                            <!-- Sidenav Link (Charts)-->
                            <a class="nav-link" href="charts.jsp">
                                <div class="nav-link-icon"><i data-feather="bar-chart"></i></div>
                                Charts
                            </a>
                            <!-- Sidenav Link (Tables)-->
                            <a class="nav-link" href="tables.jsp">
                                <div class="nav-link-icon"><i data-feather="filter"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                    <!-- Sidenav Footer-->
                    <div class="sidenav-footer">
                        <div class="sidenav-footer-content">
                            <div class="sidenav-footer-subtitle">Logged in as:</div>
                            <div class="sidenav-footer-title">${user.firstname} ${user.lastname}</div>
                        </div>
                    </div>
                </nav>
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
                                            Account Settings - Profile
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
                            <a class="nav-link active ms-0" href="account-profile.jsp">Profile</a>
                            <a class="nav-link" href="account-billing.jsp">Billing</a>
                            <a class="nav-link" href="account-security.jsp">Security</a>
                            <a class="nav-link" href="account-notifications.jsp">Notifications</a>
                        </nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-xl-4">
                                <!-- Profile picture card-->
                                <div class="card mb-4 mb-xl-0">
                                    <div class="card-header">Profile Picture</div>
                                    <div class="card-body text-center">
                                        <!-- Profile picture image-->
                                        <img class="img-account-profile rounded-circle mb-2" src="assets/img/illustrations/profiles/profile-1.png" alt="" />
                                        <!-- Profile picture help block-->
                                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                                        <!-- Profile picture upload button-->
                                        <button class="btn btn-primary" type="button">Upload new image</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8">
                                <!-- Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header">Account Details</div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (username)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the site)</label>
                                                <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username" value="username" />
                                            </div>
                                            <!-- Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (first name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputFirstName">First name</label>
                                                    <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" value="Valerie" />
                                                </div>
                                                <!-- Form Group (last name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLastName">Last name</label>
                                                    <input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" value="Luna" />
                                                </div>
                                            </div>
                                            <!-- Form Row        -->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (organization name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputOrgName">Organization name</label>
                                                    <input class="form-control" id="inputOrgName" type="text" placeholder="Enter your organization name" value="Start Bootstrap" />
                                                </div>
                                                <!-- Form Group (location)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLocation">Location</label>
                                                    <input class="form-control" id="inputLocation" type="text" placeholder="Enter your location" value="San Francisco, CA" />
                                                </div>
                                            </div>
                                            <!-- Form Group (email address)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                                <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your email address" value="name@example.com" />
                                            </div>
                                            <!-- Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (phone number)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputPhone">Phone number</label>
                                                    <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number" value="555-123-4567" />
                                                </div>
                                                <!-- Form Group (birthday)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputBirthday">Birthday</label>
                                                    <input class="form-control" id="inputBirthday" type="text" name="birthday" placeholder="Enter your birthday" value="06/10/1988" />
                                                </div>
                                            </div>
                                            <!-- Save changes button-->
                                            <button class="btn btn-primary" type="button">Save changes</button>
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
