<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="~/mis/HRMS/LeaveApplicantDetails.aspx.cs" Inherits="mis_HRMS_LeaveApplicantDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Leave Approval/Farward/Reject</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">Leave Applicant Details</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Apply Leave</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Leave Applicant<span style="color: red">*</span></label>
                            <select id="ddlApplicant" class="form-control select2" onchange="ShowComment()">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Teacher</option>
                                <option value="2">HM/Principal</option>
                                <option value="3">Sankul Pracharya</option>

                            </select>
                        </div>
                    </div>

                    <%--</div>
                <div class="row justify-content-center">--%>
                    <div class="col-md-3 mt-4 ">
                        <div class="form-group">
                            <button type="button" class=" Alert-Save btn btn-success btn-rounded" onclick="HideShow()">Submit</button>
                            <a href="LeaveApplicantDetails.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="EmployeeDetails1">
                <fieldset id="show">
                    <legend>Leave Details</legend>
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
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Year</th>
                                        <th>From Date</th>
                                        <th>To Date</th>
                                        <th>Leave Approval Authority</th>
                                        <th>Leave Type</th>
                                        <th>No. of Days</th>
                                        <th>Supporting Document</th>
                                        <th>Reason of Leave</th>
                                        <%--<th>Comment By</th>
                                        <th>Comment</th>--%>
                                        <%--  <th>Status</th>--%>
                                        <%--                                        <th>Action(<b>Approve/Reject</b>)</th>--%>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>2023</td>
                                        <td>04-12-2023</td>
                                        <td>05-12-2023</td>
                                        <td>Ashutosh Sharma - 11265</td>
                                        <td>Casual</td>
                                        <td>2</td>
                                        <td class="text-center"><a id="LinkButton3" runat="server" cssclass="btn view-but"><i class="fas fa-eye"></i></a></td>
                                        <td>For some important work</td>
                                        <%--<td>Principle</td>
                                        <td>For Bad Behaviour</td>--%>
                                        <%--     <td>
                                            <label id="lblstatus">Pending</label>
                                        </td>--%>
                                        <%--    <td>
                                                    <input id="btnApprov" type="button" name="button" value="Approved" onclick="ShowApprovalPopup()" class="btn btn-success" />
                                            <input id="btnReject" type="button" name="button" value="Reject" onclick="ShowRejectionPopup()" class="btn btn-danger" />
                                        </td>--%>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
               

            </div>
            <!--Description-->
            <%--<fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">

                            <li><strong>Leave Type </strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Leave Type </strong>. Data popolate from Leave Type Master</li>
                                </ul>
                            </li>
                            <li><strong>Year</strong>
                                <ul>
                                    <li>User will be able to Select <strong>Year </strong>from Dropdown. Data popolate from Year Master</li>
                                </ul>
                            </li>
                            <li><strong>From Date</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>From Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>To Date</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>To Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>Leave Approval Authority</strong>
                                <ul>
                                    <li>User will be able to Select the <strong>Leave Approval Authority</strong> from Dropdown. Data popolate from Department wise Leave Approval Master</li>
                                </ul>
                            </li>
                            <li><strong>Attach Supporting Document</strong>
                                <ul>
                                    <li>User will be able to Upload the <strong>Document</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Reason Of Leave</strong>
                                <ul>
                                    <li>User will be able to enter the <strong>Reason Of Leave</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Save (Button)</strong>
                                <ul>
                                    <li>User should be able to click on save button.</li>
                                    <li>Click on save button form all mandatory filed should be validate in process.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – record will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the record will not be saved and will return to the same page.</li>
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
            </fieldset>--%>
            <!-- End Description -->

        </div>
    </div>
    <div class="modal" tabindex="-1" role="dialog" id="ApprovalModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Approval Remark</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Remark</label>
                            <asp:TextBox ID="TextBox2" placeholder="Enter Approval Remark" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <%-- <button type="button" class="btn btn-success Alert-ApprovelT" onclientclick="return false;" onclick="()" data-bs-dismiss="modal">Forward To DEO</button>--%>
                    <button onclientclick="return false;" type="button" onclick="Approved()" class="Alert-ApproveT btn btn-success " data-bs-dismiss="modal">Forward To HO</button>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1" role="dialog" id="RejectionModel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Rejection Remark</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Remark</label>
                            <asp:TextBox ID="TextBox1" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <%-- <button type="button" class="btn btn-success Alert-ApprovelT" onclientclick="return false;" onclick="()" data-bs-dismiss="modal">Forward To DEO</button>--%>
                    <button onclientclick="return false;" type="button" onclick="Rejected()" class="Alert-ApproveT btn btn-success " data-bs-dismiss="modal">Forward To HO</button>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>

        function Approved() {
            $("#lblstatus").html("Approved");
            $("#btnApprov").hide();
            $("#btnReject").hide();
        }
        function Rejected() {
            $("#lblstatus").html("Rejected");
            $("#btnApprov").hide();
            $("#btnReject").hide();
        }
        function ShowApprovalPopup() {
            $("#ApprovalModal").modal("show");
        }
        function ShowRejectionPopup() {
            $("#RejectionModel").modal("show");
        }
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }

        function ShowComment() {

            var ddlApplicant = document.getElementById("ddlApplicant");
            var tdh1 = document.getElementById("tdh1");
            var tdh2 = document.getElementById("tdh2");
        
            var tdh1a = document.getElementById("tdh1a");
            var tdh2a = document.getElementById("tdh2a");

            if (ddlApplicant.value === "2") {
                tdh1.style.display = "none";
                tdh1a.style.display = "none";
              
            }
          
            if (ddlApplicant.value === "3") {
                tdh2.style.display = "none";
                tdh2a.style.display = "none";

            }
            else {
              
            }
        }



    </script>
</asp:Content>

