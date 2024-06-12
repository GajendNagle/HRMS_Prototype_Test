<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_AdministrativeTransferReport.aspx.cs" Inherits="mis_HRMS_Rpt_AdministrativeTransferReport" %>

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

        th {
            white-space: nowrap;
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
                            <a href="#AdministrativeLevelTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Administrative Level Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Transfer Report</span></li>
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
                            <h4 class="card-title">Transfer Report / स्थानांतरण रिपोर्ट<br />
                            </h4>
                        </div>
                    </div>
                </div>
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
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Transfer Process</b></a>
                                        <ul class="dropdown-menu">

                                            <li><a class="dropdown-item" href="../HRMS/Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                            <li><a class="dropdown-item" href="../HRMS/AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                            <li><a class="dropdown-item" href="../HRMS/AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order</a></li>
                                            <li><a class="dropdown-item" href="../HRMS/AdministrativePrintTransferOrder.aspx">Print Transfer Order</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-white " href="../HRMS/Trn_AdministrativePostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold">View Post Code With Vacancies</b></a>
                                    </li>
                                    <li class="nav-item dropdown ">
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Report</b></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_DistWiseCounting.aspx">District Wise Counting</a></li>
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_BlockWiseCounting.aspx">Block Wise Counting</a></li>
                                            <li><a class="dropdown-item" href="../HRMS/Rpt_AdministrativeTransferReport.aspx">Transfer Report</a></li>
                                        </ul>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />
                    <br />--%>
                    <fieldset>
                        <legend>Transfer Report / स्थानांतरण रिपोर्ट</legend>
                        <div class="row">

                            <%-- start my Code here --%>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        From Date /<br />
                                        दिनांक से<span style="color: red">*</span></label>
                                    <input type="date" class="form-control" id="txtDataOfFrom" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        To Date /<br />
                                        दिनांक तक<span style="color: red">*</span></label>
                                    <input type="date" class="form-control" id="txtDataOfTo" />
                                </div>
                            </div>
                            <%-- end my Code here --%>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Transfer Status /<br />
                                        स्थानांतरण स्थिति<span style="color: red">*</span></label>
                                    <select class="form-control select2" id="ddlApprove">
                                        <option value="--Select--">--Select--</option>
                                        <option value="0">All</option>
                                        <option value="1">Approve</option>
                                        <option value="2">Pending</option>
                                        <option value="3">Reject</option>
                                    </select>
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class=" Alert-Save btn btn-outline-success btn-border w-lg" onclick="showhide()">Search</button>
                                    <a href="Rpt_TransferReport.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="Approve">
                        <fieldset>
                            <legend>Approve Details / स्वीकृत विवरण </legend>

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
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr>
                                                    <th rowspan="2">Sr.No. /<br />
                                                        सरल क्र</th>
                                                    <th rowspan="2">Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th rowspan="2">Employee Name /<br />
                                                        कर्मचारी का नाम</th>
                                                    <th rowspan="2">Employee Designation /<br />
                                                        कर्मचारी का पदनाम</th>
                                                    <th rowspan="2">Employee Department /<br />
                                                        कर्मचारी विभाग</th>
                                                    <th rowspan="2">Employee Subject /<br />
                                                        कर्मचारी का विषय</th>
                                                    <th colspan="5">Current Location /<br />
                                                        वर्तमान स्थान</th>
                                                    <th colspan="5">Preference Location /<br />
                                                        वरीयता स्थान </th>
                                                    <th rowspan="2">Status /<br />
                                                        स्थिति</th>
                                                </tr>

                                                <tr>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Posted From /<br />
                                                        से पोस्ट किया गया</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Reason For Transfer /<br />
                                                        स्थानांतरण का कारण</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                </tr>
                                            </thead>
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
                            <legend>Pending Details / लंबित विवरण</legend>
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
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr>
                                                    <th rowspan="2">Sr.No. /<br />
                                                        सरल क्र</th>
                                                    <th rowspan="2">Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th rowspan="2">Employee Name /<br />
                                                        कर्मचारी का नाम</th>
                                                    <th rowspan="2">Employee Designation /<br />
                                                        कर्मचारी का पदनाम</th>
                                                    <th rowspan="2">Employee Department /<br />
                                                        कर्मचारी विभाग</th>
                                                    <th rowspan="2">Employee Subject /<br />
                                                        कर्मचारी का विषय</th>
                                                    <th colspan="5">Current Location /<br />
                                                        वर्तमान स्थान</th>
                                                    <th colspan="5">Preference Location /<br />
                                                        वरीयता स्थान </th>
                                                    <th rowspan="2">Status /<br />
                                                        स्थिति</th>
                                                </tr>

                                                <tr>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Posted From /<br />
                                                        से पोस्ट किया गया</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Reason For Transfer /<br />
                                                        स्थानांतरण का कारण</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                </tr>
                                            </thead>
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
                            <legend>Reject Details / अस्वीकृत विवरण</legend>

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
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr>
                                                    <th rowspan="2">Sr.No. /<br />
                                                        सरल क्र</th>
                                                    <th rowspan="2">Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th rowspan="2">Employee Name /<br />
                                                        कर्मचारी का नाम</th>
                                                    <th rowspan="2">Employee Designation /<br />
                                                        कर्मचारी का पदनाम</th>
                                                    <th rowspan="2">Employee Department /<br />
                                                        कर्मचारी विभाग</th>
                                                    <th rowspan="2">Employee Subject /<br />
                                                        कर्मचारी का विषय</th>
                                                    <th colspan="5">Current Location /<br />
                                                        वर्तमान स्थान</th>
                                                    <th colspan="5">Preference Location /<br />
                                                        वरीयता स्थान </th>
                                                    <th rowspan="2">Status /<br />
                                                        स्थिति</th>
                                                </tr>

                                                <tr>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Posted From /<br />
                                                        से पोस्ट किया गया</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Reason For Transfer /<br />
                                                        स्थानांतरण का कारण</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                </tr>
                                            </thead>
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
                            <legend>All Details / सभी विवरण</legend>
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
                                        <table class="table table-bordered text-center ">
                                            <thead>
                                                <tr>
                                                    <th rowspan="2">Sr.No. /<br />
                                                        सरल क्र</th>
                                                    <th rowspan="2">Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th rowspan="2">Employee Name /<br />
                                                        कर्मचारी का नाम</th>
                                                    <th rowspan="2">Employee Designation /<br />
                                                        कर्मचारी का पदनाम</th>
                                                    <th rowspan="2">Employee Department /<br />
                                                        कर्मचारी विभाग</th>
                                                    <th rowspan="2">Employee Subject /<br />
                                                        कर्मचारी का विषय</th>
                                                    <th colspan="5">Current Location /<br />
                                                        वर्तमान स्थान</th>
                                                    <th colspan="5">Preference Location /<br />
                                                        वरीयता स्थान </th>
                                                    <th rowspan="2">Status /<br />
                                                        स्थिति</th>
                                                </tr>

                                                <tr>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Posted From /<br />
                                                        से पोस्ट किया गया</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                    <th>Office Type /<br />
                                                        कार्यालय का प्रकार</th>
                                                    <th>Reason For Transfer /<br />
                                                        स्थानांतरण का कारण</th>
                                                    <th>District /<br />
                                                        जिला</th>
                                                    <th>Block /<br />
                                                        विकासखंड</th>
                                                    <th>Sankul Code /<br />
                                                        संकुल कोड</th>
                                                </tr>
                                            </thead>
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>


