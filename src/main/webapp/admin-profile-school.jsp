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
        <title> Profile School - Schools Finder</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements="" defer="" src="ajax/libs/font-awesome/5.15.3/js/all.min.js" ></script>
        <script src="ajax/libs/feather-icons/4.28.0/feather.min.js" ></script>
    <script async src='cdn-cgi/bm/cv/669835187/api.js'></script></head>
    <body class="nav-fixed"></body>
    <!-- NAVIGATION BAR (Includes)  -->
     <%@include file="includes-backend/navbar-admin.jsp" %> 
     <!-- END -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
               <%@include file="includes-backend/admin-sidenav.jsp" %> 
            </div>
               <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="arrow-right-circle"></i></div>
                                            Profile your school here!
                                        </h1>
                                        <div class="page-header-subtitle">Make sure that you're giving us the correct information, We will use this information to grant your school</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-n10">
                        <!-- Wizard card example with navigation-->
                        <div class="card">
                            <div class="card-header border-bottom">
                                <!-- Wizard navigation-->
                                <div class="nav nav-pills nav-justified flex-column flex-xl-row nav-wizard" id="cardTab" role="tablist">
                                    <!-- Wizard navigation item 1-->
                                    <a class="nav-item nav-link active" id="wizard1-tab" href="#wizard1" data-bs-toggle="tab" role="tab" aria-controls="wizard1" aria-selected="true">
                                        <div class="wizard-step-icon">1</div>
                                        <div class="wizard-step-text">
                                            <div class="wizard-step-text-name">Account Setup</div>
                                            <div class="wizard-step-text-details">Basic details and information</div>
                                        </div>
                                    </a>
                                    <!-- Wizard navigation item 2-->
                                    <a class="nav-item nav-link" id="wizard2-tab" href="#wizard2" data-bs-toggle="tab" role="tab" aria-controls="wizard2" aria-selected="true">
                                        <div class="wizard-step-icon">2</div>
                                        <div class="wizard-step-text">
                                            <div class="wizard-step-text-name">Bank Information</div>
                                            <div class="wizard-step-text-details">Account details information</div>
                                        </div>
                                    </a>
                                    <!-- Wizard navigation item 3-->
                                    <a class="nav-item nav-link" id="wizard3-tab" href="https://sb-admin-pro.startbootstrap.com/#wizard3" data-bs-toggle="tab" role="tab" aria-controls="wizard3" aria-selected="true">
                                        <div class="wizard-step-icon">3</div>
                                        <div class="wizard-step-text">
                                            <div class="wizard-step-text-name">Preferences</div>
                                            <div class="wizard-step-text-details">Notification and account options</div>
                                        </div>
                                    </a>
                                    <!-- Wizard navigation item 4-->
                                    <a class="nav-item nav-link" id="wizard4-tab" href="https://sb-admin-pro.startbootstrap.com/#wizard4" data-bs-toggle="tab" role="tab" aria-controls="wizard4" aria-selected="true">
                                        <div class="wizard-step-icon">4</div>
                                        <div class="wizard-step-text">
                                            <div class="wizard-step-text-name">Review &amp; Submit</div>
                                            <div class="wizard-step-text-details">Review and submit changes</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="cardTabContent">
                                    <!-- Wizard tab pane item 1-->
                                    <div class="tab-pane py-5 py-xl-10 fade show active" id="wizard1" role="tabpanel" aria-labelledby="wizard1-tab">
                                        <div class="row justify-content-center">
                                            <div class="col-xxl-6 col-xl-8">
                                                <h3 class="text-primary">Step 1</h3>
                                                <h5 class="card-title mb-4">Enter your school account information</h5>
                                                <form action="Signup_auth_school" method="post" enctype="multipart/form-data">
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="inputUsername">School Name (how school name will appear to home page and on the site)</label>
                                                        <input class="form-control" id="inputUsername" type="text" name="sname" placeholder="Enter your school name" required/>
                                                    </div>
                                                    <div class="row gx-3">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputMotto">School Motto</label>
                                                            <input class="form-control" id="inputMootto" name="smotto" type="text" placeholder="Enter your school motto" required/>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputProvince">Province</label>
                                                            <select class="form-control" id="inputProvince" name="sprovince" required>
                                                            <option value="Kigali City">Kigali City</option>
                                                            <option value="Northern Province">Northern Province</option>
                                                            <option value="Southern Province">Southern Province</option>
                                                            <option value="Western Province">Western Province</option>
                                                            <option value="Southern Province">Southern Province</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row gx-3">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputDistrict">District</label>
                                                            <input class="form-control" id="inputDistrict" type="text" name="sdistrict" placeholder="Enter District" required/>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputSector">Sector</label>
                                                            <input class="form-control" id="inputSector" type="text" name="ssector" placeholder="Enter Sector" required/>
                                                        </div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                                        <input class="form-control" id="inputEmailAddress" type="email" name="semail" placeholder="Enter school your email address" required/>
                                                    </div>
                                                    <div class="row gx-3">
                                                        <div class="col-md-6 mb-md-0">
                                                            <label class="small mb-1" for="inputPhone">Phone number</label>
                                                            <input class="form-control" id="inputPhone" type="tel" name="sphone" placeholder="Enter school phone number" maxlength="10" required/>
                                                        </div>
                                                        <div class="col-md-6 mb-0">
                                                            <label class="small mb-1" for="inputLogo">School logo</label>
                                                            <input class="form-control" id="inputLogo" type="file" name="slogo">
                                                        </div>
                                                    </div>
                                                      <div class="row gx-3">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputSection">Nursery & Primary</label>
                                                            <br>
                                                             <input type="checkbox" class="form-check-input" id="inlineCheckbox1" value="Nursery" name="snursery"> Nursery <br>
                                                             <input type="checkbox" class="form-check-input" id="inlineCheckbox2" value="Primary" name="sprimary"> Primary (P1-P6)
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputSection">Secondary & Sixth-Form</label> <br>
                                                            <input type="checkbox" class="form-check-input" id="inlineCheckbox3" value="Secondary" name="ssecondary"> Secondary (S1-S3) <br>
                                                            <input type="checkbox" class="form-check-input" id="inlineCheckbox4" value="A2" name="sa2"> Sixth-Form(A2) &nbsp; &nbsp;
                                                            <input type="checkbox" class="form-check-input" id="inlineCheckbox5" value="TVET" name="tvets"> TVET
                                                        </div>
                                                    </div>
                                                    <div class="card card-header-actions mb-4">
                                                        <div class="card-header">
                                                         School Preview
                                                         <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="The post preview text shows below the post title, and is the post summary on blog pages."></i>
                                                        </div>
                                                        <div class="card-body"><textarea class="lh-base form-control" type="text" name="spreview" placeholder="Enter your post preview text..." rows="4"></textarea></div>
                                                   </div>
                                                <div class="mb-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" class="form-check-input" id="rememberInfoCheck" type="checkbox" value="Pending Approval" name="status" />
                                                    <label class="form-check-label" class="form-check-input" for="rememberInfoCheck">Check whether the information you provide us is accurate before you proceed.</label>
                                                </div>
                                            </div>
                                                    <hr class="my-4" />
                                                    <div class="d-flex justify-content-between">
                                                        <button class="btn btn-light disabled" type="button" disabled>Previous</button>
                                                        <button class="btn btn-primary" type="submit">Next</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Wizard tab pane item 2-->
                                    <div class="tab-pane py-5 py-xl-10 fade" id="wizard2" role="tabpanel" aria-labelledby="wizard2-tab">
                                        <div class="row justify-content-center">
                                            <div class="col-xxl-6 col-xl-8">
                                                <h3 class="text-primary">Step 2</h3>
                                                <h5 class="card-title mb-4">Enter Bank A/C & Fees details</h5>
                                                <form>
                                                    <div class="row gx-3">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputBillingName">School Fees</label>
                                                            <input class="form-control" id="inputBillingName" type="text" placeholder="RWF ..."/>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="small mb-1" for="inputBillingCCNumber">Account number</label>
                                                            <input class="form-control" id="inputBillingCCNumber" type="text" placeholder="Enter your credit card number" value="4444 3333 2222 1111" />
                                                        </div>
                                                    </div>
                                                    <div class="row gx-3">
                                                        <div class="col-md-4 mb-4 mb-md-0">
                                                            <label class="small mb-1" for="inputOrgName">Card expiry month</label>
                                                            <input class="form-control" id="inputOrgName" type="text" placeholder="Enter expiry month" value="06" />
                                                        </div>
                                                        <div class="col-md-4 mb-4 mb-md-0">
                                                            <label class="small mb-1" for="inputLocation">Card expiry year</label>
                                                            <input class="form-control" id="inputLocation" type="text" placeholder="Enter expiry year" value="2024" />
                                                        </div>
                                                        <div class="col-md-4 mb-0">
                                                            <label class="small mb-1" for="inputLocation">CVV Number</label>
                                                            <input class="form-control" id="inputLocation" type="password" placeholder="Enter CVV number" value="111" />
                                                        </div>
                                                    </div>
                                                    <hr class="my-4" />
                                                    <div class="d-flex justify-content-between">
                                                        <button class="btn btn-light" type="button">Previous</button>
                                                        <button class="btn btn-primary" type="button">Next</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Wizard tab pane item 3-->
                                    <div class="tab-pane py-5 py-xl-10 fade" id="wizard3" role="tabpanel" aria-labelledby="wizard3-tab">
                                        <div class="row justify-content-center">
                                            <div class="col-xxl-6 col-xl-8">
                                                <h3 class="text-primary">Step 3</h3>
                                                <h5 class="card-title mb-4">Choose when you want to receive email notifications</h5>
                                                <form>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" id="checkAccountChanges" type="checkbox" checked="" />
                                                        <label class="form-check-label" for="checkAccountChanges">Changes made to your account</label>
                                                    </div>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" id="checkAccountGroups" type="checkbox" checked="" />
                                                        <label class="form-check-label" for="checkAccountGroups">Changes are made to groups you're part of</label>
                                                    </div>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" id="checkProductUpdates" type="checkbox" checked="" />
                                                        <label class="form-check-label" for="checkProductUpdates">Product updates for products you've purchased or starred</label>
                                                    </div>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" id="checkProductNew" type="checkbox" checked="" />
                                                        <label class="form-check-label" for="checkProductNew">Information on new products and services</label>
                                                    </div>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" id="checkPromotional" type="checkbox" />
                                                        <label class="form-check-label" for="checkPromotional">Marketing and promotional offers</label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" id="checkSecurity" type="checkbox" checked="" disabled="" />
                                                        <label class="form-check-label" for="checkSecurity">Security alerts</label>
                                                    </div>
                                                    <hr class="my-4" />
                                                    <div class="d-flex justify-content-between">
                                                        <button class="btn btn-light" type="button">Previous</button>
                                                        <button class="btn btn-primary" type="button">Next</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Wizard tab pane item 4-->
                                    <div class="tab-pane py-5 py-xl-10 fade" id="wizard4" role="tabpanel" aria-labelledby="wizard4-tab">
                                        <div class="row justify-content-center">
                                            <div class="col-xxl-6 col-xl-8">
                                                <h3 class="text-primary">Step 4</h3>
                                                <h5 class="card-title mb-4">Review the following information and submit</h5>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Username:</em></div>
                                                    <div class="col">username</div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Name:</em></div>
                                                    <div class="col">Valerie Luna</div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Organization Name:</em></div>
                                                    <div class="col">Start Bootstrap</div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Location:</em></div>
                                                    <div class="col">San Francisco, CA</div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Email Address:</em></div>
                                                    <div class="col"><a href="https://sb-admin-pro.startbootstrap.com//cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="96f8f7fbf3d6f3eef7fbe6faf3b8f5f9fb">[email&#160;protected]</a></div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Phone Number:</em></div>
                                                    <div class="col">555-123-4567</div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Birthday:</em></div>
                                                    <div class="col">06/10/1988</div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Credit Card Number:</em></div>
                                                    <div class="col">**** **** **** 1111</div>
                                                </div>
                                                <div class="row small text-muted">
                                                    <div class="col-sm-3 text-truncate"><em>Credit Card Expiration:</em></div>
                                                    <div class="col">06/2024</div>
                                                </div>
                                                <hr class="my-4" />
                                                <div class="d-flex justify-content-between">
                                                    <button class="btn btn-light" type="button">Previous</button>
                                                    <button class="btn btn-primary" type="button">Submit</button>
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
                    