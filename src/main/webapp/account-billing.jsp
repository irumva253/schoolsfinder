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
        <title>Account Settings - Billing - Schools Finder</title>
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
                                            Account Settings - Billing
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
                            <a class="nav-link active" href="account-billing.jsp">Billing</a>
                            <a class="nav-link" href="account-security.jsp">Security</a>
                            <a class="nav-link" href="account-notifications.jsp">Notifications</a>
                        </nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-lg-4 mb-4">
                                <!-- Billing card 1-->
                                <div class="card h-100 border-start-lg border-start-primary">
                                    <div class="card-body">
                                        <div class="small text-muted">Current monthly bill</div>
                                        <div class="h3">$20.00</div>
                                        <a class="text-arrow-icon small" href="#!">
                                            Switch to yearly billing
                                            <i data-feather="arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-4">
                                <!-- Billing card 2-->
                                <div class="card h-100 border-start-lg border-start-secondary">
                                    <div class="card-body">
                                        <div class="small text-muted">Next payment due</div>
                                        <div class="h3">July 15</div>
                                        <a class="text-arrow-icon small text-secondary" href="#!">
                                            View payment history
                                            <i data-feather="arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-4">
                                <!-- Billing card 3-->
                                <div class="card h-100 border-start-lg border-start-success">
                                    <div class="card-body">
                                        <div class="small text-muted">Current plan</div>
                                        <div class="h3 d-flex align-items-center">Freelancer</div>
                                        <a class="text-arrow-icon small text-success" href="#!">
                                            Upgrade plan
                                            <i data-feather="arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Payment methods card-->
                        <div class="card card-header-actions mb-4">
                            <div class="card-header">
                                Payment Methods
                                <button class="btn btn-sm btn-primary" type="button">Add Payment Method</button>
                            </div>
                            <div class="card-body px-0">
                                <!-- Payment method 1-->
                                <div class="d-flex align-items-center justify-content-between px-4">
                                    <div class="d-flex align-items-center">
                                        <i class="fab fa-cc-visa fa-2x cc-color-visa"></i>
                                        <div class="ms-4">
                                            <div class="small">Visa ending in 1234</div>
                                            <div class="text-xs text-muted">Expires 04/2024</div>
                                        </div>
                                    </div>
                                    <div class="ms-4 small">
                                        <div class="badge bg-light text-dark me-3">Default</div>
                                        <a href="#!">Edit</a>
                                    </div>
                                </div>
                                <hr />
                                <!-- Payment method 2-->
                                <div class="d-flex align-items-center justify-content-between px-4">
                                    <div class="d-flex align-items-center">
                                        <i class="fab fa-cc-mastercard fa-2x cc-color-mastercard"></i>
                                        <div class="ms-4">
                                            <div class="small">Mastercard ending in 5678</div>
                                            <div class="text-xs text-muted">Expires 05/2022</div>
                                        </div>
                                    </div>
                                    <div class="ms-4 small">
                                        <a class="text-muted me-3" href="#!">Make Default</a>
                                        <a href="#!">Edit</a>
                                    </div>
                                </div>
                                <hr />
                                <!-- Payment method 3-->
                                <div class="d-flex align-items-center justify-content-between px-4">
                                    <div class="d-flex align-items-center">
                                        <i class="fab fa-cc-amex fa-2x cc-color-amex"></i>
                                        <div class="ms-4">
                                            <div class="small">American Express ending in 9012</div>
                                            <div class="text-xs text-muted">Expires 01/2026</div>
                                        </div>
                                    </div>
                                    <div class="ms-4 small">
                                        <a class="text-muted me-3" href="#!">Make Default</a>
                                        <a href="#!">Edit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Billing history card-->
                        <div class="card mb-4">
                            <div class="card-header">Billing History</div>
                            <div class="card-body p-0">
                                <!-- Billing history table-->
                                <div class="table-responsive table-billing-history">
                                    <table class="table mb-0">
                                        <thead>
                                            <tr>
                                                <th class="border-gray-200" scope="col">Transaction ID</th>
                                                <th class="border-gray-200" scope="col">Date</th>
                                                <th class="border-gray-200" scope="col">Amount</th>
                                                <th class="border-gray-200" scope="col">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>#39201</td>
                                                <td>06/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-light text-dark">Pending</span></td>
                                            </tr>
                                            <tr>
                                                <td>#38594</td>
                                                <td>05/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-success">Paid</span></td>
                                            </tr>
                                            <tr>
                                                <td>#38223</td>
                                                <td>04/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-success">Paid</span></td>
                                            </tr>
                                            <tr>
                                                <td>#38125</td>
                                                <td>03/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-success">Paid</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
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
