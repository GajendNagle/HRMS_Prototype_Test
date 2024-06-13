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
                    <div  class="col-md-3">
                        <div class="form-group">
                            <span>Office Type /<br />कार्यालय का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeType" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlOfficeType\',\'\')', 0)" id="ctl00_ContentBody_ddlOfficeType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                 <option value=" -Select-">--Select--</option>
 <option value="Bhopal">Head Office</option>
 <option value="Bhopal">JOINT DIRECTORS</option>
 <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                            </select>
                        </div>
                    </div>
                    <div  class="col-md-3">
                        <div class="form-group">
                            <span>Office Name /<br />कार्यालय का नाम<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeName" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlOfficeName\',\'\')', 0)" id="ctl00_ContentBody_ddlOfficeName" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />गाडी नंबर<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlVehicleNumber" id="ctl00_ContentBody_ddlVehicleNumber" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Type /<br />बीमा का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlInsuranceType" id="ctl00_ContentBody_ddlInsuranceType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option value="0">Select</option>
                                <option value="1">General Insurance</option>
                                <option value="2">Claim</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Financial Year /<br />वित्तीय वर्ष<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtFdt" type="text" maxlength="10" id="txtFdt" class="form-control" onkeypress="javascript: return false;" onpaste="return false;" placeholder="Select From Date" autocomplete="off" data-provide="datepicker" data-date-format="yyyy" data-date-autoclose="true" readonly="readonly" style="width: 100%;">
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="fw-bold btn w-lg btn-success btn-border">Search</button>
                        <a href="VehicleInsuranceReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details/विवरण</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div>
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
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
