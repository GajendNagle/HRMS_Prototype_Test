<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="JDLevelReportSection.aspx.cs" Inherits="mis_Transaction_JDLevelReportSection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
         button, input, optgroup, select, textarea {
     font-weight: bold;
 }
        .profileimage {
            display: block;
            height: 6.2rem;
            margin-left: 5rem;
        }

        html body .m-t-30 {
            margin-top: 0px;
        }

        .tab-menu {
            color: #313132;
            font-weight: 600 !important;
            margin-left: 1px !important;
            border: 1px solid #a5a3a3 !important;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out !important;
        }

            .tab-menu:hover {
                color: #16603ae3;
            }

        .btn {
            margin-top: 1.875rem;
        }

        .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            background-color: #16603ae3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles" style="margin-bottom: -30px">
            <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Anukampa Logo.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                    </u>
                </p>
            </div>
            <div class="col-md-7 align-self-center">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=CompassionateAppointment" title="click to go on">Compassionate Appointment </a></li>
                        <li class="breadcrumb-item active">Register Application For Compassionate Appointment</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar" style="position: relative; bottom: 26px">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                                <li class="nav-item">
                                    <a class="nav-link font-16 text-white" href="DisposeApplicatonCaseForJD.aspx" role="button" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                                </li>
                                <li class="nav-item">
                                    <div class="collapse navbar-collapse">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति </b>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="../HRMS/Trn_JDCompassionateApproval.aspx">अनुकंपा नियुक्ति के लिए आवेदन पंजीयन/सुधार करें</a></li>
                                                    <li><a class="dropdown-item" href="../HRMS/JDPrintApplicationReport.aspx">प्रिंट आवेदन </a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link font-16 text-white" href="../HRMS/Trn_ProcessApplicationListJD.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति पर कार्यवाही </b></strong></a>

                                </li>
                                <li class="nav-item">
                                    <a class="nav-link  text-white " href="AvedanperNirnayKareForJD.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>आवेदन पर निर्णय करें</b></a></li>

                                <li class="nav-item">
                                    <a class="nav-link  text-white " href="../HRMS/NocSendByDistrictCollectorJD.aspx" role="button" style="font-size: 1.0em"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>NOC जिला  कलेक्टर को भेजी गई</b></a></li>

                                <li class="nav-item">
                                    <div class="collapse navbar-collapse">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>रिपोर्ट</b>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="../Transaction/JDLevelReportSection.aspx?ID=DisposeCasesNOC">Dispose Cases</a></li>
                                                    <li><a class="dropdown-item" href="../Transaction/JDLevelReportSection.aspx?ID=BlockWiseCounting">Block-Wise Statistics</a></li>
                                                    <li><a class="dropdown-item" href="../Transaction/JDLevelReportSection.aspx?ID=DistrictWiseCounting">District-Wise Statistics</a></li>
                                                    <li><a class="dropdown-item" href="../HRMS/NocReportJD.aspx">NOC Report</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <br />
                <fieldset id="DisposeCasesNOC" runat="server">
                    <legend>Dispose Cases    
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table text-center table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.<br />
                                                सरल क्र</th>
                                            <th data-class="phone,tablet" scope="col">District<br />
                                                जिला </th>
                                            <th data-hide="phone,tablet" scope="col">Block<br />
                                                विकासखण्ड </th>
                                            <th data-hide="phone,tablet" scope="col">School<br />
                                                स्कूल </th>
                                            <th data-hide="phone,tablet" scope="col">Applicant Name<br />
                                                आवेदक का नाम</th>
                                            <th data-hide="phone,tablet" scope="col">Gender<br />
                                                लिंग</th>
                                            <th data-hide="phone,tablet" scope="col">Class<br />
                                                वर्ग</th>

                                            <th data-hide="phone,tablet" scope="col">Date of Birth<br />
                                                जन्म तिथि</th>
                                            <th data-hide="phone,tablet" scope="col">Mobile No.<br />
                                                मोबाईल नं.</th>
                                            <th data-hide="phone,tablet" scope="col">Applicant's Relation with Deceased Teacher<br />
                                                आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                            <th data-hide="phone,tablet" scope="col">Marital Status<br />
                                                वैवाहिक स्थिति</th>
                                            <th data-hide="phone,tablet" scope="col">Educational Qualification<br />
                                                शैक्षिक योग्यता</th>
                                            <th data-hide="phone,tablet" scope="col">Cadre for Appointment<br />
                                                नियुक्ति हेतु संवर्ग</th>
                                            <th data-hide="phone,tablet" scope="col">Designation for Appointment<br />
                                                नियुक्ति हेतु पदनाम </th>
                                            <th data-hide="phone,tablet" scope="col">Status of Passing Primary Teacher Eligibility
                                                <br />
                                                Test for Primary Teacher<br />
                                                प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण  की स्थिति</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblRowNumber">1</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdCAFMS$ctl02$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_hdnId" value="5261">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lbldist">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblblock">Badi</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblschool">GMS BARELI (CLASS 1 TO 8)[23340103043]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblApplicantName">TARUN KUMAR</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblAoolicantGender">Male</span>
                                            </td>
                                            <td>O.B.C.</td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblappdob">30/12/1999</span>
                                            </td>
                                            <td>
                                                <span>8770844225</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblRelation_Detail">Son</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_LBLMarital_Status">अविवाहित</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_LBLMarital_Status_Qualification">8TH</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblApplied_Post">चतुर्थ श्रेणी </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblApplied_Designation"></span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblIs_TET"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblRowNumber">2</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdCAFMS$ctl03$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_hdnId" value="5225">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lbldist">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblblock">Seoni</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblschool">GPS CHUTKA -MERGE-8-9[23440100802]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblApplicantName">RAJESH KUMAR UIKEY</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblAoolicantGender">Male</span>
                                            </td>
                                            <td>SCHEDULED CASTES</td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblappdob">09/07/1992</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblMobileNo">7697546209</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblRelation_Detail">Son</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_LBLMarital_Status">अविवाहित</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_LBLMarital_Status_Qualification">HSS,MA</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblApplied_Post">लिपिकीय संवर्ग</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblApplied_Designation"></span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblIs_TET"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblRowNumber">3</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdCAFMS$ctl04$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_hdnId" value="5222">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lbldist">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblblock">Narsinghpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblschool">GOVT. HS NAYAGAON (Class 9 to 10)[23400103705]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblApplicantName">ASHI JAT</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblAoolicantGender">Female</span>
                                            </td>
                                            <td>SCHEDULED CASTES</td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblappdob">30/10/1988</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblMobileNo">6261025190</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblRelation_Detail">Wife/ Husband</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_LBLMarital_Status">वैवाहिक</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_LBLMarital_Status_Qualification">12th</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblApplied_Post">लिपिकीय संवर्ग</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblApplied_Designation"></span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblIs_TET"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblRowNumber">4</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdCAFMS$ctl05$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_hdnId" value="5211">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lbldist">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblblock">Jawa</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblschool">BEO, JAWA[231409OBS01]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblApplicantName">ABHISHEK KUMAR VARMA</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblAoolicantGender">Male</span>
                                            </td>
                                            <td>SCHEDULED CASTES</td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblappdob">29/10/1996</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblMobileNo">8085513509</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblRelation_Detail">Son</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_LBLMarital_Status">अविवाहित</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_LBLMarital_Status_Qualification">10TH</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblApplied_Post">चतुर्थ श्रेणी </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblApplied_Designation"></span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblIs_TET"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblRowNumber">5</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdCAFMS$ctl06$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_hdnId" value="5194">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lbldist">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblblock">Gangeo</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblschool">BEO, GANGEO[231408OBS01]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblApplicantName">Rohit Dubey</span>
                                            </td>

                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblAoolicantGender">Male</span>
                                            </td>
                                            <td>O.B.C.</td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblappdob">01/03/1991</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblMobileNo">7067772011</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblRelation_Detail">Son</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_LBLMarital_Status">वैवाहिक</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_LBLMarital_Status_Qualification">Graduate</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblApplied_Post">लिपिकीय संवर्ग</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblApplied_Designation"></span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblIs_TET"></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--  My Code End for Dispose Cases NOC --%>

                <div id="BlockWiseCounting" runat="server">
                    <fieldset>
                        <legend>Block-Wise Statistics / ब्लॉक वार सांख्यिकी   </legend>
                        <%-- Dropdown code --%>
                        <div class="col-md-12" id="divOfDropdownDistrict" runat="server">
                            <div class="row">

                                <div class="col-md-3">
                                    <label>
                                        <span style="font-weight: bold;">District / जिला </span>:</label>
                                    <div class="clearfix">
                                    </div>
                                    <asp:DropDownList ID="ddlJDLevelDistrict" runat="server" class="form-control vd_DDL_required" AutoPostBack="true">
                                        <asp:ListItem Value="o">-- District -- </asp:ListItem>
                                        <asp:ListItem Value="1">    Bhopal  </asp:ListItem>
                                        <asp:ListItem Value="2">    Raisen  </asp:ListItem>
                                        <asp:ListItem Value="3">    Rajgarh  </asp:ListItem>
                                        <asp:ListItem Value="4">    Sehore  </asp:ListItem>
                                        <asp:ListItem Value="5">    Vidisha  </asp:ListItem>


                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-2">
                                    <asp:Button runat="server" Text="Search" class="btn btn-rounded btn-success PerformClick" OnClick="btnSearch_Click" ID="btnSearch" />

                                </div>
                            </div>
                        </div>
                        <%-- Dropdown code --%>
                        <div id="divBlockWiseCountingtbl" runat="server">
                            <div class="row justify-content-end">
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-100">Excel</button>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-100">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-3 mt-4">
                                    <div class="form-group">
                                        <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <%-- Start Bhopal district Data --%>
                            <div class="row" id="divTbldataOfBhopal" runat="server">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="footable table text-center table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                            <thead>
                                                <tr>
                                                    <th data-class="expand" scope="col">Division<br />
                                                        संभाग</th>
                                                    <th data-class="phone,tablet" scope="col">District<br />
                                                        जिला</th>
                                                    <th data-hide="phone,tablet" scope="col">Block<br />
                                                        ब्लॉक</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Received
                                                        <br />
                                                        प्राप्त आवेदन</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                        आवेदन स्वीकार किये गए</th>

                                                    <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level
                                                        <br />
                                                        आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                        आवेदन निराकृत</th>
                                                    <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                        आपत्ति / लंबित आवेदन</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td><span style="font-size: 12pt;">Berasia</span></td>
                                                    <td style="text-align: right;">27</td>
                                                    <td style="text-align: right;">3</td>
                                                    <td style="text-align: right;">0</td>
                                                    <td style="text-align: right;">1</td>
                                                    <td style="text-align: right;">16</td>

                                                </tr>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td><span style="font-size: 12pt;">Phanda Gramin</span></td>
                                                    <td style="text-align: right;">27</td>
                                                    <td style="text-align: right;">3</td>
                                                    <td style="text-align: right;">0</td>
                                                    <td style="text-align: right;">1</td>
                                                    <td style="text-align: right;">16</td>

                                                </tr>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td><span style="font-size: 12pt;">Phanda URBAN- New City</span></td>
                                                    <td style="text-align: right;">27</td>
                                                    <td style="text-align: right;">3</td>
                                                    <td style="text-align: right;">0</td>
                                                    <td style="text-align: right;">1</td>
                                                    <td style="text-align: right;">16</td>

                                                </tr>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td><span style="font-size: 12pt;">Phanda URBAN- Old City</span></td>
                                                    <td style="text-align: right;">27</td>
                                                    <td style="text-align: right;">3</td>
                                                    <td style="text-align: right;">0</td>
                                                    <td style="text-align: right;">1</td>
                                                    <td style="text-align: right;">16</td>

                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <%-- End Bhopal district Data --%>
                            <%-- Start Sehore district Data --%>
                            <div class="row" id="divTbldataOfSihore" runat="server">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="footable table  table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                            <thead>
                                                <tr>
                                                    <th data-class="expand" scope="col">Division<br />
                                                        संभाग</th>
                                                    <th data-class="phone,tablet" scope="col">District<br />
                                                        जिला</th>
                                                    <th data-hide="phone,tablet" scope="col">Block<br />
                                                        ब्लॉक</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Received
                                                        <br />
                                                        प्राप्त आवेदन</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                        आवेदन स्वीकार किये गए</th>

                                                    <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level
                                                        <br />
                                                        आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                        आवेदन निराकृत</th>
                                                    <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                        आपत्ति / लंबित आवेदन</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Sehore</span></td>
                                                    <td><span style="font-size: 12pt;">Ashta</span></td>
                                                    <td style="text-align: right;">38</td>
                                                    <td style="text-align: right;">2</td>
                                                    <td style="text-align: right;">0</td>
                                                    <td style="text-align: right;">7</td>
                                                    <td style="text-align: right;">19</td>

                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <%-- End Sehore district Data --%>
                            <%-- Start Raisen district Data --%>
                            <div class="row" id="divTbldataOfRaisen" runat="server">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                            <thead>
                                                <tr>
                                                    <th data-class="expand" scope="col">Division<br />
                                                        संभाग</th>
                                                    <th data-class="phone,tablet" scope="col">District<br />
                                                        जिला</th>
                                                    <th data-hide="phone,tablet" scope="col">Block<br />
                                                        ब्लॉक</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Received
                                                        <br />
                                                        प्राप्त आवेदन</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                        आवेदन स्वीकार किये गए</th>

                                                    <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level
                                                        <br />
                                                        आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                        आवेदन निराकृत</th>
                                                    <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                        आपत्ति / लंबित आवेदन</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Raisen</span></td>
                                                    <td><span style="font-size: 12pt;">Badi</span></td>
                                                    <td style="text-align: right;">106</td>
                                                    <td style="text-align: right;">2</td>
                                                    <td style="text-align: right;">0</td>
                                                    <td style="text-align: right;">12</td>
                                                    <td style="text-align: right;">82</td>

                                                </tr>





                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <%-- End Raisen district Data --%>
                            <%-- start Rajgar district Data --%>
                            <div class="row" id="divTbldataOfRajgar" runat="server">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                            <thead>
                                                <tr>
                                                    <th data-class="expand" scope="col">Division<br />
                                                        संभाग</th>
                                                    <th data-class="phone,tablet" scope="col">District<br />
                                                        जिला</th>
                                                    <th data-hide="phone,tablet" scope="col">Block<br />
                                                        ब्लॉक</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Received
                                                        <br />
                                                        प्राप्त आवेदन</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                        आवेदन स्वीकार किये गए</th>

                                                    <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level
                                                        <br />
                                                        आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                        आवेदन निराकृत</th>
                                                    <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                        आपत्ति / लंबित आवेदन</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Rajgarh</span></td>
                                                    <td><span style="font-size: 12pt;">Biaora</span></td>
                                                    <td style="text-align: right;">79</td>
                                                    <td style="text-align: right;">15</td>
                                                    <td style="text-align: right;">1</td>
                                                    <td style="text-align: right;">9</td>
                                                    <td style="text-align: right;">38</td>

                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <%-- End rajgahr district Data --%>
                            <%-- End rajgahr district Data --%>
                            <div class="row" id="divTbldataOfVidisha" runat="server">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS" style="border-collapse: collapse;">
                                            <thead>
                                                <tr>
                                                    <th data-class="expand" scope="col">Division<br />
                                                        संभाग</th>
                                                    <th data-class="phone,tablet" scope="col">District<br />
                                                        जिला</th>
                                                    <th data-hide="phone,tablet" scope="col">Block<br />
                                                        ब्लॉक</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Received
                                                        <br />
                                                        प्राप्त आवेदन</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                        आवेदन स्वीकार किये गए</th>

                                                    <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level
                                                        <br />
                                                        आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                                    <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                        आवेदन निराकृत</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                                    <td class="phone,tablet"><span style="font-size: 12pt;">Vidisha</span></td>
                                                    <td><span style="font-size: 12pt;">Basoda</span></td>
                                                    <td style="text-align: right;">79</td>
                                                    <td style="text-align: right;">8</td>
                                                    <td style="text-align: right;">13</td>
                                                    <td style="text-align: right;">8</td>


                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <%-- End rajgahr district Data --%>
                        </div>
                    </fieldset>
                </div>
                <%--  My Code End for Block Wise Count Cases --%>

                <%--  My Code Start for District Wise Count Cases --%>
                <fieldset id="DistrictWiseCounting" runat="server">

                    <legend>District-Wise Statistics/जिला वार सांख्यिकी</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Division<br />
                                                संभाग</th>
                                            <th data-class="phone,tablet" scope="col">District<br />
                                                जिला</th>
                                            <th data-hide="phone,tablet" scope="col">Application Received
                                                <br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level
                                                        <br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody class="text-center">
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Bhopal</span></td>
                                            <td style="color: #00BCD4;font-weight: bold;">
                                                <asp:Button runat="server" Text="2" Style="color: #00BCD4;" OnClick="hideshowTotalReceivedCases_Click1" ID="hideshowTotalReceivedCases" BorderStyle="None" /></td>
                                            <td style="color: #00BCD4;font-weight: bold;">
                                                <asp:Button runat="server" Text="1" Style="color: #00BCD4;" OnClick="hideShowDistrictWiseLockaavedan_Click" BorderStyle="None" ID="hideShowDistrictWiseLockaavedan" />
                                            </td>
                                            <td style="color: #00BCD4;font-weight: bold;">
                                                <asp:Button runat="server" Text="1" Style="color: #00BCD4;" OnClick="hidshowAvedankoAdhikariKoForwordKiyagya_Click" BorderStyle="None"
                                                    ID="hidshowAvedankoAdhikariKoForwordKiyagya" />
                                            </td>
                                            <td style="color: #00BCD4;font-weight: bold;">
                                                <asp:Button runat="server" Text="1" Style="color: #00BCD4;" OnClick="hideshowDisposeAavedan_Click" BorderStyle="None" ID="hideshowDisposeAavedan" />
                                            </td>
                                            <td style="color: #00BCD4;font-weight: bold;">
                                                <asp:Button runat="server" Text="0" Style="color: #00BCD4;" OnClick="hideshowlambitAvedan_Click" BorderStyle="None" ID="hideshowlambitAvedan" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Raisen</span></td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('RajgarhDistrictWisereceivedCase')" style="color: #00BCD4;font-weight: bold;">3</a>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistWiseForwordApplication')" style="color: #00BCD4;font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('RaisenDistrictWiseDisposeAavedan')" style="color: #00BCD4;font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistrictWisePendingApplication')" style="color: #00BCD4;font-weight: bold;">2</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Rajgarh</span></td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('RajgarhDistrictWisereceivedCase')" style="color: #00BCD4;font-weight: bold;">3</a>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistWiseLockaavedan')" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistWiseForwordApplication')" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('RajgarhDistrictDisposeCase')" style="color: #00BCD4;font-weight: bold;">3</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Sehore</span></td>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Vidisha</span></td>

                                            <td>
                                                <a href="#" onclick="toggleFieldset('RajgarhDistrictWisereceivedCase')" style="color: #00BCD4;font-weight: bold;">3</a>
                                            <td>
                                                <a href="#" style="color: #00BCD4;font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistWiseForwordApplication')" style="color: #00BCD4;font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistrictWiseDisposeAavedan')" style="color: #00BCD4;font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistrictWisePendingApplication')" style="color: #00BCD4;font-weight: bold;">2</a>
                                            </td>
                                        </tr>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--  My Code End for District Wise Count Cases --%>
                <%--End DropDown Base data --%>
                <%-- District wise DrilDown data start --%>
                <%--1). Disposed Details data  --%>
                <fieldset id="DistrictWiseDisposeAavedan" style="display: none;">
                    <legend>District-Wise Disposed Details / जिला वार डिस्पोज़ का विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table text-center table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1"  style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Name<br />
                                                    दिवंगत अधिकारी / कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Dispose Type<br />
                                                    डिस्पोज़ का प्रकार
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Appointment Letter No.
                     <br />
                                                    नियुक्ति पत्र सं
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Letter Date<br />
                                                    पत्र दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Appointed Post<br />
                                                    नियुक्त पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Appointing Organization<br />
                                                    नियुक्त संस्था का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Reasons for Rejection<br />
                                                    अस्वीकृत के कारण
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Payment Date<br />
                                                    भुगतान तारीख
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Payment<br />
                                                    भुगतान
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Order No.<br />
                                                    आदेश नंबर
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Check No.<br />
                                                    चेक नंबर
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    View PDF<br />
                                                    PDF देखे
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span>Manphool Imne</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>ANITA IMNE</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <span title="Click here To view Appointment Letter">View Document</span>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--next table for raisen --%>
                <fieldset id="RajgarhDistrictDisposeCase" style="display: none;">
                    <legend>Details of Registered Application / पंजीकृत आवेदन का विवरण    
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>

                                        <tr>

                                            <th data-class="expand" scope="col">Sr. No.
    <br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">Deceased Officer / Employee Name<br />
                                                दिवंगत अधिकारी/ कर्मचारी का नाम
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Type of Disposal<br />डिस्पोज़ का प्रकार</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Appointment Letter No.<br />नियुक्ति पत्र सं</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Letter Date<br />पत्र दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Appointed Post<br />नियुक्त पद</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Name of Appointing Organization<br />नियुक्त संस्था का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Reasons for Rejection<br />अस्वीकृत के कारण</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Payment Date<br />भुगतान तारीख</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Payment<br />भुगतान</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Order Number<br />आदेश नंबर</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">Cheque Number<br />चेक नंबर</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">View PDF<br />PDF देखे</div>
                                            </th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span>Sandeep Sisodiya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Navdeep Sisodiya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Rejected</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>01/01/1900</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>आवेदक द्वारा अनुकंपा नियुक्ति का आवेदन सहायक आयुक्त जनजातिय कार्य विभाग अलीराजपुर में किया गया हैं। उक्त प्रकरण संबंधित विभाग में लंबित हैं। स्कूल शिक्षा में कोई अनुकंपा नियुक्ति के प्रकरण लंबित नही होने से जानकारी निरंक हैं।</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>1/1/1900 12:00:00 AM</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="../Handlers/AppointmentLetter.ashx?ID=Mzg3OA==">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblTo" title="Click here To view Appointment Letter">View Document</span>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span>Dinesh Chouhan</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>KIRAN CHOUHAN</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Rejected</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>01/01/1900</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>संबंधित किरण चौहान की नियुक्ति जनजातीय कार्य विभाग द्वारा तहसील कार्यालय सोण्डवा मे नियुक्ति सहायक ग्रेड-03 के पद पर की गई है। अतः स्कूल शिक्षा विभाग मे अनुकंपा नियुक्ति का कोई प्रकरण लंबित नही है।</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>1/1/1900 12:00:00 AM</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>

                                                <span title="Click here To view Appointment Letter">View Document</span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">3
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span>REENA DUDWE</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>DEEPANSHU DUDWE</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Rejected</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>01/01/1900</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>आवेदक द्वारा अनुकंपा नियुक्ति का आवेदन सहायक आयुक्त जनजातिय कार्य विभाग अलीराजपुर में किया गया हैं। उक्त प्रकरण संबंधित विभाग में लंबित हैं। स्कूल शिक्षा में कोई अनुकंपा नियुक्ति के प्रकरण लंबित नही होने से जानकारी निरंक हैं।</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>1/1/1900 12:00:00 AM</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>

                                                <span title="Click here To view Appointment Letter">View Document</span>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--next table for raisen --%>
                <fieldset id="RaisenDistrictWiseDisposeAavedan" style="display: none;">
                    <legend>Details of Registered Application / पंजीकृत आवेदन का विवरण    
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.
                  <br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Code<br />
                                                    दिवंगत अधिकारी / कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Name<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Post<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Date<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    D.O.B. of Applicant<br />
                                                    आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BK5091</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Rajesh Nagar</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Grade-3</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>25/07/2023</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>MITESH NAGAR</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>05/10/1991</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BJ7011</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Bherulal Ghatiya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Teacher(LDT)</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>04/11/2022</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Yashpal Ghatiya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>30/03/1997</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">3
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BJ9387</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Mangal Singh Bamniya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Peon-Regular</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>12/09/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Rakesh Bamniya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>03/08/1996</span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--next table for rajgarh--%>
                <fieldset id="RajgarhDistrictWisereceivedCase" style="display: none;">
                    <legend>Details of Registered Application/पंजीकृत आवेदन का विवरण    
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.
    <br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Code<br />
                                                    दिवंगत अधिकारी / कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Name<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Post<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Date<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    D.O.B. of Applicant<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BK4808</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Sandeep Sisodiya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Teacher(LDT)</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>03/09/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Navdeep Sisodiya</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>23/05/1994</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BS1381</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Dinesh Chouhan</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>23/04/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>KIRAN CHOUHAN</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>05/05/1984</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">3
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BJ3848</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>REENA DUDWE</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>06/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>DEEPANSHU DUDWE</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>25/06/2003</span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--2). received Case Details data  --%>
                <fieldset id="DistrictWisereceivedCase" style="display: none;">
                    <legend>Details of Registered Application / पंजीकृत आवेदन का विवरण    
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.
                                 <br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Code<br />
                                                    दिवंगत अधिकारी / कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Name<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Post<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Date<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    D.O.B. of Applicant<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>AA1277</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Sohela Akhter</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Grade-3</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>06/01/2018</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>MARIYAM RAZIQ</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>01/01/1900</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>AT9965</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Manisha Shrivastav</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>05/07/2020</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>MIHI SHRIVASTAVA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>09/12/2004</span>
                                                </div>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--3). District wise Locked  Details data  --%>
                <fieldset id="DistWiseLockaavedan" style="display: none;">
                    <legend>Block-Wise Details of Application<br />
                        जिला वार लॉक आवेदन का विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">
                                               Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Code of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी / कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी / कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Post of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Date<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant D.O.B.<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    AU5379
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    Rakesh Kumar Vyas
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    Ucch Madhyamik Shikshak
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    20/04/2021
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    HARISHT VYAS
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    28/08/2001
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--4). District wise Forword Application  Details data  --%>
                <fieldset id="DistWiseForwordApplication" style="display: none;">
                    <legend>Applications Forwarded Details / अग्रेषित आवेदनों का विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.
                                                <br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Code of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Post of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Daet<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant D.O.B.<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>AA3252</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Madhu Shrivastava</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Teacher(LDT)</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>08/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>AKSHAT SHRIVASTAVA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>09/04/2000</span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--5). District wise Aavedan per Nirnay kare Application  Details data  --%>
                <fieldset id="DistrictWisePendingApplication" style="display: none;">
                    <legend>Pending Application Details/लंबित आवेदन का विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Code of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Post of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Date of Death<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant D.O.B.<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Cause of Objection / Pending<br />
                                                    आपत्ति / लंबित के कारण
                                                </div>
                                            </th>

                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Objection Details<br />
                                                    आपत्ति का विवरण
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Remark<br />
                                                    रिमार्क
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BG3779</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Pradeep Singh Baghel</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Madhymik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>07/10/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>CHANDRA KANT BAGHEL</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>06/09/2001</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>

                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BN3380</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Devendra Singh</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Madhymik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>14/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>RAMA DEVI</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>08/12/1983</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>



                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- District wise DrilDown data End --%>
                <%-- total Start Dispose Cases Table --%>

                <fieldset id="DisposeAavedan" runat="server" visible="false">
                    <legend>District-Wise Disposed Details/जिला वार डिस्पोज़ का विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table text-center table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Name<br />
                                                    दिवंगत अधिकारी / कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Dispose Type<br />
                                                    डिस्पोज़ का प्रकार
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Appointment Letter No.
                                                    <br />
                                                    नियुक्ति पत्र सं
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Letter Date<br />
                                                    पत्र दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Appointed Post<br />
                                                    नियुक्त पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Appointing Organization<br />
                                                    नियुक्त संस्था का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Reasons for Rejection<br />
                                                    अस्वीकृत के कारण
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Payment Date<br />
                                                    भुगतान तारीख
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Payment<br />
                                                    भुगतान
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Order No.<br />
                                                    आदेश नंबर
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Check No.<br />
                                                    चेक नंबर
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    View PDF<br />
                                                    PDF देखे
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span>Manphool Imne</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>ANITA IMNE</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblDType">01/05/1900</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblAppoint1">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblAppoint2">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblAppoint72">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblAppoint73">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblAppoint173">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblpaymentdate"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblpayment">0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblorder">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblChaque_no">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <span title="Click here To view Appointment Letter">View Document</span>
                                                </a>
                                            </td>
                                        </tr>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- total end Dispose Cases Table --%>
                <%-- total Start received Cases Table --%>

                <fieldset id="TotalReceivedCases" runat="server" visible="false">
                    <legend>Details of Registered Application / पंजीकृत आवेदन का विवरण    
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.
                                                <br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Code<br />
                                                    दिवंगत अधिकारी / कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Name<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Deceased Officer / Employee Post<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Date<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    D.O.B. of Applicant<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>AA1277</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Sohela Akhter</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Grade-3</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>06/01/2018</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>MARIYAM RAZIQ</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>01/01/1900</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>AT9965</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Manisha Shrivastav</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>05/07/2020</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>MIHI SHRIVASTAVA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>09/12/2004</span>
                                                </div>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- total End received Cases Table --%>

                <%-- total start DistrictWiseLockaavedan Cases Table --%>
                <fieldset id="DistrictWiseLockaavedan" runat="server" visible="false">
                    <legend>Block-Wise Details of Application<br />
                        जिला वार लॉक आवेदन का विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">
                                                Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Code of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी / कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी / कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Post of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Date<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant D.O.B.<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    AU5379
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    Rakesh Kumar Vyas
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    Ucch Madhyamik Shikshak
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    20/04/2021
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    HARISHT VYAS
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    28/08/2001
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- total End DistrictWiseLockaavedan Cases Table --%>

                <%-- total start AavendalMeApptiDarjReport Cases Table --%>
                <fieldset id="AavendalMeApptiDarjReport" runat="server" visible="false">
                    <legend>District-Wise Pending Applications / जिला वार लंबित आवेदन
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">
                                               Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Code of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Post of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Date<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant D.O.B.<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Cause of Pending / Objection<br />
                                                    लंबित/आपत्ति के कारण
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Objection Details<br />
                                                    आपत्ति का विवरण
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Remark<br />
                                                    रिमार्क
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>AA1879</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Mamta Rajput</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>02/04/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>RATNESH SINGH RAJPUT</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>17/07/2002</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>BK1181</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Chandra Prakash Sharma</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Teacher(LDT)</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>22/04/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NITIN SHARMA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>18/05/1993</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>NA</span>
                                                </div>
                                            </td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- total End AavendalMeApptiDarjReport Cases Table --%>

                <%-- total start AvedankoAdhikariKoForwordKiyagya Cases Table --%>
                <fieldset id="AvedankoAdhikariKoForwordKiyagya" runat="server" visible="false">
                    <legend>Applications Forwarded Details/अग्रेषित आवेदनों का विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">
                                                Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Code of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Post of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Death Daet<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant D.O.B.<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span>AA3252</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Madhu Shrivastava</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>Asstt Teacher(LDT)</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>08/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>AKSHAT SHRIVASTAVA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>09/04/2000</span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- total End AvedankoAdhikariKoForwordKiyagya Cases Table --%>

                <%-- total start lambitAvedan Cases Table --%>
                <fieldset id="lambitAvedan" runat="server" visible="false">
                    <legend>Pending Application Details/लंबित आवेदन का विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Code of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का कोड
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Name of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Post of Deceased Officer / Employee<br />
                                                    दिवंगत अधिकारी/ कर्मचारी का पद
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Date of Death<br />
                                                    दिवंगत दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant Name<br />
                                                    आवेदक का नाम
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Applicant D.O.B.<br />
                                                     आवेदक की जन्म दिनांक
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Cause of Objection / Pending<br />
                                                    आपत्ति / लंबित के कारण
                                                </div>
                                            </th>

                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Objection Details<br />
                                                    आपत्ति का विवरण
                                                </div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">
                                                    Remark<br />
                                                    रिमार्क
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblcode">BG3779</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblempname">Pradeep Singh Baghel</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblempdesigantion">Madhymik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lbldeath">07/10/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="b">CHANDRA KANT BAGHEL</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="gf">06/09/2001</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lnlpending"></span>
                                                </div>
                                            </td>

                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblobdj">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblremakrs"></span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblcode">BN3380</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblempname">Devendra Singh</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblempdesigantion">Madhymik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lbldeath">14/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblappname">RAMA DEVI</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>08/12/1983</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblremakrs"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lnlpending">NA</span>
                                                </div>
                                            </td>



                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- total End lambitAvedan Cases Table --%>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleFieldset(id) {
            var fieldsets = document.getElementsByTagName("fieldset");
            for (var i = 0; i < fieldsets.length; i++) {
                if (fieldsets[i].id === id) {
                    if (fieldsets[i].style.display === "none") {
                        fieldsets[i].style.display = "block";
                    } else {
                        fieldsets[i].style.display = "none";
                    }
                } else {
                    fieldsets[i].style.display = "none";
                }
            }
        }
    </script>

</asp:Content>

