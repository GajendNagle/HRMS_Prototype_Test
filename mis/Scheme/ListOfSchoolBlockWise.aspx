<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ListOfSchoolBlockWise.aspx.cs" Inherits="mis_Scheme_ListOfSchoolBlockWise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <style>
        #Show {
            display: none;
        }
    </style>
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">List of Schools (PS/MS/HSC/HSSC) in Block
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active"><a href="AdmissionOfOutOfStateEdit.aspx" title="click to go on">List of Schools (PS/MS/HSC/HSSC) in Block</a></li>

                </ol>
            </div>
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
                                    <b class="font-16 font-bold">Schools</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ListOfSchoolBlockWise.aspx">List of Schools in Block</a></li>

                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold">Application Mgmt</b>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold">Reports</b>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold">Search</b>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="mt-3">
                <fieldset>
                    <legend>List of Schools (PS/MS/HSC/HSSC) in Block</legend>
                    <div class="row justify-content-center mt-2">
                        <div class="col-md-3">
                            <label class="font-bold">District :-<span style="color: red">*</span></label>
                            <%--                             <input type="text" class="form-control" value="Bhopal"   />--%>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="BHOPAL ">BHOPAL </option>
                                <option value="CHAMBAL ">CHAMBAL </option>
                                <option value="GWALIOR ">GWALIOR </option>
                                <option value="INDORE ">INDORE </option>
                                <option value="JABALPUR ">JABALPUR </option>
                                <option value="NARMADAPURAM ">NARMADAPURAM </option>
                                <option value="REWA ">REWA </option>
                                <option value="SAGAR ">SAGAR </option>

                            </select>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <label class="font-bold">Block :- <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Berasia">Berasia</option>
                                <option value="Phanda">Phanda</option>

                            </select>
                        </div>
                    </div>
                    <hr />
                    <div class="row justify-content-center mt-3">
                        <div class="col-md-3">
                            <label class="font-bold">School Management Type:-<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control ">
                                <option value="--Select--">--Select--</option>
                                <option value="State Govt ">State Govt </option>
                                <option value="CBSE">CBSE</option>
                            </select>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>School Category :-</label>
                                <select class="form-control">
                                    <option value="">--Select--</option>
                                    <option value="PS">PS</option>
                                    <option value="MS">MS</option>
                                    <option value="HSC">HSC</option>
                                    <option value="HSSC">HSSC</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row justify-content-center ">
                        <div class="col-lg-12 mt-2">
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

                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded btn-block" onclick="toggleStudentDetails()">Show List</button>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <div id="Show" class="mt-2">
                    <fieldset>
                        <legend>List of Schools in Block</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>S.No</th>
                                                <th>District</th>
                                                <th>Block</th>
                                                <th>DISE Code</th>
                                                <th>School Name</th>
                                                <th>School Category</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>GWALIOR</td>
                                                <td>GHATIGAON</td>
                                                <td>23040300105</td>
                                                <td>NGPS ADIWASI COLONY TIKALA (1 to 5)</td>
                                                <td>PS</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>GWALIOR</td>
                                                <td>GHATIGAON</td>
                                                <td>23040300106</td>
                                                <td>NGPS INDRA COLONY MOHANA (1 to 5)</td>
                                                <td>PS</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>GWALIOR</td>
                                                <td>GHATIGAON</td>
                                                <td>23040300107</td>
                                                <td>NGPS AUOD PURA (1 to 5)</td>
                                                <td>PS</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>GWALIOR</td>
                                                <td>GHATIGAON</td>
                                                <td>23040300108</td>
                                                <td>NGPS TAPAL COLONY (1 to 5)</td>
                                                <td>PS</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>GWALIOR</td>
                                                <td>GHATIGAON</td>
                                                <td>23040300131</td>
                                                <td>NGPS HIRAPURA MOHANA (1 to 5)</td>
                                                <td>PS</td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>GWALIOR</td>
                                                <td>GHATIGAON</td>
                                                <td>23040300201</td>
                                                <td>GPS AADIWASIPURA (1 to 5)</td>
                                                <td>PS</td>
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
        function toggleStudentDetails() {
            var studentDetails = document.getElementById("Show");

            studentDetails.style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

