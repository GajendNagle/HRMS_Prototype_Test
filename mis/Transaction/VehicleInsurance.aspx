<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleInsurance.aspx.cs" Inherits="mis_Transaction_VehicleInsuranceReport" %>

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
                        <li class="breadcrumb-item"><span>Vehicle Insurance</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Insurance / वाहन बीमा</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Insurance / वाहन बीमा</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />गाडी नंबर<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlVehicleNumber" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlVehicleNumber\',\'\')', 0)" id="ctl00_ContentBody_ddlVehicleNumber" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Type /<br />बीमा प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlInsuranceType" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlInsuranceType\',\'\')', 0)" id="ctl00_ContentBody_ddlInsuranceType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">Select</option>
                                <option value="1">General Insurance</option>
                                <option value="2">Claim</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Company /<br />बीमा कंपनी<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtInsuranceCompany" type="text" maxlength="70" id="ctl00_ContentBody_txtInsuranceCompany" class="form-control" onpaste="return false;" autocomplete="off" onkeypress="return lettersOnly()" placeholder="Enter Insurance Company">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Number /<br />बीमा संख्या<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtNewInsuranceNumber" type="text" maxlength="17" id="ctl00_ContentBody_txtNewInsuranceNumber" class="form-control" onpaste="return false;" placeholder="Enter Insurance Number" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Start Date /<br />बीमा आरंभ तिथि<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtInsuranceStartDate" type="text" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$txtInsuranceStartDate\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ctl00_ContentBody_txtInsuranceStartDate" class="form-control " data-date-end-date="0d" data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true" readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance End Date /<br />बीमा समाप्ति तिथि<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtInsuranceEndDate" type="text" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$txtInsuranceEndDate\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ctl00_ContentBody_txtInsuranceEndDate" class="form-control disableFuturedate" data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true" readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Upload File /<br />फ़ाइल अपलोड करें<span style="color: red">*</span> </span>
                            <input type="file" name="ctl00$ContentBody$fuInsuranceDocument" id="ctl00_ContentBody_fuInsuranceDocument" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span id="ctl00_ContentBody_lblInsAmt">Insurance Amount(Rs) /<br />बीमा राशि(रु.)</span>
                            <span class="left">
                                <span id="ctl00_ContentBody_RequiredFieldValidator7" style="color: Red; display: none;"><i class="fa fa-exclamation-circle" title="Enter Insurance Type !"></i></span>
                            </span>
                            <input name="ctl00$ContentBody$txtInsuranceAmount" type="text" maxlength="9" id="ctl00_ContentBody_txtInsuranceAmount" class="form-control" onkeypress="return isNumberKey(this, event);" oninput="validate(this)" autocomplete="off" onpaste="return false;" placeholder="Enter Insurance Amount">
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                             <button type="button" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="VehicleInsuranceReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset> <br /><fieldset>
                <legend>Details/विवरण</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <div>
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

