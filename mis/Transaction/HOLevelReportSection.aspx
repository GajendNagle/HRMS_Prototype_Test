<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HOLevelReportSection.aspx.cs" Inherits="mis_Transaction_HOLevelReportSection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HeadOfficeCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>HO Compassionate Appointment </span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <span id="brdcmDistrictWise" runat="server" visible="false">District Wise Counting Report</span>
                            <span id="brdcmBloackWise" runat="server" visible="false">Block Wise Counting Report</span>
                            <span id="brdcmDisposeCases" runat="server" visible="false">Dispose Cases Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5" style="position: relative; bottom: 20px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
            <img src="../../img/Anukampa Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <%--Start DropDown Base data --%>
    <%--  My Code Start for Dispose Cases NOC --%>
    <div class="card card-border-primary" id="DisposeCasesNOC" runat="server">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Dispose Cases Details / मामलों के निपटान का विवरण </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Details / विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
                                        <th data-class="expand" scope="col">Sr. No.<br />
                                            सरल क्र.</th>
                                        <th data-class="phone,tablet" scope="col">District<br />
                                            जिला</th>
                                        <th data-hide="phone,tablet" scope="col">Block<br />
                                            विकासखण्ड</th>
                                        <th data-hide="phone,tablet" scope="col">School<br />
                                            स्कूल</th>
                                        <th data-hide="phone,tablet" scope="col">Applicant Name<br />
                                            आवेदक का नाम</th>
                                        <th data-hide="phone,tablet" scope="col">Gender<br />
                                            लिंग</th>
                                        <th data-hide="phone,tablet" scope="col">Cast<br />
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
                                        <th data-hide="phone,tablet" scope="col">Cadre For Appointment<br />
                                            नियुक्ति हेतु संवर्ग</th>
                                        <th data-hide="phone,tablet" scope="col">Designation For Appointment<br />
                                            नियुक्ति हेतु पदनाम </th>
                                        <th data-hide="phone,tablet" scope="col">Status of Passing Primary Teacher Eligibility
                                        <br />
                                            Test for Primary Teacher
                                                <br />
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
                                        <td>SCHEDULED CASTES</td>
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
                                        <td>O.B.C.</td>
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
        </div>
    </div>
    <div class="card card-border-primary" id="BlockWiseCounting" runat="server">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Block Wise Counting Report / ब्लॉक वार सांख्यिकी रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Block-Wise Statistics / ब्लॉक वार सांख्यिकी</legend>
                <div id="divOfDropdownDistrict" runat="server">
                    <div class="row">
                        <div class="col-md-3">
                            <label>
                                <span style="font-weight: bold;">District
    <br />
                                    जिला</span>*</label>
                            <asp:DropDownList ID="ddlJDLevelDistrict" runat="server" class="form-control vd_DDL_required" AutoPostBack="true">
                                <asp:ListItem Value="0">-- Select --  </asp:ListItem>
                                <asp:ListItem Value="1">Bhopal भोपाल   </asp:ListItem>
                                <asp:ListItem Value="2">Agar Malwa आगर  मालवा  </asp:ListItem>
                                <asp:ListItem Value="3">Alirajpur अलीराजपुर   </asp:ListItem>
                                <asp:ListItem Value="4">Anuppur अनूपपुर   </asp:ListItem>
                                <asp:ListItem Value="5">Ashoknagar अशोकनगर   </asp:ListItem>
                                <asp:ListItem Value="6">Balaghat बालाघाट   </asp:ListItem>
                                <asp:ListItem Value="7">Barwani बड़वानी   </asp:ListItem>
                                <asp:ListItem Value="8">Betul बैतूल   </asp:ListItem>
                                <asp:ListItem Value="9">Bhind भिण्ड   </asp:ListItem>
                                <asp:ListItem Value="10">Burhanpur बुरहानपुर   </asp:ListItem>
                                <asp:ListItem Value="11">Chhatarpur छतरपुर   </asp:ListItem>
                                <asp:ListItem Value="12">Damoh दमोह   </asp:ListItem>
                                <asp:ListItem Value="13">Chhindwara छिंदवाडा   </asp:ListItem>
                                <asp:ListItem Value="14">Datia दतिया   </asp:ListItem>
                                <asp:ListItem Value="15">Dewas देवास   </asp:ListItem>
                                <asp:ListItem Value="16">Dhar धार   </asp:ListItem>
                                <asp:ListItem Value="17">Dindori डिण्डौरी   </asp:ListItem>
                                <asp:ListItem Value="18">Guna गुना   </asp:ListItem>
                                <asp:ListItem Value="19">Gwalior ग्वालियर   </asp:ListItem>
                                <asp:ListItem Value="20">Harda हरदा   </asp:ListItem>
                                <asp:ListItem Value="21">Indore इन्दौर   </asp:ListItem>
                                <asp:ListItem Value="22">Jabalpur जबलपुर   </asp:ListItem>
                                <asp:ListItem Value="23">Katni कटनी   </asp:ListItem>
                                <asp:ListItem Value="24">Jhabua झाबुआ   </asp:ListItem>
                                <asp:ListItem Value="25">Khandwa खण्डवा   </asp:ListItem>
                                <asp:ListItem Value="26">Mandla मण्डला   </asp:ListItem>
                                <asp:ListItem Value="27">Khargone खरगोन   </asp:ListItem>
                                <asp:ListItem Value="28">Morena मुरैना   </asp:ListItem>
                                <asp:ListItem Value="29">Mandsaur मन्दसौर   </asp:ListItem>
                                <asp:ListItem Value="30">Narmadapuram नर्मदापुरम  </asp:ListItem>
                                <asp:ListItem Value="31">Narsinghpur नरसिंहपुर   </asp:ListItem>
                                <asp:ListItem Value="32">Neemuch नीमच   </asp:ListItem>
                                <asp:ListItem Value="33">Niwari निवाड़ी  </asp:ListItem>
                                <asp:ListItem Value="34">Panna पन्ना   </asp:ListItem>
                                <asp:ListItem Value="35">Raisen रायसेन   </asp:ListItem>
                                <asp:ListItem Value="36">Rajgarh राजगढ़   </asp:ListItem>
                                <asp:ListItem Value="37">Ratlam रतलाम   </asp:ListItem>
                                <asp:ListItem Value="38">Rewa रीवा   </asp:ListItem>
                                <asp:ListItem Value="39">Sagar सागर   </asp:ListItem>
                                <asp:ListItem Value="40">Satna सतना   </asp:ListItem>
                                <asp:ListItem Value="41">Sehore सीहोर   </asp:ListItem>
                                <asp:ListItem Value="42">Seoni सिवनी   </asp:ListItem>
                                <asp:ListItem Value="43">Shahdol शहडोल   </asp:ListItem>
                                <asp:ListItem Value="44">Shajapur शाजापुर   </asp:ListItem>
                                <asp:ListItem Value="45">Sheopur श्योपुर   </asp:ListItem>
                                <asp:ListItem Value="46">Shivpuri शिवपुरी   </asp:ListItem>
                                <asp:ListItem Value="47">Sidhi सीधी   </asp:ListItem>
                                <asp:ListItem Value="48">Singrauli सिंगरौली   </asp:ListItem>
                                <asp:ListItem Value="49">Tikamgarh टीकमगढ़   </asp:ListItem>
                                <asp:ListItem Value="50">Ujjain उज्जैन   </asp:ListItem>
                                <asp:ListItem Value="51">Umaria उमरिया   </asp:ListItem>
                                <asp:ListItem Value="52">Vidisha विदिशा  </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <hr />
                        <div class="row ">
                            <div class="col-md-12">
                                <asp:Button runat="server" Text="Search" CssClass=" fw-bold btn w-lg btn-outline-success btn-border" OnClick="btnSearch_Click" />
                                <a href="HOLevelReportSection.aspx?ID=BlockWiseCounting" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="divBlockWiseCountingtbl" runat="server">
                <legend>Details / विवरण
                </legend>
                <div>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <%-- Start Bhopal district Data --%>
                    <div class="row" id="divTbldataOfBhopal" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
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
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Vidisha</span></td>
                                            <td><span style="font-size: 12pt;">Basoda</span></td>
                                            <td style="text-align: right;">79</td>
                                            <td style="text-align: right;">8</td>
                                            <td style="text-align: right;">13</td>
                                            <td style="text-align: right;">8</td>
                                            <td style="text-align: right;">16</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End rajgahr district Data --%>
                    <%-- Start Agar malva district Data --%>
                    <div class="row" id="divTbldataOfAgarMalwa" runat="server">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Division<br />
                                                संभाग</th>
                                            <th data-class="phone,tablet" scope="col">District<br />
                                                जिला</th>
                                            <th data-hide="phone,tablet" scope="col">Block<br />
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Agar Malwa</span></td>
                                            <td><span style="font-size: 12pt;">Agar</span></td>
                                            <td style="text-align: right;">57</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">5</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">34</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Agar malva district Data --%>
                    <%-- Start Alirajpur district Data --%>
                    <div class="row" id="divTbldataOfAlirajpur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Alirajpur</span></td>
                                            <td><span style="font-size: 12pt;">Alirajpur</span></td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">3</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Alirajpur district Data --%>
                    <%-- Start Anuppur district Data --%>
                    <div class="row" id="TblDataAnuppur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Shahdol</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Anuppur</span></td>
                                            <td><span style="font-size: 12pt;">Anuppur</span></td>
                                            <td style="text-align: right;">6</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">0</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Anuppur district Data --%>

                    <%-- Start Ashoknagar district Data --%>
                    <div class="row" id="tbldataofAshoknagar" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Ashoknagar</span></td>
                                            <td><span style="font-size: 12pt;">Ashoknagar</span></td>
                                            <td style="text-align: right;">22</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">5</td>
                                            <td style="text-align: right;">12</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Ashoknagar district Data --%>

                    <%-- Start Balaghat district Data --%>
                    <div class="row" id="tblofBalaghat" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Balaghat</span></td>
                                            <td><span style="font-size: 12pt;">Baihar</span></td>
                                            <td style="text-align: right;">153</td>
                                            <td style="text-align: right;">42</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">15</td>
                                            <td style="text-align: right;">28</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Balaghat district Data --%>

                    <%-- Start Barwani district Data --%>
                    <div class="row" id="tbldataofBarwani" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Barwani</span></td>
                                            <td><span style="font-size: 12pt;">Barwani</span></td>
                                            <td style="text-align: right;">9</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Barwani district Data --%>

                    <%-- Start Betul district Data --%>
                    <div class="row" id="tbldataofBetul" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Narmadapuram</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Betul</span></td>
                                            <td><span style="font-size: 12pt;">Amla</span></td>
                                            <td style="text-align: right;">102</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">16</td>
                                            <td style="text-align: right;">64</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Betul district Data --%>

                    <%-- Strat Bhind district Data --%>
                    <div class="row" id="tbldataofBhind" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Bhind</span></td>
                                            <td><span style="font-size: 12pt;">Ater</span></td>
                                            <td style="text-align: right;">5</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">2</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Bhind district Data --%>

                    <%-- Strat Burhanpur district Data --%>
                    <div class="row" id="tbldataofBurhanpur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Burhanpur</span></td>
                                            <td><span style="font-size: 12pt;">Burhanpur</span></td>
                                            <td style="text-align: right;">22</td>
                                            <td style="text-align: right;">8</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">9</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Burhanpur district Data --%>

                    <%-- Strat Chhatarpur district Data --%>
                    <div class="row" id="tbldataofChhatarpur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Sagar</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Chhatarpur</span></td>
                                            <td><span style="font-size: 12pt;">Badamalahara</span></td>
                                            <td style="text-align: right;">48</td>
                                            <td style="text-align: right;">7</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">33</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Chhatarpur district Data --%>

                    <%-- Strat Chhindwara district Data --%>
                    <div class="row" id="tbldataofChhindwara" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Chhindwara</span></td>
                                            <td><span style="font-size: 12pt;">Amarwada</span></td>
                                            <td style="text-align: right;">165</td>
                                            <td style="text-align: right;">9</td>
                                            <td style="text-align: right;">15</td>
                                            <td style="text-align: right;">54</td>
                                            <td style="text-align: right;">35</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Chhindwara district Data --%>

                    <%-- Strat Damoh district Data --%>
                    <div class="row" id="tbldataofDamoh" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Sagar</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Damoh</span></td>
                                            <td><span style="font-size: 12pt;">Batiyagarh</span></td>
                                            <td style="text-align: right;">68</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">12</td>
                                            <td style="text-align: right;">30</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Damoh district Data --%>

                    <%-- Strat Datia district Data --%>
                    <div class="row" id="tbldataofDatia" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Datia</span></td>
                                            <td><span style="font-size: 12pt;">Bhander</span></td>
                                            <td style="text-align: right;">44</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">7</td>
                                            <td style="text-align: right;">15</td>
                                            <td style="text-align: right;">17</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Datia district Data --%>

                    <%-- Strat Dewas district Data --%>
                    <div class="row" id="tbldataofDewas" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Dewas</span></td>
                                            <td><span style="font-size: 12pt;">Bagli</span></td>
                                            <td style="text-align: right;">76</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">23</td>
                                            <td style="text-align: right;">37</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Dewas district Data --%>

                    <%-- Strat Dhar district Data --%>
                    <div class="row" id="tbldataofDhar" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Dhar</span></td>
                                            <td><span style="font-size: 12pt;">Badnavar</span></td>
                                            <td style="text-align: right;">24</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">9</td>
                                            <td style="text-align: right;">14</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Dhar district Data --%>

                    <%-- Strat Dindori district Data --%>
                    <div class="row" id="tbldataofDindori" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Shahdol</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Dindori</span></td>
                                            <td><span style="font-size: 12pt;">Amarpur</span></td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">2</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Dindori district Data --%>

                    <%-- Strat Guna district Data --%>
                    <div class="row" id="tbldataofGuna" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Guna</span></td>
                                            <td><span style="font-size: 12pt;">Aron</span></td>
                                            <td style="text-align: right;">39</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">8</td>
                                            <td style="text-align: right;">5</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Guna district Data --%>

                    <%-- Strat Gwalior district Data --%>
                    <div class="row" id="tbldataofGwalior" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td><span style="font-size: 12pt;">Bhitarwar</span></td>
                                            <td style="text-align: right;">39</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">22</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Gwalior district Data --%>

                    <%-- Strat Harda district Data --%>
                    <div class="row" id="tbldataofHarda" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Narmadapuram</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Harda</span></td>
                                            <td><span style="font-size: 12pt;">Harda</span></td>
                                            <td style="text-align: right;">13</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">4</td>
                                            <td style="text-align: right;">9</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Harda district Data --%>

                    <%-- Strat Indore district Data --%>
                    <div class="row" id="tbldataofIndore" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Indore</span></td>
                                            <td><span style="font-size: 12pt;">Depalpur</span></td>
                                            <td style="text-align: right;">131</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">9</td>
                                            <td style="text-align: right;">106</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Indore district Data --%>

                    <%-- Strat Jabalpur district Data --%>
                    <div class="row" id="tbldataofJabalpur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td><span style="font-size: 12pt;">Jabalpur  URBAN- 2</span></td>
                                            <td style="text-align: right;">128</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">15</td>
                                            <td style="text-align: right;">19</td>
                                            <td style="text-align: right;">27</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Jabalpur district Data --%>

                    <%-- Strat Jhabua district Data --%>
                    <div class="row" id="tbldataofJhabua" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Jhabua</span></td>
                                            <td><span style="font-size: 12pt;">Jhabua</span></td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">1</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Jhabua district Data --%>

                    <%-- Strat Katni district Data --%>
                    <div class="row" id="tbldataofKatni" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Katni</span></td>
                                            <td><span style="font-size: 12pt;">Badwara</span></td>
                                            <td style="text-align: right;">94</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">7</td>
                                            <td style="text-align: right;">23</td>
                                            <td style="text-align: right;">34</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Katni district Data --%>

                    <%-- Strat Khandwa district Data --%>
                    <div class="row" id="tbldataofKhandwa" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Khandwa</span></td>
                                            <td><span style="font-size: 12pt;">Baladi</span></td>
                                            <td style="text-align: right;">45</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">12</td>
                                            <td style="text-align: right;">31</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Khandwa district Data --%>

                    <%-- Strat Khargone district Data --%>
                    <div class="row" id="tbldataofKhargone" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Indore</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Khargone</span></td>
                                            <td><span style="font-size: 12pt;">Bhagwanpura</span></td>
                                            <td style="text-align: right;">18</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">17</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Khargone district Data --%>


                    <%-- Strat Mandla district Data --%>
                    <div class="row" id="tbldataofMandla" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Mandla</span></td>
                                            <td><span style="font-size: 12pt;">Beejadandi</span></td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Mandla district Data --%>

                    <%-- Strat Mandsaur district Data --%>
                    <div class="row" id="tbldataofMandsaur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Mandsaur</span></td>
                                            <td><span style="font-size: 12pt;">Bhanpura</span></td>
                                            <td style="text-align: right;">68</td>
                                            <td style="text-align: right;">4</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">9</td>
                                            <td style="text-align: right;">49</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Mandsaur district Data --%>

                    <%-- Strat Morena district Data --%>
                    <div class="row" id="tbldataofMorena" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Morena</span></td>
                                            <td><span style="font-size: 12pt;">Ambah</span></td>
                                            <td style="text-align: right;">16</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">10</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Morena district Data --%>

                    <%-- Strat Narmadapuram district Data --%>
                    <div class="row" id="tbldataNarmadapuram" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Narmadapuram</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Narmadapuram</span></td>
                                            <td><span style="font-size: 12pt;">Babai</span></td>
                                            <td style="text-align: right;">61</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">8</td>
                                            <td style="text-align: right;">5</td>
                                            <td style="text-align: right;">36</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Narmadapuram district Data --%>

                    <%-- Strat Narsinghpur district Data --%>
                    <div class="row" id="tbldataofNarsinghpur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Narsinghpur</span></td>
                                            <td><span style="font-size: 12pt;">Chawarpatha</span></td>
                                            <td style="text-align: right;">53</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">28</td>
                                            <td style="text-align: right;">7</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Narsinghpur district Data --%>

                    <%-- Strat Neemuch district Data --%>
                    <div class="row" id="tbldataofNeemuch" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Neemuch</span></td>
                                            <td><span style="font-size: 12pt;">Jawad</span></td>
                                            <td style="text-align: right;">23</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">13</td>
                                            <td style="text-align: right;">8</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Neemuch district Data --%>

                    <%-- Strat Niwari district Data --%>
                    <div class="row" id="tbldataofNiwari" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Sagar</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Niwari</span></td>
                                            <td><span style="font-size: 12pt;">Niwari</span></td>
                                            <td style="text-align: right;">48</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">6</td>
                                            <td style="text-align: right;">24</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Niwari district Data --%>

                    <%-- Strat Panna district Data --%>
                    <div class="row" id="tbldataofPanna" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Sagar</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Panna</span></td>
                                            <td><span style="font-size: 12pt;">Ajaigarh</span></td>
                                            <td style="text-align: right;">82</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">5</td>
                                            <td style="text-align: right;">32</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Panna district Data --%>

                    <%-- Strat Ratlam district Data --%>
                    <div class="row" id="tbldataofRatlam" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Ratlam</span></td>
                                            <td><span style="font-size: 12pt;">Alot</span></td>
                                            <td style="text-align: right;">82</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">18</td>
                                            <td style="text-align: right;">49</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Ratlam district Data --%>

                    <%-- Strat Rewa district Data --%>
                    <div class="row" id="tbldataRewa" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Rewa</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Rewa</span></td>
                                            <td><span style="font-size: 12pt;">Gangeo</span></td>
                                            <td style="text-align: right;">180</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">33</td>
                                            <td style="text-align: right;">41</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Rewa district Data --%>
                    <%-- Strat Sagar district Data --%>
                    <div class="row" id="tbldataofSagar" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Sagar</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Sagar</span></td>
                                            <td><span style="font-size: 12pt;">Banda</span></td>
                                            <td style="text-align: right;">24</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">19</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Sagar district Data --%>

                    <%-- Strat Satna district Data --%>
                    <div class="row" id="tbldataSatna" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Rewa</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Satna</span></td>
                                            <td><span style="font-size: 12pt;">Amarpatan</span></td>
                                            <td style="text-align: right;">163</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">32</td>
                                            <td style="text-align: right;">111</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Satna district Data --%>

                    <%-- Strat Seoni district Data --%>
                    <div class="row" id="tbldataSeoni" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Seoni</span></td>
                                            <td><span style="font-size: 12pt;">Barghat</span></td>
                                            <td style="text-align: right;">75</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">57</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Seoni district Data --%>

                    <%-- Strat Shahdol district Data --%>
                    <div class="row" id="tbldataShahdol" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Shahdol</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Shahdol</span></td>
                                            <td><span style="font-size: 12pt;">Beohari</span></td>
                                            <td style="text-align: right;">16</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">7</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Shahdol district Data --%>

                    <%-- Strat Shajapur district Data --%>
                    <div class="row" id="tbldataShajapur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Shajapur</span></td>
                                            <td><span style="font-size: 12pt;">Kalapipal</span></td>
                                            <td style="text-align: right;">70</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">10</td>
                                            <td style="text-align: right;">49</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Shajapur district Data --%>

                    <%-- Strat Sheopur district Data --%>
                    <div class="row" id="tbldataSheopur" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Sheopur</span></td>
                                            <td><span style="font-size: 12pt;">Karahal</span></td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">3</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Sheopur district Data --%>

                    <%-- Strat Shivpuri district Data --%>
                    <div class="row" id="tbldataShivpuri" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Gwalior</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Shivpuri</span></td>
                                            <td><span style="font-size: 12pt;">Badarwas</span></td>
                                            <td style="text-align: right;">59</td>
                                            <td style="text-align: right;">7</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">7</td>
                                            <td style="text-align: right;">41</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Shivpuri district Data --%>

                    <%-- Strat Sidhi district Data --%>
                    <div class="row" id="tbldataSidhi" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Rewa</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Sidhi</span></td>
                                            <td><span style="font-size: 12pt;">Kusami</span></td>
                                            <td style="text-align: right;">80</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">18</td>
                                            <td style="text-align: right;">41</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Sidhi district Data --%>

                    <%-- Strat Singrauli district Data --%>
                    <div class="row" id="tbldataSingrauli" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Rewa</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Singrauli</span></td>
                                            <td><span style="font-size: 12pt;">Chitarangi</span></td>
                                            <td style="text-align: right;">61</td>
                                            <td style="text-align: right;">1</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">45</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Singrauli district Data --%>

                    <%-- Strat Tikamgarh district Data --%>
                    <div class="row" id="tbldataTikamgarh" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Sagar</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Tikamgarh</span></td>
                                            <td><span style="font-size: 12pt;">Baldewgarh</span></td>
                                            <td style="text-align: right;">62</td>
                                            <td style="text-align: right;">3</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">5</td>
                                            <td style="text-align: right;">35</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Tikamgarh district Data --%>

                    <%-- Strat Ujjain district Data --%>
                    <div class="row" id="tbldataUjjain" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Ujjain</span></td>
                                            <td><span style="font-size: 12pt;">Barnagar</span></td>
                                            <td style="text-align: right;">155</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">21</td>
                                            <td style="text-align: right;">85</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%-- End Ujjain district Data --%>

                    <%-- Strat Umaria district Data --%>
                    <div class="row" id="tbldataUmaria" runat="server">
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
                                                विकासखण्ड</th>
                                            <th data-hide="phone,tablet" scope="col">Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                                आवेदन स्वीकार किये गए</th>

                                            <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                                आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                            <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                                आवेदन निराकृत</th>
                                            <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                                आपत्ति / लंबित आवेदन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand"><span style="font-size: 12pt;">Shahdol</span></td>
                                            <td class="phone,tablet"><span style="font-size: 12pt;">Umaria</span></td>
                                            <td><span style="font-size: 12pt;">Karkeli</span></td>
                                            <td style="text-align: right;">53</td>
                                            <td style="text-align: right;">2</td>
                                            <td style="text-align: right;">0</td>
                                            <td style="text-align: right;">4</td>
                                            <td style="text-align: right;">37</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <%--  My Code End for Block Wise Count Cases --%>


    <%--  My Code Start for District Wise Count Cases --%>
    <div class="card card-border-primary" id="DistrictWiseCounting" runat="server">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">District Wise Counting Report / जिला वार सांख्यिकी रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Details / विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
                                        <th data-class="expand" scope="col">Sr.No.<br />
                                            सरल क्र.</th>
                                        <th data-class="expand" scope="col">Division<br />
                                            संभाग</th>
                                        <th data-class="phone,tablet" scope="col">District<br />
                                            जिला</th>
                                        <th data-hide="phone,tablet" scope="col">Received Application
                                                <br />
                                            प्राप्त आवेदन</th>
                                        <th data-hide="phone,tablet" scope="col">Application Accepted<br />
                                            आवेदन स्वीकार किये गए</th>
                                        <th data-hide="phone,tablet" scope="col">Applications Forwarded to Senior Level<br />
                                            आवेदन वरिष्ठ स्तर को फॉरवर्ड किये गए</th>
                                        <th data-hide="phone,tablet" scope="col">Application Canceled<br />
                                            आवेदन निराकृत</th>
                                        <th data-hide="phone,tablet" scope="col">Objection / Pending Application<br />
                                            आपत्ति / लंबित आवेदन</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="text-center">
                                        <td class="expand"><span style="font-size: 12pt;">1</span></td>
                                        <td class="expand"><span style="font-size: 12pt;">Bhopal</span></td>
                                        <td class="phone,tablet"><span style="font-size: 12pt;">Raisen</span></td>
                                        <td><a href="#" onclick="toggleFieldset('TotalReceivedCases')" style="color: #00BCD4; font-weight: bold;">2</a>
                                            <td><a href="#" onclick="toggleFieldset('AcceptedApplicationData')" style="color: #00BCD4; font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('AvedankoForwordKiyagya')" style="color: #00BCD4; font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DisposeAavedan')" style="color: #00BCD4; font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DarjYaLambitReport')" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                    </tr>
                                    <tr class="text-center">
                                        <td class="expand"><span style="font-size: 12pt;">2</span></td>
                                        <td class="expand"><span style="font-size: 12pt;">Shahdol</span></td>
                                        <td class="phone,tablet"><span style="font-size: 12pt;">Umaria</span></td>
                                        <td>
                                            <a href="#" onclick="toggleFieldset('ReceivedcaseUmaria')" style="color: #00BCD4; font-weight: bold;">3</a>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('ForWordApplicationUmaria')" style="color: #00BCD4; font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DisposeCaseUmaria')" style="color: #00BCD4; font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistrictWisePendingApplication')" style="color: #00BCD4; font-weight: bold;">2</a>
                                            </td>
                                    </tr>
                                    <tr class="text-center">
                                        <td class="expand"><span style="font-size: 12pt;">3</span></td>
                                        <td class="expand"><span style="font-size: 12pt;">Rewa</span></td>
                                        <td class="phone,tablet"><span style="font-size: 12pt;">Sidhi</span></td>
                                        <td>
                                            <a href="#" onclick="toggleFieldset('ReceivedcaseUmaria')" style="color: #00BCD4; font-weight: bold;">3</a>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistWiseLockaavedan')" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistWiseForwordApplication')" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DisposeCaseOfSidhi')" style="color: #00BCD4; font-weight: bold;">3</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                    </tr>
                                    <tr class="text-center">
                                        <td class="expand"><span style="font-size: 12pt;">4</span></td>
                                        <td class="expand"><span style="font-size: 12pt;">Narmadapuram</span></td>
                                        <td class="phone,tablet"><span style="font-size: 12pt;">Betul</span></td>
                                        <td>
                                            <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                    </tr>
                                    <tr class="text-center">
                                        <td class="expand"><span style="font-size: 12pt;">5</span></td>
                                        <td class="expand"><span style="font-size: 12pt;">Jabalpur</span></td>
                                        <td class="phone,tablet"><span style="font-size: 12pt;">Balaghat</span></td>

                                        <td>
                                            <a href="#" onclick="toggleFieldset('ReceivedcaseUmaria')" style="color: #00BCD4; font-weight: bold;">3</a>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('ForWordApplicationUmaria')" style="color: #00BCD4; font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DisposeCaseUmaria')" style="color: #00BCD4; font-weight: bold;">1</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="toggleFieldset('DistrictWisePendingApplication')" style="color: #00BCD4; font-weight: bold;">2</a>
                                            </td>
                                    </tr>
                                    <tr class="text-center">
                                        <td class="expand"><span style="font-size: 12pt;">6</span></td>
                                        <td class="expand"><span style="font-size: 12pt;">Ujjain</span></td>
                                        <td class="phone,tablet"><span style="font-size: 12pt;">Mandsaur</span></td>

                                        <td>
                                            <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                            <td>
                                                <a href="#" style="color: #00BCD4; font-weight: bold;">0</a>
                                            </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="TotalReceivedCases" style="display: none">
                <legend>पंजीकृत आवेदन का विवरण / Details of Registered Application
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table  table-striped table-bordered footable-loaded default text-center" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                <thead class="text-center">
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
                                <tbody class="text-center">
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
            <%--next Table of Received Case For Umaria--%>
            <fieldset id="DarjYaLambitReport" style="display: none">
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
                            <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                <thead>
                                    <tr>
                                        <th data-class="expand" scope="col">Sr. No.<br />
                                            सरल क्र.</th>
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
                                        <td class="expand" style="text-align: right;">3
                                        </td>
                                        <td class="phone,tablet">
                                            <div style="text-align: center;">
                                                <span>BP1194</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>Bal Veer</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>Prathmik Shikshak</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>26/05/2021</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>SANJAY YADAV</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>01/01/1900</span>
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
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="ReceivedcaseUmaria" style="display: none;">
                <legend>पंजीकृत आवेदन का विवरण/Details of Registered Application
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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

                                    <tr>
                                        <td class="expand" style="text-align: right;">3
                                        </td>
                                        <td class="phone,tablet">
                                            <div style="text-align: center;">
                                                <span>AA5174</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>Nirmala Saxena</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>Prathmik Shikshak</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>09/08/2020</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>APOORVA SAXENA</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>05/05/1995</span>
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
            <%-- total End received Cases Table --%>
            <fieldset id="AcceptedApplicationData" style="display: none">
                <legend>जिला वार लॉक आवेदन का विवरण /District Wise Lock Application Details
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
                                        <th data-class="expand" scope="col">Sr. No.<br />
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
            <%-- total End received Cases Table --%>
            <%--lambit aavedan ka Vivran table --%>
            <fieldset id="DistrictWisePendingApplication" style="display: none;">
                <legend>Pending Application Details / लंबित आवेदन का विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
            <%-- total End received Cases Table --%>
            <fieldset id="DisposeAavedan" style="display: none">
                <legend>District-Wise Disposed Details / जिला वार डिस्पोज़ का विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblTo" title="Click here To view Appointment Letter">View Document</span>
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <%-- total End received Cases Table --%>
            <fieldset id="AvedankoForwordKiyagya" style="display: none;">
                <legend>District Wise Details of Forwarded Applications / जिला वार फॉरवर्ड किये गए आवेदन का विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
            <%--next table ForWord Application of Umaria--%>
            <fieldset id="ForWordApplicationUmaria" style="display: none;">
                <legend>District Wise Details of Forwarded Applications / जिला वार फॉरवर्ड किये गए आवेदन का विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
                                                <span>AA6391</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>Satendra Singh Bhadoria</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>Khelkoond Shikshak (Grade B)</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>30/07/202</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>KU CHETNA BHADORIYA</span>
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
            <%-- total End received Cases Table --%>

            <%-- total End received Cases Table --%>
            <fieldset id="ApplicationNirakrutData" runat="server" visible="false">
                <legend>Pending Application Details / जिला वार लंबित आवेदन का विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-3 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3 text-end">
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
                                            <div style="text-align: center;">लंबित के कारण</div>
                                        </th>
                                        <th data-hide="phone,tablet" scope="col">
                                            <div style="text-align: center;">आपत्ति के कारण</div>
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
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblappname">CHANDRA KANT BAGHEL</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblappname">06/09/2001</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lnlpending"></span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblobj"></span>
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
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblappname">08/12/1983</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lnlpending"></span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblobj"></span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblobdj">NA</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl03_lblremakrs"></span>
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
                                                <span>RAHUL BOHRE</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span>10/06/1991</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lnlpending"></span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl04_lblobj"></span>
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
            <%-- total End received Cases Table --%>
        </div>
    </div>
    <%--  My Code End for District Wise Count Cases --%>
    <%--End DropDown Base data --%>

    <%-- total Start Dispose Cases Table --%>

    <%--next table of Dispose Case of Umaria--%>
    <fieldset id="DisposeCaseUmaria" style="display: none">
        <legend>District-Wise Disposed Details / जिला वार डिस्पोज़ का विवरण
        </legend>
        <div class="row justify-content-end">
            <div class="col-md-3 text-end">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded ">Excel</button>
                    <button class="btn btn-info btn-rounded">PDF</button>
                </div>
            </div>
            <div class="col-md-3 text-end">
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

    <%--next table of Dispose case Sidhi--%>
    <fieldset id="DisposeCaseOfSidhi" style="display: none">
        <legend>District-Wise Disposed Details / जिला वार डिस्पोज़ का विवरण
        </legend>
        <div class="row justify-content-end">
            <div class="col-md-3 text-end">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded ">Excel</button>
                    <button class="btn btn-info btn-rounded">PDF</button>
                </div>
            </div>
            <div class="col-md-3 text-end">
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
                                        <span>3/2/1900 12:00:00 AM</span>
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
                            <tr>
                                <td class="expand" style="text-align: right;">2
                                </td>
                                <td class="phone,tablet">
                                    <div style="text-align: left;">
                                        <span>Kamal Kumar</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>pinky vishwakarma</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>Appointment order issued</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>04</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>28/06/2021</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>Prayogshala Shikshak</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>govt hss parwalia sadak</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>NA</span>
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
                                    <a href="#">
                                        <span title="Click here To view Appointment Letter">View Document</span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="expand" style="text-align: right;">3
                                </td>
                                <td class="phone,tablet">
                                    <div style="text-align: left;">
                                        <span>Mohan Lal Knnojia</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>AMRIT LAL</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>Appointment order issued</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>10</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>02/08/2021</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>Peon</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>GOVT MS GIRLS STATION AREA, BHOPAL</span>
                                    </div>
                                </td>
                                <td>
                                    <div style="text-align: left;">
                                        <span>NA</span>
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

