<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="java.io.*"%>
	<%@ page import="java.util.Base64"%>
	<% Class.forName("com.mysql.cj.jdbc.Driver");
	 String dburl="jdbc:mysql://localhost:3306/schoolsfinder";
	 String dbuser="root";
	 String dbpassword="";
	 Connection connection = DriverManager.getConnection(dburl,dbuser,dbpassword);
     Statement statement = connection.createStatement() ;
	%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title> User Management Organization details - Schools Finder</title>
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
                <%@include file="includes-backend/sidenav.jsp"%> 
            </div>
               <div id="layoutSidenav_content">
<main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="globe"></i></div>
                                            Organization Details
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="user-management-list.jsp">
                                            <i class="me-1" data-feather="user"></i>
                                            Manage Users
                                        </a>
                                        <a class="btn btn-sm btn-light text-primary" href="https://sb-admin-pro.startbootstrap.com/user-management-groups-list.html">
                                            <i class="me-1" data-feather="users"></i>
                                            Manage Groups
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                        <div class="card bg-gradient-primary-to-secondary mb-4">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="me-3">
                                        <div class="small text-white-50">Organization Name:</div>
                                        <div class="h1 text-white">Schools Finder</div>
                                    </div>
                                    <div class="text-white">
                                    <%
					                             ResultSet resultsetUsers = statement.executeQuery("SELECT count(user_id) FROM `tbl_users`");
					                             while(resultsetUsers.next()){%>
					                            <b><%= resultsetUsers.getString(1) %> Member(s)</b> 
					                             <% }             
					                             %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <div class="small text-muted mb-2">Administrators:</div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar avatar-lg"><img class="avatar-img img-fluid" src="https://sb-admin-pro.startbootstrap.com/assets/img/illustrations/profiles/profile-1.png" /></div>
                                            <div class="ms-3">
                                                <div class="fs-4 text-dark fw-500">Tiger Nixon</div>
                                                <div class="small text-muted">Admin</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar avatar-lg"><img class="avatar-img img-fluid" src="https://sb-admin-pro.startbootstrap.com/assets/img/illustrations/profiles/profile-2.png" /></div>
                                            <div class="ms-3">
                                                <div class="fs-4 text-dark fw-500">Garrett Winters</div>
                                                <div class="small text-muted">Admin</div>
                                            </div>
                                        </div>
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
                    