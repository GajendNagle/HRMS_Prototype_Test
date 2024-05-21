<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpTourApply.aspx.cs" Inherits="mis_HRMS_EmpTourApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
    <div class="content-wrapper">
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

                                        <a class="nav-link  text-white " href="EmpTourApply.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Tour Apply</b></a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />

                    <fieldset>
                        <legend>Tour Apply</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Code / Name<span style="color: red"> *</span></label>
                                    <asp:TextBox runat="server" placeholder="Enter Your Name" CssClass="form-control" />


                                    <%-- <select class="form-control select2">
                                        <option value=">--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Bhopal">Dewas</option>
                                        <option value="Gwalior">Gwalior</option>
                                    </select>--%>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tour Type<span style="color: red"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <option value="1">Official</option>
                                        <option value="2">Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tour Starts From<span style="color: red"> *</span></label>
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
                                    <label>Tour Ends At<span style="color: red"> *</span></label>
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
                                    <label>From Date<span style="color: red;"> *</span></label>
                                    <input id="Fromdate" type="date" class="form-control" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>To Date<span style="color: red"> *</span></label>
                                    <input id="Todate" type="date" class="form-control" />
                                </div>
                            </div>
                            <%--    <div class="col-md-6">
                                <div class="form-group">
                                    <label>Remark</label>
                                    <textarea class="form-control" rows="1" style="resize: vertical"></textarea>
                                </div>
                            </div>--%>
                            <%--<div class="col-md-3">
                                <div class="form-group">
                                    <label>From<span style="color: red"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=">--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Bhopal">Dewas</option>
                                        <option value="Gwalior">Gwalior</option>
                                    </select>
                                </div>
                            </div>--%>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No. of Days<span style="color: red"> *</span></label>
                                    <asp:TextBox placeholder="Enter No. Of Days" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Tour Purpose</label>
                                    <textarea class="form-control" rows="2" style="resize: vertical ;"   placeholder="Enter Your Tour Detail"></textarea>
                                </div>
                            </div>
                           <%-- <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tour For<span style="color: red"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=">--Select--">--Select--</option>
                                        <option value="Official">Official</option>
                                    </select>
                                </div>
                            </div>--%>
                            <div class="col-md-1 mt-5">
                                <div class="form-group">
                                    <button type="button" class="btn btn-success btn-block  btn-rounded Alert-Save " onclick="myFunction()">Apply</button>
                                </div>
                            </div>
                            <div class="col-md-1 mt-5">
                                <div class="form-group">
                                    <a href="EmpTourApply.aspx" class="btn btn-danger btn-block  btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="show">
                        <legend>Tour Detail</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="table-responsive">
                                <table class="table" id="myTable">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Employee Code/Name</th>
                                        <th>Tour Type</th>
                                        <th>From Date</th>
                                        <th>To Date</th>
                                        <th>Tour Starts From</th>
                                        <th>Tour Ends At</th>
                                        <th>Total Days</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>BI3468-Suresh Bamniya</td>
                                        <td>official </td>
                                        <td>10/10/2023</td>
                                        <td>12/10/2023</td>
                                        <td>Bhopal</td>
                                        <td>Indore</td>
                                        <td>3</td>
                                    </tr>
                                    <%--<tr>
                                        <td>2</td>
                                        <td>AI8857-Ajay Mishra</td>
                                        <td>official </td>
                                        <td>14/10/2023</td>
                                        <td>15/10/2023</td>
                                        <td>Indore</td>
                                        <td>Gwalior</td>
                                        <td>2</td>
                                    </tr>--%>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="ContentBody_dcp">
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

</asp:Content>
