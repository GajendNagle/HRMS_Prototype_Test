<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleAllotmentReport.aspx.cs" Inherits="mis_Transaction_VehicleAllotmentReport" %>

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
                        <li class="breadcrumb-item"><span>Vehicle Allotment Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Allotment Report / वाहन आवंटन रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Allotment Report / वाहन आवंटन रिपोर्ट</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>From Date
                                <br />
                                दिनांक से<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtFromDate" type="date" id="ctl00_ContentBody_txtFromDate" class="form-control " data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>To Date
                                <br />
                                दिनांक तक<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtTodate" type="date" id="ctl00_ContentBody_txtTodate" class="form-control " data-provide="datepicker" data-date-end-date="0d" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <%--<div class="col-md-3">
                        <div class="form-group">
                            <span>Office Type /<br />
                                कार्यालय का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeType" id="ddlOfficeType" class="form-control">
                                <option value=" -Select-">--Select--</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                            </select>
                        </div>
                    </div>--%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>District
                                <br />
                                ज़िला<span style="color: red">*</span></span>
                            <select class="form-select form-control">
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
                    <%--<div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />
                                गाडी नंबर<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlVehicleNumber" id="ctl00_ContentBody_ddlVehicleNumber" class="form-control " disabled="disabled" tabindex="-1" aria-hidden="true">
                                <option value="1" selected="selected">MP04CB4473</option>
                            </select>
                        </div>
                    </div>--%>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button id="toggleButton" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                        <a href="VehicleAllotmentReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details/विवरण</legend>
                <br />
                <div class="row" id="NoRcdTable">
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
                <div id="SearchTable" style="display: none">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
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
                                <table class="datatable table table-bordered dataTable no-footer" cellspacing="0" rules="all" border="1" style="border-collapse: collapse; text-align: center;" role="grid" aria-describedby="ctl00_ContentBody_grvVehicleAllotment_info">
                                    <thead>
                                        <tr role="row">
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-sort="ascending" aria-label="S.No.: activate to sort column descending" style="width: 33.2373px;">S.No.<br />
                                                सरल क्र.</th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Order Date: activate to sort column ascending" style="width: 55.9921px;">Order Date
                                            <br />
                                                आर्डर की तारीख</th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Office Type: activate to sort column ascending" style="width: 56.2197px;">Office Type<br />
                                                कार्यालय का प्रकार</th>
                                            <th scope="col" style="width: 59.7542px;">District
                                                <br />
                                                ज़िला</th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Vehicle Number: activate to sort column ascending" style="width: 80.355px;">Vehicle Number<br />
                                                गाडी नंबर</th>

                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Designation: activate to sort column ascending" style="width: 74.4084px;">Designation<br />
                                                पद का नाम  </th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Order Number: activate to sort column ascending" style="width: 72.0267px;">Order Number
                                            <br />
                                                आदेश नंबर</th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Vehicle Type: activate to sort column ascending" style="width: 64.3204px;">Vehicle Type<br />
                                                वाहन का प्रकार</th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Driver Name: activate to sort column ascending" style="width: 60.4976px;">Driver Name<br />
                                                चालक का नाम</th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Order Document: activate to sort column ascending" style="width: 86.4988px;">Order Document<br />
                                                आदेश दस्तावेज़</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr role="row">
                                            <td>
                                                <span>1</span>
                                            </td>
                                            <td>
                                                <span>13/06/2024</span>
                                            </td>

                                            <td>
                                                <span>Head Office</span>
                                            </td>
                                            <td>
                                                <span>Barwani</span>
                                            </td>
                                            <td>
                                                <span>MP04CB4473</span>
                                            </td>
                                            <td>
                                                <span>Joint Director</span>
                                            </td>
                                            <td>
                                                <span>56565656</span>
                                            </td>
                                            <td>
                                                <span>MARUTI 800</span>
                                            </td>
                                            <td>
                                                <span>LAKSHMI NARAYAN</span>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-primary">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
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
    <script>
        document.getElementById("toggleButton").addEventListener("click", function () {
            document.getElementById("SearchTable").style.display = "block";
            document.getElementById("NoRcdTable").style.display = "none";
        });
    </script>
</asp:Content>

