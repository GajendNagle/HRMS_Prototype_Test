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
    </style>
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
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                        <label>
                            Employee Name
                                    <br />
                            कर्मचारी का नाम :
                        </label>
                        <br />
                        <asp:TextBox runat="server" Placeholder="Shobhit Namdeo" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                        <label>
                            Department
                                    <br />
                            विभाग :
                        </label>
                        <br />
                        <asp:TextBox runat="server" Placeholder="Physics" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                        <label>
                            Designation
                                    <br />
                            पद का नाम :
                        </label>
                        <br />
                        <asp:TextBox runat="server" Placeholder="Teacher" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                        <label>
                            Office Location
                                    <br />
                            कार्यालय स्थान :
                        </label>
                        <br />
                        <asp:TextBox runat="server" Placeholder="Bhopal" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                        <label>
                            Class
                                    <br />
                            कक्षा :</label><br />
                        <asp:TextBox runat="server" Placeholder="Claas-III" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                        <label>
                            School Name
                                    <br />
                            स्कूल का नाम :
                        </label>
                        <br />
                        <asp:TextBox runat="server" Placeholder="Girls.High.Secondary School" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-12 mt-3" id="btnSave">
                        <hr />
                        <div class="form-group">
                            <input id="btnLeaveDetails" type="button" name="button" value="Leave History " class="btn w-lg btn-success btn-border" onclick="HideShow()" />
                            <%--    <asp:Button runat="server" class="btn w-lg btn-success btn-border" Text="Search" OnClick="btnSubmit_Click" ID="btnSubmit" />--%>
                            <a class="btn btn-outline-danger w-lg btn-border" href="LeaveStatus.aspx">Clear</a>
                        </div>
                    </div>

                    <%--<div class="col-md-3">
                                <label>Leave History <br />लीव हिस्ट्री : </label><br />
                                <input id="btnLeaveDetails" type="button" name="button" value="Click here" class="btn btn-info" onclick="HideShow()" />
                            </div>--%>
                </div>


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
                                        <th>Sr.No.
                                                    <br />
                                            सरल क्र.</th>
                                        <th>Year
                                                    <br />
                                            वर्ष</th>
                                        <th>From Date
                                                    <br />
                                            दिनांक से</th>
                                        <th>To Date
                                                    <br />
                                            दिनांक तक</th>
                                        <th>Supporting Document
                                                    <br />
                                            सहायक दस्तावेज</th>
                                        <th>Reason of Leave
                                                    <br />
                                            लीव का कारण</th>
                                        <th>Status
                                                    <br />
                                            स्टेटस</th>
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
                                            <input id="btnview" type="button" name="button" value="View" onclick="ShowLeaveStatus()" class="btn btn-info ml-5" />
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

            <fieldset id="LeaveStatus">
                <legend>Leave Status / लीव स्टेटस</legend>
                <div class="row align-items-center">
                    <div class="col-lg text-center">
                        <div>
                            <img src="../dist/images/RightMark.jpg" class="img-fluid" style="max-height: 166px;" />
                        </div>
                        <label class="text-center">Leave Applied</label>
                    </div>
                    <div class="col-lg text-center">
                        <label>Farward to Principal </label>
                        <hr class="m-0" />
                        <label>Comment 1 Date: 02/04/2024 Time:16:34</label>
                    </div>

                    <div class="col-lg text-center">
                        <div>
                            <img src="../dist/images/RightMark.jpg" class="img-fluid" style="max-height: 166px;" />
                        </div>
                        <label>Principal</label>
                    </div>
                    <div class="col-lg text-center">
                        <label>Pending from DEO </label>
                        <hr class="m-0" />
                        <label>Comment 2 Date: 02/04/2024 Time:16:34 </label>
                    </div>
                    <div class="col-lg text-center">
                        <div>
                            <img src="../dist/images/lightgreencircle.png" class="img-fluid" style="max-height: 166px;" />
                        </div>
                        <label>DEO</label>
                    </div>

                    <div class="col-lg text-center">
                        <label>Pending from DPI</label>
                        <hr class="m-0" />
                        <label>Comment 3 Date: 02/04/2024 Time:16:34</label>
                    </div>

                    <div class="col-lg text-center">
                        <div>
                            <img src="../dist/images/lightgreencircle.png" class="img-fluid" style="max-height: 166px;" />
                        </div>
                        <label>DPI</label>

                    </div>
                    <div class="col-lg text-center">
                        <label>Pending from CPI</label>
                        <hr class="m-0" />
                        <label>Comment 4 Date: 02/04/2024 Time:16:34</label>
                    </div>
                    <div class="col-lg text-center">
                        <div>
                            <img src="../dist/images/lightgreencircle.png" class="img-fluid" style="max-height: 166px" />
                        </div>
                        <label>CPI</label>
                    </div>
                </div>




            </fieldset>
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

