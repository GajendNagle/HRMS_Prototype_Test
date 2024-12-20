﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DEOLevelReportSection.aspx.cs" Inherits="mis_Transaction_DEOLevelReportSection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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
            <%-- <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">अनुकंपा नियुक्ति प्रबंधन प्रणाली</p>
        </div>--%>
            <div class="col-md-7 align-self-center">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="AnukampaNuktiMainPage.aspx" title="click to go on">Compassionate Appointment</a></li>
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
                                    <a class="nav-link text-warning  font-16 text-white" href="DisposeApplicationCaseForDEO.aspx" role="button" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                                </li>
                                <li class="nav-item">
                                    <div class="collapse navbar-collapse">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति </b>
                                                </a>
                                                <ul class="dropdown-menu">

                                                    <li><a class="dropdown-item" href="../HRMS/Trn_DeoCompassionateApproval.aspx">अनुकंपा नियुक्ति के लिए आवेदन पंजीयन/सुधार करें</a></li>
                                                    <li><a class="dropdown-item" href="../HRMS/DeoPrintApplicationReport.aspx">प्रिंट आवेदन </a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>


                                <li class="nav-item" style="position: relative; right: 20px;">
                                    <a class="nav-link text-warning font-16 text-white" href="../HRMS/Trn_ProcessApplicationListDeo.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति पर कार्यवाही </b></strong></a>

                                </li>
                                <li class="nav-item mr-4">
                                    <a class="nav-link  text-white " href="../Transaction/DisposeApplicationCase.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>आवेदन पर निर्णय करें</b></a></li>

                                <li class="nav-item mr-3">
                                    <a class="nav-link  text-white " href="../HRMS/NocSendByDistrictCollectorDeo.aspx" role="button" style="font-size: 1.0em"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>NOC जिला  कलेक्टर को भेजी गई</b></a></li>

                                <li class="nav-item">
                                    <div class="collapse navbar-collapse">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report </b>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="DEOLevelReportSection.aspx?ID=DisposeCasesNOC">Dispose Cases</a></li>
                                                    <li><a class="dropdown-item" href="DEOLevelReportSection.aspx?ID=BlockWiseCounting">ब्लॉक वार सांख्यिकी</a></li>
                                                    <li><a class="dropdown-item" href="DEOLevelReportSection.aspx?ID=DistrictWiseCounting">जिला वार सांख्यिकी</a></li>
                                                    <li><a class="dropdown-item" href="../HRMS/NocReportDeo.aspx">NOC Report</a></li>

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

                <%--Start DropDown Base data --%>
                <%--  My Code Start for Dispose Cases NOC --%>
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
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">क्र</th>
                                            <th data-class="phone,tablet" scope="col">District</th>
                                            <th data-hide="phone,tablet" scope="col">Block</th>
                                            <th data-hide="phone,tablet" scope="col">School</th>
                                            <th data-hide="phone,tablet" scope="col">आवेदक का नाम</th>
                                            <th data-hide="phone,tablet" scope="col">जेंडर</th>
                                            <th data-hide="phone,tablet" scope="col">वर्ग</th>

                                            <th data-hide="phone,tablet" scope="col">जन्म तिथि</th>
                                            <th data-hide="phone,tablet" scope="col">Mobile </th>
                                            <th data-hide="phone,tablet" scope="col">आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                            <th data-hide="phone,tablet" scope="col">वैवाहिक स्थिति</th>
                                            <th data-hide="phone,tablet" scope="col">शैक्षिक योग्यता</th>
                                            <th data-hide="phone,tablet" scope="col">नियुक्ति हेतु संवर्ग</th>
                                            <th data-hide="phone,tablet" scope="col">नियुक्ति हेतु पदनाम </th>
                                            <th data-hide="phone,tablet" scope="col">प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण  की स्थिति</th>
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
                                            <td>O.B.C.</td>
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
                                            <td>S.C.</td>
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
                                            <td>S.C.</td>
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





                <%--  My Code Start for Block Wise Count Cases --%>
                <%--<fieldset id="FieldsetOfDropdownDistrict" runat="server">
                    <legend>ब्लॉक वार सांख्यिकी   </legend>
                    <div class="col-md-12" runat="server">
                        <div class="col-md-6">
                            <label>
                                <span style="font-weight: bold;">District *</span>:</label>
                            <div class="clearfix">
                            </div>
                            <asp:DropDownList ID="ddlDistrict" runat="server" class="form-control vd_DDL_required" AutoPostBack="true" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged1">
                                <asp:ListItem Value="o">-- District -- </asp:ListItem>
                                <asp:ListItem Value="1">Bhopal भोपाल </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-6">
                            <asp:Button runat="server" Text="Search" class="btn btn-large btn-info PerformClick" OnClick="Unnamed_Click" />

                        </div>

                    </div>
                </fieldset>--%>
                <div id="BlockWiseCounting" runat="server">
                    <fieldset>
                        <legend>ब्लॉक वार सांख्यिकी   </legend>
                        <%-- Dropdown code --%>
                        <div class="col-md-12" id="divOfDropdownDistrict" runat="server">
                            <div class="row">

                                <div class="col-md-2">
                                    <label>
                                        <span style="font-weight: bold;">District </span>:</label>

                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="true" Enabled="false">
                                        <asp:ListItem Value="o">-- District -- </asp:ListItem>
                                        <asp:ListItem Value="1" Selected="True">Bhopal भोपाल </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-2">
                                    <asp:Button runat="server" Text="Search" class="btn btn-large btn-info form-control" OnClick="btnSearch_Click" ID="btnSearch" />

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
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                            <thead>
                                                <tr>
                                                    <th data-class="expand" scope="col">संभाग</th>
                                                    <th data-class="phone,tablet" scope="col">जिला</th>
                                                    <th data-hide="phone,tablet" scope="col">ब्लॉक</th>
                                                    <th data-hide="phone,tablet" scope="col">प्राप्त आवेदन</th>
                                                    <th data-hide="phone,tablet" scope="col">आवेदन स्वीकार किये गए</th>

                                                    <th data-hide="phone,tablet" scope="col">आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                                    <th data-hide="phone,tablet" scope="col">आवेदन निराकृत</th>
                                                    <th data-hide="phone,tablet" scope="col">आपत्ति/लंबित आवेदन</th>
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
                        </div>
                    </fieldset>
                </div>
                <%--  My Code End for Block Wise Count Cases --%>

                <%--  My Code Start for District Wise Count Cases --%>
                <fieldset id="DistrictWiseCounting" runat="server">

                    <legend>जिला वार सांख्यिकी     
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
                                            <th data-class="expand" scope="col">संभाग</th>
                                            <th data-class="phone,tablet" scope="col">जिला</th>
                                            <th data-hide="phone,tablet" scope="col">प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">आपत्ति/लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Bhopal</span></td>



                                            <td style="color: #00BCD4;">
                                                <asp:Button runat="server" Text="2" Style="color: #00BCD4;" OnClick="hideshowTotalReceivedCases_Click" ID="hideshowTotalReceivedCases" BorderStyle="None" /></td>




                                            <td style="color: #00BCD4;"><%--<a href="#">1</a>--%>
                                                <asp:Button runat="server" Text="1" Style="color: #00BCD4;" OnClick="hideShowDistrictWiseLockaavedan_Click" BorderStyle="None" ID="hideShowDistrictWiseLockaavedan" />

                                            </td>
                                            <td style="color: #00BCD4;">
                                                <asp:Button runat="server" Text="1" Style="color: #00BCD4;" OnClick="hidshowAvedankoAdhikariKoForwordKiyagya_Click" BorderStyle="None"
                                                    ID="hidshowAvedankoAdhikariKoForwordKiyagya" />


                                            </td>
                                            <td style="color: #00BCD4;">
                                                <asp:Button runat="server" Text="6" Style="color: #00BCD4;" OnClick="hideshowDisposeAavedan_Click" BorderStyle="None" ID="hideshowDisposeAavedan" />

                                            </td>
                                            <td style="color: #00BCD4;">
                                                <asp:Button runat="server" Text="3" Style="color: #00BCD4;" OnClick="hideshowlambitAvedan_Click" BorderStyle="None" ID="hideshowlambitAvedan" />

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

                <%-- total Start Dispose Cases Table --%>
                <fieldset id="DisposeAavedan" runat="server" visible="false">
                    <legend>जिला वार डिस्पोज़ का विवरण
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
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">डिस्पोज़ का प्रकार</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">नियुक्ति पत्र सं</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">पत्र दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">नियुक्त पद</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">नियुक्त संस्था का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">अस्वीकृत के कारण</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">भुगतान तारीख</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">भुगतान</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आदेश नंबर</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">चेक नंबर</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">PDF देखे</div>
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
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblDType"></span>
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
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span>Bhagwan Singh</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span>BHUPENDRA MEENA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblDType">Paid Amount</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblAppoint1"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblAppoint2">01/01/1900</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblAppoint72">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblAppoint73"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblAppoint173">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblpaymentdate">4/24/2023 12:00:00 AM</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblpayment">100000</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblorder">4587</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblChaque_no">4587</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblTo" title="Click here To view Appointment Letter">View Document</span>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">3
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblempname">Sigdar Puri Goswami</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblappname">Trasha Goswami</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblDType"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblAppoint1">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblAppoint2">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblAppoint72">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblAppoint73">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblAppoint173">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblpaymentdate"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblpayment">0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblorder">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblChaque_no">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblTo" title="Click here To view Appointment Letter">View Document</span>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">4
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblempname">Maya Batham</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblappname">NIKHIL BATHAM</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblDType">Appointment order issued</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblAppoint1">216</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblAppoint2">02/08/2022</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblAppoint72">Prayogshala Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblAppoint73">HSS CHAMLESHWAR  BADNAGAR DIS. UJJAIN</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblAppoint173">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblpaymentdate">1/1/1900 12:00:00 AM</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblpayment">0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblorder">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblChaque_no">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl05_lblTo" title="Click here To view Appointment Letter">View Document</span>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">5
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblempname">Reeta Singh</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblappname">RAMANAND SINGH</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblDType">Rejected</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblAppoint1"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblAppoint2">01/01/1900</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblAppoint72">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblAppoint73"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblAppoint173">सहायक अध्यापक संवर्ग के मृतक आश्रित को भृत्य पद पर अनुकंपा नियुक्ति की पात्रता नही है।</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblpaymentdate">1/1/1900 12:00:00 AM</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblpayment">0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblorder">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblChaque_no">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl06_lblTo" title="Click here To view Appointment Letter">View Document</span>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">6
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblempname">Girija Mehra</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblappname">VISHAL MEHRA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblDType"></span>
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
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblAppoint173">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblpaymentdate"></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblpayment">0</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblorder">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblChaque_no">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl07_lblTo" title="Click here To view Appointment Letter">View Document</span>
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
                    <legend>पंजीकृत आवेदन का विवरण    
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
                                            <th data-class="expand" scope="col">क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का कोड</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का पद</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का जन्म दिनांक</div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="">AA1277</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Sohela Akhter</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Asstt Grade-3</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">06/01/2018</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">MARIYAM RAZIQ</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">01/01/1900</span>
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
                                                    <span id="">Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">05/07/2020</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">MIHI SHRIVASTAVA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">09/12/2004</span>
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
                    <legend>जिला वार लॉक आवेदन का विवरण
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
                                            <th data-class="expand" scope="col">क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का कोड</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का पद</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का जन्म दिनांक</div>
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
                    <legend>जिला वार लंबित आवेदन
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
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" id="" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का कोड</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का पद</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का जन्म दिनांक</div>
                                            </th>
                                            <%--  <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">लंबित के कारण</div>
                                            </th>--%>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">लंबित/आपत्ति के कारण</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आपत्ति का विवरण</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">रिमार्क</div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="">AA1879</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Mamta Rajput</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">02/04/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">RATNESH SINGH RAJPUT</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">17/07/2002</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id=""></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id=""></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">NA</span>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">2
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="">BK1181</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Chandra Prakash Sharma</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Asstt Teacher(LDT)</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">22/04/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">NITIN SHARMA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">18/05/1993</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id=""></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id=""></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">NA</span>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="expand" style="text-align: right;">3
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="">BP1194</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Bal Veer</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">26/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">SANJAY YADAV</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">01/01/1900</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id=""></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id=""></span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">NA</span>
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
                    <legend>जिला वार फॉरवर्ड किये गए आवेदन का विवरण
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
                                <table class="footable table  table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का कोड</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का पद</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का जन्म दिनांक</div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand" style="text-align: right;">1
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="">AA3252</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Madhu Shrivastava</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">Asstt Teacher(LDT)</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">08/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">AKSHAT SHRIVASTAVA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">09/04/2000</span>
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
                    <legend>जिला वार लंबित आवेदन का विवरण
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
                                <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" id="" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">क्र.</th>
                                            <th data-class="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का कोड</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत अधिकारी/ कर्मचारी का पद</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">दिवंगत दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का नाम</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आवेदक का जन्म दिनांक</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आपत्ति/लंबित के कारण</div>
                                            </th>

                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">आपत्ति का विवरण</div>
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">
                                                <div style="text-align: center;">रिमार्क</div>
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
                                        <tr>
                                            <td class="expand" style="text-align: right;">3
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblcode">BG2907</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblempname">Mahesh Kumar</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblempdesigantion">Prathmik Shikshak</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lbldeath">14/05/2021</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">RAHUL BOHRE</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="">10/06/1991</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lnlpending"></span>
                                                </div>
                                            </td>

                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblobdj">NA</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblremakrs"></span>
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
    <%--   <script>
        function showtbl(tblId) {
            var tables = document.getElementsByTagName('fieldset');
            for (var i = 0; i < tables.length; i++) {
                tables[i].style.display = "none";
            }
            document.getElementById(tblId).style.display = "table";
        }


        //<table class="table table-bordered table-responsive-lg" id="tblBlockofBhopal" style="display: none;">
        //<td><a onclick="showtbl('tblBlockofBhopal')">2</a></td>
    </script>
    <script>
        function toggleFieldset() {
            var fieldset = document.getElementById("TotalReceivedCases");
            if (fieldset.style.display === "none") {
                fieldset.style.display = "block";
            } else {
                fieldset.style.display = "none";
            }
        }
    </script>--%>
</asp:Content>
