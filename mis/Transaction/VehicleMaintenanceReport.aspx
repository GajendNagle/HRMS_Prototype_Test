<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleMaintenanceReport.aspx.cs" Inherits="mis_Transaction_VehicleMaintenanceReport" %>

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
                        <li class="breadcrumb-item"><span>Vehicle Maintenance Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Vehicle Maintanance Report</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end">
                    <a role="button" href="VehicleMaintenance.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" id="btnBack"
                        onclick="funBack()"><i class="ri-arrow-go-back-line label-icon align-middle  me-2"></i>Back</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset >
                <legend>Vehicle Maintenance Report / वाहन रखरखाव विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Year
                                <br />
                                वर्ष का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="1">2000</option>
                                <option value="2">2001</option>
                                <option value="3">2002</option>
                                <option value="4">2003</option>
                                <option value="5">2004</option>
                                <option value="6">2005</option>
                                <option value="7">2006</option>
                                <option value="8">2007</option>
                                <option value="9">2008</option>
                                <option value="10">2009</option>
                                <option value="11">2010</option>
                                <option value="12">2011</option>
                                <option value="13">2012</option>
                                <option value="14">2013</option>
                                <option value="15">2014</option>
                                <option value="16">2015</option>
                                <option value="17">2016</option>
                                <option value="18">2017</option>
                                <option value="19">2018</option>
                                <option value="20">2019</option>
                                <option value="21">2020</option>
                                <option value="22">2021</option>
                                <option value="23">2022</option>
                                <option value="24">2023</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>District
                                <br />
                                ज़िला<span style="color: red">*</span></span>
                            <select class="select2 form-control">
                                <option value="0">--Select--</option>
                                <option value="All">All</option>
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
                            <span>Select Office Type
                                <br />
                                कार्यालय प्रकार का चयन करें<span style="color: red">*</span></span>
                            <select id="OffType" class="form-control select2">
                                <option value="0">Select</option>
                                <option value="1">HO</option>
                                <option value="2">SD</option>
                                <option value="3">Block</option>
                                <option value="4">DEO</option>
                                <option value="5">Sankul</option>
                                <option value="6">School</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Office Name
                                <br />
                                कार्यालय नाम का चयन करें<span style="color: red">*</span></span>
                            <select id="OffName" class="form-control select2">
                                <option value="0">Select</option>
                                <option value="1">All</option>
                                <option value="2">HO-Office</option>
                                <option value="3">JD-Office</option>
                                <option value="4">DEO-Ofice</option>
                                <option value="5">Sankul-Ofice</option>
                                <option value="6">School-Ofice</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Maintenance Type
                                <br />
                                रखरखाव का प्रकार<span style="color: red">*</span></span>
                            <select id="ddlMaintenanceType" class="form-control select2">
                                <option value="0">Select</option>
                                <option value="1">Servicing</option>
                                <option value="2">General</option>
                                <option value="3">Tyre-Tube</option>
                                <option value="4">Battery</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                <hr />
                        <button id="toggleButton" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Save</button>
                        <a href="VehicleMaintenanceReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" id="searchbtn">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval" style="border-collapse: collapse; text-align: center;">
                                <thead>
                                    <tr>
                                        <th scope="col">S.No.<br />
                                            सरल क्र.</th>
                                        <th scope="col">Financial Year
                                            <br />
                                            वित्तीय वर्ष</th>
                                        <th scope="col">Vehicle Number<br />
                                            गाड़ी का नंबर</th>
                                        <th scope="col">Maintenance Type<br />
                                            रखरखाव का प्रकार</th>
                                        <th scope="col">Previous Reading Km
                                        <br />
                                            पूर्व रीडिंग किलोमीटर में</th>
                                        <th scope="col">Current Reading Km<br />
                                            वर्तमान रीडिंग किलोमीटर में</th>
                                        <th scope="col">Difference Km Reading<br />
                                            किलोमीटर रीडिंग में अंतर </th>
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
                                        <td>
                                            <span>1 </span>
                                        </td>
                                        <td>
                                            <span>2024 </span>
                                        </td>
                                        <%--<td style="width: 10%;">
                                            <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblOffice_Name">Head Office</span>
                                        </td>--%>
                                        <td>
                                            <span id="ctl00_ContentBody_gvVehicleMaintenanceHOApproval_ctl02_lblVehicle_Number">MP04CB4473</span></td>
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
    <script>
        document.getElementById("toggleButton").addEventListener("click", function () {
            document.getElementById("SearchTable").style.display = "block";
            document.getElementById("NoRcdTable").style.display = "none";
        });
    </script>
</asp:Content>

