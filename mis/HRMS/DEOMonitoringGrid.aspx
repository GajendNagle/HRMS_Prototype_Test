<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DEOMonitoringGrid.aspx.cs" Inherits="mis_Scheme_DEOMonitoringGrid" %>

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
                        <li class="breadcrumb-item">DEO Monitoring Grid</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">DEO Monitoring Grid / डीईओ मॉनिटरिंग ग्रिड
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>DEO Monitoring Grid / डीईओ मॉनिटरिंग ग्रिड</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                Select District Name /<br />
                                जिला का चयन करें :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2" id="district">
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
                            <label>
                                Select Block Name /<br />
                                ब्लॉक का चयन करें :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2" id="block">
                                <option value="">--Select--</option>
                                <option value="1">ANUPPUR </option>
                                <option value="2">JAITHARI </option>
                                <option value="3">KOTMA </option>
                                <option value="3">PUSHPRAJ GARH </option>


                            </select>
                        </div>

                        <div class="row justify-content-center mt-3">
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
                        <hr />
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn w-lg btn-success btn-border" onclick="Show();">Get Details</button>
                                <a href="DeoMonitoringGrid.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="Report">
                    <fieldset id="first">
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
                                    <table class="table text-center table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th>Block/ <br />ब्लॉक</th>
                                                <th>Sankul/<br />संकुल</th>
                                                <th>School/<br />स्कूल</th>
                                                <th>UID /<br />यूआईडी</th>
                                                <th>Teacher Name /<br />शिक्षक का नाम</th>
                                                <th>Designation /<br />पद का नाम</th>
                                                <th>Sankul/<br />संकुल</th>
                                                <th>School /<br />स्कूल</th>
                                                <th>Subject /<br />विषय</th>
                                                <th>Leave Period /<br />अवकाश की अवधि</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>ANUPPUR</td>
                                                <td>Sankul 1</td>
                                                <td>School 1</td>
                                                <td>101</td>
                                                <td>Hari Prasad</td>
                                                <td>Primary Teacher</td>
                                                <td>51</td>
                                                <td>School XYZ</td>
                                                <td>Maths</td>
                                                <td>24th July 2021 to 24th Aug 2021 (CCL)</td>
                                            </tr>
                                            <tr>
                                                <td>JAITHARI</td>
                                                <td>Sankul 2</td>
                                                <td>School 2</td>
                                                <td>102</td>
                                                <td>Usha Mathur</td>
                                                <td>Primary Teacher</td>
                                                <td>51</td>
                                                <td>School XYZ</td>
                                                <td>English</td>
                                                <td>Not on Leave</td>
                                            </tr>
                                            <tr>
                                                <td>KOTMA</td>
                                                <td>Sankul 3</td>
                                                <td>School 3</td>
                                                <td>103</td>
                                                <td>Abhinav Gupta</td>
                                                <td>Primary Teacher</td>
                                                <td>51</td>
                                                <td>School ABC</td>
                                                <td>Not on Leave</td>
                                                <td>24th July 2021 to 24th Aug 2021 (CCL)</td>
                                            </tr>
                                            <tr>
                                                <td>KOTMA</td>
                                                <td>Sankul 4</td>
                                                <td>School 4</td>
                                                <td>104</td>
                                                <td>Gyan Arora</td>
                                                <td>Primary Teacher</td>
                                                <td>51</td>
                                                <td>School ABC</td>
                                                <td>Not on Leave</td>
                                                <td>24th July 2021 to 24th Aug 2021 (CCL)</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="Second">
                        <legend>Leave Applications Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th>Block</th>
                                                <th>Sankul</th>
                                                <th>School</th>
                                                <th>UID</th>
                                                <th>Teacher Name</th>
                                                <th>Designation</th>
                                                <th>Sankul</th>
                                                <th>School</th>
                                                <th>Subject</th>
                                                <th>Leave Period</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>KOTMA</td>
                                                <td>Sankul 3</td>
                                                <td>School 3</td>
                                                <td>103</td>
                                                <td>Abhinav Gupta</td>
                                                <td>Primary Teacher</td>
                                                <td>51</td>
                                                <td>School ABC</td>
                                                <td>Not on Leave</td>
                                                <td>24th July 2021 to 24th Aug 2021 (CCL)</td>
                                            </tr>
                                            <tr>
                                                <td>KOTMA</td>
                                                <td>Sankul 4</td>
                                                <td>School 4</td>
                                                <td>104</td>
                                                <td>Gyan Arora</td>
                                                <td>Primary Teacher</td>
                                                <td>51</td>
                                                <td>School ABC</td>
                                                <td>Not on Leave</td>
                                                <td>24th July 2021 to 24th Aug 2021 (CCL)</td>
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
            var block = document.getElementById("block").value; // Get the value of the dropdown
            var district = document.getElementById("district").value; // Get the value of the dropdown
            var first = document.getElementById("first");
            var second = document.getElementById("Second"); // Corrected variable name
            if (block !== "") { // Check if a block is selected
                element.style.display = "block"; // Show the element
                second.style.display = "block"; // Show the second element
                first.style.display = "none"; // Hide the first element
            }
            else if (block === "") {
                element.style.display = "block"; // Show the element
                second.style.display = "none"; // Hide the second element
                first.style.display = "block"; // Show the first element

            }

            else {
                element.style.display = "block"; // Show the element
                second.style.display = "none"; // Hide the second element
                first.style.display = "block"; // Show the first element
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

