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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#TransportManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
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
            <fieldset id="dataSearchEmp">
                <legend>Vehicle Allotment Employee / वाहन आवंटन कर्मचारी</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Employee ID
                                <br />
                                कर्मचारी की आई.डी.<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$ddlOfficeType" placeholder="Enter Employee ID" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <button id="toggleButton4" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                            <a href="VehicleAllotment.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
                <div id="EmployeeDetailsData" style="display: none">
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Employee Name With Code
                                    <br />
                                    आई डी सहित कर्मचारी का नाम<span style="color: red">*</span></span>
                                <input type="text" maxlength="20" class="form-control" readonly="readonly" value="E0561-Raj" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>District
                                    <br />
                                    जिला<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ddlDistrict" disabled="disabled" id="ContentBody_ddlDistrict" class="form-control">
                                    <option value="0">--Select--</option>
                                    <option value="51" selected="selected">Agar Malwa</option>
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
                                <span>DDO/Sankul Code
                                    <br />
                                    डीडीओ/संकुल कोड<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ddlOfficeType" disabled="disabled" class="form-control" tabindex="-1" aria-hidden="true">
                                    <option value="0" selected="selected">23090107701</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Designation
                                    <br />
                                    पद का नाम<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ddlOfficeType" disabled="disabled" class="form-control " tabindex="-1" aria-hidden="true">
                                    <option value="0">--Select--</option>
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
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="VehicleAllotementNo" style="display: none">
                <legend>Vehicle Allotment Number / वाहन आवंटन संख्या</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number
                                <br />
                              गाड़ी का नंबर<span style="color: red">*</span></span>
                            <select class="form-control select2 select2-hidden-accessible">
                                <option>--Select--</option>
                                <option>MP04HC4163</option>
                                <option>MP04CV7194</option>
                                <option>MP04CG9580</option>
                                <option>MP12CA3652</option>
                                <option>MP04ZB8269</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <button id="toggleButton2" type="button" class="btn  btn-success btn-border">Search</button>
                            <a href="VehicleAllotment.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
                <div id="VEHICLEALLOTMENTData" style="display: none">
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Company Name
                                    <br />
                                    वाहन कंपनी का नाम<span style="color: red">*</span></span>
                                <input type="text" maxlength="50" value="Tata Motors" readonly="readonly" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Model Name
                                    <br />
                                    वाहन मॉडल का नाम<span style="color: red">*</span></span>
                                <input type="text" maxlength="20" class="form-control" value="Tiago" readonly="readonly" autocomplete="off" />
                            </div>
                        </div>
                        <%-- <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Variants
                                    <br />
                                    वाहन का प्रकार <span style="color: red">*</span></span>
                                <input type="text" maxlength="50" class="form-control" value="Hatchback" readonly="readonly" />
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Color
                                    <br />
                                    वाहन का रंग<span style="color: red">*</span></span>
                                <input type="text" maxlength="30" class="form-control" value="Midnight Plum" readonly="readonly" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Fuel Type
                                    <br />
                                    ईंधन का प्रकार<span style="color: red">*</span></span>
                                <input type="text" maxlength="30" class="form-control" value="Diesel" readonly="readonly" autocomplete="off" />
                                <%--<div class="form-control" disabled="true">
                                    <input type="radio" disabled="disabled" id="one" />
                                    <label for="one">Diesel</label>
                                    <input type="radio" disabled="disabled" id="two" />
                                    <label for="option-2">Petrol</label>
                                    <input type="radio" disabled="disabled" id="three" checked="checked" />
                                    <label for="three">CNG</label>
                                    <input type="radio" disabled="disabled" id="four" />
                                    <label for="four">Electric</label>
                                </div>--%>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Type Of Body
                                    <br />
                                    बॉडी का प्रकार<span style="color: red">*</span></span>
                                <select class="form-control" disabled="disabled" tabindex="-1" aria-hidden="true">
                                    <option value="0">--Select--</option>
                                    <option value="1" selected="selected">Hatchback</option>
                                    <option value="2">Sedan</option>
                                    <option value="3">SUV</option>
                                    <option value="4">MUV</option>
                                    <option value="4">Commercial Vehicle</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Number
                                    <br />
                                    वाहन का नंबर<span style="color: red">*</span></span>
                                <input type="text" maxlength="50" value="MP04CB4473" readonly="readonly" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <%--<div class="col-md-3">
                            <div class="form-group">
                                <span>Office Type
                                    <br />
                                    कार्यालय का प्रकार<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ctl04" class="form-control" disabled="disabled">
                                    <option value=" -Select-">--Select--</option>
                                    <option value=" -Select-">CPI</option>
                                    <option value=" -Select-">DPI</option>
                                    <option value="Bhopal">Head Office</option>
                                    <option value="Bhopal" selected="selected">JOINT DIRECTORS</option>
                                    <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                    <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Office Name
                                    <br />
                                    कार्यालय का नाम<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ddlOfficeType" id="ctl00_ContentBody_ddlOfficeType" disabled="disabled" class="form-control " tabindex="-1" aria-hidden="true">
                                    <option value="0" selected="selected">Head Office</option>
                                </select>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </fieldset>
            <fieldset id="VEHICLEALLOTMENTDetails" style="display: none">
                <legend>VEHICLE ALLOTMENT / वाहन आवंटन </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Order Number
                                <br />
                                आदेश क्रमांक<span style="color: red">*</span></span>
                            <input type="text" maxlength="20" id="ctl00_ContentBody_txtOrederNumber" class="form-control" placeholder="Enter Order Number" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Order Date
                                <br />
                                आदेश की तारीख<span style="color: red">*</span></span>
                            <input type="date" class="form-control" data-provide="datepicker" data-date-end-date="0d" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true" />
                        </div>
                    </div>
                    <%--<div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Type
                                <br />
                                वाहन का प्रकार<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtVehicleType" type="text" placeholder="Enter Vehicle Type" id="ctl00_ContentBody_txtVehicleType" class="form-control" />
                        </div>
                    </div>--%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Driver Name
                                <br />
                                चालक का नाम<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtDrivername" type="text" maxlength="50" id="ctl00_ContentBody_txtDrivername" class="form-control" placeholder="Enter Driver Name" onpaste="return false;" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Driver's Mobile Number
                                <br />
                                चालक का मोबाईल नंबर<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtDriverContactNo" type="text" maxlength="10" id="ctl00_ContentBody_txtDriverContactNo" class="form-control" placeholder="Enter Driver Contact No." onpaste="return false;" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Upload File
                                <br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span></span>
                            <input type="file" name="ctl00$ContentBody$orderFileUploader" id="ctl00_ContentBody_orderFileUploader" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Remark
             <br />
                                टिप्पणी
                                <span style="color: red">*</span></span>
                            <textarea rows="1" class="form-control"></textarea>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button" id="toggleButton" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="VehicleAllotment.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row" id="FisrtTimetbl">
                    <div class="col-md-12">
                        <div>
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>No Recods Found</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="Serchtbl" style="display: none;">
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
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="datatable table table-bordered dataTable no-footer" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehicleAllotment" style="border-collapse: collapse; text-align: center;" role="grid" aria-describedby="ctl00_ContentBody_grvVehicleAllotment_info">
                                    <thead>
                                        <tr role="row">
                                            <th scope="col">Sr.No.
                                                <br />
                                                सरल क्र.</th>
                                            <th scope="col">Employee Name With Code
                                                <br />
                                                आई डी सहित कर्मचारी का नाम</th>
                                            <th scope="col">District
                                                <br />
                                                जिला
                                            </th>
                                            <th scope="col">DDO/Sankul Code
                                                <br />
                                                डीडीओ/संकुल कोड</th>
                                            <th scope="col">Designation
     <br />
                                                पद का नाम</th>
                                            <th scope="col">Vehicle Number
                                                <br />
                                              गाड़ी का नंबर</th>
                                            <%--<th scope="col">Office Type
                                                <br />
                                                कार्यालय का प्रकार</th>
                                            <th scope="col">Office Name
                                                <br />
                                                कार्यालय का नाम</th>--%>

                                            <th scope="col">Order Number
                                                <br />
                                                 आदेश क्रमांक</th>
                                            <th scope="col">Order Date
                                                <br />
                                                आदेश की तारीख</th>
                                            <%-- <th scope="col">Vehicle Type
                                                <br />
                                                वाहन का प्रकार</th>--%>
                                            <th scope="col">Driver Name
                                                <br />
                                                चालक का नाम</th>
                                            <th scope="col">Driver's Mobile Number
                                                <br />
                                             चालक का मोबाईल नंबर</th>
                                            <th scope="col">Order Document
                                                <br />
                                                आदेश दस्तावेज़</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr role="row" class="odd">
                                            <td>
                                                <span>1</span>
                                            </td>
                                            <td>
                                                <span>E0561-Raj</span>
                                            </td>
                                            <td>
                                                <span>Agar Malwa</span>
                                            </td>
                                            <td>
                                                <span>23090107701</span>
                                            </td>

                                            <%-- <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblOffice_Name">Head Office</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblOfficeType_Title">Head Office</span>
                                            </td>--%>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblDesignation">Joint Director</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblVehicle_Number">MP04CB4473</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblOrder_Number">111-9244735-1237858</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblOrder_Date">12/05/2023</span>
                                            </td>
                                            <%-- <td style="width: 10%;" class="sorting_1">
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblVehicletype">Tiago</span>
                                            </td>--%>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblDrivername">LAKSHMI NARAYAN</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentBody_grvVehicleAllotment_ctl02_lblDriverContactNo">7411655945</span>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-primary">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-primary">
                                                    <i class="fa fa-edit"></i>
                                                </button>
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
    <%--<script>
        document.getElementById("toggleButton").addEventListener("click", function () {
            var content = document.getElementById("Serchtbl");
            var content2 = document.getElementById("FisrtTimetbl");
            content.style.display = content.style.display === "none" ? "block" : "none";
            content2.style.display = content.style.display === "none" ? "block" : "none";
        });
        document.getElementById("toggleButton2").addEventListener("click", function () {
           // var content3 = document.getElementById("VEHICLEALLOTMENTData");
            var content = document.getElementById("Serchtbl");
            var content2 = document.getElementById("FisrtTimetbl");
            content3.style.display = content3.style.display === "none" ? "block" : "none";
            content.style.display = "none";
            document.getElementById("VEHICLEALLOTMENTData").style.display = "block";
            document.getElementById("EmployeeDetailsData").style.display = "block";
            document.getElementById("dataSearchEmp").style.display = "none";
        });
        document.getElementById("toggleButton4").addEventListener("click", function () {
           // var content3 = document.getElementById("EmployeeDetailsData");
          //  var content = document.getElementById("Serchtbl");
         //   var content2 = document.getElementById("FisrtTimetbl");
           // content3.style.display = content3.style.display === "none" ? "block" : "none";
          //  content.style.display = "none";
            document.getElementById("EmployeeDetailsData").style.display = "block";
            document.getElementById("dataSearchEmp").style.display = "none";
            EmployeeDetailsData
        });

    </script>--%>
    <script>
        document.getElementById("toggleButton4").addEventListener("click", function () {
            //var content2 = document.getElementById("Serchtbl");
            document.getElementById("Serchtbl").style.display = "none";
            document.getElementById("EmployeeDetailsData").style.display = "block";
            //document.getElementById("dataSearchEmp").style.display = "none";
            document.getElementById("VehicleAllotementNo").style.display = "block";
            //document.getElementById("FisrtTimetbl").style.display = "none";
        });
        document.getElementById("toggleButton2").addEventListener("click", function () {
            document.getElementById("Serchtbl").style.display = "none";
            document.getElementById("VEHICLEALLOTMENTData").style.display = "block";
            document.getElementById("VEHICLEALLOTMENTDetails").style.display = "block";
            //document.getElementById("dataSearchEmp").style.display = "none";
            document.getElementById("VehicleAllotementNo").style.display = "block";
        });
        document.getElementById("toggleButton").addEventListener("click", function () {
            document.getElementById("Serchtbl").style.display = "block";
            document.getElementById("VEHICLEALLOTMENTData").style.display = "block";
            //document.getElementById("dataSearchEmp").style.display = "none";
            document.getElementById("VehicleAllotementNo").style.display = "block";
            document.getElementById("FisrtTimetbl").style.display = "none";
        });
    </script>
</asp:Content>
