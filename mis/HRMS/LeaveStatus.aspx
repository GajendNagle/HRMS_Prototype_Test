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
                                <asp:TextBox runat="server" Placeholder="Shobhit Namdeo" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Department /<br />विभाग : </label><br />
                                <asp:TextBox runat="server" Placeholder="Physics" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Designation /<br />पद का नाम : </label><br />
                                <asp:TextBox runat="server" Placeholder="Teacher" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Office Location /<br />कार्यालय स्थान : </label><br />
                                <asp:TextBox runat="server" Placeholder="Bhopal" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-3 my-2">
                                <label class="font-bold">Class /<br />कक्षा :</label><br />
                                <asp:TextBox runat="server" Placeholder="Claas-III" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3 my-2">
                                <label class="font-bold">School Name /<br />स्कूल का नाम : </label><br />
                                <asp:TextBox runat="server" Placeholder="Girls.High.Secondary School" CssClass="form-control"></asp:TextBox>
                            </div>
                             <hr />
 <div class="col-md-12" runat="server" id="btnSave">
     <div class="form-group">
          <input id="btnLeaveDetails"  type="button" name="button" value="Leave History " class="btn w-lg btn-success btn-border" onclick="HideShow()" />
     <%--    <asp:Button runat="server" class="btn w-lg btn-success btn-border" Text="Search" OnClick="btnSubmit_Click" ID="btnSubmit" />--%>
         <a class="btn btn-outline-danger w-lg btn-border" href="LeaveStatus.aspx">Clear</a>
     </div>
 </div>

                            <%--<div class="col-md-3">
                                <label class="font-bold">Leave History /<br />लीव हिस्ट्री : </label><br />
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
                        
                            <div class="row align-items-end" style="font-size:5px !important;">
                                <div class="col-md-1 text-center">
                                    <%--<i class="fa fa-check-circle fa-8x fa-white" aria-hidden="true"></i>--%>
                                    <img src="../dist/images/RightMark.jpg" alt="Alternate Text"   style="position:relative; right:20px; width:130px;" />
                                    <div class="text-center"  style="position:relative; right:5px; white-space:nowrap;">
                                        <label id="status1">Leave Applied</label>
                                    </div>
                                </div>
                                <div class="col-md-2 ml-4 ">
                                    <label>Farward to Principal </label>
                                    <br />
                              <hr class="w-50"  />

                                </div>
                                <div class="col-md-2 text-center ">
                                    <%--<i class="fa fa-check-circle fa-8x fa-white" aria-hidden="true"></i>--%>
                                    <img src="../dist/images/RightMark.jpg" alt="Alternate Text"  style="position:relative; right:70px; width:130px;" />
                                    <div class="text-center"  style ="position:relative; right:65px;">
                                        <label id="status2">Principal </label>
                                    </div>

                                      <div class="col-md-1" style="white-space:nowrap; position:relative;bottom:
    200px; left:100px;">
   
  
   

  </div>
                                </div>
                              <div class="col-md-1 text-center fs-6" style="white-space:nowrap; position:relative; top:10px; right:120px;" >
                                    <label>
                                        Pending <br />from DEO
                                               <hr  color="green"/>

                                  Comment 1<br />
                                   Date: 02/04/2024 <br />
                                   Time:16:34 </label>
                                </div>
                               <div class="col-md-2 text-center ">
                                    <img src="../dist/images/lightgreencircle.png" style="height: 120px; width:120px; position:relative; right:90px;" />
                                    <div class="text-center" style="position:relative;  right:90px;">
                                        <label id="status3">DEO</label>
                                    </div>
                                </div>
                                <div class="col-md-1 text-center" style="white-space:nowrap; position:relative; top:10px; right:150px;">
                                    <label>
                                        pending <br /> from
                           
                                        dpi  
                                 
<hr class="w-50 ml-4" />
                                   comment 2<br />
                                   date: 02/04/2024 <br />
                                   time:16:34 </label>

                                </div>
                                <div class="col-md-2 text-center ">
                                   
                                   <img src="../dist/images/lightgreencircle.png" style="height: 120px; width: 120px; position:relative; right:120px;" />
                                    <div class="text-center" style="position:relative; bottom:80px; right:120px;">
                                        <label id="status4">DPI</label>
                                    </div>
                                </div>
                                 <div class="col-md-1 text-center fs-6" style="position:relative; left:750PX; bottom:150px; white-space:nowrap">
                                                                      <label>
                                        pending  <br /> from
                          
                                        CPI  
                                 
<hr width="150%" color="green" />
                                   comment 3<br />
                                   date: 02/04/2024 <br />
                                   time:16:34 </label>

                                </div>
                                <div class="col-md- text-center ">
                                 
                                   <img src="../dist/images/lightgreencircle.png" style="height: 120px; width: 120px; position:relative; left:700px;" />
                                    <div class="text-center">
                                        <label id="status5">CPI</label>
                                    </div>
                                </div>

                            </div>
                        
                
                    </fieldset>
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

