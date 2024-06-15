<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleRegistrationReport.aspx.cs" Inherits="mis_Transaction_VehicleRegistrationReport" %>

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
                        <li class="breadcrumb-item"><span>Vehicle Registration Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Registration Report / वाहन पंजीकरण रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Registration Report / 
वाहन पंजीकरण रिपोर्ट</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>From Date /<br />
                                की तिथि से<span style="color: red">*</span></span>
                            <span class="left">
                                <span id="ctl00_ContentBody_RequiredFieldValidator6" style="color: Red; display: none;"><i class="fa fa-exclamation-circle" title="Select Order Date !"></i></span>
                            </span>
                            <input name="ctl00$ContentBody$txtFromDate" type="date" id="ctl00_ContentBody_txtFromDate" class="form-control " data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>To Date /<br />
                                तारीख तक<span style="color: red">*</span></span>
                            <span class="left">
                                <span id="ctl00_ContentBody_RequiredFieldValidator1" style="color: Red; display: none;"><i class="fa fa-exclamation-circle" title="Select Order Date !"></i></span>
                            </span>
                            <input name="ctl00$ContentBody$txtTodate" type="date" id="ctl00_ContentBody_txtTodate" class="form-control " data-provide="datepicker" data-date-end-date="0d" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />
                                गाडी नंबर<span style="color: red">*</span></span>
                            <span class="left">
                                <span id="ctl00_ContentBody_RequiredFieldValidator2" style="color: Red; display: none;"><i class="fa fa-exclamation-circle" title="Select Vehicle Number !"></i></span>
                            </span>
                            <select name="ctl00$ContentBody$ddlVehicleNumber" id="ctl00_ContentBody_ddlVehicleNumber" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option value="0">All</option>
                                <option value="1">MP04EB9133</option>
                                <option value="2">MP04ED5710</option>
                                <option value="3">MP04CV7268</option>
                                <option value="4">MP04CV7199</option>
                                <option value="5">MP04CV7195</option>
                                <option value="6">MP04CV7184</option>
                                <option value="18">MP04CB4596</option>
                                <option value="20">MP04CB4473</option>
                                <option value="21">MP04CC0162</option>
                                <option value="22">MP04HC4163</option>
                                <option value="7">MP04CV7197</option>
                                <option value="8">MP04CV7194</option>
                                <option value="9">MP04CR5792</option>
                                <option value="10">MP04CH3593</option>
                                <option value="11">MP04CG9580</option>
                                <option value="24">MP04ZB8211</option>
                                <option value="12">MP04CG9369</option>
                                <option value="13">MP04CH8732</option>
                                <option value="14">MP04CG9368</option>
                                <option value="15">MP04CW0194</option>
                                <option value="16">MP04ED7462</option>
                                <option value="17">MP12CA3652</option>
                                <option value="25">MP04ZB8269</option>
                                <option value="27">MP04ZB8290</option>
                                <option value="26">MP04ZD2758</option>
                            </select>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button" class="fw-bold btn w-lg btn-success btn-border">Search</button>
                            <a href="VehicleRegistrationReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details/विवरण</legend>
                <div class="row">
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
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
