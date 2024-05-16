<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="9thClassAllStudent.aspx.cs" Inherits="mis_Scheme_9thClassAllStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">All Students in 9th Class
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Free Cycle Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="9thClassAllStudent.aspx" title="click to go on">All Students in 9th Class</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg navbar-dark topbar">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link text-white " role="button" aria-expanded="false">
                                        <b class="font-16 font-bold"><i class="fa fa-home"></i></b>
                                    </a>
                                </li>
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link  text-white" role="button" aria-expanded="false">
                                        <b class="font-16 font-bold">Admin</b>
                                    </a>
                                </li>
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">Merchants Registrations</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="MerchantRegistration.aspx">Register Merchant</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">CYCLE 9TH</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item">Identify Students Eligible for Cycle</a></li>
                                        <li><a class="dropdown-item">Cycle Distribution for Verified Student</a></li>
                                        <li><a class="dropdown-item">Disqualify Students for Eligiblity of Cycle</a></li>
                                        <li><a class="dropdown-item" href="9thClassAllStudent.aspx">All Students in 9th Class</a></li>
                                        <li><a class="dropdown-item" href="9thClassCycleSelectionStudent.aspx">9th Class Students Selected for Cycle Distribution</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">CYCLE 6TH</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="6thClassAllStudent.aspx">All Students in 6th Class</a></li>
                                        <li><a class="dropdown-item" href="6thClassCycleSelectionStudent.aspx">6th Class Students Selected for Cycle Distribution</a></li>
                                    </ul>
                                </li>
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">HS/ HSS Teachers Cycle 9th</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item">Identify eligible students </a></li>
                                        <li><a class="dropdown-item">Identify NOT eligible students</a></li>
                                        <li><a class="dropdown-item">All Students for 9th class </a></li>
                                        <li><a class="dropdown-item">Update Cycle Distribution Details</a></li>
                                        <li><a class="dropdown-item">Students Selected for Cycles </a></li>
                                        <li><a class="dropdown-item">District-wise Eligible and Verify Status</a></li>
                                        <li><a class="dropdown-item">List of Class 9th Students those are Eligible for Cycle </a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">MS Teachers Cycle 6th</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item">Identify eligible students </a></li>
                                        <li><a class="dropdown-item">Identify NOT eligible students</a></li>
                                        <li><a class="dropdown-item">All Students for 6th class</a></li>
                                        <li><a class="dropdown-item">Cycle Distribution for Student</a></li>
                                        <li><a class="dropdown-item">Students Selected for Cycles </a></li>
                                        <li><a class="dropdown-item">District-wise Eligible and Verify Status </a></li>
                                        <li><a class="dropdown-item">List of Class 6th Students those are Eligible for Cycle</a></li>

                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">Help</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item">Manual for Free Cycle Distribution for Class 9th Students (0.9 MB)</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="mt-3">
                    <fieldset>
                        <legend>All Students in 9th Class  </legend>
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <label class="font-bold">Academic Year : <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">2024-25</option>
                                    <option value="Bhopal">2023-24</option>
                                    <option value="Raisen">2022-23</option>
                                    <option value="Rajgarh">2021-22</option>


                                </select>
                            </div>


                            <div class="col-md-3">
                                <label class="font-bold">School Type :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="0">-Select-</option>
                                    <option value="3">Primary&#160;to&#160;Higher&#160;Secondary&#160;School(Class 1 to 12)</option>
                                    <option value="5">Middle&#160;to&#160;Higher&#160;Secondary&#160;School (Class 6 to 12)</option>
                                    <option value="6">Primary&#160;to&#160;High&#160;School (Class 1 to 10)</option>
                                    <option value="8">Middle&#160;to&#160;High&#160;School (Class 6 to 10)</option>
                                    <option value="7">Higher Secondary Schools  (Class 9 to 12)</option>
                                    <option value="10">High Schools (Class 9 to 10)</option>



                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold">School :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">GOVT. HSS NAGANDEORI</option>



                                </select>
                            </div>
                            <div class="col-lg-12 mt-5">
                            </div>
                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded" onclick="Show();">Get All Students </button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="Report">
                        <fieldset>
                            <legend>School Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>School Name </th>
                                                    <th>DISE</th>
                                                    <th>Village</th>
                                                    <th>Gram Panchayat/Zones</th>
                                                    <th>Local Body</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>GOVT. HSS NAGANDEORI	</td>
                                                    <td>23440610406</td>
                                                    <td>Nagan Deori	</td>
                                                    <td>Nagandeori</td>
                                                    <td>Janpad Panchayat, LAKHNADON</td>
                                                </tr>
                                            </tbody>


                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Students Details </legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">


                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>S.No.</th>
                                                    <th>Samagra Id</th>
                                                    <th>Name</th>
                                                    <th>Father Name</th>
                                                    <th>Date of Birth</th>
                                                    <th>Gender</th>
                                                    <th>Local Body</th>
                                                    <th>Gram Panchayat/Zones</th>
                                                    <th>Village/Ward</th>
                                                    <th>Basahat/Colony</th>
                                                    <th>Eligible for Cycle</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>145499629</td>
                                                    <td>AADARSH KUMAR</td>
                                                    <td>LALMAN KUMAR</td>
                                                    <td>21/01/2010</td>
                                                    <td>Boy</td>
                                                    <td>Janpad Panchayat, LAKHNADON</td>
                                                    <td>Belkhedi</td>
                                                    <td>Belkhedi</td>
                                                    <td>Belkhedi</td>
                                                    <td>Yes</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>142722648</td>
                                                    <td>AAKANCHA DUBE</td>
                                                    <td>VINAY DUBE</td>
                                                    <td>01/01/2010</td>
                                                    <td>Girl</td>
                                                    <td>Janpad Panchayat, LAKHNADON</td>
                                                    <td>Gangai</td>
                                                    <td>Gangai</td>
                                                    <td>Gangai</td>
                                                    <td>Yes</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>142090249</td>
                                                    <td>AARTI</td>
                                                    <td>BASNTRAM</td>
                                                    <td>01/01/2010</td>
                                                    <td>Girl</td>
                                                    <td>Janpad Panchayat, LAKHNADON</td>
                                                    <td>Mohgaonnagan</td>
                                                    <td>Bakhari Ryt</td>
                                                    <td>Bakhari Ryt</td>
                                                    <td>Yes</td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

