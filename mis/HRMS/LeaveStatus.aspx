<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LeaveStatus.aspx.cs" Inherits="mis_HRMS_LeaveStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style type="text/css">
        .square {
            height: 110px;
            width: 132px;
            background-color: #555;
        }

        #EmployeeDetails1 {
            display: none;
        }

        #LeaveStatus {
            display: none;
        }

        #showsavebtn {
            display: none;
        }

        #btnApproveDEO {
            display: none;
        }

        #note {
            color: red;
        }

        /* Style for the modal */
        #Editmodal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            /* width: 100%;
         height: 100%;*/
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            /* padding-top: 60px;*/
        }

        /* Style for the modal content */
        /* .modal-content {
         background-color: #fefefe;
         margin: 5% auto;
         padding: 20px;
         border: 1px solid #888;
         width: 80%;
     }*/

        /* Close button style */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }

        .checkmark {
            display: inline-block;
            width: 22px;
            height: 22px;
            -ms-transform: rotate(45deg); /* IE 9 */
            -webkit-transform: rotate(45deg); /* Chrome, Safari, Opera */
            transform: rotate(45deg);
        }

        .checkmark_stem {
            position: absolute;
            width: 3px;
            height: 9px;
            background-color: #ccc;
            left: 11px;
            top: 6px;
        }

        .checkmark_kick {
            position: absolute;
            width: 3px;
            height: 3px;
            background-color: #ccc;
            left: 8px;
            top: 12px;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
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
                        <li class="breadcrumb-item"><span>Leave Type</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Leave Status / लीव स्टेटस<br />
                            </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Employee Details / कर्मचारी विवरण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Employee Name /<br />कर्मचारी का नाम : </label><br />
                                <label>Shobhit Namdeo</label>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Department /<br />विभाग : </label><br />
                                <label>Physics</label>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Designation /<br />पद का नाम : </label><br />
                                <label>Teacher</label>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Office Location /<br />कार्यालय स्थान : </label><br />
                                <label>Bhopal</label>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Class /<br />कक्षा :</label><br />
                                <label>Claas-III</label>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">School Name /<br />स्कूल का नाम : </label><br />
                                <label>Carmel Convert Senior Secondary School</label>
                            </div>
                            <div class="col-md-3">
                                <label class="font-bold">Leave History /<br />लीव हिस्ट्री : </label><br />
                                <input id="btnLeaveDetails" type="button" name="button" value="Click here" class="btn btn-info" onclick="HideShow()" />
                            </div>
                        </div>
                        <hr />

                    </fieldset>
                    <fieldset id="EmployeeDetails1">
                        <legend>Leave History / लीव हिस्ट्री</legend>
                        <div>
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
                                        <table class="table">
                                            <tr>
                                                <th>Sr.No. /<br />सरल क्र.</th>
                                                <th>Year /<br />वर्ष</th>
                                                <th>From Date /<br />दिनांक से</th>
                                                <th>To Date /<br />दिनांक तक</th>
                                                <th>Supporting Document /<br />सहायक दस्तावेज</th>
                                                <th>Reason of Leave /<br />लीव का कारण</th>
                                                <th>Status /<br />स्टेटस</th>
                                                <th>Action (<b>Approve/Reject</b>)</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>2023</td>
                                                <td>04-03-2024</td>
                                                <td>05-03-2024</td>
                                                <td class="text-center"><a id="LinkButton3" runat="server" cssclass="btn view-but"><i class="fas fa-eye"></i></a></td>
                                                <td>For some important work</td>
                                                <td>
                                                    <label id="lblstatus">Pending</label>
                                                    <td>
                                                        <input id="btnview" type="button" name="button" value="View" onclick="ShowLeaveStatus()" class="btn btn-info" />
                                                        <%--   <input id="btnApprov" type="button" name="button" value="Approved" onclick="ShowApprovalPopup()" class="btn btn-success" />
                                        <input id="btnReject" type="button" name="button" value="Reject" onclick="ShowRejectionPopup()" class="btn btn-danger" />--%>
                                                        <%--<a href="ShowLeaveStatus()">View</a>--%>
                                                    </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </fieldset>
                    <%--  <fieldset>
                        <legend>Comment Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>

                                            <th id="tdh1">Principle</th>
                                            <th id="tdh2">Sankul Pracharya</th>
                                            <th id="tdh3">DEO</th>

                                            <th>Status</th>
                                            <th>Action(<b>Approve/Reject</b>)</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>

                                            <td id="tdh1a">For Bad Behaviour</td>
                                            <td id="tdh2a">For Bad Behaviour</td>
                                            <td id="tdh3a">For Bad Behaviour</td>

                                            <td>
                                                <label id="lblstatus1">Pending</label>
                                            <td>
                                                <input id="btnApprov" type="button" name="button" value="Approved" onclick="ShowApprovalPopup()" class="btn btn-success" />
                                                <input id="btnReject" type="button" name="button" value="Reject" onclick="ShowRejectionPopup()" class="btn btn-danger" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>--%>
                    <fieldset id="LeaveStatus">
                        <legend>Leave Status / लीव स्टेटस</legend>
                        <div>

                            <div class="row">
                                <div class="col-md-2 text-center">
                                    <%--<i class="fa fa-check-circle fa-8x fa-white" aria-hidden="true"></i>--%>
                                    <img src="../dist/images/RightMark.jpg" alt="Alternate Text" />
                                    <div class="text-center">
                                        <label id="status1">Leave Applied</label>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <label>Farward to Principal </label>
                                    <br />
                                    <hr width="150%" color="green" />

                                </div>
                                <div class="col-md-2 text-center ">
                                    <%--<i class="fa fa-check-circle fa-8x fa-white" aria-hidden="true"></i>--%>
                                    <img src="../dist/images/RightMark.jpg" alt="Alternate Text" />
                                    <div class="text-center">
                                        <label id="status2">Principal </label>
                                    </div>
                                </div>
                                <div class="col-md-1 text-center">
                                    <label>
                                        Pending from
                            <br />
                                        DEO
                                    </label>
                                    <br />
                                    <hr width="150%" color="green" />
                                    <label>Comment 1</label>
                                    <label>Date: 02/04/2024 </label>
                                    <label>Time:16:34 </label>
                                </div>
                                <div class="col-md-1 text-center ">
                                    <img src="../dist/images/lightgreencircle.png" style="height: 139px; width: 139px;" />
                                    <div class="text-center">
                                        <label id="status3">DEO</label>
                                    </div>
                                </div>
                                <div class="col-md-1 text-center">
                                    <label>
                                        Pending from
                            <br />
                                        DPI  
                                    </label>
                                    <br />
                                    <hr width="150%" color="green" />
                                    <label>Comment 2</label>
                                    <label>Date: 02/04/2024 </label>
                                    <label>Time:16:34 </label>

                                </div>
                                <div class="col-md-1 text-center ">
                                    <%--<i class="fa fa-check-circle fa-8x fa-white" aria-hidden="true"></i>--%>
                                    <img src="../dist/images/lightgreencircle.png" style="height: 139px; width: 139px;" />
                                    <div class="text-center">
                                        <label id="status4">DPI</label>
                                    </div>
                                </div>
                                <div class="col-md-1 text-center">
                                    <label>
                                        Pending from
                            <br />
                                        CPI 
                                    </label>
                                    <br />
                                    <hr width="150%" color="green" height="7px" style="background-color: #632772f7;" />
                                    <label>Comment 3</label>
                                    <label>Date: 02/04/2024 </label>
                                    <label>Time:16:34 </label>

                                </div>
                                <div class="col-md-1 text-center ">
                                    <%--<i class="fa fa-check-circle fa-8x fa-white" aria-hidden="true"></i>--%>
                                    <img src="../dist/images/lightgreencircle.png" style="height: 139px; width: 139px;" />
                                    <div class="text-center">
                                        <label id="status5">CPI</label>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script type="text/javascript">
        function HideShow() {
            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
        function ShowLeaveStatus() {
            var x = document.getElementById("LeaveStatus");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }


    </script>
</asp:Content>

