<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentAttendence.aspx.cs" Inherits="mis_Student_Management_StudentAttendence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        .desposebtn {
            border: 1px solid #842189;
            color: #842189;
        }

            .desposebtn:hover {
                background-color: #842189;
                color: white;
            }

        .datepicker {
            z-index: 10000 !important; /* Adjust z-index to make sure the datepicker shows up above other elements */
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
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
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student Attendence</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill " style="padding-top: 11px;">
                            विद्यार्थी प्रबंधन
				
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                विद्यार्थियों की उपस्थिति की जानकारी
					
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Attendence/
                    
                    विद्यार्थी उपस्थिति
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic year /<br />
                                शैक्षणिक वर्ष का चयन करें <span style="color: red">*</span></label>
                            <input type="text" class="form-control datepickerYear bg-white" id="academicYear" name="academic-year" readonly disabled>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Class /<br />
                                कक्षा का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddl_class" onchange="hideshow()">
                                <option value="0">-Select-</option>
                                <option value="1">1st Class</option>
                                <option value="2">2nd Class</option>
                                <option value="3">3rd Class</option>
                                <option value="4">4th Class</option>
                                <option value="5">5th Class</option>
                                <option value="6">6th Class</option>
                                <option value="7">7th Class</option>
                                <option value="8">8th Class</option>
                                <option value="9">9th Class</option>
                                <option value="10">10th Class</option>
                                <option value="11">11th Class</option>
                                <option value="12">12th Class</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="ddl_subject" style="display: none;">
                        <div class="form-group">
                            <label>
                                Select Subject /<br />
                                विषय का चयन करें <span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option value="0">-Select-</option>
                                <option value="1">PCM</option>
                                <option value="2">PCB</option>
                                <option value="3">Arts</option>
                                <option value="4">Commerce</option>
                                <option value="5">Agriculture</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                               Select Date /<br />
                                दिनांक का चयन करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control datepicker" value="27-08-2024" disabled />

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group" style="margin-top: 3.3rem !important">
                            <button id="btnSearch" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                        </div>
                    </div>
                </div>

            </fieldset>
            <br />
            <fieldset id="tbl_class" style="display: none">
                <legend>Attendence Details /
                   
                    उपस्थिति विवरण</legend>
                <div class="row">
                    <div class=" col-md-12">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <th>Student name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Gender /<br />
                                                लिंग</th>
                                            <th>Roll No. /<br />
                                                रोल नंबर</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Attendance /<br />
                                                उपस्थिति</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Ajay Pawar</td>
                                            <td>Male</td>
                                            <td>11111</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option1" checked value="Present">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option1" value="Absent">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Vijay nagle</td>
                                            <td>Male</td>
                                            <td>11112</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option2" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option2" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Anita khade</td>
                                            <td>Female</td>
                                            <td>11113</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option3" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option3" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>amit thakur</td>
                                            <td>Male</td>
                                            <td>11114</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option4" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option4" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>jitendra soni</td>
                                            <td>Male</td>
                                            <td>11115</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option5" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option5" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Raghwendra Rai</td>
                                            <td>Female</td>
                                            <td>11116</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option6" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option6" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Disha Patani</td>
                                            <td>Female</td>
                                            <td>11117</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option7" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option7" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>Sakshi Sharma</td>
                                            <td>Female</td>
                                            <td>11118</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option8" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option8" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>Rajendra Sharma</td>
                                            <td>Male</td>
                                            <td>11119</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option9" checked value="Present">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option9" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>Anamika Thakur</td>
                                            <td>Female</td>
                                            <td>11120</td>
                                            <td>115987585</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option10" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option10" value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr />
                                <div class="col-md-3">
                                    <div class="form-group" style="margin-top: 1rem !important">
                                        <button id="btnSave" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function hideshow() {
            var ddl_class = document.getElementById("ddl_class");
            var ddl_subject = document.getElementById("ddl_subject");

            if (ddl_class.value === "0") {
                ddl_subject.style.display = "none";
            } else if (ddl_class.value === "11" || ddl_class.value === "12") {
                ddl_subject.style.display = "block";
            } else {
                ddl_subject.style.display = "none";
            }
        }
    </script>
    <script>
        document.getElementById('btnSearch').addEventListener('click', function () {
            // Get selected value from dropdown
            const selectedValue = document.getElementById('ddl_class').value;

            // Get the table and rows
            const table = document.getElementById('tbl_class');


            if (selectedValue !== '0') {
                table.style.display = 'block';

            } else {
                Swal.fire({
                    title: 'Data Not Found',
                    icon: "warning",
                    confirmButtonText: 'OK'
                });
            }
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
    <script>
        document.getElementById('btnSave').addEventListener('click', function () {

            Swal.fire({
                title: "Are you sure?",
                text: "Do You Want to save this record",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes"
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire({
                        title: "Saved",
                        text: "Saved Successfully",
                        icon: "success"
                    });
                }
            });
        });
    </script>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap Datepicker JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
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
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });
    </script>
    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true,

            });
        });
</script>
</asp:Content>

