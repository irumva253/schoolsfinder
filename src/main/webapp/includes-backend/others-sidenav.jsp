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
                            <div class="sidenav-menu-heading">Student/Parent</div>
                            <!-- Sidenav Accordion (Dashboard)-->
                              <a class="nav-link" href="others-dashboard.jsp">
                                <div class="nav-link-icon"><i data-feather="activity"></i></div>
                                Dashboard
                             </a>
                          
                            <!-- Sidenav Heading (Custom)-->
                            <div class="sidenav-menu-heading">Custom</div>
                            <!-- Sidenav Accordion (Account)-->
                            <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseFlows" aria-expanded="false" aria-controls="collapseFlows">
                                <div class="nav-link-icon"><i data-feather="user"></i></div>
                                Account
                                <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseFlows" data-bs-parent="#accordionSidenav">
                               <nav class="sidenav-menu-nested nav">
                                  <a class="nav-link" href="others-account-profile.jsp">Profile</a>
                                  <a class="nav-link" href="others-account-billing.jsp">Billing</a>
                                  <a class="nav-link" href="others-account-security.jsp">Security</a>
                                  <a class="nav-link" href="others-account-notifications.jsp">Notifications</a>
                                   </nav>
                            </div>
                            <!-- Sidenav Heading (Overview)-->
                            <div class="sidenav-menu-heading">Overview</div>
                            <!-- Sidenav Link (Tables)-->
                            <a class="nav-link" href="others-schools-list.jsp">
                                <div class="nav-link-icon"><i data-feather="list"></i></div>
                                Schools
                            </a>
                            
                            <a class="nav-link" href="#">
                                <div class="nav-link-icon"><i data-feather="layers"></i></div>
                                My Enroll
                            </a>
                            
                             <a class="nav-link" href="Messages.jsp">
                                <div class="nav-link-icon"><i data-feather="mail"></i></div>
                               Messages
                            </a>
                        </div>
                    </div>
                    <!-- Sidenav Footer-->
                    <div class="sidenav-footer">
                        <div class="sidenav-footer-content">
                            <div class="sidenav-footer-subtitle">Logged in as:</div>
                            <div class="sidenav-footer-title">${userInfo.fname} ${userInfo.lname}</div>
                        </div>
                    </div>
                </nav>