<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ReportingOfficer.aspx.cs" Inherits="mis_Transaction_Rpt_ReportingOfficer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        @media print {
            .page-break {
                page-break-after: always;
            }
            td{
                font-size:11px;
                
            }
        }

        .modal-table td, .modal-table th {
            padding: 0.2rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
            <h6 style="font-size: 15px; margin-left: 25px">PART-3 Assessment(भाग तीन- मूल्यांकन)</h6>
        </div>
        <div class="col-md-7 align-self-center text-end" id="hrms">
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
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <a class="nav-link  text-white " href="ConfedicialReportNotes.aspx" role="button"><b class="font-16 font-bold "><i class="fa fa-home "></i></b></a>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee ACR </b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ConfedicialReport.aspx">Employee Apply ACR</a></li>
                                    <li><a class="dropdown-item" href="EmployeeDetails.aspx">Resend/Print Application </a></li>
                                </ul>
                            </li>
                            <a class="nav-link text-white" href="ReportingOfficerFill.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Fill By Reporting  Officer</b></a>
                            <a class="nav-link text-white" href="AcceptingAuthorityFilled.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Reviewing Fill Accepting Authority </b></a>


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Rpt_EmployeeACR.aspx">Employee ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_ReportingOfficer.aspx">Reporting Officer ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_AcceptingAuthority.aspx">Accepting Authority ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_DistrictWiseAcr.aspx">District Wise ACR Report</a></li>
                                </ul>
                            </li>
                        </ul>


                    </div>
                </div>
            </nav>
            <br />


            <fieldset id="show2">
                <legend>ACR Report Fill By Reporting  Officer Details</legend>
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
                            <table id="Table1" class="table table-bordered text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>Unique ID/Name</th>

                                        <th>Date of Birth</th>
                                        <th>Designation </th>
                                        <th>Dise Code of Institution</th>

                                        <th>Employee Report</th>
                                        <th>Reporting Officer Report</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>गोपाल वर्मा/EDP4454445</td>

                                        <td>22/07/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>

                                        <td>
                                            <a href="Rpt_EmployeeACR.aspx" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>


                                        </td>

                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>सागर गुप्ता/EDP78974445</td>

                                        <td>28/09/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>
                                        <td>
                                            <a href="Rpt_EmployeeACR.aspx" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
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
        </div>
    </div>



    <br />



    <div class="modal fade" id="staticBackdrop" tabindex="-1" aria-labelledby="staticBackdropLabel">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="printArea">
                    <fieldset>

                        <div class="row text-center">
                            <br />
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto;" />
                            </div>
                            <div class="col-sm-8 text-center">
                                <h3><strong>व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप</strong></h3>
                                <h4><strong>स्कूल शिक्षा विभाग मध्य प्रदेश शासन</strong></h4>
                                <h4><strong>जिला:-भोपाल</strong></h4>
                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto;" />
                            </div>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black;" />
                        <div class="fw-bold">Please give comment of agreement or disagreement on the achievement mentioned by the officer reported upon in self-assessment. Please give reasons in case of disagreement and refer to communication made to the officer reported upon in this regard.</div>
                        <div class="fw-bold">(आवेदक अधिकारी/शिक्षक द्वारा स्वमूल्यांकन में उल्लेखित उपलब्धि के संबंध में सहमति/असहमति की टिप्पणी | असहमति की स्थिति में कारण एवं इस संबंध में किये गये पत्राचार का विवरण एवं स्केल पॉइंट में प्रदर्शन )</div>

                        <div class="row">
                            <div class="col-md-12">
                                <h3 class="text-center mt-3 font-bold"><u>:: Information filled by reporting officer ::</u></h3>
                                <h5 class="text-center  mb-3 font-bold"><u>:: प्रतिवेदक अधिकारी/रिपोर्टिंग अधिकारी द्वारा भरी गई जानकारी ::</u></h5>
                            </div>
                            <%--  <div class="row">
                            <div class="col-md-4">
                                <label class="fw-bold fs-5">Employee Name/Unique ID</label>
                                <input type="text" class="form-control fw-bold" placeholder="गोपाल वर्मा/EDP4454445">
                            </div>
                                </div>--%>
                            <%--     <div><h5><b>Employee Name/Unique ID :-</b> गोपाल वर्मा/EDP4454445</h5>--%>
                            <div class="row">
                                <div class="col text-start">
                                    <span class="fw-bold fs-4">Employee Name/Unique ID :-</span>

                                    <span class="fw-bold fs-4">गोपाल वर्मा/EDP4454445</span>
                                </div>


                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">

                                <table class="table table-bordered  modal-table">
                                    <tr>
                                        <th>S.No.(क्र)</th>
                                        <th>Achievement shown in self assessment<br />
                                            (स्वमूल्यांकन में दर्शित उपलब्धि)</th>
                                        <th>Scale Point (स्केल बिन्दु)</th>
                                        <th>Assessment(मूल्यांकन)</th>
                                        <th>Remark(अभियुक्ति)</th>
                                    </tr>
                                    <tr>
                                        <td class="text-center">1</td>
                                        <td>
                                            <h4 class="fw-bold">Completion of curriculum<br />
                                                (पाठ्यक्रम को पूरा करना)</h4>
                                        </td>
                                        <td class="text-center">15</td>
                                        <td class="text-center">10</td>
                                        <td>hardworking student   </td>

                                    </tr>
                                    <tr>
                                        <td class="text-center">2</td>
                                        <td>
                                            <h4 class="fw-bold">Improving attendance of children<br />
                                                (छात्र उपस्थिति में वृध्दि)</h4>
                                        </td>
                                        <td class="text-center">05</td>
                                        <td class="text-center">3</td>
                                        <td>hardworking student </td>
                                    </tr>
                                    <tr>

                                        <td class="text-center" rowspan="7">3</td>
                                        <td>
                                            <h5 class="fw-bold">Role in academic<br />
                                                (अकादमिक कार्यो में भूमिका):-<br />
                                            </h5>

                                        </td>
                                        <td class="text-center " rowspan="7" style="vertical-align: middle;">30</td>
                                        <td colspan="2"></td>

                                    </tr>
                                    <tr>
                                        <td>(a) Use of teaching learning aid
                                        <br />
                                            शिक्षण सहायक सामग्री का उपयोग</td>
                                        <td class="text-center">5
                                        </td>
                                        <td>hardworking student</td>



                                    </tr>
                                    <tr>
                                        <td>(b)Use of lesson plan<br />
                                            पाठय योजना का उपयोग</td>
                                        <td class="text-center">5
                                        </td>
                                        <td>hardworking student</td>



                                    </tr>
                                    <tr>
                                        <td>(c)Innovation and Impact<br />
                                            नवाचार तथा उसका प्रभाव</td>
                                        <td class="text-center">5
                                        </td>

                                        <td>hardworking student</td>



                                    </tr>
                                    <tr>
                                        <td>(d)checking  of notebook of student<br />
                                            छात्रो की अभ्यास पुस्तिका की जाँच</td>
                                        <td class="text-center">5
                                        </td>

                                        <td>hardworking student</td>



                                    </tr>
                                    <tr>
                                        <td>(e)Remendial teaching<br />
                                            निदानात्मक शिक्षण</td>
                                        <td class="text-center">5
                                        </td>
                                        <td>hardworking student</td>



                                    </tr>
                                    <tr>
                                        <td>(f)Extra classes<br />
                                            अतिरिक्त कक्षा संचालन</td>
                                        <td class="text-center">5
                                        </td>
                                        <td>hardworking student</td>



                                    </tr>
                                    <tr>
                                        <td class="text-center" rowspan="4">4</td>
                                        <td>
                                            <h4 class="fw-bold">Extracurricular activities<br />
                                                पाठयेत्तर गतिविधियो में भूमिका:-</h4>


                                        </td>
                                        <td class="text-center mb-5" rowspan="4" style="vertical-align: middle;">15</td>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <td>(a)Sports/Literacy/Cultural Activities<br />
                                            खेल/साहित्यिक/सास्कृतिक गतिविधियाँ</td>
                                        <td class="text-center">
                                        5<td>hardworking student</td>
                                    </tr>
                                    <tr>
                                        <td>(b)Extra ordinary workin Hygiene/Environment<br />
                                            स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</td>
                                        <td class="text-center">
                                        5<td>hardworking student</td>
                                    </tr>
                                    <tr>
                                        <td>(c)Use of ICT in teaching and learning<br />
                                            शिक्षण एवं सिखाने में आई सी टी उपयोग</td>
                                        <td class="text-center">
                                        5<td>hardworking student</td>
                                    </tr>






                                    <tr>

                                        <td class="text-center" rowspan="5">5</td>
                                        <td>
                                            <h4 class="fw-bold">Individual Qualities<br />
                                                व्यक्तिगत विशिष्टताये:-</h4>
                                        </td>
                                        <td class="text-center " rowspan="5" style="vertical-align: middle;">30</td>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <td>(a)Attitude of work and sense of responsibility<br />
                                            कार्य के प्रति अभिव्यक्ति एवं जिम्मेदारी का बोध</td>
                                        <td class="text-center">5</td>
                                        <td>hardworking student </td>

                                    </tr>
                                    <tr>
                                        <td>(b)Maintenance of discipline<br />
                                            अनुशासन</td>
                                        <td class="text-center">3</td>
                                        <td>hardworking student </td>

                                    </tr>
                                    <tr>
                                        <td>(c)Communication skill<br />
                                            संप्रेषण कौशल</td>
                                        <td class="text-center">7</td>
                                        <td>hardworking student </td>

                                    </tr>
                                    <tr>
                                        <td>(d)Capacity to work in a team with team spirit and inter Personal
relations<br />
                                            टीम में टीम भावना में काम करने की क्षमता एवं परस्परसंबंध</td>
                                        <td class="text-center">5</td>
                                        <td>hardworking student </td>

                                    </tr>
                                    <tr>

                                        <td class="text-center">6</td>
                                        <td>
                                            <h4 class="fw-bold">Participation in academic tranning<br />
                                                (अवधि में प्रशिक्षण में सहभागिता )</h4>
                                        </td>
                                        <td class="text-center ">05</td>
                                        <td class="text-center">3</td>
                                        <td>hardworking student</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">7</td>
                                        <td class="text-center">Total (योग)</td>
                                        <td class="text-center">100</td>
                                        <td class="text-center">81</td>
                                        <td>hardworking student</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                         </fieldset>
                    <div class="page-break">
                        
                                    </div>
                   <br />
                    <fieldset>
                        <div class="row">

                            <div class="col-md-12 mb-5">
                                <h4 class="text-center mt-5 font-bold"><u>:: Grade ::</u></h4>
                            </div>

                            <div class="col-12">
                                <table class="table table-bordered table-st fs-5 modal-table">
                                    <tr class="mt-3">

                                        <th>Allegiance (सन्निष्ठा)</th>
                                        <td>Nil</td>
                                    </tr>
                                    <tr>
                                        <th>Grade(शिक्षक के समग्र मूल्यांकन श्रेणी)</th>
                                        <td>A+/उत्कृष्ट</td>
                                    </tr>

                                    <tr>

                                        <th>यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण </th>
                                        <td>Nil</td>
                                    </tr>


                                </table>
                            </div>

                        </div>
                        <div class="col-md-12 mb-5">
                            <h4 class="text-center mt-5 font-bold"><u>:: Part-3 Review (भाग-3 समीक्षा)--समीक्षक अधिकारी द्वारा भरी गई जानकारी ::</u></h4>
                        </div>
                        <table class="table table-bordered modal-table table-st fs-5">
                            <tr class="mt-3">

                                <th>Do you agree with the remarks of the reporting officer ?(क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|)</th>
                                <td>Yes/हाँ</td>
                            </tr>
                            <tr>
                                <th>If no or agree partially give reasons for disagreement
                               (यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण )</th>
                                <td>Nil</td>
                            </tr>

                            <tr>

                                <th>Grading (ग्रेड)</th>
                                <td>Outstanding/उत्कृष्ट</td>
                            </tr>


                        </table>
                    </fieldset>




                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop') ">Print</button>
                       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                   <%-- <button type="button" class="btn btn-secondary" data-bs-dismiss="closeModal()">Close</button>--%>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }

        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
            window.location.href = "Rpt_ReportingOfficer.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                // Prevent default behavior of Ctrl+P (opening print dialog)
                event.preventDefault();
                // Print the content of the active modal
                var activeModal = document.querySelector('.modal.show');
                if (activeModal) {
                    var modalId = activeModal.getAttribute('id');
                    printModalContent(modalId);
                }
            }
        });
        //function printDiv(divId) {
        //    var printContents = document.getElementById(divId).innerHTML;
        //    var originalContents = document.body.innerHTML;

        //    document.body.innerHTML = printContents;
        //    window.print();
        //    document.body.innerHTML = originalContents;
        //}
  //  document.addEventListener('keydown', function (event) {
  //    // Check if Ctrl+P is pressed
  //    if (event.ctrlKey && event.key === 'p') {
  //        // Prevent the default print action
  //        event.preventDefault();
  //        // Call your JavaScript function here
  //        printDiv('printArea'); // Replace printContent with the name of your function
  //    }
  //});
    </script>
</asp:Content>

