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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#TransportManagementReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
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
                    <h4 class="card-title">Vehicle Registration Report / वाहन पंजीकरण विवरण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Registration Report / 
वाहन पंजीकरण विवरण</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>From Date
                                <br />
                                दिनांक से<span style="color: red">*</span></span>
                            <span class="left">
                                <span id="ctl00_ContentBody_RequiredFieldValidator6" style="color: Red; display: none;"><i class="fa fa-exclamation-circle" title="Select Order Date !"></i></span>
                            </span>
                            <input name="ctl00$ContentBody$txtFromDate" type="date" id="ctl00_ContentBody_txtFromDate" class="form-control " data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>To Date
                                <br />
                                दिनांक तक<span style="color: red">*</span></span>
                            <span class="left">
                                <span id="ctl00_ContentBody_RequiredFieldValidator1" style="color: Red; display: none;"><i class="fa fa-exclamation-circle" title="Select Order Date !"></i></span>
                            </span>
                            <input name="ctl00$ContentBody$txtTodate" type="date" id="ctl00_ContentBody_txtTodate" class="form-control " data-provide="datepicker" data-date-end-date="0d" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>District
                                <br />
                               जिला <span style="color: red">*</span></span>
                            <select class="select2 form-control">
                                <option value="0">--Select--</option>
                                <option value="51">Agar Malwa</option>
                                <option value="49">Alirajpur</option>
                                <option value="47">Anuppur</option>
                                <option value="46">Ashoknagar</option>
                                <option value="45">Balaghat</option>
                                <option value="28">Barwani</option>
                                <option value="35">Betul</option>
                                <option value="3">Bhind</option>
                                <option value="32">Bhopal</option>
                                <option value="48">Burhanpur</option>
                                <option value="9">Chhatarpur</option>
                                <option value="43">Chhindwara</option>
                                <option value="12">Damoh</option>
                                <option value="5">Datia</option>
                                <option value="23">Dewas</option>
                                <option value="25">Dhar</option>
                                <option value="41">Dindori</option>
                                <option value="7">Guna</option>
                                <option value="4">Gwalior</option>
                                <option value="36">Harda</option>
                                <option value="26">Indore</option>
                                <option value="39">Jabalpur</option>
                                <option value="24">Jhabua</option>
                                <option value="38">Katni</option>
                                <option value="29">Khandwa</option>
                                <option value="27">Khargone</option>
                                <option value="42">Mandla</option>
                                <option value="19">Mandsaur</option>
                                <option value="2">Morena</option>
                                <option value="37">Narmadapuram</option>
                                <option value="40">Narsinghpur</option>
                                <option value="18">Neemuch</option>
                                <option value="52">Niwari</option>
                                <option value="10">Panna</option>
                                <option value="34">Raisen</option>
                                <option value="30">Rajgarh</option>
                                <option value="20">Ratlam</option>
                                <option value="14">Rewa</option>
                                <option value="11">Sagar</option>
                                <option value="13">Satna</option>
                                <option value="33">Sehore</option>
                                <option value="44">Seoni</option>
                                <option value="16">Shahdol</option>
                                <option value="22">Shajapur</option>
                                <option value="1">Sheopur</option>
                                <option value="6">Shivpuri</option>
                                <option value="17">Sidhi</option>
                                <option value="50">Singrauli</option>
                                <option value="8">Tikamgarh</option>
                                <option value="21">Ujjain</option>
                                <option value="15">Umaria</option>
                                <option value="31">Vidisha</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number
                                <br />
                           गाड़ी का नंबर<span style="color: red">*</span></span>
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
                            <button id="toggleButton" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                            <a href="VehicleRegistrationReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="col-md-12">
                    <div class="row justify-content-end" id="GrdFormate" style="display: none">
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
                </div>
                <div class="row justify-content-end" id="NoRcdTable">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class=" table table-bordered text-center">
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
                    <div class="table-responsive">
                        <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehiclRegistration" style="border-collapse: collapse; text-align: center;">
                            <tbody>
                                <tr>
                                    <th scope="col">Sr.No.<br />
                                        सरल क्र. </th>
                                    <th scope="col">Vehicle Number<br />
                                       गाड़ी का नंबर</th>
                                    <th scope="col">Chassis Number
         <br />
                                        चेसिस नंबर</th>
                                    <th scope="col">Insurance Number
         <br />
                                        बीमा नंबर</th>
                                    <th scope="col">Dealer Name
         <br />
                                        विक्रेता का नाम</th>
                                    <th scope="col">Vehicle Color
         <br />
                                        वाहन का रंग</th>
                                    <th scope="col">Action
         <br />
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <span>1</span>
                                    </td>
                                    <td>
                                        <span>MP04ZB8290</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ContentBody_grvVehiclRegistration_ctl02_lblVehicle_Chassis_Number">MAT631139NWH69961</span>

                                    </td>
                                    <td>
                                        <span id="ctl00_ContentBody_grvVehiclRegistration_ctl02_lblInsurance_Number">1901003122P105135</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ContentBody_grvVehiclRegistration_ctl02_lblDealer_Name">TATA MOTORS</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ContentBody_grvVehiclRegistration_ctl02_lblVehicle_Color">DOOR STEEL SHELL</span>
                                    </td>
                                    <td>
                                        <a class="btn btn-primary" href="javascript:__doPostBack('ctl00$ContentBody$grvVehiclRegistration$ctl02$ctl01','')"><i class="fa fa-edit"></i></a>
                                        <a class="btn btn-primary" href="javascript:__doPostBack('ctl00$ContentBody$grvVehiclRegistration$ctl02$ctl02','')"><i class="fa fa-eye"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
            document.getElementById("GrdFormate").style.display = "flex";
            document.getElementById("NoRcdTable").style.display = "none";
        });
    </script>
</asp:Content>
