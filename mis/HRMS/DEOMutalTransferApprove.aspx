<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DEOMutalTransferApprove.aspx.cs" Inherits="mis_HRMS_DEOMutalTransferApprove_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                            <a href="#DEOTransferApproval" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>DEO Transfer Approval</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>DEO Mutual Transfer Final Approval</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -2rem;">
            <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">Mutual Transfer Approval / पारस्परिक स्थानांतरण अनुमोदन<br />
                            </h4>
                        </div>
                    </div>
                </div>




                <%--<div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">जिला शिक्षा अधिकारी द्वारा पारस्परिक ट्रांसफर अनुमोदन</p>
        </div>
        <div class="col-md-4 align-self-center">


            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item "><a href="../Transaction/DEO_TransferApproval.aspx">DEO Transfer Approval</a></li>
                    <li class="breadcrumb-item active">DEO Mutual Transfer Final Approval</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>--%>
                <div class="card-body">
                    <%--<nav class="navbar navbar-expand-lg topbar ">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#"></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                    <li class="nav-item dropdown ">
                                        <a class="nav-link  text-white " href="../Transaction/DEO_TransferApproval.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                        <li class="nav-item dropdown ">
                                            <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Mutal Transfer Approval</b></a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="../HRMS/DEOMutalTransferApprove.aspx">Mutual Transfer Approve</a></li>

                                                <li><a class="dropdown-item" href="../HRMS/DEOMutalTransferPrint.aspx">Mutual Transfer Print</a></li>
                                            </ul>
                                        </li>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>--%>

                    <fieldset>
                        <legend>Mutual Transfer Final Approval / पारस्परिक स्थानांतरण का  अंतिम अनुमोदन</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Employee Unique-Id 
                                <br />
                                        कर्मचारी यूनिक आईडी</label>
                                    <input class="form-control" placeholder="Enter Employee Unique-Id " />
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()">Search</button>
                                    <a class="btn btn-outline-danger btn-border w-lg" href="DEOMutalTransferApprove.aspx">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="vacaniesDetail" style="display: none;">
                        <legend>Detail / विवरण</legend>
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
                                    <table class="table text-center table-bordered">
                                        <tr class="card-header">
                                            <th>Date <br />
                                                दिनांक</th>
                                            <th>Unique
                                        <br />
                                                युनिक आई.डी.</th>
                                            <th>Name And Designation 
                                        <br />
                                                नाम एवं पद</th>
                                            <th>Subject <br />
                                                विषय</th>
                                            <th>Working Institute And UDISE Code <br />
                                                कार्यरत संस्था एवं डाइस कोड</th>
                                            <th>Working District <br />
                                                कार्यरत जिला</th>
                                            <th>New Organization And UDICE Code <br />
                                                नवीन संस्था एवं डाइम कोड</th>
                                            <th>District Of New Posting 
                                        <br />
                                                नवीन पदस्थापना का जिला</th>
                                            <th>Application <br />
                                                आवेदन </th>
                                        </tr>
                                        <tr>
                                            <td>09/03/2024</td>
                                            <td>BT921</td>
                                            <td>Arjun Talwar / Teacher (UDT) </td>
                                            <td>Hindi</td>
                                            <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                            <td>Bhapal</td>
                                            <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                            <td>Rajgarh</td>
                                            <td rowspan="2" class="text-center"><a class="btn btn-warning mt-4" href="../Document/MutalTransfer.pdf" target="_blank">View</a></td>
                                        </tr>
                                        <tr>
                                            <td>09/03/2024</td>
                                            <td>BT899</td>
                                            <td>Kpil Patidar / Teacher (UDT) </td>
                                            <td>Hindi</td>
                                            <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                            <td>Rajgarh</td>
                                            <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                            <td>Bhapal</td>

                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <%--      <div class="row" id="btnprint" style="display: none;">
                <div class="col-md-12 text-center">

                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Approve</button>

                </div>



            </div>--%>
                    <div class="row" id="generateorder" style="display: none;">
                        <div class="col-md-12 text-center">
                            <%-- <button class="btn btn-success">GET DSC</button>--%>

                            <button type="button" class="btn btn-outline-success btn-border w-lg" data-bs-toggle="modal" data-bs-target="#staticBackdrop">GET DSC</button>
                        </div>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog ">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset>
                                        <legend>Varification / सत्यापन</legend>
                                        <div class="row">
                                            <label>OTP(one time Password)</label>
                                            <input class="form-control" placeholder="Enter Varification Code" />
                                        </div>
                                    </fieldset>
                                    <div class="modal-footer text-center">
                                        <button type="button" class="btn btn-outline-success btn-border w-lg" data-bs-dismiss="modal">Submit</button>
                                        <button type="button" class="btn btn-outline-warning btn-border w-lg" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
            document.getElementById("generateorder").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

