<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title> Update Visibility - Schools Finder</title>
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
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="edit-3"></i></div>
                                            Forms
                                        </h1>
                                        <div class="page-header-subtitle">Dynamic form components to give your users informative and intuitive inputs</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-n10">
                        <div class="row">
                            <div class="col-lg-9">
                                <!-- Default Bootstrap Form Controls-->
                                <div id="default">
                                    <div class="card mb-4">
                                        <div class="card-header">Update Visibility Status</div>
                                        <div class="card-body">
                                            <!-- Component Preview-->
                                            <div class="sbp-preview">
                                                <div class="sbp-preview-content">
                                                    <form action="UpdateStatusVisibility" method="post">
                                      <%
										String id = request.getParameter("id");
										String driver = "com.mysql.cj.jdbc.Driver";
										String connectionUrl = "jdbc:mysql://localhost:3306/";
										String database = "schoolsfinder";
										String userid = "root";
										String password = "";
										try {
										Class.forName(driver);
										} catch (ClassNotFoundException e) {
										e.printStackTrace();
										}
										Connection connection = null;
										Statement statement = null;
										ResultSet resultSet = null;
										%>
										<%
									try{
									connection = DriverManager.getConnection(connectionUrl+database, userid, password);
								    statement=connection.createStatement();
									String sql ="select * from school_acc_details where school_id="+id;
									resultSet = statement.executeQuery(sql);
									while(resultSet.next()){
									%>
                                         <div class="mb-3">
                                             <label class="small mb-1" for="inputSchoolName">School name</label>
                                                    <input class="form-control" id="inputSchoolName" type="text" name="sname"  value="<%=resultSet.getString("sname") %>"  disabled/>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlSelect2">Status Visibility</label>
                                                            <select class="form-control" id="exampleFormControlSelect2" multiple="" name="status"  value="<%=resultSet.getString("status") %>">
                                                                <option value="Pending Approval">Pending Approval</option>
                                                                <option value="Approved">Approved</option>
                                                                <option value="Suspended">Suspended</option>
                                                               
                                                            </select>
                                                        </div>
                                                        <!-- Save changes button-->
                                            <button class="btn btn-primary" type="submit">Save changes</button>
                                            	<% 											
                                            	}
											connection.close();
											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
                                                    </form>
                                                </div>
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
                    