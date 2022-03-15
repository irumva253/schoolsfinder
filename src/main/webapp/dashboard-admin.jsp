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
        <title>Dashboard - Schools Finder</title>
        <link href="npm/simple-datatables_latest/dist/style.css" rel="stylesheet" />
        <link href="npm/litepicker/dist/css/litepicker.css" rel="stylesheet" />
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
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="activity"></i></div>
                                            Dashboard
                                        </h1>
                                        <div class="page-header-subtitle">dashboard overview and content summary</div>
                                    </div>
                                    <div class="col-12 col-xl-auto mt-4">
                                        <div class="input-group input-group-joined border-0" style="width: 16.5rem">
                                            <span class="input-group-text"><i class="text-primary" data-feather="calendar"></i></span>
                                            <input class="form-control ps-0 pointer" id="litepickerRangePlugin" placeholder="Select date range..." />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-n10">
                        <div class="row">
                            <div class="col-xxl-4 col-xl-12 mb-4">
                                <div class="card h-100">
                                    <div class="card-body h-100 p-5">
                                        <div class="row align-items-center">
                                            <div class="col-xl-8 col-xxl-12">
                                                <div class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
                                                    <h1 class="text-primary">Welcome to Schools Finder!</h1>
                                                    <p class="text-gray-700 mb-0">Schools finder is an online platform for finding best school for your child according to your wish!</p>
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-xxl-12 text-center"><img class="img-fluid" src="assets/img/illustrations/at-work.svg" style="max-width: 26rem" /></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-4 col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Recent Activity
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="dropdownMenuButton">
                                                <h6 class="dropdown-header">Filter Activity:</h6>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-green-soft text-green my-1">Commerce</span></a>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-blue-soft text-blue my-1">Reporting</span></a>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-yellow-soft text-yellow my-1">Server</span></a>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-purple-soft text-purple my-1">Users</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="timeline timeline-xs">
                                            <!-- Timeline Item 1-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">27 min</div>
                                                    <div class="timeline-item-marker-indicator bg-green"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New order placed!
                                                    <a class="fw-bold text-dark" href="#!">Order #2912</a>
                                                    has been successfully placed.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 2-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">58 min</div>
                                                    <div class="timeline-item-marker-indicator bg-blue"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    Your
                                                    <a class="fw-bold text-dark" href="#!">weekly report</a>
                                                    has been generated and is ready to view.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 3-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">2 hrs</div>
                                                    <div class="timeline-item-marker-indicator bg-purple"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New user
                                                    <a class="fw-bold text-dark" href="#!">Valerie Luna</a>
                                                    has registered
                                                </div>
                                            </div>
                                            <!-- Timeline Item 4-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">1 day</div>
                                                    <div class="timeline-item-marker-indicator bg-yellow"></div>
                                                </div>
                                                <div class="timeline-item-content">Server activity monitor alert</div>
                                            </div>
                                            <!-- Timeline Item 5-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">1 day</div>
                                                    <div class="timeline-item-marker-indicator bg-green"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New order placed!
                                                    <a class="fw-bold text-dark" href="#!">Order #2911</a>
                                                    has been successfully placed.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 6-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">1 day</div>
                                                    <div class="timeline-item-marker-indicator bg-purple"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    Details for
                                                    <a class="fw-bold text-dark" href="#!">Marketing and Planning Meeting</a>
                                                    have been updated.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 7-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">2 days</div>
                                                    <div class="timeline-item-marker-indicator bg-green"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New order placed!
                                                    <a class="fw-bold text-dark" href="#!">Order #2910</a>
                                                    has been successfully placed.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-4 col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Progress Tracker
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#!">
                                                    <div class="dropdown-item-icon"><i class="text-gray-500" data-feather="list"></i></div>
                                                    Manage Tasks
                                                </a>
                                                <a class="dropdown-item" href="#!">
                                                    <div class="dropdown-item-icon"><i class="text-gray-500" data-feather="plus-circle"></i></div>
                                                    Add New Task
                                                </a>
                                                <a class="dropdown-item" href="#!">
                                                    <div class="dropdown-item-icon"><i class="text-gray-500" data-feather="minus-circle"></i></div>
                                                    Delete Tasks
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small">
                                            Server Migration
                                            <span class="float-end fw-bold">20%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            Sales Tracking
                                            <span class="float-end fw-bold">40%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            Customer Database
                                            <span class="float-end fw-bold">60%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            Payout Details
                                            <span class="float-end fw-bold">80%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            Account Setup
                                            <span class="float-end fw-bold">Complete!</span>
                                        </h4>
                                        <div class="progress"><div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div></div>
                                    </div>
                                    <div class="card-footer position-relative">
                                        <div class="d-flex align-items-center justify-content-between small text-body">
                                            <a class="stretched-link text-body" href="#!">Visit Task Center</a>
                                            <i class="fas fa-angle-right"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Example Colored Cards for Dashboard Demo-->
                        <div class="row">
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-primary text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">Earnings (Monthly)</div>
                                                <div class="text-lg fw-bold">$40,000</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="calendar"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <a class="text-white stretched-link" href="#!">View Report</a>
                                        <div class="text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-warning text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">Earnings (Annual)</div>
                                                <div class="text-lg fw-bold">$215,000</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="dollar-sign"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <a class="text-white stretched-link" href="#!">View Report</a>
                                        <div class="text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-success text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">Task Completion</div>
                                                <div class="text-lg fw-bold">24</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="check-square"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <a class="text-white stretched-link" href="#!">View Tasks</a>
                                        <div class="text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-3 mb-4">
                                <div class="card bg-danger text-white h-100">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="me-3">
                                                <div class="text-white-75 small">Pending Requests</div>
                                                <div class="text-lg fw-bold">17</div>
                                            </div>
                                            <i class="feather-xl text-white-50" data-feather="message-circle"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between small">
                                        <a class="text-white stretched-link" href="#!">View Requests</a>
                                        <div class="text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Example Charts for Dashboard Demo-->
                        <div class="row">
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Earnings Breakdown
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="areaChartDropdownExample" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="areaChartDropdownExample">
                                                <a class="dropdown-item" href="#!">Last 12 Months</a>
                                                <a class="dropdown-item" href="#!">Last 30 Days</a>
                                                <a class="dropdown-item" href="#!">Last 7 Days</a>
                                                <a class="dropdown-item" href="#!">This Month</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#!">Custom Range</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-area"><canvas id="myAreaChart" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        Monthly Revenue
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="areaChartDropdownExample" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="areaChartDropdownExample">
                                                <a class="dropdown-item" href="#!">Last 12 Months</a>
                                                <a class="dropdown-item" href="#!">Last 30 Days</a>
                                                <a class="dropdown-item" href="#!">Last 7 Days</a>
                                                <a class="dropdown-item" href="#!">This Month</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#!">Custom Range</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-bar"><canvas id="myBarChart" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Example DataTable for Dashboard Demo-->
                        <div class="card mb-4">
                            <div class="card-header">Personnel Management</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                            <td>$320,800</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011/07/25</td>
                                            <td>$170,750</td>
                                            <td><div class="badge bg-warning rounded-pill">Pending</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Ashton Cox</td>
                                            <td>Junior Technical Author</td>
                                            <td>San Francisco</td>
                                            <td>66</td>
                                            <td>2009/01/12</td>
                                            <td>$86,000</td>
                                            <td><div class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Cedric Kelly</td>
                                            <td>Senior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2012/03/29</td>
                                            <td>$433,060</td>
                                            <td><div class="badge bg-info rounded-pill">Contract</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Airi Satou</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>33</td>
                                            <td>2008/11/28</td>
                                            <td>$162,700</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Brielle Williamson</td>
                                            <td>Integration Specialist</td>
                                            <td>New York</td>
                                            <td>61</td>
                                            <td>2012/12/02</td>
                                            <td>$372,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Herrod Chandler</td>
                                            <td>Sales Assistant</td>
                                            <td>San Francisco</td>
                                            <td>59</td>
                                            <td>2012/08/06</td>
                                            <td>$137,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Rhona Davidson</td>
                                            <td>Integration Specialist</td>
                                            <td>Tokyo</td>
                                            <td>55</td>
                                            <td>2010/10/14</td>
                                            <td>$327,900</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Colleen Hurst</td>
                                            <td>Javascript Developer</td>
                                            <td>San Francisco</td>
                                            <td>39</td>
                                            <td>2009/09/15</td>
                                            <td>$205,500</td>
                                            <td><div class="badge bg-info rounded-pill">Contract</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Sonya Frost</td>
                                            <td>Software Engineer</td>
                                            <td>Edinburgh</td>
                                            <td>23</td>
                                            <td>2008/12/13</td>
                                            <td>$103,600</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jena Gaines</td>
                                            <td>Office Manager</td>
                                            <td>London</td>
                                            <td>30</td>
                                            <td>2008/12/19</td>
                                            <td>$90,560</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Quinn Flynn</td>
                                            <td>Support Lead</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2013/03/03</td>
                                            <td>$342,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Charde Marshall</td>
                                            <td>Regional Director</td>
                                            <td>San Francisco</td>
                                            <td>36</td>
                                            <td>2008/10/16</td>
                                            <td>$470,600</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Haley Kennedy</td>
                                            <td>Senior Marketing Designer</td>
                                            <td>London</td>
                                            <td>43</td>
                                            <td>2012/12/18</td>
                                            <td>$313,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Tatyana Fitzpatrick</td>
                                            <td>Regional Director</td>
                                            <td>London</td>
                                            <td>19</td>
                                            <td>2010/03/17</td>
                                            <td>$385,750</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Michael Silva</td>
                                            <td>Marketing Designer</td>
                                            <td>London</td>
                                            <td>66</td>
                                            <td>2012/11/27</td>
                                            <td>$198,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Paul Byrd</td>
                                            <td>Chief Financial Officer (CFO)</td>
                                            <td>New York</td>
                                            <td>64</td>
                                            <td>2010/06/09</td>
                                            <td>$725,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Gloria Little</td>
                                            <td>Systems Administrator</td>
                                            <td>New York</td>
                                            <td>59</td>
                                            <td>2009/04/10</td>
                                            <td>$237,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Bradley Greer</td>
                                            <td>Software Engineer</td>
                                            <td>London</td>
                                            <td>41</td>
                                            <td>2012/10/13</td>
                                            <td>$132,000</td>
                                            <td><div class="badge bg-warning rounded-pill">Pending</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Dai Rios</td>
                                            <td>Personnel Lead</td>
                                            <td>Edinburgh</td>
                                            <td>35</td>
                                            <td>2012/09/26</td>
                                            <td>$217,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jenette Caldwell</td>
                                            <td>Development Lead</td>
                                            <td>New York</td>
                                            <td>30</td>
                                            <td>2011/09/03</td>
                                            <td>$345,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Yuri Berry</td>
                                            <td>Chief Marketing Officer (CMO)</td>
                                            <td>New York</td>
                                            <td>40</td>
                                            <td>2009/06/25</td>
                                            <td>$675,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Caesar Vance</td>
                                            <td>Pre-Sales Support</td>
                                            <td>New York</td>
                                            <td>21</td>
                                            <td>2011/12/12</td>
                                            <td>$106,450</td>
                                            <td><div class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Doris Wilder</td>
                                            <td>Sales Assistant</td>
                                            <td>Sidney</td>
                                            <td>23</td>
                                            <td>2010/09/20</td>
                                            <td>$85,600</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Angelica Ramos</td>
                                            <td>Chief Executive Officer (CEO)</td>
                                            <td>London</td>
                                            <td>47</td>
                                            <td>2009/10/09</td>
                                            <td>$1,200,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Gavin Joyce</td>
                                            <td>Developer</td>
                                            <td>Edinburgh</td>
                                            <td>42</td>
                                            <td>2010/12/22</td>
                                            <td>$92,575</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jennifer Chang</td>
                                            <td>Regional Director</td>
                                            <td>Singapore</td>
                                            <td>28</td>
                                            <td>2010/11/14</td>
                                            <td>$357,650</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Brenden Wagner</td>
                                            <td>Software Engineer</td>
                                            <td>San Francisco</td>
                                            <td>28</td>
                                            <td>2011/06/07</td>
                                            <td>$206,850</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Fiona Green</td>
                                            <td>Chief Operating Officer (COO)</td>
                                            <td>San Francisco</td>
                                            <td>48</td>
                                            <td>2010/03/11</td>
                                            <td>$850,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Shou Itou</td>
                                            <td>Regional Marketing</td>
                                            <td>Tokyo</td>
                                            <td>20</td>
                                            <td>2011/08/14</td>
                                            <td>$163,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Michelle House</td>
                                            <td>Integration Specialist</td>
                                            <td>Sidney</td>
                                            <td>37</td>
                                            <td>2011/06/02</td>
                                            <td>$95,400</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Suki Burks</td>
                                            <td>Developer</td>
                                            <td>London</td>
                                            <td>53</td>
                                            <td>2009/10/22</td>
                                            <td>$114,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Prescott Bartlett</td>
                                            <td>Technical Author</td>
                                            <td>London</td>
                                            <td>27</td>
                                            <td>2011/05/07</td>
                                            <td>$145,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Gavin Cortez</td>
                                            <td>Team Leader</td>
                                            <td>San Francisco</td>
                                            <td>22</td>
                                            <td>2008/10/26</td>
                                            <td>$235,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Martena Mccray</td>
                                            <td>Post-Sales support</td>
                                            <td>Edinburgh</td>
                                            <td>46</td>
                                            <td>2011/03/09</td>
                                            <td>$324,050</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Unity Butler</td>
                                            <td>Marketing Designer</td>
                                            <td>San Francisco</td>
                                            <td>47</td>
                                            <td>2009/12/09</td>
                                            <td>$85,675</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Howard Hatfield</td>
                                            <td>Office Manager</td>
                                            <td>San Francisco</td>
                                            <td>51</td>
                                            <td>2008/12/16</td>
                                            <td>$164,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Hope Fuentes</td>
                                            <td>Secretary</td>
                                            <td>San Francisco</td>
                                            <td>41</td>
                                            <td>2010/02/12</td>
                                            <td>$109,850</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Vivian Harrell</td>
                                            <td>Financial Controller</td>
                                            <td>San Francisco</td>
                                            <td>62</td>
                                            <td>2009/02/14</td>
                                            <td>$452,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Timothy Mooney</td>
                                            <td>Office Manager</td>
                                            <td>London</td>
                                            <td>37</td>
                                            <td>2008/12/11</td>
                                            <td>$136,200</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jackson Bradshaw</td>
                                            <td>Director</td>
                                            <td>New York</td>
                                            <td>65</td>
                                            <td>2008/09/26</td>
                                            <td>$645,750</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Olivia Liang</td>
                                            <td>Support Engineer</td>
                                            <td>Singapore</td>
                                            <td>64</td>
                                            <td>2011/02/03</td>
                                            <td>$234,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Bruno Nash</td>
                                            <td>Software Engineer</td>
                                            <td>London</td>
                                            <td>38</td>
                                            <td>2011/05/03</td>
                                            <td>$163,500</td>
                                            <td><div class="badge bg-info rounded-pill">Contract</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Sakura Yamamoto</td>
                                            <td>Support Engineer</td>
                                            <td>Tokyo</td>
                                            <td>37</td>
                                            <td>2009/08/19</td>
                                            <td>$139,575</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Thor Walton</td>
                                            <td>Developer</td>
                                            <td>New York</td>
                                            <td>61</td>
                                            <td>2013/08/11</td>
                                            <td>$98,540</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Finn Camacho</td>
                                            <td>Support Engineer</td>
                                            <td>San Francisco</td>
                                            <td>47</td>
                                            <td>2009/07/07</td>
                                            <td>$87,500</td>
                                            <td><div class="badge bg-info rounded-pill">Contract</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Serge Baldwin</td>
                                            <td>Data Coordinator</td>
                                            <td>Singapore</td>
                                            <td>64</td>
                                            <td>2012/04/09</td>
                                            <td>$138,575</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Zenaida Frank</td>
                                            <td>Software Engineer</td>
                                            <td>New York</td>
                                            <td>63</td>
                                            <td>2010/01/04</td>
                                            <td>$125,250</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Zorita Serrano</td>
                                            <td>Software Engineer</td>
                                            <td>San Francisco</td>
                                            <td>56</td>
                                            <td>2012/06/01</td>
                                            <td>$115,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jennifer Acosta</td>
                                            <td>Junior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>43</td>
                                            <td>2013/02/01</td>
                                            <td>$75,650</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Cara Stevens</td>
                                            <td>Sales Assistant</td>
                                            <td>New York</td>
                                            <td>46</td>
                                            <td>2011/12/06</td>
                                            <td>$145,600</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Hermione Butler</td>
                                            <td>Regional Director</td>
                                            <td>London</td>
                                            <td>47</td>
                                            <td>2011/03/21</td>
                                            <td>$356,250</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Lael Greer</td>
                                            <td>Systems Administrator</td>
                                            <td>London</td>
                                            <td>21</td>
                                            <td>2009/02/27</td>
                                            <td>$103,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jonas Alexander</td>
                                            <td>Developer</td>
                                            <td>San Francisco</td>
                                            <td>30</td>
                                            <td>2010/07/14</td>
                                            <td>$86,500</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Shad Decker</td>
                                            <td>Regional Director</td>
                                            <td>Edinburgh</td>
                                            <td>51</td>
                                            <td>2008/11/13</td>
                                            <td>$183,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Michael Bruce</td>
                                            <td>Javascript Developer</td>
                                            <td>Singapore</td>
                                            <td>29</td>
                                            <td>2011/06/27</td>
                                            <td>$183,000</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Donna Snider</td>
                                            <td>Customer Support</td>
                                            <td>New York</td>
                                            <td>27</td>
                                            <td>2011/01/25</td>
                                            <td>$112,000</td>
                                            <td><div class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i data-feather="trash-2"></i></button>
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
