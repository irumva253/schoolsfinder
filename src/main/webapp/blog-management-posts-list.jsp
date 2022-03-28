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
        <title> Posts List - Schools Finder</title>
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
                                            <div class="page-header-icon"><i data-feather="list"></i></div>
                                            Posts List
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="blog-management-create-post.jsp">
                                            <i class="me-1" data-feather="plus"></i>
                                            Create New Post
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
                                            <th>Post Title</th>
                                            <th>Date</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Post Title</th>
                                            <th>Date</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>Boots on the Ground, Inclusive Thought Provoking Ideas</td>
                                            <td>20 Jun 2021</td>
                                            <td><div class="badge bg-gray-200 text-dark">Draft</div></td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/blog-management-edit-post.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Invest In Social Impact</td>
                                            <td>19 Jun 2021</td>
                                            <td><div class="badge bg-yellow-soft text-yellow">Pending Approval</div></td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/blog-management-edit-post.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Save the World, Social Entrepreneur</td>
                                            <td>18 Jun 2021</td>
                                            <td><div class="badge bg-green-soft text-green">Published</div></td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/blog-management-edit-post.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Design Thinking Benefits Corporation Thought Leadership</td>
                                            <td>17 Jun 2021</td>
                                            <td><div class="badge bg-green-soft text-green">Published</div></td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/blog-management-edit-post.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Collaborative Consumption, Human-Centered Technology Thought Leader Systems</td>
                                            <td>16 Jun 2021</td>
                                            <td><div class="badge bg-green-soft text-green">Published</div></td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/blog-management-edit-post.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Co-create, Empower - Moving the Needle on Investor Interests</td>
                                            <td>14 Jun 2021</td>
                                            <td><div class="badge bg-green-soft text-green">Published</div></td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/blog-management-edit-post.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Inclusive Shared Units of Analysis</td>
                                            <td>13 Jun 2021</td>
                                            <td><div class="badge bg-green-soft text-green">Published</div></td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="https://sb-admin-pro.startbootstrap.com/blog-management-edit-post.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="https://sb-admin-pro.startbootstrap.com/#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
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
                    