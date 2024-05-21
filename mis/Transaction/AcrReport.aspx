<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AcrReport.aspx.cs" Inherits="mis_Transaction_AcrReport" %>
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
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="https://schooledutest.tserver.co.in/css/site.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप </h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                        <li class="breadcrumb-item active"></li>
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
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                <a class="nav-link  text-white" href="#" role="button"><b class="font-16 font-bold "><i class="fa fa-home mt-1"></i></b></a>
                                <a class="nav-link text-white" href="EmployeeAcr.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Employee ACR</b></a>
                                <a class="nav-link text-white" href="EmployeeAcrFill.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Fill ACR Form</b></a>
                                <a class="nav-link text-white" href="AcrReport.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;ACR Report </b></a>
                            </ul>
                        </div>
                    </div>
                </nav>
                <br />
                <div class="row page-titles mb-4">
                    <div class="col-md-5 align-self-center">
                    </div>
                </div>
                <div class="card-header card-border-info">
                </div>
                <fieldset id="show2" runat="server">
                    <legend>Detail</legend>
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
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table id="Table1" class="table table-bordered table-responsive-lg text-center " runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>स.क्र.</th>
                                            <th>कर्मचारी आई.डी/नाम (उप नाम सहित)</th>
                                            <th>पिता/पति का नाम</th>
                                            <th>जन्मतिथि</th>
                                            <th>धारित पद का नाम</th>
                                            <th>संस्था का नाम /स्कूल कोड</th>
                                            <th>ACR फॉर्म</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>गोपाल वर्मा/EDP4454445</td>
                                            <td>राम वर्मा</td>
                                            <td>22/07/1989</td>
                                            <td>सहायक शिक्षक</td>
                                            <td>DPI/456656356</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>2</td>
                                            <td>सागर गुप्ता/EDP78974445</td>
                                            <td>कृष्णा गुप्ता</td>
                                            <td>28/09/1989</td>
                                            <td>सहायक शिक्षक</td>
                                            <td>DPI/456656356</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title w-100 text-center"></h3>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <br />
                                    <br />
                                    <div class="row text-center">
                                        <div class="col-sm-2">
                                            <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                        </div>
                                        <div class="col-sm-8 text-center">
                                            <br />
                                            <h3><strong><b>व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप</b></strong></h3>
                                            <h4><strong><b>स्कूल शिक्षा विभाग मध्य प्रदेश शासन</b></strong></h4>
                                            <h4><strong><b>जिला:- भोपल</b></strong></h4>
                                        </div>
                                        <div class="col-sm-2">
                                            <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                        </div>
                                    </div>
                                    <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                                    <div class="row">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="">
                                                    <div class="">
                                                        <table class="table table-borderless">
                                                            <tr class="fs-4">
                                                                <th>वार्षिक प्रतिवेदन अवधि वर्ष :-</th>
                                                                <td style="position: relative; right: 10px; left: -13%;">2023-2024</td>
                                                                <th style="position: relative; left: 18%;">आवेदन दिनाँक:-</th>
                                                                <td style="position: relative; left: 9%;">09-03-2024</td>
                                                            </tr>
                                                        </table>
                                                        <h3 class="text-center mt-4 mb-4 font-bold"><u>::  कर्मचारी व्यक्तिगत जानकारी ::</u></h3>
                                                    </div>
                                                    <table class="table table-borderless fs-4">
                                                        <tr class="mt-3">
                                                            <th>आवेदन क्रमांक :</th>
                                                            <td>132240</td>
                                                            <th>यूनिक आई.डी</th>
                                                            <td>AR4781</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>कर्मचारी का नाम</th>
                                                            <td>Arjun Talwar</td>
                                                            <th>कर्मचारी के पिता नाम</th>
                                                            <td>Gopal Talwar</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>जन्मतिथि</th>
                                                            <td>22/08/1989</td>
                                                            <th>धारित पदनाम</th>
                                                            <td>Assistant Teacher</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>संस्था का नाम</th>
                                                            <td>DPI</td>
                                                            <th>जी.पी.एफ.खाता क्रमांक</th>
                                                            <td>454545774</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>वर्तमान पद पर नियुक्ति दिनांक</th>
                                                            <td>26/05/2023</td>
                                                            <th>विभाग में प्रथम नियुक्ति दिनांक</th>
                                                            <td>11-03-20234</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>विभाग में प्रथम नियुक्ति पद नाम </th>
                                                            <td>Assistant Teacher</td>
                                                            <th>प्रथम संस्था का नाम </th>
                                                            <td>5151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>धारित पद</th>
                                                            <td>स्थाई</td>
                                                            <th>व्यक्तित्व एवं व्यवहार</th>
                                                            <td>Self Discipline</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>समता/बुद्धिमता एवं व्यवसायिक योग्यता
                                                            </th>
                                                            <td>Multitasking</td>
                                                            <th>सनिष्ठा के विशेष संधर्भ में आचरण/प्रशंसा</th>
                                                            <td>Honest with your work.</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>जनता एवं सह पदाधिकारी से सम्बन्ध
                                                            </th>
                                                            <td>Excellent</td>
                                                            <th>प्रतिवेदनाधीन अवधि में दण्ड,निन्दा या विशेष प्रशंसा</th>
                                                            <td>No</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>पदोन्नति/दक्षतारोध पार करने की उपयुक्ता</th>
                                                            <td>Responsibilities and Rights  </td>
                                                            <th>सामान्य टीप्पणी</th>
                                                            <td>अर्जुन तलवार ने इस साल अपने विकास में काफी प्रगति की है और अच्छा प्रदर्शन कर                                रहे हैं</td>
                                                        </tr>
                                                        <tr class="mt-3">
                                                            <th>वर्गीकरण
                                                            </th>
                                                            <td>Nill</td>
                                                        </tr>
                                                        <br />
                                                        <td class="text-right font-18 mt-4" style="position: relative; left: 780px; top: 15px;">अधिकारी के हस्ताक्षर पदनाम,साफ अक्षरों में मय्र मुद्रा सहित
                                                        </td>
                                                    </table>
                                                    <table style="width: 100%;">
                                                        <tbody>
                                                            <tr>
                                                                <th class="font-18" style="position: relative; left: 320px; top: 35px;">: : <u>जाचं करने वाले अधिकारी की टीप्पणी</u> : :</th>
                                                            </tr>
                                                            <tr>
                                                                <td class="font-18 text-center text-danger" style="position: relative; top: 50px; bottom: 20px;">अर्जुन तलवार  ने इस वर्ष अपने विकास में काफी प्रगति की है। वह अधिक आत्मविश्वासी  और शैक्षणिक रूप से अच्छा प्रदर्शन कर रहा है।
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-sm-left font-14 text-info" style="position: relative; top: 160px;">यह स्वयं की लॉगिन आईडी से जेनरेट गोपनीय चरित्रावली है,  हस्ताक्षर की आवश्यकता नहीं है।
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </fieldset>
                            </div>
                            <div class="modal-footer justify-content-center">
                                <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
</asp:Content>







