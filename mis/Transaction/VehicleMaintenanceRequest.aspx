<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleMaintenanceRequest.aspx.cs" Inherits="mis_Transaction_VehicleMaintenanceRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#TransportManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Transport Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Maintenance Request</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row align-item-end">
        <div class="col-lg-12 text-end">
            <a href="VehicleMaintenanceRequestDetails.aspx" class="btn btn-info" role="button">Report</a>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Vehicle Maintenance Request / वाहन रखरखाव अनुरोध</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>Vehicle Maintenance Request / वाहन रखरखाव अनुरोध</legend>
                    <div class="row align-items-end">
                        <%--<div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Number
                                    <br />
                                    गाड़ी का नंबर<span style="color: red">*</span></span>
                                <input type="text" maxlength="10" class="form-control " placeholder="Enter Vehicle Number" autocomplete="off">
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Select Vehicle Number
                                <br />
                                    गाड़ी नंबर का चयन करें<span style="color: red">*</span></span>
                                <asp:DropDownList runat="server" class="form-control select2" ID="ddlVehicleNumber">
                                    <asp:ListItem Value="0" Text="--Select--" />
                                    <asp:ListItem Value="1" Text="MP04HC4163" />
                                    <asp:ListItem Value="2" Text="MP04CG9580" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <button type="button" class=" btn btn-outline-info btn-border w-lg" onclick="document.getElementById('EmployeeDetailsData').style.display = 'block'">Search</button>
                                <a href="VehicleMaintenanceReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="EmployeeDetailsData" style="display: none">
                    <fieldset>
                        <legend>Vehicle Details / वाहन विवरण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span> Vehicle Type 
                                <br />
                                        वाहन प्रकार<span style="color: red">*</span></span>
                                    <asp:TextBox runat="server" type="text" ReadOnly="true" class="form-control" placeholder="XUV" ID="txtVehicletype" autocomplete="off"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    Vehicle Chassis Number
                            <br />
                                    वाहन चेसिस नंबर<span style="color: red">*</span>
                                    <asp:TextBox class="form-control" placeholder="1HGCM82633A123456" ReadOnly="true" ID="txt3" runat="server" Text="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    Vehicle Registration Number
                            <br />
                                    वाहन पंजीकरण संख्या<span style="color: red">*</span>
                                    <asp:TextBox class="form-control" placeholder="KA-03-HA-1985" ReadOnly="true" ID="txt4" runat="server" Text="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Allotment Date
                                    <br />
                                        आवंटन की तारीख<span style="color: red">*</span></span>
                                    <%--<input type="Date" class="form-control disableFuturedate" data-provide="datepicker" placeholder="12/04/yyyy" autocomplete="off" data-date-end-date="0d" data-date-format="dd/mm/2022" data-date-autoclose="true">--%>
                                    <asp:TextBox runat="server" ReadOnly="true" ID="txtBillDate" class="form-control disableFuturedate" data-provide="datepicker" placeholder="12/06/2024" autocomplete="off" data-date-end-date="0d" data-date-format="dd/mm/yyyy" data-date-autoclose="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Office Type
                                    <br />
                                        कार्यालय प्रकार<span style="color: red">*</span></span>
                                    <input type="text" maxlength="20" class="form-control" readonly="readonly" value="JD" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Office Name 
                                    <br />
                                        कार्यालय का नाम<span style="color: red">*</span></span>
                                    <input type="text" maxlength="20" class="form-control" readonly="readonly" value="Bhopal" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Employee Name With Code
                                    <br />
                                        आई डी सहित कर्मचारी का नाम<span style="color: red">*</span></span>
                                    <input type="text" maxlength="20" class="form-control" readonly="readonly" value="Raj-E0561" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Designation
                                    <br />
                                        पद का नाम<span style="color: red">*</span></span>
                                    <%-- <select runat="server" class="form-control select2" ID="DropDownList1">
                                    <option value="--Select--" data-select2-id="9">--Select--</option>
                                    <option value="Additional Director" data-select2-id="44">Additional Director</option>
                                    <option value="Joint Director" data-select2-id="45" selected="selected">Joint Director</option>
                                    <option value="Deputy Director" data-select2-id="46">Deputy Director</option>
                                    <option value="Asstt Director" data-select2-id="47">Asstt Director</option>
                                    <option value="Regional Librarian" data-select2-id="48">Regional Librarian</option>
                                    <option value="Planning Officer" data-select2-id="49">Planning Officer</option>
                                    <option value="Director (ELTI)" data-select2-id="50">Director (ELTI)</option>
                                    <option value="Director(SISE)" data-select2-id="51">Director(SISE)</option>
                                    <option value="Principal (PGBT)" data-select2-id="52">Principal (PGBT)</option>
                                    <option value="Principal (DIET)" data-select2-id="53">Principal (DIET)</option>
                                    <option value="Principal HSS" data-select2-id="54">Principal HSS</option>
                                    <option value="Principal HS" data-select2-id="55">Principal HS</option>
                                    <option value="Lecturer" data-select2-id="56">Lecturer</option>
                                    <option value="HM(MS)" data-select2-id="57">HM(MS)</option>
                                    <option value="Teacher (UDT)" data-select2-id="58">Teacher (UDT)</option>
                                    <option value="Music Teacher" data-select2-id="59">Music Teacher</option>
                                    <option value="Tabla Teacher" data-select2-id="60">Tabla Teacher</option>
                                    <option value="Craft Teacher" data-select2-id="61">Craft Teacher</option>
                                    <option value="HM(PS)" data-select2-id="62">HM(PS)</option>
                                    <option value="Asstt Teacher(LDT)" data-select2-id="63">Asstt Teacher(LDT)</option>
                                    <option value="Varistha Adhyapak" data-select2-id="64">Varistha Adhyapak</option>
                                    <option value="Adhyapak" data-select2-id="65">Adhyapak</option>
                                    <option value="Sahayak Adhyapak" data-select2-id="66">Sahayak Adhyapak</option>
                                </select>--%>
                                    <input type="text" maxlength="20" class="form-control" readonly="readonly" value="Adhyapak" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                                </div>
                            </div>

                        </div>
                    </fieldset>


                    <fieldset>
                        <legend>Reason for Maintenance / रखरखाव का कारण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Select Maintenance Type
                                <br />
                                        रखरखाव प्रकार का चयन करें<span style="color: red">*</span></span>
                                    <select class="form-control select2 select2-hidden-accessible">
                                        <option>--Select--</option>
                                        <option>Servicing</option>
                                        <option>Tyre Tube</option>
                                        <option>Cutter Replacement</option>
                                        <option>General Maintenance</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <span>Enter Reason for Maintenance
                                <br />
                                        रखरखाव का कारण दर्ज करें<span style="color: red">*</span></span>
                                    <textarea name="ctl00$ContentBody$txtVehicleExpensesDetails" rows="1" cols="60" id="ctl00_ContentBody_txtVehicleExpensesDetails" class="form-control" placeholder="Enter Vehicle Expenses Details" onkeyup="countChars(this);"></textarea>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Upload Quotation 
                                <br />
                                         <span style="color: red">*</span></span>
                                    <input type="file" name="ctl00$ContentBody$orderFileUploader" id="ctl00_ContentBody_orderFileUploader" class="form-control">
                                </div>
                            </div>
                            <%--  <div class="col-md-9">
                            <div class="form-group">
                                <span>Dealer Address
                                    <br />
                                    विक्रेता का पता<span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$txtDealerAddress" type="text" maxlength="100" class="form-control" placeholder="Enter Dealer Address" autocomplete="off">
                            </div>
                        </div>--%>
                            <div class="row">
                                <div class="col-md-12">
                                    <button id="toggleButton" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Request Forward</button>
                                    <a href="VehicleMaintenanceRequest.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>


            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

