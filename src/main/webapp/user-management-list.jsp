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
        <title> User Management List - Schools Finder</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements="" defer="" src="ajax/libs/font-awesome/5.15.3/js/all.min.js" ></script>
        <script src="ajax/libs/feather-icons/4.28.0/feather.min.js" ></script>
    <script async src='cdn-cgi/bm/cv/669835187/api.js'></script></head>
    <body class="nav-fixed"></body>
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
                            <a class="nav-link" href="charts-admin.jsp">
                                <div class="nav-link-icon"><i data-feather="bar-chart"></i></div>
                                Charts
                            </a>
                            <!-- Sidenav Link (Tables)-->
                            <a class="nav-link" href="tables-admin.jsp">
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
                                            Users List
                                        </h1>                                       
                                    </div>                                   
                                </div>                               
                            </div>
                        </div>
                    </header>
                   <div class="container-xl px-4 mt-4">
                     <div class="card mb-4">
                            <div class="card-header">
                            <div class="page-header-icon">
                            <button class="btn btn-sm btn-primary" type="button" ><i data-feather="users"></i>&nbsp; Manage Groups</button> &nbsp;
                            <a button class="btn btn-sm btn-primary" type="button" href="user-management-add-user.jsp"><i data-feather="user-plus"></i>&nbsp; Add New User</button></a></div>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Photo</th>
                                            <th>Email</th>
                                            <th>Location</th>
                                            <th>Join date</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Photo</th>
                                            <th>Location</th>
                                            <th>Email</th>
                                            <th>Join date</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                 <!--       <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>APACOPE</td>
                                            <td>Kigali</td>
                                            <td>2011/04/25</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Admin</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="edit"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr> -->  
                                    </tbody>
                                </table>
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
        <script src="ajax/libs/Chart_js/2.9.4/Chart.min.js" ></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="npm/simple-datatables_latest.js" ></script>
        <script src="js/datatables/datatables-simple-demo.js"></script>
        <script src="npm/litepicker/dist/bundle.js" ></script>
        <script src="js/litepicker.js"></script>
        <script src="assets_subdomain/js/sb-customizer.js"></script>
        
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6c4ea21fd835fee6',m:'h2sG0zFrToFkGTKPbaObqCuyFIbXBmUoM.XMvOMxROA-1640734822-0-AXsZg0qtTHnjA8WyLQ8PB1L2MGg1t0nCKIgksugPsVlJI4bhUvaBgahrMPQ4d9295eudRbWnTTXOIYACxdgqyIgXWaA5d8wD2QE/HF4ooBhSleEDMfFjK59mWRegEx8FjWHFw5wzKUdYlHdrwhXCWWs=',s:[0x14b954d840,0x4bf7d57fba],}})();</script><script defer src="beacon.min.js" data-cf-beacon='{"rayId":"6c4ea21fd835fee6","token":"6e2c2575ac8f44ed824cef7899ba8463","version":"2021.12.0","si":100}' ></script>
</body>
</html>
                    