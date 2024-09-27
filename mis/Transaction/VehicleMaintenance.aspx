<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleMaintenance.aspx.cs" Inherits="mis_Transaction_VehicleMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th{
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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#TransportManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
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
                <legend>Vehicle Maintenance / वाहन रखरखाव</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number
                                <br />
                       गाड़ी का नंबर<span style="color: red">*</span></span>
                            <%--<select class="form-control select2 select2-hidden-accessible">
                                <option>--Select--</option>
                                <option></option>
                                <option>MP04CV7194</option>
                                <option>MP04CG9580MP04CG9580</option>
                                <option>MP12CA3652</option>
                                <option>MP04ZB8269</option>
                            </select>--%>
                            <asp:DropDownList ID="ddlVehicleNumber" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlVehicleNumber_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1"> MP04CB4473</asp:ListItem>
                                <asp:ListItem Value="2"> MP04CG9580</asp:ListItem>
                            </asp:DropDownList>
                            <%--<input type="text"  class="form-control" placeholder="Enter Vehicle Number"  autocomplete="off" />--%>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Type 
                                <br />
                                प्रकार<span style="color: red">*</span></span>
                            <asp:TextBox runat="server" type="text" ReadOnly="true" class="form-control" placeholder="Type" ID="txtVehicletype" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Previous Reading(Km)
                                <br />
                                पूर्व रीडिंग( कि.मी. में )</span>
                            <asp:TextBox runat="server" ReadOnly="true" name="ctl00$ContentBody$txtPrevReadingKm" placeholder="Previous Reading(Km)" type="text" ID="txtPreviousReading" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Previous Bill Date
                                <br />
                                पूर्व बिल दिनांक</span>
                            <asp:TextBox runat="server" ReadOnly="true" class="form-control" placeholder="Previous Bill Date" ID="txtPreviousBillDate"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Previous Bill Amount
                                <br />
                                पूर्व में बिल की राशि</span>
                            <asp:TextBox runat="server" ReadOnly="true" name="ctl00$ContentBody$txtPrevBillAmount" placeholder="Previous Bill Amount" ID="txtPrevBillAmount" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Maintenance Type
             <br />
                                रखरखाव का प्रकार<span style="color: red">*</span></span>
                            <select class="form-control select2 select2-hidden-accessible">
                                <option>--Select--</option>
                                <option>Servicing</option>
                                <option>Battery</option>
                                <option>Headlights</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Current Reading(Km)
                                <br />
                                वर्तमान रीडिंग( कि.मी. में )<span style="color: red">*</span></span>

                            <asp:TextBox runat="server" ReadOnly="true" name="ctl00$ContentBody$txtCurrentReadingKm" ID="txtCurrentReadingKm" type="text" MaxLength="9" class="form-control" placeholder="Current Reading(Km)" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Difference Reading(Km)
            <br />रीडिंग में अंतर( कि.मी. में )<span style="color: red">*</span></span>

                            <asp:TextBox runat="server" ReadOnly="true" name="ctl00$ContentBody$txtCurrentReadingKm" ID="txtDifferencereading" type="text" MaxLength="9" class="form-control" placeholder="Current Reading(Km)" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Bill Number
                                <br />
                                बिल क्रमांक<span style="color: red">*</span></span>
                            <asp:TextBox runat="server" ReadOnly="true" name="ctl00$ContentBody$txtBillNumber" type="text" ID="txtBillNumber" MaxLength="20" class="form-control" placeholder="Bill Number" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Bill Date
                                <br />
                                बिल की तिथि<span style="color: red">*</span></span>
                            <asp:TextBox runat="server" ReadOnly="true" ID="txtBillDate" class="form-control disableFuturedate" data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-end-date="0d" data-date-format="dd/mm/yyyy" data-date-autoclose="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Bill Amount
                                <br />
                                बिल राशि<span style="color: red">*</span></span>
                            <asp:TextBox ReadOnly="true" name="ctl00$ContentBody$txtBillAmount" runat="server" type="text" MaxLength="9" ID="txtBillAmount" class="form-control" placeholder="Bill Amount" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Upload File
                                <br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span> <span id="ctl00_ContentBody_filesizeTechnical" style="color: red;"></span></span>
                            <input type="file" name="ctl00$ContentBody$BillBookUpload" id="ctl00_ContentBody_BillBookUpload" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <span>Vehicle Expenses Details
                                <br />
                                वाहन व्यय विवरण<span style="color: red">*</span></span>
                            <textarea name="ctl00$ContentBody$txtVehicleExpensesDetails" rows="4" cols="60" id="ctl00_ContentBody_txtVehicleExpensesDetails" class="form-control" placeholder="Enter Vehicle Expenses Details" onkeyup="countChars(this);"></textarea>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button id="toggleButton" type="button" class="Alert-Confirmation fw-bold btn w-lg btn-outline-success btn-border">Save</button>
                            <a href="VehicleMaintenance.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row" id="NoRcdTable">
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
                <div class="row" id="SearchTable" style="display: none">
                    <br />
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
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <div>
                                <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval" style="border-collapse: collapse; text-align: center;">
                                    <thead>
                                        <tr>
                                            <th scope="col">Sr.No.<br />
                                                सरल क्र.</th>
                                            <%-- <th scope="col">Office Name<br />
                                                कार्यालय का नाम</th>--%>
                                            <th scope="col">Vehicle Number<br />
                                                गाड़ी का नंबर</th>
                                            <th scope="col">Maintenance Type<br />
                                                रखरखाव का प्रकार</th>
                                            <th scope="col">Previous Reading Km<br />
                                                पूर्व रीडिंग किलोमीटर में</th>
                                            <th scope="col">Current Reading Km<br />
                                                वर्तमान रीडिंग किलोमीटर में</th>
                                            <th scope="col">Difference Km Reading<br />
                                                किलोमीटर रीडिंग में अंतर</th>
                                            <th scope="col">Bill Amount<br />
                                                बिल राशि</th>
                                            <th scope="col">Vehicle Expenses Details<br />
                                                वाहन व्यय विवरण</th>
                                            <th scope="col">View Document<br />
                                             दस्तावेज़ देखें</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="width: 10%;">
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblOffice_Name">1</span>
                                            </td>
                                            <%--<td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblOfficeName"></span>Head Office</td>
                                            --%>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblVehicle_Number">MP04CB4473</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblMaintenance_Type">Servicing</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblPreviousReadingKm">20000</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblKm_Reading">35000</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblKM_ReadingDiff">15000</span>
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
                                                </button>
                                            </td>
                                        </tr>
                                        <%--<tr style="font-weight: bold;">
                                            <td align="right" colspan="7">Total</td>
                                            <td>5000.00</td>

                                            <td></td>
                                            <td></td>
                                        </tr>--%>
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
    <script>
        document.getElementById("toggleButton").addEventListener("click", function () {
            document.getElementById("SearchTable").style.display = "block";
            document.getElementById("NoRcdTable").style.display = "none";
        });
    </script>
</asp:Content>

