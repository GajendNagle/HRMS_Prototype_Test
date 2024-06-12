<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ReportingOfficer.aspx.cs" Inherits="mis_Transaction_Rpt_ReportingOfficer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        @media print {
              @page {
      size: A4;
      margin: 10mm;
  }
            .page-break {
                page-break-after: always;
            }

            td {
                font-size: 0.4rem;
            }
        }

        .modal-table td, .modal-table th {
            padding: 0.2rem;
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
                        <li class="breadcrumb-item"><span>Reporting Officer Fill By ACR  Report Print</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <%--  <div class="row page-titles mb-4">--%>
    <div class="col-md-5 align-self-center">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
            <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title color_black">
                   PART-3 Assessment  Report/
                    भाग तीन- मूल्यांकन रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
            <br />



          <div class="card-body">
            <br />



            <fieldset id="show2">
                <legend>
ACR report filled by the reporting officer / रिपोर्टिंग अधिकारी द्वारा भरी गई एसीआर रिपोर्ट </legend>
                <div class="row justify-content-end">
                                       <div class="col-md-4 text-end">
    <div class="form-group">
        <button class="btn btn-info btn-rounded w-55">Excel</button>
        <button class="btn btn-info btn-rounded w-55">PDF</button>
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
                                        <th>Sr.No<br/>सरल क्र.</th>
                                        <th>Unique ID/Name<br/>कर्मचारी आईडी/नाम</th>

                                        <th>Date of Birth<br/>जन्मतिथि</th>
                                        <th>Designation <br/>पदनाम </th>
                                        <th>Dise Code of Institution<br/>संस्थान का डाइस कोड</th>

                                        <th>Employee Report<br/>कर्मचारी की रिपोर्ट</th>
                                        <th>Reporting Officer Report<br/>रिपोर्टिंग अधिकारी की रिपोर्ट</th>

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
                
                <div class="modal-body" id="printArea">
                    <fieldset>
                       
                        <div class="row text-center">
                     
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
                                                                                                        
                            <div class="col text-start">
    <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

    <span class="fw-bold">2023-2024</span>
</div>

<div class="col text-end">
    <span class="fw-bold">आवेदन दिनाँक:-</span>
    <span class="fw-bold">09-03-2024</span>

</div>
                        </div>
                                                                           
                       
                        <fieldset>
                            <legend>Employee Name/Unique ID : गोपाल वर्मा/EDP4454445</legend>

                       

                            <div class="row">
                                <div class="col-12">

                                    <table class="table table-bordered  modal-table">
                                        <tr>
                                            <th>S.No.<br />
                                                सरल क्र.</th>
                                            <th>Achievement shown in self assessment<br />
                                                स्वमूल्यांकन में दर्शित उपलब्धि</th>
                                            <th>Scale Point<br />
                                                स्केल बिन्दु</th>
                                            <th>Assessment<br />
                                                मूल्यांकन</th>
                                            <th>Remark<br />
                                                अभियुक्ति</th>
                                        </tr>
                                        <tr>
                                            <td class="text-center">1</td>
                                            <td>
                                                <h4 class="fw-bold">Completion of curriculum<br />
                                                    पाठ्यक्रम को पूरा करना</h4>
                                            </td>
                                            <td class="text-center">15</td>
                                            <td class="text-center">10</td>
                                            <td>hardworking student   </td>

                                        </tr>
                                        <tr>
                                            <td class="text-center">2</td>
                                            <td>
                                                <h4 class="fw-bold">Improving attendance of children<br />
                                                    छात्र उपस्थिति में वृध्दि</h4>
                                            </td>
                                            <td class="text-center">05</td>
                                            <td class="text-center">3</td>
                                            <td>hardworking student </td>
                                        </tr>
                                        <tr>

                                            <td class="text-center" rowspan="7">3</td>
                                            <td>
                                                <h4 class="fw-bold">Role in academic<br />
                                                    अकादमिक कार्यो में भूमिका:-<br />
                                                </h4>

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
                                                    अवधि में प्रशिक्षण में सहभागिता </h4>
                                            </td>
                                            <td class="text-center ">05</td>
                                            <td class="text-center">3</td>
                                            <td>hardworking student</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">7</td>
                                            <td > <h5 class="fw-bold">Total<br />योग</td> </h5>

                                            <td class="text-center">100</td>
                                            <td class="text-center">81</td>
                                            <td>hardworking student</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
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

                                        <th>Allegiance  <br />
 सन्निष्ठा</th>
                                        <td  class="text-center ">Nil</td>
                                    </tr>
                                    <tr>
                                        <th>Grade<br />
शिक्षक के समग्र मूल्यांकन श्रेणी</th>
                                        <td class="text-center ">A+/उत्कृष्ट</td>
                                    </tr>

                                    <tr>

                                        <th>यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण </th>
                                        <td class="text-center ">Nil</td>
                                    </tr>


                                </table>
                            </div>

                        </div>
               
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
    </script>
</asp:Content>

