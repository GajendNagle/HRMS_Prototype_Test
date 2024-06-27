<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LeavePendencyMonitor.aspx.cs" Inherits="mis_Scheme_LeavePendencyMonitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
            display: none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-12">
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
                            <a href="#LeaveReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Leave Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Monitor Pendency for Action on Leave Applications</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">Pendency for Action on Leave Applications <br />
                        अवकाश आवेदनों पर कार्यवाही हेतु लंबित आवेदन</h4>
                </div>
            </div>
        </div>
        <div class="card-body">


            <div class="mt-3">
                <fieldset>
                    <legend>Pendency for Action on Leave Applications /
                        अवकाश आवेदनों पर कार्यवाही हेतु लंबित आवेदन</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select District Name <br />
                                    जिला का चयन करें<span style="color: red">*</span></label>
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
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Block Name <br />
                                    ब्लॉक का चयन करें<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">ANUPPUR </option>
                                    <option value="2">JAITHARI </option>
                                    <option value="3">KOTMA </option>
                                    <option value="3">PUSHPRAJ GARH </option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Sankul Name <br />
                                    संकुल का चयन करें<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">All</option>
                                    <option value="1">Berasiya</option>
                                    <option value="1">Phanda Old City</option>
                                    <option value="1">Raushanpura</option>
                                </select>
                            </div>
                        </div>
                        <div class="row align-items-end mt-3">
                            <div class="col-lg-12">
                                <div class="row justify-content-center">
                                    <div class="col-lg-3 text-center">
                                        <img src="../../img/captcha.png" width="150" />
                                    </div>
                                    <div class="col-lg-12"></div>
                                    <div class="col-lg-4 text-center">
                                        <label class="font-bold">Please enter the code shown above</label>
                                    </div>
                                    <div class="col-lg-12"></div>

                                    <div class="col-lg-2">
                                            <input type="text" class="form-control text-center" />
                                        </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn w-lg btn-success btn-border" onclick="Show();">Get Details</button>
                                <a href="LeavePendencyMonitor.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="Report">
                    <fieldset>
                        <legend>Leave Applications Details /अवकाश आवेदनो का विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center">
                                        <thead>
                                            <tr>
                                                <th>S.No.<br />
                                                    सरल क्र.</th>
                                                <th>Sankul 
                                                    <br />
                                                    संकुल</th>
                                                <th>Name of Applicant <br />
                                                    आवेदक का नाम</th>
                                                <th>Designation of Applicant<br />
                                                    आवेदक का पदनाम</th>
                                                <th>Type of Leave <br />
                                                    अवकाश का प्रकार</th>
                                                <th>Date of Application Submission<br />
                                                    आवेदन जमा करने की दिनांक</th>
                                                <th>Leave Begin Date <br />
                                                    अवकाश की आरंभ दिनांक </th>
                                                <th>Leave End Date <br />
                                                    अवकाश की समाप्ति दिनांक</th>
                                                <th>No. of Leave Days <br />
                                                    अवकाश के दिनों की संख्या</th>
                                                <th>Pending with <br />अपेक्षा में लंबित</th>
                                                <th>Pending from (Date) <br />
                                                    (दिनांक) से लंबित</th>
                                                <th>No. of Days Pending<br />
                                                    लंबित दिनों की संख्या</th>
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

    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

