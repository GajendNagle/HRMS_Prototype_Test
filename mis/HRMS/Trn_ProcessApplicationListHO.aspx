<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ProcessApplicationListHO.aspx.cs" Inherits="mis_HRMS_Trn_ProcessApplicationListHO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />
    <style>
        th {
            white-space: nowrap;
        }

        #ACR_Details_Graph .highcharts-data-label text {
            color: white !important;
            font-size: 0.65rem !important;
            font-weight: bold !important;
            text-align: center !important;
            fill: white !important;
            text-decoration: none !important;
        }

        .alert-success {
            background-color: #23a181;
        }

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
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 90%;
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
        }

        .card-body-caharts, .card-body, .card {
            margin-bottom: 0.1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Anukampa Logo.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=CompassionateAppointment" title="click to go on">Compassionate Appointment </a></li>
                    <li class="breadcrumb-item active">Action on Compassionate Appointment</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li class="nav-item">
                                <a class="nav-link  text-white " href="../Transaction/DisposeApplicationCaseForHO.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                            <li class="nav-item">
                                <div class="collapse navbar-collapse">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति </b>
                                            </a>
                                            <ul class="dropdown-menu">

                                                <li><a class="dropdown-item" href="../HRMS/Trn_HOCompassionateApproval.aspx">अनुकंपा नियुक्ति के लिए आवेदन पंजीयन/सुधार करें</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/HOPrintApplicationReport.aspx">प्रिंट आवेदन </a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  text-white " href="../HRMS/Trn_ProcessApplicationListHO.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति पर कार्यवाही</b></a>
                            </li>
                            <li class="nav-item"><a class="nav-link  text-white " href="../Transaction/AvedanperNirnayKareForHO.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>आवेदन पर निर्णय करें</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  text-white " href="../HRMS/NocSendByDistrictCollectorHO.aspx" role="button" style="font-size: 1.0em"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>NOC जिला  कलेक्टर को भेजी गई</b></a></li>
                            <li class="nav-item">
                                <div class="collapse navbar-collapse">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>रिपोर्ट</b>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="../Transaction/HOLevelReportSection.aspx?ID=DisposeCasesNOC">Dispose Cases</a></li>
                                                <li><a class="dropdown-item" href="../Transaction/HOLevelReportSection.aspx?ID=BlockWiseCounting">Block-Wise Statistics</a></li>
                                                <li><a class="dropdown-item" href="../Transaction/HOLevelReportSection.aspx?ID=DistrictWiseCounting">District-Wise Statistics</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/NocReportHO.aspx">NOC Report</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/HoRpt_CompassionateAppointment.aspx">Compassionate Appointment Report</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />
            <div class="col-md-12" runat="server" clientidmode="static" id="DataFirstTime">
                <div class="card">
                    <div class="card-body">
                        <div class="tab-content br-n pn">
                            <div id="navpills-1" class="tab-pane active">
                                <div class="row">
                                    <fieldset>
                                        <legend>Action on Compassionate Appointment<br />
                                            अनुकंपा नियुक्ति पर कार्यवाही </legend>

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>District / जिला<span style="color: red">*</span></label>
                                                    <asp:DropDownList runat="server" CssClass="form-select form-control" ID="ddlDistrict">
                                                        <asp:ListItem Text="selected" Value="0">- चयन करे -</asp:ListItem>
                                                        <asp:ListItem Value="51">Agar Malwa</asp:ListItem>
                                                        <asp:ListItem Value="49">Alirajpur</asp:ListItem>
                                                        <asp:ListItem Value="47">Anuppur</asp:ListItem>
                                                        <asp:ListItem Value="46">Ashoknagar</asp:ListItem>
                                                        <asp:ListItem Value="45">Balaghat</asp:ListItem>
                                                        <asp:ListItem Value="28">Barwani</asp:ListItem>
                                                        <asp:ListItem Value="35">Betul</asp:ListItem>
                                                        <asp:ListItem Value="3">Bhind</asp:ListItem>
                                                        <asp:ListItem Value="32">Bhopal</asp:ListItem>
                                                        <asp:ListItem Value="48">Burhanpur</asp:ListItem>
                                                        <asp:ListItem Value="9">Chhatarpur</asp:ListItem>
                                                        <asp:ListItem Value="43">Chhindwara</asp:ListItem>
                                                        <asp:ListItem Value="12">Damoh</asp:ListItem>
                                                        <asp:ListItem Value="5">Datia</asp:ListItem>
                                                        <asp:ListItem Value="23">Dewas</asp:ListItem>
                                                        <asp:ListItem Value="25">Dhar</asp:ListItem>
                                                        <asp:ListItem Value="41">Dindori</asp:ListItem>
                                                        <asp:ListItem Value="7">Guna</asp:ListItem>
                                                        <asp:ListItem Value="4">Gwalior</asp:ListItem>
                                                        <asp:ListItem Value="36">Harda</asp:ListItem>
                                                        <asp:ListItem Value="26">Indore</asp:ListItem>
                                                        <asp:ListItem Value="39">Jabalpur</asp:ListItem>
                                                        <asp:ListItem Value="24">Jhabua</asp:ListItem>
                                                        <asp:ListItem Value="38">Katni</asp:ListItem>
                                                        <asp:ListItem Value="29">Khandwa</asp:ListItem>
                                                        <asp:ListItem Value="27">Khargone</asp:ListItem>
                                                        <asp:ListItem Value="42">Mandla</asp:ListItem>
                                                        <asp:ListItem Value="19">Mandsaur</asp:ListItem>
                                                        <asp:ListItem Value="2">Morena</asp:ListItem>
                                                        <asp:ListItem Value="37">Narmadapuram</asp:ListItem>
                                                        <asp:ListItem Value="40">Narsinghpur</asp:ListItem>
                                                        <asp:ListItem Value="18">Neemuch</asp:ListItem>
                                                        <asp:ListItem Value="52">Niwari</asp:ListItem>
                                                        <asp:ListItem Value="10">Panna</asp:ListItem>
                                                        <asp:ListItem Value="34">Raisen</asp:ListItem>
                                                        <asp:ListItem Value="30">Rajgarh</asp:ListItem>
                                                        <asp:ListItem Value="20">Ratlam</asp:ListItem>
                                                        <asp:ListItem Value="14">Rewa</asp:ListItem>
                                                        <asp:ListItem Value="11">Sagar</asp:ListItem>
                                                        <asp:ListItem Value="13">Satna</asp:ListItem>
                                                        <asp:ListItem Value="33">Sehore</asp:ListItem>
                                                        <asp:ListItem Value="44">Seoni</asp:ListItem>
                                                        <asp:ListItem Value="16">Shahdol</asp:ListItem>
                                                        <asp:ListItem Value="22">Shajapur</asp:ListItem>
                                                        <asp:ListItem Value="1">Sheopur</asp:ListItem>
                                                        <asp:ListItem Value="6">Shivpuri</asp:ListItem>
                                                        <asp:ListItem Value="17">Sidhi</asp:ListItem>
                                                        <asp:ListItem Value="50">Singrauli</asp:ListItem>
                                                        <asp:ListItem Value="8">Tikamgarh</asp:ListItem>
                                                        <asp:ListItem Value="21">Ujjain</asp:ListItem>
                                                        <asp:ListItem Value="15">Umaria</asp:ListItem>
                                                        <asp:ListItem Value="31">Vidisha</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-2 mt-4">
                                                <button type="button" class="Alert-Confirmation btn btn-success btn-rounded w-100 btn-block" id="btnView" onclick="HideShow();">Search </button>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <br />
                                    <fieldset>
                                        <legend>Details</legend>
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
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered table-hover text-center " id="GrdSchoolDetails" style="width: 100%; border-collapse: collapse;">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col">Sr. No.<br />
                                                                        सरल क्र.</th>
                                                                    <th scope="col">Deceased Staff Officer<br />
                                                                        दिवंगत कर्मचारी अधिकरी </th>
                                                                    <th scope="col">Designation<br />
                                                                        पद</th>
                                                                    <th scope="col">Date of Death<br />
                                                                        मृत्यु  दिनांक</th>
                                                                    <th scope="col">Aplicant Name<br />
                                                                        आवेदक का नाम</th>

                                                                    <th scope="col">Gender<br />
                                                                        लिंग </th>
                                                                    <th scope="col">Class<br />
                                                                        वर्ग</th>
                                                                    <th scope="col">Applicant's D.O.B<br />
                                                                        आवेदक की जन्म तिथि </th>
                                                                    <th scope="col">Mobile No.<br />
                                                                        मोबाईल  नंबर</th>
                                                                    <th scope="col">Applicant's Relationship with<br />
                                                                        Deceased Teacher<br />
                                                                        आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                                                    <th scope="col">Applicant Marital Status<br />
                                                                        आवेदक की वैवाहिक स्थिति</th>
                                                                    <th scope="col">Selected Option of Post for Appointment<br />
                                                                        नियुक्ति हेतु पद का चयनित विकल्प</th>
                                                                    <th scope="col">Applicant Educational Qualification<br />
                                                                        आवेदक की शैक्षणिक योग्यता </th>
                                                                    <th scope="col">Status of Passing Primary Teacher Eligibility Test for Primary Teacher<br />
                                                                        प्राथमिक शिक्षक हेतु  प्राथमिक  शिक्षक पात्रता  परीछा उत्तीर्ण की स्थिति</th>
                                                                    <th scope="col">Print Note Sheet<br />
                                                                        नोटशित प्रिंट करे </th>
                                                                    <th scope="col">
                                                                        <br />
                                                                        Action<br />
                                                                        कार्यवाही करे </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Puran Singh Kushawah</td>
                                                                    <td>Asstt Teacher(LDT)</td>
                                                                    <td>28/12/2021</td>
                                                                    <td>BRAJESH KUSHVAH</td>
                                                                    <td>Male</td>
                                                                    <td>S.C.</td>
                                                                    <td>10/08/1997</td>
                                                                    <td>70477701125</td>
                                                                    <td>Son</td>
                                                                    <td>अविवाहित  </td>
                                                                    <td>शैक्षणिक संवर्ग </td>
                                                                    <td>12 PCM B SC COMPUTER SCIENCE</td>
                                                                    <td>नहीं </td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                                                    </td>
                                                                    <td><a class="btn btn-success">Action</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Satendra Bahadur Singh</td>
                                                                    <td>Madhyami8k Shaishak</td>
                                                                    <td>15/04/2022</td>
                                                                    <td>SHAKSHAM SHINGH </td>
                                                                    <td>Male</td>
                                                                    <td>S.C.</td>
                                                                    <td>12/12/1996</td>
                                                                    <td>70477701125</td>
                                                                    <td>Son</td>
                                                                    <td>अविवाहित  </td>
                                                                    <td>लिपिकीय संवर्ग  </td>
                                                                    <td>GRADUATE</td>
                                                                    <td>नहीं </td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                                                    </td>
                                                                    <td><a class="btn btn-success">Action</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Achhe Lal patel </td>
                                                                    <td>Asstt Grade-2</td>
                                                                    <td>16/01/2023</td>
                                                                    <td>PRAMOD KUMAR PATEL</td>
                                                                    <td>Male</td>
                                                                    <td>O.B.C.</td>
                                                                    <td>02/10/2000</td>
                                                                    <td>70477701125</td>
                                                                    <td>Son</td>
                                                                    <td>अविवाहित  </td>
                                                                    <td>लिपिकीय संवर्ग  </td>
                                                                    <td>GRADUATE</td>
                                                                    <td>नहीं </td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                                                    </td>
                                                                    <td><a class="btn btn-success">Action</a></td>
                                                                </tr>
                                                            </tbody>
                                                            <tfoot>
                                                            </tfoot>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid " hidden="hidden" id="divRegisrationUpdate">
                <div class="card  bg-secondary">
                    <div class="card-header">
                        <span><b class="fw-bold">अनुकंपा संबंधी आवेदन पर उचित कार्यवाही दर्ज करें</b></span>

                    </div>
                </div>
                <div class="card-body ">
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="alert alert-success mt-2" style="text-align: left;">
                                <strong><b style="color: white;">दिवंगत कर्मचारी का विवरण  </b></strong>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="card">
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Code<br />
                                            कर्मचारी कोड<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtU_Id" type="text" value="AK7328" maxlength="6" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtU_Id" disabled="disabled"
                                            class="form-control vd_Required m-0" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Name of Deceased Employee<br />
                                            दिवंगत कर्मचारी का नाम<span style="color: Red;">*</span></label>

                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtName" type="text"
                                            value="Phul Singh Kushawah" maxlength="20" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtName"
                                            disabled="disabled" class="form-control vd_Required" onkeypress="return CharspaceOnly(event)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Gender<br />
                                            लिंग<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Male" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Caste<br />
                                            जाति<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="SC" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Last Posting District<br />
                                            अंतिम पोस्टिंग जिला<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Vidisha" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Deceased Staff Cadre<br />
                                            दिवंगत कर्मचारी कैडर<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Regular Class- III " maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Deceased Officer/Employee Designation<br />
                                            दिवंगत अधिकारी/कर्मचारी पदनाम<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="Work Assistant" maxlength="50" disabled="disabled" class="form-control vd_Required " />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Last School/Office and Employee Address<br />
                                            अंतिम स्कूल/ कार्यालय और कर्मचारी का पता<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="NGPS VEERPUR BANDH ( 1 to 5)" maxlength="50" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtL_S_C_Address" disabled="disabled" class="form-control vd_Required " />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Cause of Death<br />
                                            मृत्यु का कारण<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="कोविड-19 संक्रमण " maxlength="50" disabled="disabled" class="form-control vd_Required " />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Date of Death<br />
                                            मृत्यु दिनाँक<span style="color: Red;">*</span></label>
                                        <div class="input-group">
                                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="28/12/2021" maxlength="10" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtD_O_Death" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Number of Family Members of Deceased Employee<br />
                                            दिवंगत कर्मचारी के परिवार के सदस्यों की संख्या : <span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="4" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />

                                    </div>

                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Department Name<br />
                                            विभाग का नाम<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtDepartment_Name" type="text" value="Education" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtDepartment_Name" disabled="disabled" class="form-control vd_Required" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Date of Receipt of Application<br />
                                            आवेदन प्राप्त तिथि<span style="color: Red;">*</span></label>
                                        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtaaprecievedate" type="text" value="21/04/2023" maxlength="10" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtaaprecievedate" disabled="disabled" class="form-control vd_Required dummy" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="alert alert-success mt-4" style="text-align: left;">
                        <strong><b style="color: white;">मृतक लोकसेवक/ शिक्षक के परिवार के सभी सदस्यों की जानकारी </b></strong>
                    </div>
                    <div class="col-md-12 table-responsive">
                        <div>
                            <table class="footable table text-center table-striped table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily" style="border-collapse: collapse;">
                                <thead>
                                    <tr class="card-header">
                                        <th data-class="expand" scope="col">Sr.No.<br />
                                            सरल क्र.</th>
                                        <th data-class="phone,tablet" scope="col">Name of Member<br />
                                            सदस्य का नाम</th>
                                        <th data-hide="phone,tablet" scope="col">Relationship with the Deceased<br />
                                            दिवंगत के साथ संबंध </th>
                                        <th data-hide="phone,tablet" scope="col">Business<br />
                                            व्यवसाय</th>
                                        <th data-hide="phone,tablet" scope="col">Date Of Birth<br />
                                            जन्म दिनांक</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblRowNumber">1</span>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblmemname" style="color: black;">KHILONI KUSHWAH</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblrelation" style="color: black;">Wife/ Husband</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblDOB" style="color: black;">01/01/1973</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblRowNumber">2</span>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblmemname" style="color: black;">RAHUL KUSHWAH</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblrelation" style="color: black;">Son</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblDOB" style="color: black;">17/07/1995</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblRowNumber">3</span>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblmemname" style="color: black;">BRAJESH KUSHWAH</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblrelation" style="color: black;">Son</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblDOB" style="color: black;">10/08/1997</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblRowNumber">4</span>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblmemname" style="color: black;">CHHAYA KUSHWAH</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblrelation" style="color: black;">Daughter</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblDOB" style="color: black;">02/08/2002</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblRowNumber">5</span>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblmemname" style="color: black;">OTU KUSHWAH</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: left;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblrelation" style="color: black;">Son</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center;">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblDOB" style="color: black;">30/07/2003</span>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="alert alert-success mt-4" style="text-align: left;">
                        <strong><b style="color: white;">परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया है</b>  </strong>
                    </div>
                    <div class="col-md-12 table-responsive">
                        <div>
                            <table class="footable table table-striped table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Grd2" style="border-collapse: collapse;">
                                <thead>
                                    <tr>
                                        <th data-class="expand" scope="col">Sr. No.
                        <br />
                                            सरल क्र.
                                        </th>
                                        <th data-class="phone,tablet" scope="col">Document<br />
                                            दस्तावेज़</th>
                                        <th data-hide="phone,tablet" scope="col">View
                        <br />
                                            दस्तावेज़ देखे</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>जन्मतिथि के प्रमाणीकरण हेतु हाई स्कूल की अंक सूची अथवा सक्षम अधिकारी द्वारा जारी किया गया  जन्म प्रमाण पत्र </td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>स्थानीय / मूल निवासी होने का प्रमाण पत्र</td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>यदि आवेदक अनुसूचित जाति/जनजाति तथा अन्य पिछड़े वर्ग का हो तो प्रमाण पत्र.</td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>हायर सेकेण्डरी /स्नातक या अन्य परीक्षा उत्तीर्ण करने के प्रमाण पत्र.</td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>परिवार के सभी सदस्यों द्वारा आवेदक को अनुकंपा नियुक्ति का लाभ लेने की सहमति का शपथ पत्र </td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>आवेदक का फोटो  अपलोड करे.</td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>राशन कार्ड / सेवा पुस्तिका अथवा अन्य प्रमाणित दस्तावेज जिसमे परिवार के सदस्यों की जानकारी हो</td>
                                        <td>
                                            <a class="btn btn-success">View</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="alert alert-success mt-4" style="text-align: left;">
                        <b><strong style="color: white;">Action</strong></b>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label>
                                <b style="color: black;">Action<br />
                                    कार्रवाई</b>  <span style="color: Red;">*</span></label>
                            <select name="ctl00$ContentBody$ddlkaryvahi" id="ddlkaryvahi" class="form-control form-select" onchange="showHideRemarkView()">
                                <option value="0">- Select  - </option>
                                <option value="1">आवेदन मे आपत्ति/लंबित किया जाना है</option>
                                <option value="2">आवेदन स्वीकार  करे </option>
                                <option value="3">आवेदन फॉरवर्ड करे संभागीय संयुक्त संचालक को </option>
                                <option value="4">आवेदन फॉरवर्ड  करे जिला शिक्षा अधिकारी को  </option>
                            </select>
                        </div>
                        <%-- new values start for DropDown--%>
                        <div class="row mt-3" id="ApplicationAcceptRemarkView" style="display: none">
                            <div class="col-md-6">
                                <label>
                                    <b>Remark<br />
                                        रिमार्क </b><span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3" id="DivisionalDirector&RemarkView" style="display: none">
                            <div class="col-md-3">
                                <label>
                                    <b>Division<br />
                                        संभाग </b><span style="color: Red;">*</span>
                                </label>
                                <asp:DropDownList runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="">Bhopal </asp:ListItem>
                                    <asp:ListItem Value="">Chambal </asp:ListItem>
                                    <asp:ListItem Value="">Gwalior</asp:ListItem>
                                    <asp:ListItem Value="">Indore</asp:ListItem>
                                    <asp:ListItem Value="">Jabalpur</asp:ListItem>
                                    <asp:ListItem Value="">Narmadapuram</asp:ListItem>
                                    <asp:ListItem Value="">Rewa</asp:ListItem>
                                    <asp:ListItem Value="">Sagar</asp:ListItem>
                                    <asp:ListItem Value="">Shahdol</asp:ListItem>
                                    <asp:ListItem Value="">Ujjain</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6" id="RemarkView">
                                <label>
                                    <b>Remark<br />
                                        रिमार्क </b><span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3" id="Division&RemarkView" style="display: none">
                            <div class="col-md-3">
                                <label>
                                    <b>District<br />
                                        जिला </b><span style="color: Red;">*</span>
                                </label>
                                <asp:DropDownList runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0">-- Select --  </asp:ListItem>
                                    <asp:ListItem Value="1">Bhopal भोपाल   </asp:ListItem>
                                    <asp:ListItem Value="2">Agar Malwa आगर  मालवा  </asp:ListItem>
                                    <asp:ListItem Value="3">Alirajpur अलीराजपुर   </asp:ListItem>
                                    <asp:ListItem Value="4">Anuppur अनूपपुर   </asp:ListItem>
                                    <asp:ListItem Value="5">Ashoknagar अशोकनगर   </asp:ListItem>
                                    <asp:ListItem Value="6">Balaghat बालाघाट   </asp:ListItem>
                                    <asp:ListItem Value="7">Barwani बड़वानी   </asp:ListItem>
                                    <asp:ListItem Value="8">Betul बैतूल   </asp:ListItem>
                                    <asp:ListItem Value="9">Bhind भिण्ड   </asp:ListItem>
                                    <asp:ListItem Value="10">Burhanpur बुरहानपुर   </asp:ListItem>
                                    <asp:ListItem Value="11">Chhatarpur छतरपुर   </asp:ListItem>
                                    <asp:ListItem Value="12">Damoh दमोह   </asp:ListItem>
                                    <asp:ListItem Value="13">Chhindwara छिंदवाडा   </asp:ListItem>
                                    <asp:ListItem Value="14">Datia दतिया   </asp:ListItem>
                                    <asp:ListItem Value="15">Dewas देवास   </asp:ListItem>
                                    <asp:ListItem Value="16">Dhar धार   </asp:ListItem>
                                    <asp:ListItem Value="17">Dindori डिण्डौरी   </asp:ListItem>
                                    <asp:ListItem Value="18">Guna गुना   </asp:ListItem>
                                    <asp:ListItem Value="19">Gwalior ग्वालियर   </asp:ListItem>
                                    <asp:ListItem Value="20">Harda हरदा   </asp:ListItem>
                                    <asp:ListItem Value="21">Indore इन्दौर   </asp:ListItem>
                                    <asp:ListItem Value="22">Jabalpur जबलपुर   </asp:ListItem>
                                    <asp:ListItem Value="23">Katni कटनी   </asp:ListItem>
                                    <asp:ListItem Value="24">Jhabua झाबुआ   </asp:ListItem>
                                    <asp:ListItem Value="25">Khandwa खण्डवा   </asp:ListItem>
                                    <asp:ListItem Value="26">Mandla मण्डला   </asp:ListItem>
                                    <asp:ListItem Value="27">Khargone खरगोन   </asp:ListItem>
                                    <asp:ListItem Value="28">Morena मुरैना   </asp:ListItem>
                                    <asp:ListItem Value="29">Mandsaur मन्दसौर   </asp:ListItem>
                                    <asp:ListItem Value="30">Narmadapuram नर्मदापुरम  </asp:ListItem>
                                    <asp:ListItem Value="31">Narsinghpur नरसिंहपुर   </asp:ListItem>
                                    <asp:ListItem Value="32">Neemuch नीमच   </asp:ListItem>
                                    <asp:ListItem Value="33">Niwari निवाड़ी  </asp:ListItem>
                                    <asp:ListItem Value="34">Panna पन्ना   </asp:ListItem>
                                    <asp:ListItem Value="35">Raisen रायसेन   </asp:ListItem>
                                    <asp:ListItem Value="36">Rajgarh राजगढ़   </asp:ListItem>
                                    <asp:ListItem Value="37">Ratlam रतलाम   </asp:ListItem>
                                    <asp:ListItem Value="38">Rewa रीवा   </asp:ListItem>
                                    <asp:ListItem Value="39">Sagar सागर   </asp:ListItem>
                                    <asp:ListItem Value="40">Satna सतना   </asp:ListItem>
                                    <asp:ListItem Value="41">Sehore सीहोर   </asp:ListItem>
                                    <asp:ListItem Value="42">Seoni सिवनी   </asp:ListItem>
                                    <asp:ListItem Value="43">Shahdol शहडोल   </asp:ListItem>
                                    <asp:ListItem Value="44">Shajapur शाजापुर   </asp:ListItem>
                                    <asp:ListItem Value="45">Sheopur श्योपुर   </asp:ListItem>
                                    <asp:ListItem Value="46">Shivpuri शिवपुरी   </asp:ListItem>
                                    <asp:ListItem Value="47">Sidhi सीधी   </asp:ListItem>
                                    <asp:ListItem Value="48">Singrauli सिंगरौली   </asp:ListItem>
                                    <asp:ListItem Value="49">Tikamgarh टीकमगढ़   </asp:ListItem>
                                    <asp:ListItem Value="50">Ujjain उज्जैन   </asp:ListItem>
                                    <asp:ListItem Value="51">Umaria उमरिया   </asp:ListItem>
                                    <asp:ListItem Value="52">Vidisha विदिशा  </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <label>
                                    <b>Remark<br />
                                        रिमार्क </b><span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <%--new values end--%>
                        <div id="divApattiHai" style="display: none">
                            <div class="alert alert-success mt-4 w-100" style="text-align: left;">
                                <b><strong style="color: white;">पेंडेंसी के लिए आवेदन और कारण  पर की गई  कार्यवाही का विवरण </strong></b>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            <b>If there is Any Objection<br />
                                                यदि ,आपत्ति हो तो </b><span style="color: Red;">*</span>
                                        </label>
                                        <asp:DropDownList runat="server" CssClass="form-control">
                                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                                            <asp:ListItem Value="1"> नियमित  पद रिक्त नहीं होना</asp:ListItem>
                                            <asp:ListItem Value="2"> आवेदक द्वारा  विलम्ब से आवेदन प्रस्तुत करना</asp:ListItem>
                                            <asp:ListItem Value="3">  आवेदन अपूर्ण होना </asp:ListItem>
                                            <asp:ListItem Value="4">आवश्यक दस्तावेज संलग्र  नहीं होना</asp:ListItem>
                                            <asp:ListItem Value="5">आवेदक की शैक्षणिक  योग्यता नहीं होना</asp:ListItem>
                                            <asp:ListItem Value="6">आश्रित  का बालिग्र अर्थात २१ वर्ष से कम होना </asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            <b>Objection Details<br />
                                                आपत्ति का विवरण</b><span style="color: Red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            <b>Description of Action Taken<br />
                                                लिए गए एक्शन का विवरण</b><span style="color: Red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            <b>Remark<br />
                                                रिमार्क </b><span style="color: Red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="Divbutton">
                            <div class="row justify-content-center">
                                <div class="col-md-1 mt-3">
                                    <button type="button" class="Alert-Confirmation2 btn btn-success btn-rounded w-100 btn-block">Save</button>
                                </div>

                            </div>
                        </div>
                        <script type="text/javascript">
                            function showHideRemarkView() {
                                var ddl = document.getElementById('ddlkaryvahi');
                                var remarkView = document.getElementById("DivisionalDirector&RemarkView");
                                var DivisionRemarkView = document.getElementById("Division&RemarkView");
                                var ApplicationAcceptRemarkView = document.getElementById("ApplicationAcceptRemarkView");

                                if (ddl.value != "0" && ddl.value != "1" && ddl.value == "3") {
                                    remarkView.style.display = "flex";
                                    divApattiHai.style.display = "none";
                                    DivisionRemarkView.style.display = "none";
                                    ApplicationAcceptRemarkView.style.display = "none";
                                }
                                else if (ddl.value == "4") {
                                    DivisionRemarkView.style.display = "flex";
                                    remarkView.style.display = "none";
                                    remarkView.style.display = "none";
                                    divApattiHai.style.display = "none";
                                    ApplicationAcceptRemarkView.style.display = "none";

                                }
                                else if (ddl.value == "2") {
                                    ApplicationAcceptRemarkView.style.display = "flex";
                                    remarkView.style.display = "none";
                                    divApattiHai.style.display = "none";
                                    DivisionRemarkView.style.display = "none";


                                }

                                else if (ddl.value == "1") {
                                    divApattiHai.style.display = "initial";
                                    remarkView.style.display = "none";
                                    DivisionRemarkView.style.display = "none";
                                    ApplicationAcceptRemarkView.style.display = "none";
                                }
                                else {
                                    remarkView.style.display = "none";
                                    divApattiHai.style.display = "none";
                                    DivisionRemarkView.style.display = "none";
                                    ApplicationAcceptRemarkView.style.display = "none";
                                }
                            }
                        </script>
                    </div>
                    <br />
                </div>
            </div>
        </div>
    </div>
    <%--Print PDF--%>
    <%--PDF--%>
    <%--my code of view data --%>
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>


                        <div class="row" style="font-family: Aparajita">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">
                                <h3><strong><b>Education portal 3.0</b></strong></h3>
                                <h4><strong><b>कार्यालय : जिला शिक्षा  अधिकारी Gwalior</b></strong></h4>
                                <h4><strong><b>नोट  शिट</b></strong></h4>
                                <h4><strong>
                                    <br />
                                    <br />

                                    <b style="position: absolute; left: -22%; top: 95%">प्रकरण क्र. 5252/AK7328/06/05/2024</b>
                                    <b style="position: absolute; right: -20%; top: 95%">दिनांक :06/05/2024</b>
                                </strong></h4>

                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto; position: relative; left: 10px;" class="responsive" />
                            </div>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <h4 class="fw-bold"><span class="text-danger">विषय :-  </span>श्री BRAJESH KUSHWHA की  अनुकम्पा  नियुक्ति  हेतु  आवेदन पत्र के  सम्बन्ध  में </h4>
                        <br />

                        <table class="table table-bordered">
                            <tbody>

                                <tr>

                                    <th colspan="4" class="text-center font-20">: : <u>दिवंगत अधिकारी/कर्मचारी का विवरण</u> : :</th>

                                </tr>

                                <tr class="mt-3">
                                    <th>दिवंगत अधिकारी/कर्मचारी कोड:</th>
                                    <td>AK7328</td>
                                    <th>दिवंगत अधिकारी/कर्मचारी का नाम: </th>
                                    <td>Phul Singh Kushawah</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>लिंग   :</th>
                                    <td>Male </td>
                                    <th>अंतिम पोस्ट जिला का चयन करें:</th>
                                    <td>Gwalior</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>दिवंगत अधिकारी/कर्मचारी केडर: </th>
                                    <td>Regular Class IV</td>
                                    <th>दिवंगत अधिकारी/कर्मचारी पदनाम:</th>
                                    <td>Asstt Teacher(LDT)</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>मृत्यु का कारण :</th>
                                    <td>अन्य </td>
                                    <th>अंतिम स्कूल/कार्यालय  और कर्मचारी का पता : </th>
                                    <td>23040306405</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>जाति </th>
                                    <td>OBC</td>
                                    <th>मृत्यु दिनांक:</th>
                                    <td>28/12/2021</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>परिवार के जीवित सदस्यों की संख्या : </th>
                                    <td>5</td>
                                    <th>आवेदन प्राप्त तिथि  : </th>
                                    <td>21/04/2023</td>
                                </tr>
                                <tr>
                                    <th>विभाग  का नाम  :</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th colspan="4" class="text-center font-20">: : <u>आवेदक का विवरण</u> : :</th>
                                </tr>
                                <tr class="mt-3">
                                    <th>आवेदक का नाम :</th>
                                    <td>BRAJESH KUSHWAH</td>
                                    <th>लिंग : </th>
                                    <td>Male</td>

                                </tr>
                                <tr class="mt-3">
                                    <th>वैवाहिक स्तिथि   :</th>
                                    <td>Unmarried</td>
                                    <th>जन्म दिनांक: </th>
                                    <td>10/08/1997</td>

                                </tr>
                                <tr class="mt-3">
                                    <th>प्राप्ति की तारीख :</th>
                                    <td>21/04/2023</td>
                                    <th>दिवंगत  के साथ संबंध: </th>
                                    <td>Son</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>आवेदक किस पद के लिए नियुक्ति चाहता हैं:</th>
                                    <td>शैक्षणिक संवर्ग </td>
                                    <th>पदनाम: </th>
                                    <td>प्रयोगशाला   शिक्षक</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>क्या शिक्षक पात्रता  परीक्षा उत्तीर्ण(TET) हैं :</th>
                                    <td>नहीं</td>
                                    <th>मोबइल  नंबर: </th>
                                    <td>7047701125</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>पात्रता  परीक्षा का वर्ष :</th>
                                    <td></td>
                                    <th>व्यावसायिक योग्यता : </th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                        <h4 class="text-center font-20 fw-bold">: : <u>परिवार का विवरण</u> : : </h4>
                        <table class="table table-bordered text-center">
                            <thead>
                                <tr style="text-align: center; padding: 4px" class="card-header">
                                    <th>क्र.</th>
                                    <th>सदस्य का नाम</th>
                                    <th>दिवंगत के साथ संबंध </th>
                                    <th>व्यवसाय</th>
                                    <th>जन्म दिनांक</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>1</td>
                                <td>KHILONI KUSHWAH </td>
                                <td>Wife/Husband</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>01/01/1973</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>RAHUL KUSHWAH</td>
                                <td>Son</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>17/07/1995</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>KUSHWAH</td>
                                <td>SoN</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>10/08/1997</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>CHAYA KUSHWAH</td>
                                <td>Daughter</td>
                                <td>20/08/2002</td>
                                <td>कोई व्यवसाय नहीं </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>OTU KUSHWAH</td>
                                <td>Son</td>
                                <td>30/07/2003</td>
                                <td>कोई व्यवसाय नहीं </td>
                            </tr>
                        </table>
                    </fieldset>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <%--my code--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../dist/DashboardNew/js/jquery1-3.4.1.min.js"></script>
    <script src="../dist/DashboardNew/js/jquery.waypoints.min.js"></script>
    <script src="../dist/DashboardNew/js/jquery.counterup.min.js"></script>
    <script src="../dist/DashboardNew/js/custom.js"></script>
    <script src="../dist/dashboard/raphael-min.js"></script>
    <script src="../dist/dashboard/morris.js"></script>
    <%--<script src="../dist/js/highcharts/highcharts.js"></script>--%>
    <script>
        function printDiv() {
            debugger
            var divToPrint = document.getElementById('temp');

            var newWin = window.open('', 'Print-Window');

            newWin.document.open();

            newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');

            newWin.document.close();

            setTimeout(function () { newWin.close(); }, 10);

        }
    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');

        }
        function HideShow() {
            var district = document.getElementById('<%= ddlDistrict.ClientID %>')
            if (district.value != "0") {
                document.getElementById('divRegisrationUpdate').hidden = true;
                document.getElementById('GrdSchoolDetails').hidden = false;
            }
        }
        function HideAndShow(Tohide, Toshow) {
            for (var i in Tohide) {
                document.getElementById(Tohide[i]).hidden = true;
            }
            for (var i in Toshow) {
                document.getElementById(Toshow[i]).hidden = false;
            }
        }
        // Get the div elements
        // Get the div elements
        const divRegisrationUpdate = document.getElementById('divRegisrationUpdate');
        const dataFirstTime = document.getElementById('DataFirstTime');

        // Get the table cell elements
        const tableCells = document.querySelectorAll('td >a');

        // Loop through the table cells and add a click event listener
        tableCells.forEach(cell => {
            cell.addEventListener('click', () => {
                // Toggle the visibility of the divRegisrationUpdate
                divRegisrationUpdate.hidden = !divRegisrationUpdate.hidden;

                // Toggle the visibility of the dataFirstTime
                dataFirstTime.hidden = !dataFirstTime.hidden;
            });
        });
    </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Confirmation2').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                //document.getElementById("NavUploadCertificate").click();
                            });
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>
