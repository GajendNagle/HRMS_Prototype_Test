<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="~/mis/HRMS/LeaveApplicantDetails.aspx.cs" Inherits="mis_HRMS_LeaveApplicantDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <%--<div class="row page-titles mb-4">
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
    </div>--%>
    <div class="row">
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
                            <a href="#LeaveProcess" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Leave Process</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Leave Applicant Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Leave Approval/Farward/Reject<br />
                        छुट्टी का अनुमोदन/प्रस्ताव/अग्रेषित/अस्वीकृत</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Apply Leave / छुट्टी के लिए आवेदन करें</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Leave Applicant<br />
                                आवेदक<span style="color: red">*</span></label>
                            <select id="ddlApplicant" class="form-control select2" onchange="ShowComment()">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Teacher</option>
                                <option value="2">HM/Principal</option>
                                <option value="3">Sankul Pracharya</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="HideShow()" class="Alert-Save btn w-lg btn-success btn-border">Submit</button>
                            <a href="LeaveApplicantDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                    <%--</div>
                <div class="row justify-content-center">--%>
                    <%-- <div class="col-md-3 mt-4 ">
                        <div class="form-group">
                            <button type="button" class=" Alert-Save btn btn-success btn-rounded" onclick="HideShow()">Submit</button>
                            <a href="LeaveApplicantDetails.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                </div>
            </fieldset>
            <div id="EmployeeDetails1">
                <fieldset id="show">
                    <legend>Leave Details</legend>
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
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.<br />सरल क्र.</th>
                                        <th>Year<br />वर्ष </th>
                                        <th>From Date<br />दिनांक से </th>
                                        <th>To Date<br />दिनांक तक </th>
                                        <th>Leave Approval Authority<br />छुट्टी स्वीकृति प्राधिकरण</th>
                                        <th>Leave Type<br />छुट्टी का प्रकार</th>
                                        <th>No. of Days<br />दिनों की संख्या</th>
                                        <th>Supporting Document<br />सहायक दस्तावेज़</th>
                                        <th>Reason of Leave<br />छुट्टी का कारण</th>
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

