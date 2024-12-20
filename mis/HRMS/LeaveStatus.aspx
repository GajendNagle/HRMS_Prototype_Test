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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Leave Status</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">Leave Details</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <fieldset>
            <legend>Employee Details</legend>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-3 mt-2 mb-2">
                        <label class="font-bold">Employee Name : </label>
                        <label>Shobhit Namdeo</label>
                    </div>
                    <div class="col-md-3 mt-2 mb-2">
                        <label class="font-bold">Department : </label>
                        <label>Physics</label>
                    </div>
                    <div class="col-md-3 mt-2 mb-2">
                        <label class="font-bold">Designation : </label>
                        <label>Teacher</label>
                    </div>
                    <div class="col-md-3 mt-2 mb-2">
                        <label class="font-bold">Office Location : </label>
                        <label>Bhopal</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 mt-2 mb-2">
                        <label class="font-bold">Class : </label>
                        <label>Claas-III</label>
                    </div>
                    <div class="col-md-3 mt-2 mb-2">
                        <label class="font-bold">School Name : </label>
                        <label>Carmel Convert Senior Secondary School</label>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Leave History : </label>
                        <input id="btnLeaveDetails" type="button" name="button" value="Click here" class="btn btn-info" onclick="HideShow()" />
                    </div>
                </div>
                <hr />
            </div>
        </fieldset>
        <fieldset id="EmployeeDetails1">
            <legend>Leave History</legend>
            <div>
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
                                    <th>Supporting Document</th>
                                    <th>Reason of Leave</th>
                                    <th>Status</th>
                                    <th>Action(<b>Approve/Reject</b>)</th>
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
            <legend>Leave Status</legend>
            <div>

                <div class="row">
                    <div class="col-md-1 text-center">
                        <%--<i class="fa fa-check-circle fa-8x fa-white" aria-hidden="true"></i>--%>
                        <img src="../dist/images/RightMark.jpg" alt="Alternate Text" />
                        <div class="text-center">
                            <label id="status1">Leave Applied</label>
                        </div>
                    </div>
                    <div class="col-sm-1 text-center">
                        <label>Farward to Principal </label>
                        <br />
                        <hr width="150%" color="green" />

                    </div>
                    <div class="col-md-1 text-center ">
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
                        <img src="../dist/images/lightgreencircle.png" style="height: 159px; width: 159px;" />
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
                        <img src="../dist/images/lightgreencircle.png" style="height: 159px; width: 159px;" />
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
                        <img src="../dist/images/lightgreencircle.png" style="height: 159px; width: 159px;" />
                        <div class="text-center">
                            <label id="status5">CPI</label>
                        </div>
                    </div>

                </div>
            </div>
        </fieldset>
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

