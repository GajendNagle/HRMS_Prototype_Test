<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GanaveshDBTReportBlockWise.aspx.cs" Inherits="mis_Scheme_GanaveshDBTReportBlockWise_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
      <style>
        #Report{
            display:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">ब्लॉक वार स्वीकृत प्रगति
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Uniform Distribution Management System</a></li>
                    <li class="breadcrumb-item active"><a href="GanaveshDBTReportBlockWise.aspx" title="click to go on">Block Wise Approved Progress</a></li>

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
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">DBT Reports</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="GanaveshDBTReportDistrictWise.aspx"> जिले-वार स्वीकृत प्रगति</a></li>
                                        <li><a class="dropdown-item" href="GanaveshDBTReportBlockWise.aspx">ब्लॉक वार स्वीकृत प्रगति</a></li>
                                        <li><a class="dropdown-item" href="GanaveshDBTReportSchoolWise.aspx"> स्कूल वार स्वीकृत प्रगति</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">SHG Reports</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="GanaveshSHGReportDistrictWise.aspx"> जिले-वार गणवेश की मांग एवं वितरण की प्रगति</a></li>
                                        <li><a class="dropdown-item" href="GanaveshSHGReportBlockWise.aspx"> ब्लॉक वार गणवेश की मांग एवं वितरण की प्रगति</a></li>
                                        <li><a class="dropdown-item" href="GanaveshSHGReportSchoolWise.aspx">स्कूल वार गणवेश की मांग एवं वितरण की प्रगति</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="mt-3">
                    <fieldset>
                        <legend>Block Wise Uniform Distribution Report</legend>
                        <div class="row justify-content-center mt-1">
                            <div class="col-md-3">
                                <label class="font-bold">School Category :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="0">Non CM Rise</option>
                                    <option selected="selected" value="1">CM Rise</option>
                                </select>
                            </div>
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
                                <label class="font-bold">Class :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="1">1 st</option>
                                    <option value="2">2 nd</option>
                                    <option value="3">3 rd</option>
                                    <option value="4">4 th</option>
                                    <option value="5">5 th</option>
                                    <option value="6">6 th</option>
                                    <option value="7">7 th</option>
                                    <option value="8">8 th</option>


                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="font-bold">District :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="51">AGAR MALWA आगर मालवा</option>
                                    <option value="49">ALIRAJPUR अलीराजपुर </option>
                                    <option value="47">ANUPPUR अनूपपुर </option>
                                    <option value="46">ASHOKNAGAR अशोकनगर</option>
                                    <option value="45">BALAGHAT बालाघाट </option>
                                    <option value="28">BARWANI बड़वानी </option>
                                    <option value="35">BETUL बैतूल </option>
                                    <option value="3">BHIND भिण्ड </option>
                                    <option value="32">BHOPAL भोपाल </option>
                                    <option value="48">BURHANPUR बुरहानपुर </option>
                                    <option value="9">CHHATARPUR छतरपुर </option>
                                    <option value="43">CHHINDWARA छिंदवाडा </option>
                                    <option value="12">DAMOH दमोह </option>
                                    <option value="5">DATIA दतिया </option>
                                    <option value="23">DEWAS देवास </option>
                                    <option value="25">DHAR धार </option>


                                </select>
                            </div>
                            <div class="col-lg-12 mt-5">
                                <div class="row justify-content-center">
                                    <div class="col-lg-3 text-center">
                                        <img src="../../img/captcha.png" width="150" />
                                    </div>
                                    <div class="col-lg-12"></div>
                                    <div class="col-lg-4 text-center">
                                        <label class="font-bold">Please enter the code shown above</label>
                                    </div>
                                    <div class="col-lg-12"></div>

                                    <div class="col-lg-1 ">
                                        <div class="form-group">
                                            <input type="text" class="form-control text-center" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded btn-block" onclick="Show();">View</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="Report">
                        <legend>Block Wise Uniform Distribution Report</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover">

                                        <thead>
                                            <tr>
                                                <th>S.No</th>
                                                <th>Block Name</th>
                                                <th>Total No. of Schools</th>
                                                <th>Total No. of Schools Sanctioned</th>
                                                <th>Total No. of Enroll Students</th>
                                                <th>Total No. of Target Students</th>
                                                <th>Total No. of Sanctioned Students</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>AGAR</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>28</td>
                                                <td>28</td>
                                                <td>28</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>SUSNER</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>7</td>
                                                <td>7</td>
                                                <td>7</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>NALKHEDA</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>12</td>
                                                <td>12</td>
                                                <td>12</td>
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
    

<script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

