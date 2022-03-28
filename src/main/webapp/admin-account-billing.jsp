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
        <title>Account Billing - Schools Finder</title>
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
                            <a class="nav-link ms-0" href="admin-account-profile.jsp">Profile</a>
                            <a class="nav-link active" href="admin-account-billing.jsp">Billing</a>
                            <a class="nav-link" href="admin-account-security.jsp">Security</a>
                            <a class="nav-link" href="admin-account-notifications.jsp">Notifications</a>
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
                                </div>
                            </div>
                        </div>
                        <!-- Billing history card-->
                        <div class="card card-header-actions mb-4">
                            <div class="card-header">
                            Billing History
                            <button class="btn btn-sm btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#exampleModalCenter">Add Payment</button>
                            </div>
                            <!-- Modal -->
							<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							    <div class="modal-dialog modal-dialog-centered" role="document">
							        <div class="modal-content">
							            <div class="modal-header">
							                <h5 class="modal-title" id="exampleModalCenterTitle">Payment</h5>
							                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
							            </div>
							            <div class="modal-body">
							             <!-- Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (first name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputTXNID">TXN ID</label>
                                                    <input class="form-control" id="inputTXNID" type="text" placeholder="Enter transaction ID"/>
                                                </div>
                                                <!-- Form Group (last name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputAmount">Paid Amount</label>
                                                    <input class="form-control" id="inputAmount" type="number" placeholder="Enter paid fee"/>
                                                </div>
                                            </div>
                                            <!-- Form Row        -->
                                             <!-- Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (first name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputFirstName">Proff of payment</label>
                                                    <input class="form-control" id="inputFirstName" type="file"/>
                                                </div>
                                                <!-- Form Group (last name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="flexCheckSolidDefault">Paid</label> <br>
                                                    <input class="form-check-input" id="flexCheckSolidDefault" type="checkbox" value=""> (Click here to approved payment)
                                                </div>
                                            </div>
                                            <!-- Form Row        -->
							            </div>
							            <div class="modal-footer"><button class="btn btn-danger btn-sm" type="button" data-bs-dismiss="modal">Close</button><button class="btn btn-primary btn-sm" type="button">Submit</button></div>
							        </div>
							    </div>
							</div>

                            <!-- MODDAL END -->
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
