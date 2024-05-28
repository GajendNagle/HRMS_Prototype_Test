<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewAccumulatedComplaints.aspx.cs" Inherits="mis_Transaction_ViewAccumulatedComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
        }
    </style>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <%-- <div class="col-md-5  ">
            <p style="color: brown; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">शिकायत प्रोसेसिंग </p>
        </div>--%>
    <div class="container-fluid">
        <span class="hidden-sm-up">
            <br />
            <br />
            <br />

        </span>

        <div class="row page-titles" style="margin-bottom: -30px">



            <div class="col-md-3 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Grievance%20Logo.png" style="height: 70px"><u><br />
                    </u>
                </p>
            </div>


            <div class="col-md-3">
            </div>
            <div class="col-md-6 align-self-center">

                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">

                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="ParivednaNevakarn.aspx" title="click to go on">Grievance Application Status</a></li>
                        <li class="breadcrumb-item active">Grievances Processing </li>
                    </ol>
                </div>


            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li>
                                    <a class="nav-link  text-white " href="ParivednaNevakarn.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i>शिकायत पंजीयन</b></strong></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="Trn_ParivadNivaran.aspx">Complaint Filed</a></li>
                                        <li><a class="dropdown-item" href="ParivednaNevakarnStatus.aspx">Complaint Tracking Status</a></li>
                                        <li><a class="dropdown-item" href="PrintComplaint.aspx">Print Complaint</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>शिकायत प्रोसेसिंग </b></a>
                                </li>
                                <li>
                                    <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>शिकायत निराकरण </b></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>रिपोर्ट</b> </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="DisposedGrievances.aspx">List of Resolved Complaints</a></li>
                                        <li><a class="dropdown-item" href="RejectedGrievances.aspx">List of Rejected Complaints</a></li>
                                        <li><a class="dropdown-item" href="ForwardedGrievances .aspx">District Wise Details of Forwarded Complaints</a></li>
                                        <li><a class="dropdown-item" href="CPIGrievancesDetails.aspx">Details of Complaints forwarded from CPI</a></li>
                                        <li><a class="dropdown-item" href="DistrictWiseProcessReport.aspx">District Wise Progress Report</a></li>
                                        <li><a class="dropdown-item" href="SectionWiseGrievanceReports.aspx">Section Wise Pending Report</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <br />
                <fieldset>
                    <legend>Grievances Processing/शिकायत प्रोसेसिंग 
                    </legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    District<br />
                                    जिला<span style="color: red">*
                                    </span>
                                </label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">--Select--</option>
                                    <option value="51">Agar Malwa ,आगर मालवा</option>
                                    <option value="49">Alirajpur ,अलीराजपुर </option>
                                    <option value="47">Anuppur ,अनूपपुर </option>
                                    <option value="46">Ashoknagar ,अशोकनगर </option>
                                    <option value="45">Balaghat ,बालाघाट </option>
                                    <option value="28">Barwani ,बड़वानी </option>
                                    <option value="35">Betul ,बैतूल </option>
                                    <option value="3">Bhind ,भिण्ड </option>
                                    <option value="32">Bhopal ,भोपाल </option>
                                    <option value="48">Burhanpur ,बुरहानपुर </option>
                                    <option value="9">Chhatarpur ,छतरपुर </option>
                                    <option value="43">Chhindwara ,छिंदवाडा </option>
                                    <option value="12">Damoh ,दमोह </option>
                                    <option value="5">Datia ,दतिया </option>
                                    <option value="23">Dewas ,देवास </option>
                                    <option value="25">Dhar ,धार </option>
                                    <option value="41">Dindori ,डिण्डौरी </option>
                                    <option value="7">Guna ,गुना </option>
                                    <option value="4">Gwalior ,ग्वालियर </option>
                                    <option value="36">Harda ,हरदा </option>
                                    <option value="26">Indore ,इन्दौर </option>
                                    <option value="39">Jabalpur ,जबलपुर </option>
                                    <option value="24">Jhabua ,झाबुआ </option>
                                    <option value="38">Katni ,कटनी </option>
                                    <option value="29">Khandwa ,खण्डवा </option>
                                    <option value="27">Khargone ,खरगोन </option>
                                    <option value="42">Mandla ,मण्डला </option>
                                    <option value="19">Mandsaur ,मन्दसौर </option>
                                    <option value="2">Morena ,मुरैना </option>
                                    <option value="37">Narmadapuram ,नर्मदापुरम</option>
                                    <option value="40">Narsinghpur ,नरसिंहपुर </option>
                                    <option value="18">Neemuch ,नीमच </option>
                                    <option value="52">Niwari ,निवाड़ी</option>
                                    <option value="10">Panna ,पन्ना </option>
                                    <option value="34">Raisen ,रायसेन </option>
                                    <option value="30">Rajgarh ,राजगढ़ </option>
                                    <option value="20">Ratlam ,रतलाम </option>
                                    <option value="14">Rewa ,रीवा </option>
                                    <option value="11">Sagar ,सागर </option>
                                    <option value="13">Satna ,सतना </option>
                                    <option value="33">Sehore ,सीहोर </option>
                                    <option value="44">Seoni ,सिवनी </option>
                                    <option value="16">Shahdol ,शहडोल </option>
                                    <option value="22">Shajapur ,शाजापुर </option>
                                    <option value="1">Sheopur ,श्योपुर </option>
                                    <option value="6">Shivpuri ,शिवपुरी </option>
                                    <option value="17">Sidhi ,सीधी </option>
                                    <option value="50">Singrauli ,सिंगरौली </option>
                                    <option value="8">Tikamgarh ,टीकमगढ़ </option>
                                    <option value="21">Ujjain ,उज्जैन </option>
                                    <option value="15">Umaria ,उमरिया </option>
                                    <option value="31">Vidisha ,विदिशा</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
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
                        <div class="col-md-3 mt-4 py-2" style="position:relative;top:1rem;">
                            <button id="Button1" type="button" class="btn btn-success btn-rounded " onclick="myFunction()">Search</button>
                            <a class="btn btn-danger btn-rounded" href="ViewAccumulatedComplaints.aspx">Clear</a>
                        </div>
                    </div>

                </fieldset>
                <div>
                    <fieldset>
                        <legend>Grievances Processing Details
                        </legend>
                        <div class="row form-group">
                            <div class="row justify-content-end">
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-100">Excel</button>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-100">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                    </div>

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table  table-bordered text-center">
                                            <thead>
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
                                                    <th>View
                                                        <br />
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
                                                <td><a href="#" style="background-color: teal; color: white" class="btn btn-rounded" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg1">Forword</a></td>
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
                                                <td><a href="#" class="btn btn-rounded" style="background-color: teal; color: white" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg1">Forword</a></td>

                                            </tr>


                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header" id="myDIV">
                        <h4 class="modal-title" id="myLargeModalLabel1"></h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
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
                                            <thead>

                                                <tr>
                                                    <th>क्र.</th>
                                                    <th>शिकायत क्र.</th>
                                                    <th>शिकायत दिनाँक </th>
                                                    <th>जिला  </th>
                                                    <th>विभाग </th>
                                                    <th>लोकसेवक का नाम </th>
                                                    <th>पदनाम </th>
                                                    <th>ईमेल </th>
                                                    <th>मोबाइल</th>
                                                    <th>शिकायत का विषय</th>

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

                            <div class="row justify-content-center mt-4">
                                <div class="col-md-2 text-center">
                                    <h5 class="font-bold">शिकायत का विवरण</h5>
                                    <hr />
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-12">
                                    <label class="font-16 font-bold">विषय :-  संकुल प्रचार्य विवेक जैन द्वारा मेरी वर्ष 2023 की जनवरी फरवारी मार्च अप्रैल की सैलारी नहीं दी जा रही है।</label>
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div class="col-md-12 mt-2" style="margin-top: 3.5rem !important;">
                                    <h6>अधिकारी/ कर्मचारी के हस्ताक्षर</h6>
                                </div>
                            </div>
                        </fieldset>


                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                        <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <div class="modal bs-example-modal-lg3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"></h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <div class="row">
                                <div class="col-md-4 text-start">

                                    <img src="../dist/images/icon/MP_LOGO.svg" style="width: 9rem; height: 9rem" alt="homepage" class="light-logo">
                                </div>
                                <div class="col-md-4 text-center">
                                    <h3 class="font-bold">जिला शिक्षा अधिकारी</h3>
                                    <h4 class="font-bold">जिला : टीकमगढ़</h4>
                                    <h4 class="font-bold">लोकसेवक का विवरण</h4>
                                    <h4 class="font-bold mt-4">नोट शीट</h4>
                                </div>
                                <div class="col-md-4 text-end">

                                    <img src="../Transaction/Screenshot%202024-05-08%20101730.png" style="width: 7rem; height: 7rem; margin: 1rem;" />
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-md-12 ">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered" id="tblofNoteShit" style="border-collapse: collapse">

                                            <tr>
                                                <td style="color: black; text-align: right"><span style="font-weight: bolder;">शिकायत क्र. :
                                                </span>

                                                </td>
                                                <td style="text-align: left">74060</td>
                                                <td style="color: black; text-align: right">
                                                    <span style="font-weight: bolder;">शिकायत दिनाँक :</span></td>
                                                <td style="text-align: left">02/05/2024</td>

                                            </tr>

                                            <tr>
                                                <td style="color: black; text-align: right">
                                                    <span style="font-weight: bolder;">जिला :
                                                    </span>
                                                </td>
                                                <td style="text-align: left">टीकमगढ़</td>
                                                <td style="color: black; text-align: right">
                                                    <span style="font-weight: bolder;">विभाग :   </span></td>
                                                <td style="text-align: left">Education</td>
                                            </tr>
                                            <tr>
                                                <td style="color: black; text-align: right"><span style="font-weight: bolder;">लोकसेवक का नाम :    </span></td>
                                                <td style="text-align: left">Nidhi Mishra [BO8511]</td>
                                                <td style="color: black; text-align: right"><span style="font-weight: bolder;">पदनाम :    </span></td>
                                                <td style="text-align: left">Prathmik Shikshak</td>

                                            </tr>
                                            <tr>
                                                <td style="color: black; text-align: right"><span style="font-weight: bolder;">ईमेल :    </span></td>
                                                <td style="text-align: left">Gaurishankartkg@Gmail.Com</td>
                                                <td style="color: black; text-align: right"><span style="font-weight: bolder;">मोबाइल :    </span></td>
                                                <td style="text-align: left">7974333143</td>
                                            </tr>


                                            <tr>
                                                <td style="color: black; text-align: right"><span style="font-weight: bolder;">शिकायत का विषय :    </span></td>
                                                <td style="text-align: left">बकाया लंबित</td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-md-2 text-center">
                                    <h5 class="font-bold">शिकायत का विवरण</h5>
                                    <hr />
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-12">
                                    <label class="font-16 font-bold">विषय :- संकुल प्रचार्य विवेक जैन द्वारा मेरी वर्ष 2023 की जनवरी फरवारी मार्च अप्रैल की सैलारी नहीं दी जा रही है।</label>
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div class="col-md-12 mt-2" style="margin-top: 3.5rem !important;">
                                    <h6>अधिकारी/ कर्मचारी के हस्ताक्षर</h6>
                                </div>
                            </div>
                        </fieldset>


                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                        <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
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
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Forward To :<span style="color: red">*</span></label>
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
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Authority Name :<span style="color: red">*</span></label>
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
                                        <label>Type Note Here :<span style="color: red">*</span></label>
                                        <input class="form-control" />
                                    </div>
                                </div>
                            </div>

                        </fieldset>


                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-success waves-effect text-start text-white Alert-Save" data-bs-dismiss="modal">Forword</button>
                        <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Forword This Application?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Application Forword Successfully!',
                                timer: 2000
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
                                x.style.display = "block";
                            }
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

