<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewAccumulatedComplaints.aspx.cs" Inherits="mis_Transaction_ViewAccumulatedComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 70rem;
                height: auto;
                overflow: visible !important;
                zoom: 91%;
            }
            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }

            .table-responsive {
                overflow: visible !important;
                width: 100% !important;
            }

            .table {
                width: 100% !important;
                table-layout: fixed;
            }

                .table td, .table th {
                    word-wrap: break-word;
                    white-space: normal; /* Add this to prevent text from wrapping */
                }

            /* Add this to scale the table to fit the page */
            .table {
                transform: scale(1.0); /* Adjust the scale value as needed */
            }
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
                            <a href="#Grievance" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Grievances Processing</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                <img src="../../img/Grievance%20Logo.png" style="height: 60px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Grievances Processing / शिकायत प्रोसेसिंग
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Grievances Processing / शिकायत प्रोसेसिंग 
                </legend>
                <div class="row">
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select District Name (Code)<br />
                                जिले का नाम (कोड) चयन करें<span style="color: red">*
                                </span>
                            </label>
                            <select class="form-control select2">
                                <option value="">Select</option>
                                <option value="1">1-Sheopur</option>
                                <option value="2">2-Morena</option>
                                <option value="3">3-Bhind</option>
                                <option value="4">4-Gwalior</option>
                                <option value="5">5-Datia</option>
                                <option value="6">6-Shivpuri</option>
                                <option value="7">7-Guna</option>
                                <option value="8">8-Ashoknagar</option>
                                <option value="9">9-Neemuch</option>
                                <option value="10">10-Mandsaur</option>
                                <option value="11">11-Ratlam</option>
                                <option value="12">12-Ujjain</option>
                                <option value="13">13-Shajapur</option>
                                <option value="14">14-Dewas</option>
                                <option value="15">15-Agar Malwa</option>
                                <option value="16">16-Jhabua</option>
                                <option value="17">17-Dhar</option>
                                <option value="18">18-Indore</option>
                                <option value="19">19-Khargone</option>
                                <option value="20">20-Barwani</option>
                                <option value="21">21-Khandwa</option>
                                <option value="22">22-Burhanpur</option>
                                <option value="23">23-Alirajpur</option>
                                <option value="24">24-Rajgarh</option>
                                <option value="25">25-Vidisha</option>
                                <option value="26">26-Bhopal</option>
                                <option value="27">27-Sehore</option>
                                <option value="28">28-Raisen</option>
                                <option value="29">29-Betul</option>
                                <option value="30">30-Harda</option>
                                <option value="31">31-Narmadapuram</option>
                                <option value="32">32-Tikamgarh</option>
                                <option value="33">33-Chhatarpur</option>
                                <option value="34">34-Panna</option>
                                <option value="35">35-Sagar</option>
                                <option value="36">36-Damoh</option>
                                <option value="37">37-Niwari</option>
                                <option value="38">38-Katni</option>
                                <option value="39">39-Jabalpur</option>
                                <option value="40">40-Narsinghpur</option>
                                <option value="41">41-Mandla</option>
                                <option value="42">42-Chhindwara</option>
                                <option value="43">43-Seoni</option>
                                <option value="44">44-Balaghat</option>
                                <option value="45">45-Dindori</option>
                                <option value="46">46-Satna</option>
                                <option value="47">47-Rewa</option>
                                <option value="48">48-Sidhi</option>
                                <option value="49">49-Singrauli</option>
                                <option value="50">50-Umaria</option>
                                <option value="51">51-Shahdol</option>
                                <option value="52">52-Anuppur</option>
                                <option value="53">53-RAISEN</option>
                                <option value="54">54-Maihar</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Section Name<br />
                                अनुभाग का नाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="Select">--Select--</option>
                                <option value="1">RMSA</option>
                                <option value="2">Est-1</option>
                                <option value="3">Est-2</option>
                                <option value="4">Est-3</option>
                                <option value="5">Est-4</option>
                                <option value="6">CAFMS</option>
                                <option value="7">New Cadre</option>
                                <option value="15">Finance</option>
                                <option value="16">Grant</option>
                                <option value="17">NSDL</option>
                                <option value="18">CPI</option>
                                <option value="19">Legal</option>
                                <option value="20">Mis</option>
                                <option value="21">Physical education</option>
                                <option value="22">Akadmik</option>
                                <option value="23">CM-RISE</option>
                                <option value="24">Planning</option>
                                <option value="26">TMC</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" d="Button1" onclick="myFunction()" class="btn w-lg btn-success btn-border">Search</button>
                            <a href="ViewAccumulatedComplaints.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>

                </div>

            </fieldset>
            <div>
                <fieldset>
                    <legend>Grievances Processing Details / शिकायत प्रसंस्करण विवरण
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-6 col-ld-4 col-xl-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.<br />
                                                सरल क्र.</th>
                                            <th>Grievance No.<br />
                                                शिकायत क्र. </th>
                                            <th>Employee Name<br />
                                                कर्मचारी का नाम</th>
                                            <th>Type<br />
                                                प्रकार</th>
                                            <th>Subject<br />
                                                विषय</th>
                                            <th>Registered Date<br />
                                                पंजीकृत तिथि</th>
                                            <th>Status<br />
                                                स्तिथि</th>
                                            <th>View<br />
                                                देखे</th>
                                            <th>Note Sheet
                                                        <br />
                                                नोट शीट</th>
                                            <th>Document<br />
                                                दस्तावेज़
                                            </th>
                                            <th>Application Forword<br />
                                                आवेदन अग्रेषित
                                            </th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>74060</td>
                                        <td>Nidhi Mishra [Prathmik Shikshak]</td>
                                        <td>Financial Related</td>
                                        <td>Pending arrears</td>
                                        <td>02/05/2024</td>
                                        <td>DEO, TIKAMGARH</td>
                                        <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a></td>
                                        <td><a href="#"><i class="fas fa-eye"></i></a></td>
                                        <td><a href="#" class="btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg1">Forword</a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>73045</td>
                                        <td>Kamlesh Prasad Soni (Madhymik Shikshak)</td>
                                        <td>Financial Related</td>
                                        <td>Pending arrears</td>
                                        <td>02/05/2024</td>
                                        <td>Commissioner, Public Instructions</td>
                                        <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a></td>
                                        <td><a href="#"><i class="fas fa-eye"></i></a></td>
                                        <td><a href="#" class="btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg1">Forword</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" id="myLargeModalLabel" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" id="myDIV">
                    <h4 class="modal-title" id="myLargeModalLabel1"></h4>
                    <button type="button" class="btn-close " data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12 text-center">
                            <h3 class="font-bold">जिला शिक्षा अधिकारी</h3>
                            <h4 class="font-bold">जिला : टीकमगढ़</h4>
                            <h4 class="font-bold">लोकसेवक का विवरण</h4>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered">
                                        <thead class="nowrap">
                                            <tr>
                                                <th>Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th>Complaint no.<br />
                                                    शिकायत क्र.</th>
                                                <th>Complaint Date<br />
                                                    शिकायत दिनाँक </th>
                                                <th>District<br />
                                                    जिला  </th>
                                                <th>Department<br />
                                                    विभाग </th>
                                                <th>Name of Public Servant<br />
                                                    लोकसेवक का नाम </th>
                                                <th>Designation<br />
                                                    पदनाम </th>
                                                <th>E-mail<br />
                                                    ईमेल </th>
                                                <th>Mobile<br />
                                                    मोबाइल</th>
                                                <th>Subject of Complaint<br />
                                                    शिकायत का विषय</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>74060</td>
                                            <td>02/05/2024</td>
                                            <td>टीकमगढ़</td>
                                            <td>Education</td>
                                            <td>Nidhi Mishra [BO8511]</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Gaurishankartkg@Gmail.Com</td>
                                            <td>7974333143</td>
                                            <td>बकाया लंबित</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-3 text-center">
                                <h5 class="font-bold">शिकायत का विवरण</h5>
                                <hr />
                            </div>
                        </div>
                        <div class="row mb-2 text-center">
                            <div class="col-md-12">
                                <label class="font-16 font-bold">विषय :- संकुल प्रचार्य विवेक जैन द्वारा मेरी वर्ष 2023 की जनवरी फरवारी मार्च अप्रैल की सैलारी नहीं दी जा रही है।</label>
                            </div>
                        </div>
                        <div class="row mt-4  text-end">
                            <div class="col-md-12 mt-2" style="margin-top: 3.5rem !important;">
                                <h6>अधिकारी/ कर्मचारी के हस्ताक्षर</h6>
                            </div>
                        </div>
                    </fieldset>


                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-outline-success w-lg" onclick="printModalContent('myLargeModalLabel')">Print</button>
                    <button type="button" class="btn btn-outline-danger  w-lg" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <div class="modal bs-example-modal-lg3" tabindex="-1" role="dialog" id="myLargeModalLabel8" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"></h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="row ">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">
                                <br />
                                <h3 class="font-bold">जिला शिक्षा अधिकारी</h3>
                                <h4 class="font-bold">जिला : टीकमगढ़</h4>
                                <h4 class="font-bold">लोकसेवक का विवरण</h4>
                                <h4 class="font-bold mt-4">नोट शीट</h4>
                            </div>
                            <div class="col-sm-2 mt-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>
                        </div>
                        <%--<hr style="height: 3px; border-width: 10px; color: black; background-color: black" />--%>
                        <div class="row mt-5">
                            <div class="col-md-12 table-responsive">
                                <table class="table text-center ">
                                    <tr>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">शिकायत क्र. :</th>
                                        <td style="text-align: left">74060</td>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">शिकायत दिनाँक :</th>
                                        <td style="text-align: left">02/05/2024</td>

                                    </tr>
                                    <tr>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">जिला :</th>
                                        <td style="text-align: left">टीकमगढ़</td>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">विभाग :</th>
                                        <td style="text-align: left">Education</td>
                                    </tr>
                                    <tr>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">लोकसेवक का नाम :</th>
                                        <td style="text-align: left">Nidhi Mishra [BO8511]</td>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">पदनाम :</th>
                                        <td style="text-align: left">Prathmik Shikshak</td>

                                    </tr>
                                    <tr>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">ईमेल :</th>
                                        <td style="text-align: left">Gaurishankartkg@Gmail.Com</td>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">मोबाइल :</th>
                                        <td style="text-align: left">7974333143</td>
                                    </tr>

                                    <tr>
                                        <th style="background-color: #ffffff !important; color: black; text-align: right">शिकायत का विषय :</th>
                                        <td style="text-align: left">बकाया लंबित</td>
                                        <th></th>
                                        <td></td>
                                    </tr>
                                    <tr>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-3 text-center">
                                <h5 class="font-bold">-: शिकायत का विवरण :-</h5>
                                <hr />
                            </div>
                        </div>
                        <div class="row mb-2 text-center">
                            <div class="col-md-12">
                                <label class="font-16 font-bold">विषय :- संकुल प्रचार्य विवेक जैन द्वारा मेरी वर्ष 2023 की जनवरी फरवारी मार्च अप्रैल की सैलारी नहीं दी जा रही है।</label>
                            </div>
                        </div>
                        <div class="row mt-4 text-end">
                            <div class="col-md-12 mt-2" style="margin-top: 3.5rem !important;">
                                <h6 class=" font-bold">अधिकारी/ कर्मचारी के हस्ताक्षर</h6>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-outline-success w-lg" id="btnPrint" onclick="printModalContent('myLargeModalLabel8')">Print</button>
                    <button type="button" class="btn btn-outline-danger w-lg" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <div class="modal bs-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel2" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Forward Application <span class="label bg-danger">Grievance No: 70297</span></h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="row align-items-end">
                            <div class="col-md-6 col-ld-4 col-xl-3">
                                <div class="form-group">
                                    <label>
                                        Forward To
                                        <br />
                                        आगे प्रेषित<span style="color: red">*</span></label>
                                    <select class="form-control">
                                        <option selected="selected" value="0">--Select--</option>
                                        <option value="16">DIET/DRC</option>
                                        <option value="13">BRC</option>
                                        <option value="12">BEO</option>
                                        <option value="11">DPC</option>
                                        <option value="8">DEO</option>
                                        <option value="7">JD</option>
                                        <option value="6">SCERT</option>
                                        <option value="5">RSK</option>
                                        <option value="3">CPI</option>
                                        <option value="1">SED</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6 col-ld-4 col-xl-3">
                                <div class="form-group">
                                    <label>
                                        Authority Name
                                        <br />
                                        प्राधिकरण का नाम <span style="color: red">*</span></label>
                                    <select class="form-control ">
                                        <option value="0">--Select--</option>
                                        <option value="1">RMSA</option>
                                        <option value="2">Est-1</option>
                                        <option value="3">Est-2</option>
                                        <option value="4">Est-3</option>
                                        <option value="5">Est-4</option>
                                        <option value="6">CAFMS</option>
                                        <option value="7">New Cadre</option>
                                        <option value="15">Finance</option>
                                        <option value="16">Grant</option>
                                        <option value="17">NSDL</option>
                                        <option value="18">CPI</option>
                                        <option value="19">Legal</option>
                                        <option value="20">Mis</option>
                                        <option value="21">Physical education</option>
                                        <option value="22">Akadmik</option>
                                        <option value="23">CM-RISE</option>
                                        <option value="24">Planning</option>
                                        <option value="26">TMC</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Type Note Here
                                        <br />
                                        यहां नोट टाइप करें<span style="color: red">*</span></label>
                                    <input class="form-control" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border Alert-Save" data-bs-dismiss="modal">Forword</button>
                    <button type="button" class="btn btn-outline-danger w-lg" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printModalContent(modalId) {
            var modal = document.getElementById(modalId);
            var hideElements = modal.querySelectorAll('.print-hide');
            hideElements.forEach(function (element) {
                element.style.display = 'none';
            });
            window.print();
            hideElements.forEach(function (element) {
                element.style.display = '';
            });
        }

    </script>

</asp:Content>

