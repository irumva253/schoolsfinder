<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title> Tables - Schools Finder</title>
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
                                            <div class="page-header-icon"><i data-feather="filter"></i></div>
                                            Tables
                                        </h1>
                                        <div class="page-header-subtitle">Web master has right to approve or denie school application according to terms and regulation of system</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-n10">
                        <div class="card mb-4">
                            <div class="card-header">List of schools</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>School Name</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>Province</th>
                                            <th>District</th>
                                            <th>Sector</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>School Name</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>Province</th>
                                            <th>District</th>
                                            <th>Sector</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <tr>
                                     <%
						                  try {
						                    String id=request.getParameter("id");
						                	Class.forName("com.mysql.cj.jdbc.Driver");
						                	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolsfinder","root","");
						                	String Query="SELECT * FROM school_acc_details";
						                	Statement stm=conn.createStatement();
						                	ResultSet rs=stm.executeQuery(Query);
						                	while(rs.next())
						                	{
						                		Blob blob = rs.getBlob("slogo");
						                	    
						                	    InputStream inputStream = blob.getBinaryStream();
						                	    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
						                	    byte[] buffer = new byte[4096];
						                	    int bytesRead = -1;
						                	     
						                	    while ((bytesRead = inputStream.read(buffer)) != -1) {
						                	        outputStream.write(buffer, 0, bytesRead);                  
						                	    }
						                	     
						                	    byte[] imageBytes = outputStream.toByteArray();
						                	    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
						                	     
						                	     
						                	    inputStream.close();
						                	    outputStream.close();
                                 	%>
                                            <td><%=rs.getInt("school_id") %></td>
                                             <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar me-2"><img class="avatar-img img-fluid" src="data:image/jpg;base64,<%=base64Image%>" /></div>
                                                    <%=rs.getString("sname") %>
                                                </div>
                                            </td>
                                            <td><%=rs.getString("sphone") %></td>
                                            <td><%=rs.getString("semail") %></td>
                                            <td><%=rs.getString("sprovince") %></td>
                                            <td><%=rs.getString("sdistrict") %></td>
                                            <td><%=rs.getString("ssector") %></td>
                                            <td><div class="badge bg-warning text-white rounded-pill"><%=rs.getString("status") %></div></td>
                                            
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="UpdateVisibility.jsp?id=<%=rs.getString("school_id")%>"><i data-feather="more-vertical"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="deleteSchool.jsp?id=<%=rs.getString("school_id")%>"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr> 
                                         <%
			                        File f = new File("/images/");
			
			                        File[] list = f.listFiles();%>
			                        
			                              <%
			                	}
			                  }
			                catch(Exception ex){
			                	out.println("Exception:" +ex.getMessage());
			                	ex.printStackTrace(); 
			                }  
                 
                         %>          
                                  
                                    </tbody>  
                                </table>
                            </div>
                        </div>
                        <div class="card card-icon mb-4">
                            <div class="row g-0">
                                <div class="col-auto card-icon-aside bg-primary"><i class="me-1 text-white-50" data-feather="alert-triangle"></i></div>
                                <div class="col">
                                    <div class="card-body py-5">
                                        <h5 class="card-title">Documentation Available Here</h5>
                                        <p class="card-text">This document is not allowed to use for any personal interest, web master use it to document schools on hard copy.</p>
                                        <a class="btn btn-primary btn-sm" href="https://github.com/fiduswriter/Simple-DataTables" target="_blank">
                                            <i class="me-1" data-feather="download"></i>
                                            Download school list
                                        </a>
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
                    