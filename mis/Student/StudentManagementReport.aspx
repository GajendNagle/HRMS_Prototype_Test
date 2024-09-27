<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentManagementReport.aspx.cs" Inherits="mis_Student_StudentManagementReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showAllDetails {
            display: none;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Student Achievement Report/ छात्र उपलब्धि ट्रैकिंग
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Report/छात्र रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="txtAcademicYear" class="form-control datepickerYear2 form-select" type="text" data-val="true" required="required" />
                        </div>
                    </div>
                </div>
                <div class="row">


                    <div class="col-md-12">
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" class="btn btn-success w-lg btn-border" id="btn1" onclick="HideShow()">
                                Search
                            </button>
                            <!-- Clear button (link) -->
                            <a href="StudentManagementReport.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>






            <div id="showAllDetails" class="row">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-6 text-end">
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
                                    <table class="table" id="hideshowTable">
                                        <thead>
                                            <tr style="white-space: nowrap" class="text-center">
                                                <th>Sr.No.</th>
                                                <th>Student Name</th>
                                                <th>Class No.</th>
                                                <th>Samagra Id</th>
                                                <%--<th>Achievement of</th>--%>
                                                <th>Achievement Title</th>
                                                <th>Certificate</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="text-center">
                                                <td>1</td>
                                                <td>Aarti Sharma</td>
                                                <td>9th</td>
                                                <td>124067642</td>
                                                <%--<td>Excellence</td>--%>
                                                <td>Best Science Project</td>
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button>
                                                    <%--<button type="button" class="btn btn-outline-primary btn-sm" onclick="btnsearch1()"><i class="fa fa-eye"></i></button>--%>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2</td>
                                                <td>Ravi Kumar</td>
                                                <td>8th</td>
                                                <td>2345678901</td>
                                                <%--<td>Leadership</td>--%>
                                                <td>Top Debater of the Year</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3</td>
                                                <td>Sneha Patel</td>
                                                <td>6th</td>
                                                <%--<td>3456789012</td>--%>
                                                <td>Sports</td>
                                                <td>Champion in State Football</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4</td>
                                                <td>Ravi Kumar</td>
                                                <td>5th</td>
                                                <td>2345678901</td>
                                                <%--<td>Leadership</td>--%>
                                                <td>Top Debater of the Year</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5</td>
                                                <td>Arun Singh</td>
                                                <td>8th</td>
                                                <td>4567890123</td>
                                                <%--<td>Arts</td>--%>
                                                <td>Outstanding Art Exhibition</td>
                                                <td class="text-center align-middle">

                                                    <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            </tr>
                                            <!-- Add more rows here -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                </div>
            </div>



            <div class="modal  fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: var(--vz-primary);">
                            <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                            <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel2">Student's Uploaded Document/छात्र द्वारा अपलोड किया गया दस्तावेज़</h3>
                            <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img src="../../img/10thMarksheet.jpg" />
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
        function HideShow() {
            var txtAcademicYear = document.getElementById('txtAcademicYear');

            if (txtAcademicYear.value === "") {
                document.getElementById('showAllDetails').style.display = 'none';
            } else {
                document.getElementById('showAllDetails').style.display = 'block';
            }
        }
    </script>
</asp:Content>

