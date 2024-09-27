<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeOtherCurriculumActivitiesTab2.aspx.cs" Inherits="mis_Transaction_EmployeeOtherCurriculumActivitiesTab2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #empDetail {
            display: none;
        }

        th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            color: white;
        }
    </style>
    <style>
        #Button2 {
            display: none;
        }
    </style>



    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#Curriculum" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Other Curriculum Activities</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>National Or State Level Award</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">

            <img src="/img/Employee.png" style="height: 70px">
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <%-- <div class="card-header">
    </div>--%>
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">National Or State Level Award
                               /
                                राष्ट्रीय या राज्य स्तर के पुरस्कार<br />
                            </h4>
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
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesNotw.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivities.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तरीय प्रशिक्षण</b></a>
                            &nbsp; <i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i><a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab2.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तर के पुरस्कार</b></a>
                            &nbsp;<i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i>  <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab3.aspx" role="button"><b class="font-16 font-bold">प्रशिक्षण का विवरण</b></a>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />--%>
                    <fieldset>
                        <legend>National Or State Level Awards / राष्ट्रीय या राज्य स्तर के पुरस्कार
                        </legend>
                        <div class="row align-items-end">
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <div class="form-group">
                                    <label>
                                        Employee Uniq Id 
                                <br />
                                        कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                                    <input name="txtTotalEnrolledCrrnPost" type="text" class="form-control" autocomplete="off" placeholder="Enter Unique code " />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <hr />
                                <button id="Button1" type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()">View</button>
                                <%-- <a href="Trn_ApplyMutualTransfer.aspx" class="btn btn-info btn-rounded">Reset Details</a>--%>
                            </div>
                        </div>

                    </fieldset>
                    <div id="empDetail">
                        <fieldset>
                            <legend>Employee Personal Information / कर्मचारी की व्यक्तिगत जानकारी</legend>
                            <div class="row align-items-end">
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Name<br />
                                            कर्मचारी का नाम<span style="color: red">*</span></label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Aman Patidar" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID
                                            <br />
                                            यूनिक आई.डी<span style="color: red">*</span></label>
                                        <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4890" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Designation
                                            <br />
                                            पदनाम <span style="color: red">*</span></label>
                                        <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Sankul Code/ Name
      <br />
                                            संकुल कोड / नाम<span style="color: red">*</span></label>
                                        <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151236526-GOV VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Details of National or State Level Awards And Honors
                             /
                                राष्ट्रीय या राज्य स्तर के पुरस्कार व सम्मान का विवरण </legend>
                            <div class="row mt-4 align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Level Type<br />
                                            स्तर प्रकार का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="Panel" class="form-control select2">
                                            <option value="">--Select--</option>
                                            <option value="राष्ट्रीय स्तर">राष्ट्रीय स्तर </option>
                                            <option value="राज्य स्तर">राज्य स्तर </option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Name of Honor and Award<br />
                                            सम्मान व पुरस्कार का नाम दर्ज करें<span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="Award" class="form-control" placeholder="Enter Name of Honor and Award" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Year<br />
                                            वर्ष का चयन करें<span style="color: red">*</span>
                                        </label>
                                        <%--<input type="date" id="Year" class="form-control datepickeryear" placeholder="Enter To Date" />--%>

                                        <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" type="text" data-val="true" value="2024" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Order number if Any /<br />
                                            आदेश क्रमांक यदि है तो
                 <span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="Order" class="form-control" placeholder="Enter Order Number" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <button type="button" onclick="AddCurriculm()" id="btnQualification" class="btn btn-outline-success w-lg btn-border"><b>Add</b></button>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="tblExperience" style="display: none;">
                                            <tr>
                                                <th>Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th>Level Type<br />
                                                    स्तर प्रकार</th>
                                                <th>Name of Honor and Award<br />
                                                    सम्मान व पुरस्कार का नाम</th>
                                                <th>Year of Award<br />
                                                    पुरस्कार प्राप्ति का वर्ष</th>
                                                <th>Order number if Any<br />
                                                    आदेश क्रमांक यदि है तो</th>

                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <hr />
                            <div>
                                <button type="button" id="Button2" onclick="pageload()" class="btn btn-outline-success btn-border Alert-Confirmation w-lg">Save</button>
                            </div>
                        </fieldset>
                    </div>


                </div>
            </div>
        </div>
    </div>

    <script>
        function myFunction() {
            document.getElementById("empDetail").style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

    <script>
        var entryCount = 0;
        function pageload() {
            //location.reload();
        }

        function AddCurriculm() {
            // Maximum number of entries
            var maxEntries = 4;
            if (entryCount >= maxEntries) {
                Swal.fire("Warning", "You can only add up to 4 entries.", "warning");
                return;
            }

            // Get form values
            var levelType = $('#Panel').val();
            var award = $('#Award').val();
            var year = $('#Year').val();
            var orderNumber = $('#Order').val();

            // Validate form values
            if (!levelType) {
                Swal.fire("Warning", "Required to select Level Type.", "warning");
                return;
            }
            if (!award) {
                Swal.fire("Warning", "Required to enter Name of Honor and Award.", "warning");
                return;
            }
            if (!year) {
                Swal.fire("Warning", "Required to select Year.", "warning");
                return;
            }
            if (!orderNumber) {
                Swal.fire("Warning", "Required to enter Order Number.", "warning");
                return;
            }

            // Increment the entry count
            entryCount++;

            // Display the table if it's hidden
            $('#tblExperience').show();

            // Add entry to the table
            var newRow = `
            <tr>
                <td>${entryCount}</td>
                <td>${levelType}</td>
                <td>${award}</td>
                <td>${year}</td>
                <td>${orderNumber}</td>
            </tr>
        `;
            $('#tblExperience').append(newRow);

            // Clear form inputs
            $('#Panel').val('');
            $('#Award').val('');
            $('#Year').val('');
            $('#Order').val('');
            document.getElementById("Button2").style.display = "block";
        }



        //function myFunction() {
        //    Swal.fire("Success", "Data Saved Successfully.", "success");
        //}


    </script>

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
                //var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                //$(".datepickerYear").val(financialYear);
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
    </script>

</asp:Content>
