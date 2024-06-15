<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleInsuranceReport.aspx.cs" Inherits="mis_Transaction_VehicleInsuranceReport" %>

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
                            <a href="#TransportManagementReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Transport Management Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Insurance  Report </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Insurance  Report / 
वाहन बीमा रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Insurance  Report / 
वाहन बीमा रिपोर्ट</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Financial Year /<br />
                                वित्तीय वर्ष<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtFdt" type="text" maxlength="10" id="txtFdt" class="form-control" onkeypress="javascript: return false;" onpaste="return false;" placeholder="Select From Date" autocomplete="off" data-provide="datepicker" data-date-format="yyyy" data-date-autoclose="true" readonly="readonly" style="width: 100%;">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Office Type /<br />
                                कार्यालय का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeType" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlOfficeType\',\'\')', 0)" id="ctl00_ContentBody_ddlOfficeType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option value=" -Select-">--Select--</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                            </select>
                        </div>
                    </div>
                    <%--  <div class="col-md-3">
                        <div class="form-group">
                            <span>Office Name /<br />
                                कार्यालय का नाम<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeName" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlOfficeName\',\'\')', 0)" id="ctl00_ContentBody_ddlOfficeName" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">Select</option>
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Head Office</option>
                                    <option value="Bhopal">JOINT DIRECTORS</option>
                                    <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                    <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                    <option value="Bhopal">SANKUL/AEO</option>
                                    <option value="Bhopal">SCHOOL</option>
                                </select>
                        </div>
                    </div>--%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />
                                गाडी नंबर<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlVehicleNumber" id="ctl00_ContentBody_ddlVehicleNumber" class="form-control " disabled="disabled" tabindex="-1" aria-hidden="true">
                                <option value="1" selected="selected">MP04CB4473</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Type /<br />
                                बीमा का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlInsuranceType" id="ctl00_ContentBody_ddlInsuranceType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option value="0">Select</option>
                                <option value="1">General Insurance</option>
                                <option value="2">Claim</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button runat="server" type="button" class="fw-bold btn w-lg btn-success btn-border" Text="Search" OnClick="btnSearchRcd_Click" ID="btnSearchRcd" />
    <a href="VehicleInsuranceReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details/विवरण</legend>
                <div class="row" id="NoRcdTable" runat="server" >
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="datatable table table-bordered dataTable" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehicleAllotment" style="border-collapse: collapse; text-align: center;">
                                <tbody>
                                    <tr>
                                        <td>No Recods Found</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                 <div runat="server" id="hideTable" visible="false">
     <div class="row justify-content-end">
         <div class="col-md-4 text-end">
             <div class="form-group">
                 <button class="btn btn-info btn-rounded w-55">Excel</button>
                 <button class="btn btn-info btn-rounded w-55">PDF</button>
             </div>
         </div>
         <div class="col-md-2">
             <div class="form-group">
                 <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
             </div>
         </div>
     </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <div>
                                <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehicleInsuranceYr" style="border-collapse: collapse; text-align: center;">
                                    <tbody>
                                        <tr>
                                            <th scope="col">S.No.<br /> सरल क्र.</th>
                                            <th scope="col">Financial Year<br /> वित्तीय वर्ष</th>
                                            <th scope="col">Office Type<br />कार्यालय का प्रकार</th>
                                            <th scope="col">Vehicle Number<br /> गाडी नंबर</th>
                                            <th scope="col">Insurance Type<br />बीमा प्रकार</th>
                                            <th scope="col">Insurance Company<br />बीमा कंपनी</th>
                                            <th scope="col">New Insurance Number<br />नया बीमा नंबर</th>
                                            <th scope="col">Insurance Start Date<br />बीमा आरंभ तिथि</th>
                                            <th scope="col">Insurance End Date<br />बीमा समाप्ति तिथि</th>
                                            <th scope="col">Insurance Claim Date<br />बीमा दावा दिनांक</th>
                                            <th scope="col">Insurance Amount<br />बीमा राशि</th>
                                            <th scope="col">View Documents<br />दस्तावेज़ देखें</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span>1</span>
                                            </td> <td>
                                                <span>2024</span>
                                            </td> <td>
                                                <span>Head Office</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblVehicle_Number">MP04CB4473</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblInsurance_Type">General Insurance</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblInsurance_Company_Name">test</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblNew_Insurance_Number">85</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblInsurance_Start_Date">13/02/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblInsurance_End_Date">12/02/2025</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblInsurance_Claim_Date">N/A</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleInsuranceYr_ctl02_lblInsurance_Amount">955.00</span>
                                            </td>
                                                                                       <td>
    <button type="button" class="btn btn-primary" >
        <i class="fa fa-eye" aria-hidden="true"></i>
    </button>
</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                     </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
