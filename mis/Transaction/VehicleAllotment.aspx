<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleAllotment.aspx.cs" Inherits="mis_Transaction_VehicleAllotment" %>

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
                            <a href="#TransportManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Transport Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Allotment</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Allotment / वाहन आवंटन</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>VEHICLE ALLOTMENT/ 
वाहन आवंटन</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />
                                गाडी नंबर<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlVehicleNumber" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlVehicleNumber\',\'\')', 0)" id="ctl00_ContentBody_ddlVehicleNumber" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">--Select--</option>
                                <option value="20">MP04CB4473</option>
                                <option value="21">MP04CC0162</option>
                                <option value="22">MP04HC4163</option>
                                <option value="8">MP04CV7194</option>
                                <option value="11">MP04CG9580</option>
                                <option value="17">MP12CA3652</option>
                                <option value="25">MP04ZB8269</option>
                                <option value="27">MP04ZB8290</option>
                                <option value="26">MP04ZD2758</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Office Type /<br />
                                कार्यालय का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ctl04" class="form-control">
                                <option value=" -Select-">--Select--</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Office Name /<br />
                                कार्यालय का नाम<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeType" id="ctl00_ContentBody_ddlOfficeType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option value="0">--Select--</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Designation /<br />
                                पद का नाम<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtDesignation" type="text" maxlength="60" id="ctl00_ContentBody_txtDesignation" class="form-control" onpaste="return false;" placeholder="Enter Designation" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Order Number /<br />
                                आदेश नंबर<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtOrederNumber" type="text" maxlength="20" id="ctl00_ContentBody_txtOrederNumber" class="form-control" placeholder="Enter Order Number" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Order Date /<br />
                                आदेश की तारीख<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtOrderDate" type="date" class="form-control" data-provide="datepicker" data-date-end-date="0d" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Type /<br />
                                वाहन का प्रकार<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtVehicleType" type="text" id="ctl00_ContentBody_txtVehicleType" class="form-control" readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Driver Name /<br />
                                चालक का नाम<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtDrivername" type="text" maxlength="50" id="ctl00_ContentBody_txtDrivername" class="form-control" placeholder="Enter Driver Name" onpaste="return false;" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Driver Contact no /<br />
                                ड्राइवर संपर्क नंबर<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtDriverContactNo" type="text" maxlength="50" id="ctl00_ContentBody_txtDriverContactNo" class="form-control" placeholder="Enter Driver Contact no" onpaste="return false;" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Upload File /<br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span></span>
                            <input type="file" name="ctl00$ContentBody$orderFileUploader" id="ctl00_ContentBody_orderFileUploader" class="form-control">
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                        <a href="VehicleAllotment.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
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
