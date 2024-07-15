<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpTourApply.aspx.cs" Inherits="mis_HRMS_EmpTourApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        #workdescription1 {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }
    </style>
    <script>

        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="col-md-12">
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
                        <a href="#Tour" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>Tour</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Tour Apply</span></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Tour Apply / यात्रा के लिए आवेदन करें</h4>
                        </div>

                        <div class="col-lg-6  text-end">
                            <button type="button" id="btn1" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" onclick="div()"><i class="bx bx-plus label-icon align-middle me-2"></i>Apply Tour</button>

                            <button type="button" id="btn2" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" style="display: none;" onclick="div1()"><i class="bx bx-plus label-icon align-middle  me-2"></i>Back To List </button>

                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <%--    <div class="content-wrapper">
        <!-- Main content -->
        <div class="container-fluid">
            <div class="row page-titles mb-4">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">Tour Apply</h4>
                </div>
                <div class="col-md-7 align-self-center text-end">
                    <div class="d-flex justify-content-end align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                            <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Tour" title="click to go on">Tour</a></li>
                            <li class="breadcrumb-item active">Tour Apply</li>
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

                                        <a class="nav-link  text-white " href="EmpTourApplyNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="EmpTourApply.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>यात्रा के लिए आवेदन करें</b></a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />--%>
                    <fieldset id="hide" style="display: none">
                        <legend>Tour Apply / यात्रा के लिए आवेदन करें</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Employee Code or Name
                                        <br />
                                        कर्मचारी कोड या नाम<span style="color: red"> *</span></label>
                                    <asp:TextBox runat="server" placeholder="Enter Your Name" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Tour Type<br />
                                        यात्रा का प्रकार<span style="color: red"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <option value="1">Official</option>
                                        <option value="2">Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Tour Starts From<br />
                                        यात्रा प्रारंभ होती है
                                        <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value=">--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Bhopal">Dewas</option>
                                        <option value="Gwalior">Gwalior</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Tour Ends At<br />
                                        यात्रा समाप्त होती है
                                        <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value=">--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Bhopal">Dewas</option>
                                        <option value="Gwalior">Gwalior</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        From Date<br />
                                        की तिथि से
                                        <span style="color: red;">*</span></label>
                                    <input id="Fromdate" type="date" class="form-control" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        To Date<br />
                                        तारीख तक<span style="color: red"> *</span></label>
                                    <input id="Todate" type="date" class="form-control" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        No. of Days<br />
                                        दिनों की संख्या
                                        <span style="color: red">*</span></label>
                                    <asp:TextBox placeholder="Enter No. Of Days" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Tour Purpose<br />
                                        यात्रा का उद्देश्य
                                   <span style="color: red">*</span>
                                    </label>
                                    <textarea class="form-control" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reason"></textarea>
                                </div>
                            </div>


                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="btn w-lg btn-success btn-border">Apply</button>
                                    <a href="EmpTourApply.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                            <%--                            <div class="col-md-2 text-center" style="top: 3.3rem;">
                                <button type="button" class="btn btn-success  btn-rounded Alert-Save " onclick="myFunction()">Apply</button>
                                <a href="EmpTourApply.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>--%>
                        </div>
                    </fieldset>
                    <fieldset id="show1">
                        <legend>Tour Detail / यात्रा विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.<br />
                                                सरल क्र.
                                            </th>
                                            <th>Employee Code/Name<br />
                                                कर्मचारी कोड या नाम
                                            </th>
                                            <th>Office Name<br />
                                                ऑफिस का नाम
                                            </th>
                                            <th>Tour Type<br />
                                                यात्रा का प्रकार
                                            </th>
                                            <th>Tour Start From
                                                <br />
                                                यात्रा प्रारंभ
                                            </th>
                                            <th>Tour Destination<br />
                                                यात्रा समाप्त
                                            </th>
                                            <th>Duration<br />
                                                अवधि
                                            </th>
                                            <th>No.Of Days<br />
                                                दिनों की संख्या
                                            </th>
                                            <th>Status<br />
                                                स्थिति
                                            </th>
                                            <th>Tour Purpose<br />
                                                यात्रा का उद्देश्य</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>BI3468-Suresh Bamniya</td>
                                        <td>NA</td>
                                        <td>official </td>
                                        <td>Bhopal</td>
                                        <td>Indore</td>
                                        <td>13/07/2024 - 15/07/2024</td>
                                        <td>3</td>
                                        <td>Pending</td>
                                        <td>Trainning</td>
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>BI3468-Ram Verma</td>
                                        <td>NA</td>
                                        <td>official </td>
                                        <td>Bhopal</td>
                                        <td>Indore</td>
                                        <td>13/05/2024 - 16/05/2024</td>
                                        <td>4</td>
                                        <td>Pending</td>
                                        <td>Test</td>
                                    </tr>

                                    <tr>
                                        <td>3</td>
                                        <td>BI3468-Rakesh Rajput</td>
                                        <td>NA</td>
                                        <td>official </td>
                                        <td>Bhopal</td>
                                        <td>Indore</td>
                                        <td>12/02/2024 - 15/02/2024</td>
                                        <td>4</td>
                                        <td>Pending</td>
                                        <td>NA</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="ContentBody_dcp" style="display: none">
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>From Date</strong>
                                        <ul>
                                            <li>User will be able to select the Tour <strong>From Date</strong> in the Calander </li>
                                        </ul>
                                    </li>
                                    <li><strong>To Date </strong>
                                        <ul>
                                            <li>User will be able to select the Tour <strong>To Date</strong> From the Calander </li>
                                        </ul>
                                    </li>
                                    <li><strong>From (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the Tour Place <strong>From</strong> in the Dropdown </li>
                                        </ul>
                                    </li>
                                    <li><strong>To (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the Tour Place <strong>To</strong> in the Dropdown </li>
                                        </ul>
                                    </li>
                                    <li><strong>Remark</strong>
                                        <ul>
                                            <li>User will be able to Enter the <strong>Remark</strong> of Tour in Remark section</li>
                                        </ul>
                                    </li>
                                    <li><strong>Tour For (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Tour For</strong> From The Dropdown</li>
                                        </ul>
                                    </li>
                                    <li>
                                        <strong>Apply (Button)</strong>
                                        <ul>
                                            <li>User should be able to click on Apply button.</li>
                                            <li>On save button click form field should be validated. </li>
                                            <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?"  "Do you want to save this record?").</li>
                                            <li>If click on <strong>Yes</strong> – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                            <li>If click on <strong>NO</strong> the data will not be saved and will return to the same page. </li>
                                        </ul>
                                    </li>
                                    <li><strong>Clear (Button)</strong>
                                        <ul>
                                            <li>User should be able to click on Clear button.</li>
                                            <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel (Button)</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on the Excel button, showing the data will be export to Excel.</li>
                                        </ul>
                                    </li>
                                    <li><strong>PDF (Button)</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Searchbox (searchable box)</strong>
                                        <ul>
                                            <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Apply this Tour ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Tour Apply Successfully!',
                                timer: 2000
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
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

    <script>
        function div() {
            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';
            document.getElementById("show1").style.display = (document.getElementById("show1").style.display == 'none') ? 'block' : 'none';
            document.getElementById("btn2").style.display = (document.getElementById("btn2").style.display == 'block') ? 'none' : 'inline-block';
            document.getElementById("btn1").style.display = (document.getElementById("btn1").style.display == 'none') ? 'block' : 'none';
        }
    </script>
    <script>
        function div1() {
            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'none') ? 'block' : 'none';
            document.getElementById("show1").style.display = (document.getElementById("show1").style.display == 'block') ? 'none' : 'block';
            document.getElementById("btn2").style.display = (document.getElementById("btn2").style.display == 'none') ? 'block' : 'none';
            document.getElementById("btn1").style.display = (document.getElementById("btn1").style.display == 'block') ? 'none' : 'inline-block';
        }
    </script>

</asp:Content>
