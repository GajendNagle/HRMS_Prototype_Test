<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleSurrender.aspx.cs" Inherits="mis_Transaction_VehicleSurrenderReport" %>

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
                        <li class="breadcrumb-item"><span>Vehicle Surrender</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Surrender / वाहन समर्पण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Surrender / वाहन समर्पण</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number
                                <br />
                                गाडी नंबर<span style="color: red">*</span></span>
                            <select class="form-control select2 select2-hidden-accessible">
                                <option>MP04HC4163</option>
                                <option>MP04CV7194</option>
                                <option>MP04CG9580</option>
                                <option>MP12CA3652</option>
                                <option>MP04ZB8269</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            Vehicle Type
                            <br />
                            वाहन का प्रकार<span style="color: red">*</span>
                            <select class="form-control" disabled="disabled">
                                <option value="0" selected="selected"></option>
                                <option value="1">Hatchback</option>
                                <option value="2">Sedan</option>
                                <option value="3">SUV</option>
                                <option value="4">MUV</option>
                                <option value="4">Commercial Vehicle</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            Vehicle Model
                            <br />
                            वाहन मॉडल<span style="color: red">*</span>
                            <input name="ctl00$ContentBody$txtVehicleModel" type="text" id="ctl00_ContentBody_txtVehicleModel" class="form-control" readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            Vehicle Chassis Number
                            <br />
                            वाहन चेसिस नंबर<span style="color: red">*</span>
                            <input name="ctl00$ContentBody$txtVehicleChassisNumber" type="text" id="ctl00_ContentBody_txtVehicleChassisNumber" class="form-control" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            Vehicle Registration Number
                            <br />
                            वाहन पंजीकरण संख्या<span style="color: red">*</span>
                            <input name="ctl00$ContentBody$txtVehicleRegNumber" type="text" id="ctl00_ContentBody_txtVehicleRegNumber" class="form-control" readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            Vehicle Company
                            <br />
                            वाहन कंपनी<span style="color: red">*</span>
                            <input name="ctl00$ContentBody$txtVehicleCompany" type="text" id="ctl00_ContentBody_txtVehicleCompany" class="form-control" readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            Year Of Manufacture
                            <br />
                            निर्माण वर्ष<span style="color: red">*</span>
                            <input name="ctl00$ContentBody$txtYearOfManufacture" type="text" id="ctl00_ContentBody_txtYearOfManufacture" class="form-control" readonly="readonly">
                        </div>
                    </div>
                </div>
                <fieldset>
                    <legend>Office / कार्यालय</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Order Number
                                    <br />
                                    आदेश संख्या<span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$txtOrderNumber" type="text" maxlength="20" id="ctl00_ContentBody_txtOrderNumber" class="form-control" autocomplete="off" placeholder="Enter Order Number" onkeypress="return isAlphaNumeric(str)" onpaste="return false">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Order Date
                                    <br />
                                    आदेश की तारीख<span style="color: red">*</span></span>
                                <input type="date" class="form-control" placeholder="dd/mm/yyyy">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Current Reading(Km)
                                    <br />
                                    वर्तमान रीडिंग(किमी)<span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$txtCurrentReadingKm" type="text" maxlength="7" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$txtCurrentReadingKm\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return validateNum(event)" id="ctl00_ContentBody_txtCurrentReadingKm" class="form-control" autocomplete="off" placeholder="Enter Current Reading(Km)" onpaste="return false">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Selling Amount
                                    <br />
                                    विक्रय राशि<span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$txtSellingAmount" type="text" maxlength="10" id="ctl00_ContentBody_txtSellingAmount" class="form-control" autocomplete="off" placeholder="Enter Selling Amount" onkeypress="return isNumberKey(this, event);" oninput="validate(this)" onpaste="return false;">
                            </div>
                        </div>
                    </div>
                </fieldset>
                <br />
                <fieldset>
                    <legend>Bidding / बिडिंग</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Buying Amount
                                    <br />
                                    क्रय राशि<span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$txtBuyingAmount" type="text" maxlength="10" id="ctl00_ContentBody_txtBuyingAmount" class="form-control" autocomplete="off" placeholder="Enter Buying Amount" onkeypress="return isNumberKey(this, event);" oninput="validate(this)" onpaste="return false;">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Name Of Buyer
                                    <br />
                                    खरीददार का नाम<span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$txtNameOfBuyer" type="text" maxlength="50" id="ctl00_ContentBody_txtNameOfBuyer" class="form-control " autocomplete="off" placeholder="Enter Name Of Buyer" onkeypress="return lettersOnly()" onpaste="return false">
                            </div>
                        </div>
                    </div>
                </fieldset>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button id="toggleButton" type="button" class="Alert-Confirmation fw-bold btn w-lg btn-success btn-border">Save</button>
                        <a href="VehicleSurrender.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details/विवरण</legend>
                <div class="row" id="FisrtTimetbl">
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
                <div class="row" style="display: none" id="Serchtbl">
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
                                <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehicleInsuranceYr" style="border-collapse: collapse; text-align: center;">
                                    <tbody>
                                        <tr>
                                            <th scope="col">S.No.<br />
                                                सरल क्र.</th>
                                            <th scope="col">Vehicle Number<br />
                                                गाडी नंबर</th>
                                            <th scope="col">Vehicle Model<br />
                                                वाहन मॉडल</th>
                                            <th scope="col">Vehicle Chassis Number<br />
                                                वाहन चेसिस नंबर</th>
                                            <th scope="col">Order Number<br />
                                                आदेश संख्या</th>
                                            <th scope="col">Order Date<br />
                                                आदेश तारीख</th>
                                            <th scope="col">Selling Amount<br />
                                                विक्रय राशि</th>
                                            <th scope="col">Buying Amount<br />
                                                क्रय राशि</th>
                                            <th scope="col">Name Of Buyer<br />
                                                क्रेता का नाम</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span>1</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblVehicle_Number">MP04CB4473</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblVehicle_Model">2007</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblVehicle_Chassis_Number">MA3ECA12S02671501</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblOrder_Number">444</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblOrder_Date">01/06/2024</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblSelling_Amount">25000.00</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblBuying_Amount">65000.00</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_gvVehicleSurrender_ctl02_lblName_Of_Buyer">Raj</span>
                                            </td>
                                            <td>
                                                <a class="btn btn-primary"><i class="fa fa-edit"></i></a>
                                            </td>
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
    <script>
        document.getElementById("toggleButton").addEventListener("click", function () {
            //var content2 = document.getElementById("Serchtbl");
            document.getElementById("Serchtbl").style.display = "block";
            document.getElementById("FisrtTimetbl").style.display = "none";
        });
    </script>
</asp:Content>
