<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleMaintenance.aspx.cs" Inherits="mis_Transaction_VehicleMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
    <link href="../assets/css/bootstrap-multiselect.css" rel="stylesheet" />
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
                        <li class="breadcrumb-item"><span>Vehicle Maintenance</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Maintenance / वाहन रखरखाव</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Maintenance</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />
                                गाडी नंबर<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlVehiceNumber" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlVehiceNumber\',\'\')', 0)" id="ctl00_ContentBody_ddlVehiceNumber" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Type /<br />
                                प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlType" id="ctl00_ContentBody_ddlType" disabled="" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Maintenance Type /<br />
                                रखरखाव का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlMaintenanceType" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlMaintenanceType\',\'\')', 0)" id="ctl00_ContentBody_ddlMaintenanceType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Previous Reading(Km) /<br />
                                पिछली रीडिंग(किमी)</span>
                            <input name="ctl00$ContentBody$txtPrevReadingKm" type="text" id="ctl00_ContentBody_txtPrevReadingKm" class="form-control" readonly="readonly">
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Previous Bill Date /<br />
                                पिछला बिल दिनांक</span>
                            <input type="date" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Previous Bill Amount /<br />
                                पिछला बिल राशि</span>
                            <input name="ctl00$ContentBody$txtPrevBillAmount" type="text" id="ctl00_ContentBody_txtPrevBillAmount" class="form-control" readonly="readonly">
                        </div>
                    </div>

                    <div id="ctl00_ContentBody_showReaingKm" class="col-md-3">
                        <div class="form-group">
                            <span>Current Reading(Km) /<br />
                                वर्तमान रीडिंग(किमी)<span style="color: red">*</span></span>

                            <input name="ctl00$ContentBody$txtCurrentReadingKm" type="text" maxlength="9" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$txtCurrentReadingKm\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return validateNum(event)" id="ctl00_ContentBody_txtCurrentReadingKm" class="form-control" placeholder="Enter Current Reading(Km)" autocomplete="off" onpaste="return false">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Bill Number /<br />
                                बिल संख्या<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtBillNumber" type="text" maxlength="20" id="ctl00_ContentBody_txtBillNumber" class="form-control" placeholder="Enter Bill Number" autocomplete="off" onkeypress="return validateNum(event)" onpaste="return false">
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Bill Date /<br />
                                बिल की तिथि<span style="color: red">*</span></span>
                            <input type="date" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$txtBillDate\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ctl00_ContentBody_txtBillDate" class="form-control disableFuturedate" data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-end-date="0d" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Bill Amount /<br />
                                बिल राशि<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtBillAmount" type="text" maxlength="9" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$txtBillAmount\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberKey(this, event);" id="ctl00_ContentBody_txtBillAmount" class="form-control" placeholder="Enter Bill Amount" autocomplete="off" oninput="validate(this)" onpaste="return false">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Upload File /<br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span> <span id="ctl00_ContentBody_filesizeTechnical" style="color: red;"></span></span>
                            <input type="file" name="ctl00$ContentBody$BillBookUpload" id="ctl00_ContentBody_BillBookUpload" class="form-control">
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <span>Vehicle Expenses Details /<br />
                                वाहन व्यय विवरण<span style="color: red">*</span></span>
                            <textarea name="ctl00$ContentBody$txtVehicleExpensesDetails" rows="4" cols="60" id="ctl00_ContentBody_txtVehicleExpensesDetails" class="form-control" placeholder="Enter Vehicle Expenses Details" onkeyup="countChars(this);"></textarea>
                            <p id="charNum">0 characters</p>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button runat="server" type="button" class="Alert-Confirmation fw-bold btn w-lg btn-success btn-border" OnClick="btSaveRcd_Click" Text="Save" ID="btSaveRcd" />
                        <%--<button type="button" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>--%>
                        <a href="VehicleMaintenance.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details/विवरण</legend>
                <div class="row" id="fisrtTimeData" runat="server">
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
                <div class="row" id="SearchTimeData" runat="server" visible="false">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <div>
                                <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval" style="border-collapse: collapse; text-align: center;">
                                    <thead>
                                        <tr>
                                            <th scope="col">Sr.No.<br />सरल क्र.</th>
                                            <th scope="col">Office Name<br />कार्यालय का नाम</th>
                                            <th scope="col">Vehicle Number<br />गाडी नंबर</th>
                                            <th scope="col">Maintenance Type<br />रखरखाव प्रकार</th>
                                            <th scope="col">Previous Reading Km<br />पिछला रीडिंग किमी</th>
                                            <th scope="col">Current Reading Km<br />वर्तमान रीडिंग किमी</th>
                                            <th scope="col">Difference Km Reading<br />रीडिंग</th>
                                            <th scope="col">Bill Amount<br />बिल राशि</th>
                                            <th scope="col">Vehicle Expenses Details<br />वाहन व्यय विवरण</th>
                                            <th scope="col">Request Document<br />दस्तावेज़ का अनुरोध करें</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="width: 10%;">
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblOffice_Name">1</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblVehicle_Number">MP04CB4473</span> </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblMaintenance_Type">Servicing</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblPreviousReadingKm">0</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblKm_Reading">250000</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblKM_ReadingDiff">250000</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblBill_Amount">5000.00</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblRequestremarks">test</span>
                                            </td>
                                            <td>
                                               <button type="button" class="btn btn-primary">
    <i class="fa fa-eye" aria-hidden="true"></i>
</button>  </td>
                                        </tr>
                                        <tr style="font-weight: bold;">
                                            <td align="right" colspan="6">Total</td>
                                            <td>5000.00</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

