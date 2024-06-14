<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_HoAprDistWiseReport.aspx.cs" Inherits="mis_HRMS_Trn_HoAprDistWiseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <style>
        th {
            white-space: nowrap;
        }

        a {
            color: #0000ff
        }

        /* a:hover {
                color: #0000ff92
            }*/
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
                            <a href="#HOAPRMS" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Head Office APRMS</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Head Office APRMS Report</span></li>
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
                            <h4 class="card-title">Head Office Annual Property Returns Management System<br />
                                प्रधान कार्यालय वार्षिक संपत्ति रिटर्न प्रबंधन प्रणाली</h4>
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
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li>
                                        <a class="nav-link  text-white " href="HOAprNotes.aspx" role="button">
                                            <b class="font-16 font-bold "><i class="fa fa-home "></i>
                                            </b>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="nav-link text-white" href="Trn_HoAprFill.aspx" role="button">
                                            <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                                Fill APR
                                            </b>
                                        </a>
                                    </li>
                                    <li class="dropdown">
                                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>APR Report</b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="Trn_HoAprDistWiseReport.aspx">District Wise APR Report
                                            </a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <br />--%>

                    <fieldset>
                        <legend>District Wise APR Report /  जिलावार APR रिपोर्ट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="fw-bold text-dark">
                                        <%--<label class="font-bold">--%>
                                    District Name /<br />
                                        जिला का नाम</label>
                                    <select class="form-control select2" id="ddlDistrict">
                                        <option selected="selected" value="All">--Select All--</option>

                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Raisen">Raisen</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Sehore">Sehore</option>
                                        <option value="Vidisha">Vidisha</option>
                                        <option value="Ashoknagar">Ashoknagar</option>
                                        <option value="Shivpuri">Shivpuri</option>
                                        <option value="Datia">Datia</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Harda">Harda</option>
                                        <option value="Hoshangabad">Hoshangabad</option>
                                        <option value="Betul">Betul</option>
                                        <option value="Morena">Morena</option>
                                        <option value="Sheopur">Sheopur</option>
                                        <option value="Bhind">Bhind</option>
                                        <option value="Barwani">Barwani</option>
                                        <option value="Burhanpur">Burhanpur</option>
                                        <option value="Dhar">Dhar</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jhabua">Jhabua</option>
                                        <option value="Khandwa">Khandwa</option>
                                        <option value="Khargone">Khargone</option>
                                        <option value="Alirajpur">Alirajpur</option>
                                        <option value="Balaghat">Balaghat</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Katni">Katni</option>
                                        <option value="Mandla">Mandla</option>
                                        <option value="Narsinghpur">Narsinghpur</option>
                                        <option value="Seoni">Seoni</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sidhi">Sidhi</option>
                                        <option value="Singroli">Singroli</option>
                                        <option value="Chhatarpur">Chhatarpur</option>
                                        <option value="Damoh">Damoh</option>
                                        <option value="Panna">Panna</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Tikamgarh">Tikamgarh</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Umaria">Umaria</option>
                                        <option value="Dindori">Dindori</option>
                                        <option value="Anuppur">Anuppur</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Mandsaur">Mandsaur</option>
                                        <option value="Neemuch">Neemuch</option>
                                        <option value="Ratlam">Ratlam</option>
                                        <option value="Shajapur">Shajapur</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="fw-bold text-dark">
                                        Department Name /<br />
                                        विभाग का नाम</label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select All--</option>
                                        <option value="1">Commissioner, Public Instructions </option>
                                        <option value="4">Commissioner, Tribal Development</option>
                                        <option value="3">Rajya Shiksha Kendra (SSA Directorate)</option>
                                        <option value="2">State Council of Education Research &amp; Training</option>
                                        <option value="7">Madhya Pradesh Madhyamik Shiksha Abhiyaan Samiti </option>
                                        <option value="6">State Open School</option>
                                        <option value="8">MP Board of Secondary Education</option>
                                        <option value="10">SC Development </option>
                                        <option value="11">Education</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="fw-bold text-dark">
                                        Annual Year /
   <br />
                                        वित्तीय वर्ष<span style="color: red;"> *</span>
                                    </label>
                                    <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12 ">
                                <div class="form-group ">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Details / विवरण </legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr>
                                                <th>Sr. No. /<br />
                                                    सरल क्र.
                                                </th>
                                                <th>District /<br />
                                                    जिला</th>
                                                <th>Total Employees Whose APR Uploaded /
                                            <br />
                                                    कुल कर्मचारी जिनका APR अपलोडेड हैं</th>
                                                <th>Total Employees Whose APR Not Uploaded /
                                            <br />
                                                    कुल कर्मचारी जिनका APR अपलोडेड नहीं हैं</th>
                                                <th>Performance % /
                                            <br />
                                                    प्रदर्शन %
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </fieldset>
                    <div class="modal fade" id="districtModal" tabindex="-1" role="dialog" aria-labelledby="districtModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="" id="districtModalLabel font-bold">APR Details - <span id="modalDistrictName"></span></h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="row justify-content-end">
                                        <div class="col-md-6 text-end">
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
                                                <table id="modalTable" class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Sr. No. /<br />
                                                                सरल क्र.
                                                            </th>
                                                            <th>Employee /
                                            <br />
                                                                कर्मचारी</th>
                                                            <th>District /
                                            <br />
                                                                जिला</th>
                                                            <th>Sankul /
                                            <br />
                                                                संकुल</th>
                                                            <th>OIS Name /<br />
                                                                कार्यालय / संस्था/ स्कूल</th>
                                                            <th>Department /
                                            <br />
                                                                विभाग</th>
                                                            <th>Designation /
                                            <br />
                                                                पद</th>
                                                            <th>Financial Year /
                                            <br />
                                                                वित्तीय वर्ष</th>
                                                            <th>Detail /
                                            <br />
                                                                विवरण</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!-- Table body will be populated dynamically using JavaScript -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-secondary " data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="pdfModal" tabindex="-1" role="dialog" aria-labelledby="pdfModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xxl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title font-bold">Selected APR Form </h2>
                                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <fieldset>
                                        <legend>APR Details</legend>

                                        <embed id="pdfViewer" width="100" height="600" />
                                    </fieldset>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>   
        function ShowPdf() {
            $('#districtModal').modal('hide');
            document.getElementById('pdfViewer').src = '../Document/APR_Form.pdf';
            $('#pdfModal').modal('show');
        };
        function checkFileSize(inputId, maxSizeInKB, errorMessageId) {
            const fileInput = document.getElementById(inputId);
            const fileSizeMessage = document.getElementById(errorMessageId);
            const maxSizeInBytes = maxSizeInKB * 1024;

            const file = fileInput.files[0];
            if (file && file.size > maxSizeInBytes) {
                fileSizeMessage.innerHTML = '<br>File size exceeds the maximum limit (' + maxSizeInKB + ' KB). Please select a smaller file.';
                // Optionally, you could clear the file input here to prevent submitting the oversized file
                fileInput.value = '';
            } else {
                fileSizeMessage.textContent = '';
            }
        }

        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
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
        var employeeData = {
            'Bhopal': [
                {
                    "employee": "AB1234-Manish Meena",
                    "sankul": "23354912798 -Bal Bharti School",
                    "office": "23354912798 -Bal Bharti School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "CD5678-Ritu Sharma",
                    "sankul": "34459823721 -New Horizon School",
                    "office": "34459823721 -New Horizon School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "EF9012-Rahul Gupta",
                    "sankul": "45563178456 -Little Angels School",
                    "office": "45563178456 -Little Angels School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "GH3456-Sangeeta Patel",
                    "sankul": "56678931234 -Green Valley School",
                    "office": "56678931234 -Green Valley School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "IJ7890-Ravi Kumar",
                    "sankul": "67784251983 -Sunrise Public School",
                    "office": "67784251983 -Sunrise Public School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "KL2345-Swati Verma",
                    "sankul": "78897563214 -Bright Minds School",
                    "office": "78897563214 -Bright Minds School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "MN6789-Ajay Singh",
                    "sankul": "89908674325 -Modern Public School",
                    "office": "89908674325 -Modern Public School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "OP1234-Sunita Sharma",
                    "sankul": "90098765432 -Global Academy",
                    "office": "90098765432 -Global Academy",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "QR5678-Rajesh Tiwari",
                    "sankul": "10011223344 -Vidya Niketan",
                    "office": "10011223344 -Vidya Niketan",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "ST9012-Neha Gupta",
                    "sankul": "11122334455 -Divine Public School",
                    "office": "11122334455 -Divine Public School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                }
            ],
            'Raisen': [
                {
                    "employee": "AB1234-Rakesh Kumar",
                    "sankul": "23354912798 -Govt. Higher Secondary School",
                    "office": "23354912798 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "CD5678-Kavita Singh",
                    "sankul": "34459823721 -Govt. Primary School",
                    "office": "34459823721 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "EF9012-Raj Kumar",
                    "sankul": "45563178456 -Govt. Middle School",
                    "office": "45563178456 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "GH3456-Sapna Patel",
                    "sankul": "56678931234 -Govt. High School",
                    "office": "56678931234 -Govt. High School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "IJ7890-Alok Singh",
                    "sankul": "67784251983 -Govt. Primary School",
                    "office": "67784251983 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "KL2345-Meena Verma",
                    "sankul": "78897563214 -Govt. Middle School",
                    "office": "78897563214 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "MN6789-Suresh Kumar",
                    "sankul": "89908674325 -Govt. Higher Secondary School",
                    "office": "89908674325 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "OP1234-Kiran Sharma",
                    "sankul": "90098765432 -Govt. Primary School",
                    "office": "90098765432 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "QR5678-Sanjay Tiwari",
                    "sankul": "10011223344 -Govt. Middle School",
                    "office": "10011223344 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "ST9012-Aarti Gupta",
                    "sankul": "11122334455 -Govt. Higher Secondary School",
                    "office": "11122334455 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                }
            ],
            'Rajgarh': [
                {
                    "employee": "AB1234-Rajesh Meena",
                    "sankul": "23354912798 -Govt. Higher Secondary School",
                    "office": "23354912798 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "CD5678-Asha Sharma",
                    "sankul": "34459823721 -Govt. Middle School",
                    "office": "34459823721 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "EF9012-Suresh Gupta",
                    "sankul": "45563178456 -Govt. Primary School",
                    "office": "45563178456 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "GH3456-Neeta Patel",
                    "sankul": "56678931234 -Govt. Higher Secondary School",
                    "office": "56678931234 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "IJ7890-Ram Kumar",
                    "sankul": "67784251983 -Govt. Middle School",
                    "office": "67784251983 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "KL2345-Ritu Verma",
                    "sankul": "78897563214 -Govt. Primary School",
                    "office": "78897563214 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "MN6789-Sanjay Kumar",
                    "sankul": "89908674325 -Govt. Higher Secondary School",
                    "office": "89908674325 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "OP1234-Aarti Sharma",
                    "sankul": "90098765432 -Govt. Middle School",
                    "office": "90098765432 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "QR5678-Ajay Tiwari",
                    "sankul": "10011223344 -Govt. Primary School",
                    "office": "10011223344 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "ST9012-Neetu Gupta",
                    "sankul": "11122334455 -Govt. Higher Secondary School",
                    "office": "11122334455 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                }
            ]
        }
        function populateMainTable(data) {
            const mainTableBody = document.querySelector('#mainTable tbody');
            mainTableBody.innerHTML = ''; // Clear existing rows
            Object.entries(data).forEach(([district], index) => {
                const row = `
            <tr ">
                <td>${index + 1}</td>
                <td>${district}</td>
               
                <td><a data-bs-toggle="modal" data-bs-target="#districtModal" onclick="populateModalTable('${district}') " href="#"  class="font-bold" >${10}</a></td>
                <td>${40}</td>
                <td>${20}%</td>
            </tr>
        `;
                mainTableBody.innerHTML += row;
            });
        }
        function populateModalTable(district) {
            const modalTableBody = document.querySelector('#modalTable tbody');
            modalTableBody.innerHTML = ''; // Clear existing rows

            const districtData = employeeData[district];
            districtData.forEach((item, index) => {
                const row = `
            <tr>
                <td>${index + 1}</td>
                <td>${item.employee}</td>
                <td>${district}</td>
                <td>${item.sankul}</td>
                <td>${item.office}</td>
                <td>${item.department}</td>
                <td>${item.designation}</td>
                <td>${item.year}</td>
                <td><button type="button" class="btn btn-primary" onclick="ShowPdf()"><i class="fa fa-eye" aria-hidden="true"></i></button></td>
            </tr>
        `;
                modalTableBody.innerHTML += row;
            });
            document.getElementById('modalDistrictName').innerText = district;
        }
        // Populate the main table initially
        populateMainTable(employeeData);
    </script>


</asp:Content>

