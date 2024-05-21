<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LeavePendencyMonitor.aspx.cs" Inherits="mis_Scheme_LeavePendencyMonitor" %>

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
            <h4 class="text-themecolor ">Monitor Pendency for Action on Leave Applications
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active"><a href="LeavePendencyMonitor.aspx" title="click to go on">Monitor Pendency for Action on Leave Applications</a></li>
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
                                    <a class="nav-link dropdown-toggle text-white" href="LeavePendencyMonitor.aspx" role="button" aria-expanded="false">
                                        <b class="font-16 font-bold">Pendency Report</b>
                                    </a>

                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="DEOMonitoringGrid.aspx" role="button" aria-expanded="false">
                                        <b class="font-16 font-bold">DEO Monitoring Grid</b>
                                    </a>

                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="mt-3">
                    <fieldset>
                        <legend>Monitor Pendency for Action on Leave Applications</legend>
                        <div class="row justify-content-center mt-2">
                            <div class="col-md-3">
                                <label class="font-bold">District :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="">--Select--</option>
                                    <option value="51">AGAR MALWA </option>
                                    <option value="49">ALIRAJPUR</option>
                                    <option value="47">ANUPPUR  </option>
                                    <option value="46">ASHOKNAGAR </option>
                                    <option value="45">BALAGHAT</option>
                                    <option value="28">BARWANI  </option>
                                    <option value="35">BETUL  </option>
                                    <option value="3">BHIND </option>
                                    <option value="32">BHOPAL </option>
                                    <option value="48">BURHANPUR </option>
                                    <option value="9">CHHATARPUR  </option>
                                    <option value="43">CHHINDWARA  </option>
                                    <option value="12">DAMOH  </option>
                                    <option value="5">DATIA  </option>
                                    <option value="23">DEWAS  </option>
                                    <option value="25">DHAR  </option>
                                </select>
                            </div>


                            <div class="col-md-3">
                                <label class="font-bold">Block :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">ANUPPUR </option>
                                    <option value="2">JAITHARI </option>
                                    <option value="3">KOTMA </option>
                                    <option value="3">PUSHPRAJ GARH </option>


                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold">Sankul :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">All</option>
                                    <option value="1">Berasiya</option>
                                    <option value="1">Phanda Old City</option>
                                    <option value="1">Raushanpura</option>



                                </select>
                            </div>
                            <div class="row justify-content-center mt-2">
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
                            </div>
                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded" onclick="Show();">Get Details</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="Report">
                        <fieldset>
                            <legend>Leave Applications Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>S.No.</th>
                                                    <th>Sankul</th>
                                                    <th>Name of Applicant</th>
                                                    <th>Designation of Applicant</th>
                                                    <th>Type of Leave</th>
                                                    <th>Date of Application Submission</th>
                                                    <th>Leave Begin Date</th>
                                                    <th>Leave End Date</th>
                                                    <th>No. of Leave Days</th>
                                                    <th>Pending with</th>
                                                    <th>Pending from (Date)</th>
                                                    <th>No. of Days Pending</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Berasiya</td>
                                                    <td>K.K Sharma</td>
                                                    <td>Primary Teacher</td>
                                                    <td>Study</td>
                                                    <td>10-12-2020</td>
                                                    <td>12-12-2020</td>
                                                    <td>24-12-2020</td>
                                                    <td>12</td>
                                                    <td>HM</td>
                                                    <td>10-12-2020</td>
                                                    <td>7</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Phanda Old City</td>
                                                    <td>M.K Pandey</td>
                                                    <td>Principal</td>
                                                    <td>Medical</td>
                                                    <td>17-12-2020</td>
                                                    <td>13-12-2020</td>
                                                    <td>25-12-2020</td>
                                                    <td>12</td>
                                                    <td>Sankul P</td>
                                                    <td>17-12-2020</td>
                                                    <td>2</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Raushanpura</td>
                                                    <td>S.H.Asthana</td>
                                                    <td>Head Master</td>
                                                    <td>CCL</td>
                                                    <td>17-12-2020</td>
                                                    <td>13-12-2020</td>
                                                    <td>25-12-2020</td>
                                                    <td>12</td>
                                                    <td>Sankul P</td>
                                                    <td>17-12-2020</td>
                                                    <td>2</td>
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

