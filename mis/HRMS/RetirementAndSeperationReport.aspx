<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RetirementAndSeperationReport.aspx.cs" Inherits="mis_HRMS_RetirementAndSeperationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

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
                        <li class="breadcrumb-item">Retirement or Separation Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <%--<div class="content-wrapper">
    <div class="container-fluid">
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row">
                    <div class="col-12">
                        <h4 class="card-title">Retirement or Separation /
                            सेवानिवृत्त या विभाजन</h4>
                    </div>
                </div>
            </div>
             <div class="card-body">--%>

    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-12">
                            <h4 class="card-title">Retirement or Separation Report /
                              सेवानिवृत्त या विभाजन रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Employee Retirement Report / कर्मचारी का सेवानिवृत्ति रिपोर्ट</legend>
                        <div class="row align-items-end">

                             <div class="col-md-6 col-lg-4 col-xl-3">

     <div class="form-group">
         <label>
             Select Academic Year /<br />
             शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
         <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="txtAcademicYear" class="form-control datepickerYear2 form-select" type="text" data-val="true" required="required" />
     </div>
 </div>
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <div class="form-group">
                                    <label>
                                        Select District/<br />
                                        जिला का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2" id="ddlApprove">
                                        <option value="0">--Select--</option>
                                        <option value="51">Agar Malwa</option>
                                        <option value="49">Alirajpur</option>
                                        <option value="47">Anuppur</option>
                                        <option value="46">Ashoknagar</option>
                                        <option value="45">Balaghat</option>
                                        <option value="28">Barwani</option>
                                        <option value="35">Betul</option>
                                        <option value="3">Bhind</option>
                                        <option value="32">Bhopal</option>
                                        <option value="48">Burhanpur</option>
                                        <option value="9">Chhatarpur</option>
                                        <option value="43">Chhindwara</option>
                                        <option value="12">Damoh</option>
                                        <option value="5">Datia</option>
                                        <option value="23">Dewas</option>
                                        <option value="25">Dhar</option>
                                        <option value="41">Dindori</option>
                                        <option value="7">Guna</option>
                                        <option value="4">Gwalior</option>
                                        <option value="36">Harda</option>
                                        <option value="26">Indore</option>
                                        <option value="39">Jabalpur</option>
                                        <option value="24">Jhabua</option>
                                        <option value="38">Katni</option>
                                        <option value="29">Khandwa</option>
                                        <option value="27">Khargone</option>
                                        <option value="42">Mandla</option>
                                        <option value="19">Mandsaur</option>
                                        <option value="2">Morena</option>
                                        <option value="37">Narmadapuram</option>
                                        <option value="40">Narsinghpur</option>
                                        <option value="18">Neemuch</option>
                                        <option value="52">Niwari</option>
                                        <option value="10">Panna</option>
                                        <option value="34">Raisen</option>
                                        <option value="30">Rajgarh</option>
                                        <option value="20">Ratlam</option>
                                        <option value="14">Rewa</option>
                                        <option value="11">Sagar</option>
                                        <option value="13">Satna</option>
                                        <option value="33">Sehore</option>
                                        <option value="44">Seoni</option>
                                        <option value="16">Shahdol</option>
                                        <option value="22">Shajapur</option>
                                        <option value="1">Sheopur</option>
                                        <option value="6">Shivpuri</option>
                                        <option value="17">Sidhi</option>
                                        <option value="50">Singrauli</option>
                                        <option value="8">Tikamgarh</option>
                                        <option value="21">Ujjain</option>
                                        <option value="15">Umaria</option>
                                        <option value="31">Vidisha</option>
                                    </select>
                                </div>
                            </div>

                           
                        </div>
                        <div class="row">


                            <div class="col-md-6 mb-2">
                                <button type="button" class="btn btn-success btn-border" onclick="myFunction()">Search</button>
                                <a href="RetirementAndSeperationReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>

                        </div>
                    </fieldset>

                    <div id="ShowReport" style="display: none">

                        <fieldset>
                            <legend>Details / विवरण</legend>

                            <div class="row mt-4 justify-content-end">
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
                                <div class="table-responsive">
                                    <table class="table text-center">
                                        <thead>
                                            <tr style="white-space: nowrap;">
                                                <th>S.No. /<br />
                                                    सरल क्र</th>
                                                <th>Employee Name /<br />
                                                    कर्मचारी का नाम</th>
                                                <th>Seperation Type /<br />
                                                    सेवानिवृत्ति प्रकार</th>
                                                <th>Last Posting OIS /<br />
                                                    अंतिम पोस्टिंग ओआईएस</th>
                                                <th>Last Posting Designation /<br />
                                                    अंतिम पोस्टिंग पदनाम</th>
                                                <th>Date Of Saperation /<br />
                                                    सेवानिवृत्ति की तिथि</th>
                                                <th>Order No. /<br />
                                                    आदेश संख्या</th>
                                                <th>Order Date /<br />
                                                    आदेश तिथि</th>
                                                <th>View Order /<br />
                                                    आदेश देखें</th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr id="row1">
                                                <td>1</td>

                                                <td>Ankit Sharma</td>
                                                <td>Resignation</td>
                                                <td>Greenwood High School(274509837)</td>
                                                <td>Senior Manager</td>
                                                <td>2024-01-15</td>
                                                <td>123/2024</td>
                                                <td>2024-01-12</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>

                                            </tr>
                                            <tr id="row2">
                                                <td>2</td>

                                                <td>Priya Mehta</td>
                                                <td>Retirement</td>
                                                <td>DEO Phanda (4627883794)</td>
                                                <td>Head OfficeDirector</td>
                                                <td>2023-11-30</td>
                                                <td>564/2023</td>
                                                <td>2023-11-25</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            </tr>

                                            <tr id="row3">
                                                <td>3</td>

                                                <td>Karan Yadav</td>
                                                <td>Transfer</td>
                                                <td>Riverside Secondary School(2014558954)</td>
                                                <td>Assistant Manager</td>
                                                <td>2023-10-20</td>
                                                <td>789/2023</td>
                                                <td>2023-10-18</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            </tr>
                                            <tr id="row4">
                                                <td>4</td>

                                                <td>Sakshi Gupta</td>
                                                <td>Resignation</td>
                                                <td>DEO Phanda (4627809658)</td>
                                                <td>HR Manager</td>
                                                <td>2024-02-05</td>
                                                <td>452/2024</td>
                                                <td>2024-02-01</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            </tr>

                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </fieldset>
                    </div>

                    <div class="modal  fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header" style="background-color: var(--vz-primary);">
                                    <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel2">Employee Retirement Detail (Report)</h3>
                                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <img src="../../img/10thMarksheet.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">

    </script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });</script>

    <script>
        function myFunction() {
            var ShowReport = document.getElementById("ShowReport").style.display = 'block';


        }
    </script>
</asp:Content>

