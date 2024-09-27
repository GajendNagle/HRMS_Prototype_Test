<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpImportEnorllData.aspx.cs" Inherits="mis_HRMS_EmpImportEnorllData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="~/css/bootstrap.min.css">
    <link rel="stylesheet" href="~/css/sweetalert2.min.css">
    <link rel="stylesheet" href="~/css/custom.css">
    <script src="~/js/jquery-3.4.1.min.js"></script>
    <script src="~/js/sweetalert2.min.js"></script>
    <script src="~/js/Dropdowns.js"></script>
    <style>
        #hidediv {
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
                            <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Accepting Authority ACR Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <%--  <div class="row page-titles mb-4">--%>

    <div class="card border card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueeinfocontainer">
                        <div class="headertext btn btn-primary rounded-pill">
                            विवरण
                        </div>
                    
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                कर्मचारी एनोर्ल डेटा इम्पोर्ट करें
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <%--<form id="FormCreate" class="pt_upld_page_frm" enctype="multipart/form-data">--%>
                <fieldset>
                    <legend>Import Employee Enroll Data By Roll No. / रोल नंबर द्वारा कर्मचारी नामांकन डेटा अपलोड करें।</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-weight-bold">
                                    Upload File
                                    <br />
                                    फ़ाइल अपलोड करें
                                <span style="color: red">*</span>
                                </label>
                                <input type="file" name="file" accept=".xls, .xlsx, .XLS, .XLSX" id="EmpEnrollUploadFile" class="form-control" />
                                <span class="text-danger"></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group" style="bottom: 10px; position: absolute;">
                                <span class="text-danger">Note: File format should be in '.xls', '.xlsx' format</span>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <input type="submit" id="btnsubmit" value="Upload File" onclick="showdiv();" class="btn btn-outline-success  w-lg" />
                                <a href="EmpImportEnorllData.aspx" class="btn btn-outline-danger  w-lg">Clear</a>
                            </div>
                        </div>
                        <div class="col-12">
                            <span id="valerrormsg" class="text-danger"></span>
                        </div>
                    </div>
                </fieldset>
                <!-- Example data to render tables -->
                <!-- acceptedData and rejectedData should be converted to JSON format in the JavaScript -->
                <div id="hidediv">
                    <fieldset>
                        <legend>Employee Rejected Data Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>ApplicationNo
                            <br />
                                                </th>
                                                <th>RollNo<br />
                                                </th>
                                                <th>ConsRank
                            <br />
                                                </th>
                                                <th>FirstName
                            <br />
                                                </th>
                                                <th>MiddleName 
                            <br />
                                                </th>
                                                <th>LastName
                            <br />
                                                </th>
                                                <th>FatherName
                            <br />
                                                </th>
                                                <th>DOB
                            <br />
                                                </th>
                                                <th>Gender
                            <br />
                                                </th>
                                                <th>CastCode
                                                <br />
                                                </th>
                                                <th>ClassCode
                                                <br />
                                                </th>
                                                <th>DomicileStatus
                                                <br />
                                                </th>
                                                <th>SubjectCode
                                                <br />
                                                </th>
                                                <th>DesignationCode
       <br />
                                                </th>
                                                <th>SchoolMgmtDetailCode
       <br />
                                                </th>
                                                <th>RemarkStatus
       <br />
                                                </th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle">
                                                <td>6908230221856</td>
                                                <td>11314289</td>
                                                <td>1</td>
                                                <td>ASIM</td>
                                                <td>KUMAR</td>
                                                <td>DATTA</td>
                                                <td>NIRMAL DATTA</td>
                                                <td>27/07/1995</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>Y</td>
                                                <td>01</td>
                                                <td>251</td>
                                                <td>1</td>
                                                <td>Roll No is already exists in database.</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>6908230221856</td>
                                                <td>11314294</td>
                                                <td>2</td>
                                                <td>Mahaveer</td>
                                                <td>KUMAR</td>
                                                <td>Sisodiya</td>
                                                <td>R.Sisodiya </td>
                                                <td>27/07/1995</td>
                                                <td>NA</td>
                                                <td>NA</td>
                                                <td>NA</td>
                                                <td>NA</td>
                                                <td>NA</td>
                                                <td>NA</td>
                                                <td>NA</td>
                                                <td>ClassCode,  not available in database record</td>
                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Employee Accepted Data Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table id="Table2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>ApplicationNo
                     <br />
                                                </th>
                                                <th>RollNo<br />
                                                </th>
                                                <th>ConsRank
                     <br />
                                                </th>
                                                <th>FirstName
                     <br />
                                                </th>
                                                <th>MiddleName 
                     <br />
                                                </th>
                                                <th>LastName
                     <br />
                                                </th>
                                                <th>FatherName
                     <br />
                                                </th>
                                                <th>DOB
                     <br />
                                                </th>
                                                <th>Gender
                     <br />
                                                </th>
                                                <th>CastCode
                                         <br />
                                                </th>
                                                <th>ClassCode
                                         <br />
                                                </th>
                                                <th>DomicileStatus
                                         <br />
                                                </th>
                                                <th>SubjectCode
                                         <br />
                                                </th>
                                                <th>DesignationCode
                                                <br />
                                                </th>
                                                <th>SchoolMgmtDetailCode
                                                <br />
                                                </th>
                                                <th>RemarkStatus
                                                <br />
                                                </th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle">
                                                <td>6908230221856</td>
                                                <td>11314289</td>
                                                <td>1</td>
                                                <td>ASIM</td>
                                                <td>KUMAR</td>
                                                <td>DATTA</td>
                                                <td>NIRMAL DATTA</td>
                                                <td>27/07/1995</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>Y</td>
                                                <td>01</td>
                                                <td>251</td>
                                                <td>1</td>
                                                <td>Roll No is already exists in database.</td>
                                            </tr>

                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <!-- Additional section if there is accepted data -->
                    <hr />
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <span style="font: 800; font-weight: bold; color: #7c4baf;">
                                    <input type="checkbox" id="chkAcceptedData" />
                                    Are you want to import Accepted Data in database. </span>
                            </div>
                        </div>
                        <div class="col-12" id="dv_AcceptedDataBtn" style="display: none;">
                            <div class="form-group">
                                <input type="submit" id="btnAcceptDataSubmit" value="Submit Accepted Data" class="btn btn-outline-success  w-lg" />
                                <a href="EmpImportEnorllData.aspx" class="btn btn-outline-danger  w-lg">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>

           
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function showdiv() {

            document.getElementById("hidediv").style.display = "block";
        }
    </script>
    <script>
        const acceptedDataJson = JSON.stringify({ /* Example JSON data */ });
        const rejectedDataJson = JSON.stringify({ /* Example JSON data */ });

        if ("Your message here" != "") {
            window.onload = function () {
                const type = "Your type here";
                if (type == "1") {
                    Swal.fire("Success", "Your message here", "success");
                } else if (type == "2") {
                    Swal.fire("Warning", "Your message here", "warning");
                } else if (type == "3") {
                    Swal.fire("Sorry", "Your message here", "error");
                }
            }
        }

        $(document).ready(function () {
            $("#btnsubmit").click(async function (event) {
                event.preventDefault();
                var errormsg = validateField(EmpEnrollUploadFile) ? "" : "error";

                if (errormsg === "") {
                    try {
                        await ConfirmationAlert();
                    } catch (error) {
                        console.error('Error in AJAX request:', error);
                    }
                }
            });
            $("#btnAcceptDataSubmit").click(async function (event) {
                event.preventDefault();
                try {
                    await ConfirmationAlertAcceptedData();
                } catch (error) {
                    console.error('Error in AJAX request:', error);
                }
            });

            $("#chkAcceptedData").change(function () {
                if ($(this).is(":checked")) {
                    $("#dv_AcceptedDataBtn").css("display", "block");
                } else {
                    $("#dv_AcceptedDataBtn").css("display", "none");
                }
            });
        });


        $(function () {
            $('#FormCreate').validate({
                errorElement: 'span',
                errorPlacement: function (error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.form-group').append(error);
                },
                highlight: function (element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                }
            });

            $('.select2').select2().on('change', function () {
                $(this).valid();  // Trigger validation
            });
        });

        async function ConfirmationAlert() {
            try {
                const result = await showSwalConfirmation('Upload File');
                if (result === true) {
                    $("#FormCreate").submit();
                }
            } catch (error) {
                console.error("Error:", error);
            }
        }


        async function ConfirmationAlertAcceptedData() {
            try {
                const jsonData = JSON.stringify(acceptedDataJson);

                $.ajax({
                    url: '/EmpImportEnorllData/SaveAcceptedData',
                    type: 'POST',
                    contentType: 'application/json',
                    data: jsonData, // Send data as JSON string
                    success: function (response) {
                        if (response === 'Ok') {
                            window.location.href = '/EmpImportEnorllData/Index';
                        } else {
                            console.error("Error saving data:", response);
                            alert("An error occurred while saving data.");
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
                        //alert("An error occurred while processing your request.");
                    }
                });
            } catch (error) {
                console.error("Error:", error);
                alert("An error occurred.");
            }
        }
    </script>
</asp:Content>

