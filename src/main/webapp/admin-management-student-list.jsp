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
        <title>Student List - Schools Finder</title>
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
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="users"></i></div>
                                            Students List
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="https://sb-admin-pro.startbootstrap.com/user-management-groups-list.html">
                                            <i class="me-1" data-feather="users"></i>
                                            Manage Section
                                        </a>
                                        <a class="btn btn-sm btn-light text-primary" href="https://sb-admin-pro.startbootstrap.com/user-management-add-user.html">
                                            <i class="me-1" data-feather="user-plus"></i>
                                            Add New Student
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                        <div class="card">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Student Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Province</th>
                                            <th>District</th>
                                            <th>Sector</th>
                                            <th>Applied Date</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Student Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Province</th>
                                            <th>District</th>
                                            <th>Sector</th>
                                            <th>Applied Date</th>
                                            <th>Status</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                    <!--                         <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar me-2"><img class="avatar-img img-fluid" src="https://sb-admin-pro.startbootstrap.com/assets/img/illustrations/profiles/profile-1.png" /></div>
                                                    Tiger Nixon
                                                </div>
                                            </td>
                                            <td><a href="https://sb-admin-pro.startbootstrap.com//cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="4d39242a283f0d28202c2421632e2220">[email&#160;protected]</a></td>
                                            <td>Administrator</td>
                                            <td>
                                                <span class="badge bg-green-soft text-green">Sales</span>
                                                <span class="badge bg-blue-soft text-blue">Developers</span>
                                                <span class="badge bg-red-soft text-red">Marketing</span>
                                                <span class="badge bg-purple-soft text-purple">Managers</span>
                                                <span class="badge bg-yellow-soft text-yellow">Customer</span>
                                            </td>
                                            <td>20 Jun 2021</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>--> 
                                           
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
                    