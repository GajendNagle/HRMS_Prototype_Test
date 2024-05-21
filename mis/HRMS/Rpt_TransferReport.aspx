<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_TransferReport.aspx.cs" Inherits="mis_HRMS_Rpt_TransferReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #Approve {
            display: none;
        }

        #Pending {
            display: none;
        }

        #Reject {
            display: none;
        }

        #All {
            display: none;
        }
    </style>
    <script> 
        function showhide() {
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
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Transfer Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Reports" title="click to go on">Report</a></li>
                    <li class="breadcrumb-item active">Transfer Report</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Transfer Report</legend>
                <div class="row">

                    <%-- start my Code here --%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" id="txtDataOfFrom" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" id="txtDataOfTo" />
                        </div>
                    </div>
                    <%-- end my Code here --%>



                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Transfer Status<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlApprove">
                                <option value="--Select--">--Select--</option>
                                <option value="0">All</option>
                                <option value="1">Approve</option>
                                <option value="2">Pending</option>
                                <option value="3">Reject</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" class=" Alert-Save btn btn-success btn-rounded" onclick="showhide()">Search</button>
                            <a href="Rpt_TransferReport.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="Approve">
                <fieldset>
                    <legend>Approve Details</legend>

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
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Office Type</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">Employee Department</th>
                                        <th rowspan="2">Employee Subject</th>
                                        <th colspan="5">Current Location</th>
                                        <th colspan="5">Preference Location</th>
                                        <th rowspan="2">Status</th>
                                    </tr>
                                    <tr>
                                        <th>Office Type</th>
                                        <th>Posted From</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                        <th>Office Type</th>
                                        <th>Reason For Transfer</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Ashok Kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>21-05-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Shiv Sharan</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>18-06-22</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="Pending">
                <fieldset>
                    <legend>Pending Details</legend>

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
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Office Type</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">Employee Department</th>
                                        <th rowspan="2">Employee Subject</th>
                                        <th colspan="5">Current Location</th>
                                        <th colspan="5">Preference Location</th>
                                        <th rowspan="2">Status</th>
                                    </tr>
                                    <tr>
                                        <th>Office Type</th>
                                        <th>Posted From</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                        <th>Office Type</th>
                                        <th>Reason For Transfer</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Rajan Singh</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>25-02-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Lokendra kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>23-08-23</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Pending</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="Reject">
                <fieldset>
                    <legend>Reject Details</legend>

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
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Office Type</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">Employee Department</th>
                                        <th rowspan="2">Employee Subject</th>
                                        <th colspan="5">Current Location</th>
                                        <th colspan="5">Preference Location</th>
                                        <th rowspan="2">Status</th>
                                    </tr>
                                    <tr>
                                        <th>Office Type</th>
                                        <th>Posted From</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                        <th>Office Type</th>
                                        <th>Reason For Transfer</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Aman Deep Singh</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>19-09-22</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Reject</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Abhishek Rajput</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>16-01-23</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Reject</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="All">
                <fieldset>
                    <legend>All Details</legend>
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center ">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Office Type</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">Employee Department</th>
                                        <th rowspan="2">Employee Subject</th>
                                        <th colspan="5">Current Location</th>
                                        <th colspan="5">Preference Location</th>
                                        <th rowspan="2">Status</th>
                                    </tr>
                                    <tr>
                                        <th>Office Type</th>
                                        <th>Posted From</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                        <th>Office Type</th>
                                        <th>Reason For Transfer</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Aman Deep Singh</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>19-09-22</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Reject</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Abhishek Rajput</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>16-01-23</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Reject</td>
                                    </tr>
                                    <tr>
                                        <th>3</th>
                                        <td>Head Office</td>
                                        <td>Ashok Kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>21-05-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                    <tr>
                                        <th>4</th>
                                        <td>Head Office</td>
                                        <td>Shiv Sharan</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>18-06-22</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                    <tr>
                                        <th>5</th>
                                        <td>Head Office</td>
                                        <td>Rajan Singh</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>25-02-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <th>6</th>
                                        <td>Head Office</td>
                                        <td>Lokendra kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>23-08-23</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Pending</td>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <!--Description-->
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Transfer Status</strong>
                                <ul>
                                    <li>User will be able to Select <strong>Transfer Status </strong>from Dropdown</li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>After clicking on Search button the details will show on the screen according to the selected field..</li>
                                </ul>
                            </li>

                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User will be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
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
                                    <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </fieldset>
            <!-- End Description -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

