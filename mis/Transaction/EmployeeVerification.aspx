<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeVerification.aspx.cs" Inherits="mis_Transaction_EmployeeVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
        }

        #appid {
            display: none;
        }

        #penid {
            display: none;
        }

        #divbtn {
            display: none;
        }

        #des {
            display: block;
        }
    </style>
    <script>
        function myFunction() {
            var showdetails = document.getElementById("showdetails");
            var ddlApprove = document.getElementById("ddlApprove");
            var appid = document.getElementById("appid");
            var penid = document.getElementById("penid");

            if (ddlApprove.value == "1") {
                showdetails.style.display = "block";
                appid.style.display = "block";
                penid.style.display = "none";
                divbtn.style.display = "none";
                regid.style.display = "none";

            } else if (ddlApprove.value == "2") {
                showdetails.style.display = "block";
                penid.style.display = "block";
                divbtn.style.display = "block";
                appid.style.display = "none";
                regid.style.display = "none";
            } else if (ddlApprove.value == "3") {
                showdetails.style.display = "block";
                regid.style.display = "block";
                penid.style.display = "none";
                appid.style.display = "none";
                divbtn.style.display = "none";
                appid.style.display = "none";
            }
            else {
                showdetails.style.display = "none";
                appid.style.display = "none";
                penid.style.display = "none";
                divbtn.style.display = "none";
            }

            //var y = document.getElementById("divbtn");
            //if (y.style.visibility === "hidden") {
            //    y.style.visibility = "visible";
            //} else {
            //    y.style.visibility = "visible";
            //}

            //var z = document.getElementById("des");
            //if (z.style.visibility === "hidden") {
            //    z.style.visibility = "visible";
            //} else {
            //    z.style.visibility = "visible";
            //}


        }
    </script>
    <script> 
        function showhide() {
            debugger;
            var ddlApprove = document.getElementById("ddlApprove");
            var states = ["All", "Approve", "Pending", "Reject"];

            for (var i = 0; i < states.length; i++) {
                var element = document.getElementById(states[i]);
                element.style.display = ddlApprove.value === i.toString() ? "block" : "none";
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">

                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                    <img src="../../img/Employee%20Registration.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u>
                    </u>
                </p>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <%--  <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active"></li>--%>


                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                        <li class="breadcrumb-item active">Employee Verification</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar ">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">


                                <li>

                                    <a class="nav-link  text-white " href="EmployeeVerificationNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                </li>
                                <li>

                                    <a class="nav-link  text-white " href="EmployeeVerification.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i> Employee Verification</b></a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
                <br />

                <fieldset>
                    <legend>Employee Verification
                    </legend>
                    <div class="row">
                        <%--<div class="col-md-3">
                            <div class="form-group">
                                <label>State / राज्य </label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                    <option value="Assam">Assam</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Manipur">Manipur</option>
                                    <option value="Meghalaya">Meghalaya</option>
                                    <option value="Mizoram">Mizoram</option>
                                    <option value="Nagaland">Nagaland</option>
                                    <option value="Odisha">Odisha</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="Sikkim">Sikkim</option>
                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                    <option value="Telangana">Telangana</option>
                                    <option value="Tripura">Tripura</option>
                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                    <option value="Uttarakhand">Uttarakhand</option>
                                    <option value="West Bengal">West Bengal</option>
                                </select>
                            </div>
                        </div>--%>

                        <%-- <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Division / संभाग </label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Ujjain">Ujjain</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Chambal">Chambal</option>
                                    <option value="Shahdol">Shahdol</option>
                                    <option value="Hoshangabad">Hoshangabad</option>
                                    <option value="Narmadapuram">Narmadapuram</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">District/जिला</label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Raisen">Raisen</option>
                                <option value="Rajgarh">Rajgarh</option>
                                <option value="Sehore">Sehore</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Ashoknagar">Ashoknagar</option>
                                <option value="Shivpuri">Shivpuri</option>
                                <option value="Datia">Datia</option>
                                <option value="Guna">Guna</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Harda">Harda</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Betul">Betul</option>
                                <option value="Morena">Morena</option>
                                <option value="Sheopur">Sheopur</option>
                                <option value="Bhind">Bhind</option>
                                <option value="Barwani">Barwani</option>
                                <option value="Burhanpur">Burhanpur</option>
                                <option value="Dhar">Dhar</option>
                                <option value="Indore">Indore</option>
                                <option value="Jhabua">Jhabua</option>
                                <option value="Khandwa">Khandwa</option>
                                <option value="Khargone">Khargone</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Katni">Katni</option>
                                <option value="Mandla">Mandla</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Seoni">Seoni</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Satna">Satna</option>
                                <option value="Sidhi">Sidhi</option>
                                <option value="Singroli">Singroli</option>
                                <option value="Chhatarpur">Chhatarpur</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Panna">Panna</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Tikamgarh">Tikamgarh</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Umaria">Umaria</option>
                                <option value="Dindori">Dindori</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Dewas">Dewas</option>
                                <option value="Mandsaur">Mandsaur</option>
                                <option value="Neemuch">Neemuch</option>
                                <option value="Ratlam">Ratlam</option>
                                <option value="Shajapur">Shajapur</option>
                                <option value="Ujjain">Ujjain</option>

                            </select>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Block / ब्लॉक </label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Agar">Agar</option>
                                    <option value="Alirajpur">Alirajpur</option>
                                    <option value="Anuppur">Anuppur</option>
                                    <option value="Ashoknagar">Ashoknagar</option>
                                    <option value="Balaghat">Balaghat</option>
                                    <option value="Barwani">Barwani</option>
                                    <option value="Betul">Betul</option>
                                    <option value="Bhind">Bhind</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Burhanpur">Burhanpur</option>
                                    <option value="Chhatarpur">Chhatarpur</option>
                                    <option value="Chhindwara">Chhindwara</option>
                                    <option value="Damoh">Damoh</option>
                                    <option value="Datia">Datia</option>
                                    <option value="Dewas">Dewas</option>
                                    <option value="Dhar">Dhar</option>
                                    <option value="Dindori">Dindori</option>
                                    <option value="Guna">Guna</option>
                                    <option value="Gwalior">Gwalior</option>



                                </select>
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Type / पदनाम का प्रकार<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Regular">Ministry</option>
                                    <option value="Sthai Karmi">Teaching</option>
                                    <option value="Theka shramik">Executive</option>
                                    <option value="Clerical">Clerical</option>
                                    <option value="State">State</option>
                                    <option value="Other Department">Other Department</option>
                                    <option value="Hostel">Hostel</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation / पदनाम <span style="color: red">*</span></label>
                                <select name="Designation" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="General Manager">General Manager</option>
                                    <option value="Sthai Karmi">Manager</option>
                                    <option value="Commissioner">Commissioner</option>
                                    <option value="Additional Director">Additional Director</option>
                                    <option value="Asstt Director">Asstt Director</option>
                                    <option value="Planning Officer">Planning Officer</option>
                                    <option value="Tabla Teacher">Tabla Teacher</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Verification Status/ सत्यापन स्थिति</label>
                                <select class="form-control select2" id="ddlApprove">
                                    <option value="0">--Select--</option>

                                    <option value="1">Approve</option>
                                    <option value="2">Pending</option>
                                    <option value="3">Reject</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3 mt-4 justify-content-end">
                            <button onclick="myFunction()" type="button" class=" btn btn-success btn-rounded ">Search</button>

                            <a runat="server" id="A1" href="EmployeeVerification.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="showdetails">
                    <legend>Details</legend>
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
                    <div class="row form-group">
                        <div class="col-md-12" id="appid">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Employee Name</th>
                                        <th>Employee ID</th>
                                        <th>Designation</th>
                                        <th>Department</th>
                                        <th>View More</th>
                                        <th>Status</th>

                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Shri A.K. Ranjan</td>
                                        <td>0001</td>
                                        <td>LDC</td>
                                        <td>Finance</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Approved</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Omprakash</td>
                                        <td>0012</td>
                                        <td>LDC</td>
                                        <td>Finance</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Approved</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Ashu</td>
                                        <td>0010</td>
                                        <td>LDC</td>
                                        <td>Finance</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Approved</td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                        <div class="col-md-12" id="penid">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Action
                                       <br />
                                            <input type="checkbox" />

                                        </th>
                                        <th>Employee Name</th>
                                        <th>Employee ID</th>
                                        <th>Designation</th>
                                        <th>Department</th>
                                        <th>View More</th>
                                        <th>Status</th>

                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>

                                        <td>Shri S.S. Soni</td>
                                        <td>0059</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>

                                        <td>R.K. Dubey</td>
                                        <td>0089</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>

                                        <td>Pradeep Mishra</td>
                                        <td>0065</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>

                                        <td>Dhanraj Sharma</td>
                                        <td>0060</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-12" id="regid">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Employee Name</th>
                                        <th>Employee ID</th>
                                        <th>Designation</th>
                                        <th>Department</th>
                                        <th>View More</th>
                                        <th>Status</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Ramcharan</td>
                                        <td>0075</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Reject</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Praveen Kumar</td>
                                        <td>0044</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Reject</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>R.P Singh</td>
                                        <td>0095</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Reject</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="row justify-content-center" id="divbtn">
                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <button type="button" class="btn btn-success btn-rounded" onclick="openBootstrapModalreg1()">Save</button>

                            <button type="button" class=" btn btn-danger btn-rounded" onclick="openBootstrapModalreg()">Reject</button>
                            <%--  <button type="button" class=" btn btn-danger btn-rounded" onclick="openBootstrapModalreg1()">Reject</button>--%>
                        </div>
                    </div>
                </div>
                <fieldset id="des">
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <%--   <li><strong>State  Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>State  Name </strong>from the dropdown and the data will be populated from the <strong>State  Master</strong>.</li>
                                    </ul>
                                </li>--%>
                                <%--   <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong> and data cascade from <strong>State Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>State and Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Block Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Block Name </strong>from the dropdown and the data will be populated from the <strong>Block Master</strong> and data cascade from <strong>State Master </strong>and <strong>Division Master</strong> and <strong>District Master</strong> .</li>
                                    </ul>
                                </li>--%>
                                <li><strong>Designation Type</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Designation Type </strong>from dropdown. Data populated from <strong>Designation Type master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Designation</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation </strong>from the dropdown and the data will be populated from the <strong>Designation Master</strong> and data cascade from <strong>Designation Type Master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Verification Status</strong>
                                    <ul>
                                        <li>In the <strong>verification drop</strong> down, the drop down of pending reject and approval opens. On clicking on pending, the approval option opens, through which the concerned employees can be verified.
                                            <br />
                                            The related drop down is used for the information of the rejected and approved employee.</li>
                                    </ul>
                                </li>
                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li><strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li><strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> .</li>
                                    </ul>
                                </li>

                                <li><strong>View more</strong>
                                    <ul>
                                        <li>User should be able to click on View button.</li>
                                        <li>After clicking on the View button selected <strong>Employee's
                                        </strong>details will be shown on the pop up screen.</li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>
                <!-- sample modal content -->
                <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header" id="myDIV">
                                <h4 class="modal-title" id="myLargeModalLabel1">Registration Details</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">

                                <fieldset>
                                    <legend>PERSONAL INFORMATION</legend>
                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Employee Unique ID<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="5859685" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>First Name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Shyam" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Middle Name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kumar" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Last Name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Verma" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Father's/Husband Name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kunal Verma" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Post<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Regular/Permanemt" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Designation<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Administrator" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Subject<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Chemistry" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>School name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="GB Convent School" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Sankul<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Reema Vidhya" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Date of Birth<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/07/1999" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Gender<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Male" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Height<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6.4" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Category<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="General" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Religion<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Hindu" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Identification Mark<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Mole on Face" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Blood Group<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="O+" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Handicapped (PWD)<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Handicape Type<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Low vision" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Handicape Percentage<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="30%" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Critical Illness<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>PAN No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="SDEKK5695G" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Aadhaar No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="362596836495" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Samagra ID No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="654651545454" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Employee Treasury Code<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="56958369" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Hobbies<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Dancing, Singing" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Certification Date<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/01/2023" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Mobile No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6589562358" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Email ID.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="example123@gmail.com" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>whether the first Page of E-Service Book is certified<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>


                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Address</legend>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <fieldset>
                                                <legend>Present Address
                                                </legend>
                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Address line 1<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Address line 2<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>State<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Division<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>District<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>City<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Pincode<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                        </div>
                                                    </div>

                                                </div>


                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">

                                            <div class="form-group">
                                                <input type="checkbox" id="vehicle1" name="vehicle1" checked value="Bike">
                                                <b>Permanent Address same as Present Address</b>
                                                <%--<label><span style="color: red">*</span></label>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <fieldset>
                                                <legend>Permanent Address
                                                </legend>
                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Address line 1<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Address line 2<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>State<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Division<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>District<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>City<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>


                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Pincode<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                        </div>
                                                    </div>

                                                </div>
                                            </fieldset>
                                        </div>

                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Marital Status and Spouse Details</legend>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Married <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Spouse Name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Ruchita " />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Is Spouse Government Employee <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Departmnet Name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Office Address<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="52, Arera Hills, Bhopal" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Education Qualification</legend>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Qualification <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Post Graduate" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Science <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Science" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Board / Univercity name<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Makhanlal Chaturvedi" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Passing Year <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="2022" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Grade / Percentage<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="99%" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>First Appointment Details</legend>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>First Appointment Order Date <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20.12.2021" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>First Appointment Department <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Employee’s Designation Type<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Teaching" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>First Appointment Designation<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Teacher" />
                                            </div>
                                        </div>

                                        <div class="col-md-3 mt-4">
                                            <div class="form-group">
                                                <label>First Appointment Pay scale<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20600" />
                                            </div>
                                        </div>
                                        <div class="col-md-3 mt-4">
                                            <div class="form-group">
                                                <label>Parent Department<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="-" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>School/Institute/Office Address of first Posting<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="101 Arera Hills, Bhopal" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Recent Appointment Department<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="IT" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Samvilian Order No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="569894545" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Samvilian Order Date<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2022" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Employee Retirement Date<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2082" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Whether working/Posted in other department on Deputation/transfer <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Working in other Department/Organization on Deputation Transfer <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Current Appointment Details</legend>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Payroll Office Type<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Type of Post<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Teaching" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Class<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Class 3" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Pay Commission<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Second Pay Commission" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Grade Pay<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="8700" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Pay Scale<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="15600-39100" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Level<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Level - 3" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Basic Pay<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="15600-39100" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Employee Department<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Current Appointment Joining Date<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="12.12.2023" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Bank Account Details</legend>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>IFSC Code<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="BARB0ASHOKA" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>EPF No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="4646416464165" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>GPF No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6546541564641" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>NPS No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="5614654465445" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Group Insurance No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="45334343546G" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Gratuity No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="45454146546" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>EGLS No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="65595662131" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>EDLI No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="846451151564" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>ESIC No.<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="4644641464646" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <div class="row justify-content-center">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Verification Status / सत्यापन स्थिति<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Verified" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 mt-4">

                                        <%-- <button data-bs-dismiss="modal" class="btn btn-success Alert-Empverify btn-rounded w-100">Save</button>--%>

                                        <button type="button" class="btn btn-success   Alert-Empverify btn-rounded w-100" data-bs-dismiss="modal">Save</button>
                                        <%--<button type="button" class="btn btn-danger btn-block waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>--%>
                                    </div>

                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->

                </div>
                <!-- /.modal -->

            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="bootstrapModalreg">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Reject Remark</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Remark</label>
                            <asp:TextBox ID="TextBoxreg2" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-danger Alert-Reject" data-bs-dismiss="modal">Reject</button>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>



    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="bootstrapModalreg1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">

                    <h3 style="font: bold; margin-left: auto;">//आहरण संवितरण अधिकारी की अनुशंसा//</h3>

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered" style="border: 1px solid">
                                <tr>
                                    <th>सरल क्रमांक</th>
                                    <th>
                                        <center>अधिकारी की अनुशंसा</center>
                                    </th>
                                </tr>
                                <tr>
                                    <td>1.</td>
                                    <td>
                                        <label style="padding: 10px; text-align: justify;">
                                            प्रमाणित किया जाता है कि श्री/श्रीमती/कु <strong>R.K. Dubey</strong> कार्यालय अंतर्गत <strong>UDC </strong>पद पर पदस्थ है। इन्होंने दिनांक <strong>21/03/2024</strong> को कार्यभार ग्रहण किया है। संबंधित द्वारा दी गई जानकारी का               
 
                                             मिलान कार्यालयीन अभिलेख से कर लिया गया है एवं जानकारी सही पाई गई है। श्री/ श्रीमती/कुका नाम Education Portal पर जोड़ने एवं यूनिक आईडी प्रदान करने की अनुशंसा की जाती है।             
             
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>
                                        <label style="padding: 10px; text-align: justify;">
                                            प्रमाणित किया जाता है कि श्री/श्रीमती/कु <strong>Pradeep Mishra</strong> कार्यालय अंतर्गत <strong>UDC </strong>पद पर पदस्थ है। इन्होंने दिनांक <strong>21/03/2024</strong> को कार्यभार ग्रहण किया है। संबंधित द्वारा दी गई जानकारी का                
                                             मिलान कार्यालयीन अभिलेख से कर लिया गया है एवं जानकारी सही पाई गई है। श्री/ श्रीमती/कुका नाम Education Portal पर जोड़ने एवं यूनिक आईडी प्रदान करने की अनुशंसा की जाती है।           
        
                                        </label>
                                    </td>
                                </tr>
                            </table>


                            <div class="row justify-content-center" id="divbtn1">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <button type="button" class="Alert-SaveOrder  btn btn-success btn-rounded">Approve</button>


                                        <button type="button" class="btn btn-danger btn-rounded waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <%--    <style>
        table, td, th {
            border: 1px solid;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Success').click(function () {
                    Swal.fire({
                        type: 'success',
                        title: 'Good job!',
                        text: 'Something went wrong!',
                        timer: 2000
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    })
                });

                $('.Alert-Empverify').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Verify Employee ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Employee Verified Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }

                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);

    </script>
    <script>
        // Function to open the Bootstrap modal
        function openBootstrapModalreg() {
            $('#bootstrapModalreg').modal('show');
        }
        function openBootstrapModalreg1() {
            $('#bootstrapModalreg1').modal('show');
        }

    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-SaveOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Approve Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            var x = document.getElementById('ShowOrders');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>

