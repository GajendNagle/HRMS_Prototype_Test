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
                            <a href="#ACRReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Reporting Officer Fill By ACR  Report Print</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <%--  <div class="row page-titles mb-4">--%>
 <%--  <div class="row page-titles mb-4">--%>
  <div class="row"><div class="col-md-5 ">
          <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
      </div></div>
    
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4>
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
 Reporting Officer  Report Print Application/रिपोर्टिंग अधिकारी रिपोर्ट प्रिंट आवेदन</legend>
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
                    </div></div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table1" class="table table-bordered text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No<br/>सरल क्र.</th>
                                        <th>Financial Year<br />
वित्तीय वर्ष</th>
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
                                          <td>2023-2024</td>
                                        <td>गोपाल वर्मा/EDP4454445</td>

                                        <td>22/07/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>

                                        <td>
                                          <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>


                                        </td>

                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr valign="middle">
                                        <td>2</td>
                                          <td>2023-2024</td>
                                        <td>सागर गुप्ता/EDP78974445</td>

                                        <td>28/09/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>
                                        <td>
                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>


                                        </td>


                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                
            </fieldset>
        </div>
    </div>



    <br />



    <div class="modal fade" id="staticBackdrop" tabindex="-1" aria-labelledby="staticBackdropLabel">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header d-print-none">
      <h3 class="modal-title w-100 text-center" id="staticBackdropLabel"></h3>
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
  </div>  
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
                        <%--    <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto;" />
                            </div>--%>
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
                    <div class="modal fade" id="staticBackdrop2" tabindex="-1" aria-labelledby="staticBackdropModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header d-print-none">
                    <h3 class="modal-title w-100 text-center" id="staticBackdropLabel"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-print-block" id="printSection">
                    <fieldset>
                        <br />

                        <div class="row text-center">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">

                                <h3><strong><b>व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप</b></strong></h3>
                                <h4><strong><b>स्कूल शिक्षा विभाग मध्य प्रदेश शासन</b></strong></h4>
                                <h4><strong><b>जिला:- भोपल</b></strong></h4>
                            </div>
                            <%--<div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>--%>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <div class="row">

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col text-start">
                                        <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

                                        <span class="fw-bold">2023-2024</span>
                                    </div>

                                    <div class="col text-end">
                                        <span class="fw-bold">आवेदन दिनाँक:-</span>
                                        <span class="fw-bold">09-03-2024</span>

                                    </div>
                                </div>


                            </div>

                            <div class="col-md-12">
                                <h4 class="text-center mt-2 mb-2 font-bold"><u>:: For Teacher's Cadre (Class 1st to 12th)::<br />
                                    <span class="fs-5">:: शिक्षक संवर्ग के लिए कक्षा 1 से 12 ::</span></u></h4>
                            </div>
                            <div class="col-12">

                                <h5 class="font-bold"><u>EMPLOYEE PERSONAL INFORMATION / कर्मचारी की व्यक्तिगत जानकारी</u> :-</h5>
                            </div>

                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tr valign="middle">

                                        <th>Name
                                            <br />
                                            नाम</th>
                                        <td>सिया वर्मा</td>
                                        <th>Designation
                                            <br />
                                            पद नाम</th>
                                        <td>स्नातकोत्तर शिक्षक(PGT)</td>

                                    </tr>
                                    <tr valign="middle">

                                        <th>Unique ID
                                            <br />
                                            कर्मचारी आई.डी </th>
                                        <td>EDP4561231556</td>
                                        <th>Date of Birth
                                            <br />
                                            जन्मतिथि</th>
                                        <td>03-Dec-1999
                                        </td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Institution of Posting
                                            <br />
                                            पदस्थी शाला/स्थान </th>
                                        <td>Bhopal<br />
                                            भोपाल</td>
                                        <th>Dise Code of Institution
                                            <br />
                                            पदस्थी शाला का डाइस कोड </th>
                                        <td>St Theresa Girls School/489754554</td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Date OF First Posting  
                                            <br />



                                            प्रथम नियुक्ति का दिनांक</th>
                                        <td>17-Sep-1992

                                        </td>
                                        <th>First Posting designation<br />

                                            प्रथम नियुक्ति का पद</th>
                                        <td>प्राथमिक अध्यापक</td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Current Date Of Promotion<br />
                                            वर्तमान पद पर नियुक्ति का दिनांक</th>
                                        <td>01/23/2024</td>
                                        <th>Date Of Promotion<br />
                                            पदोन्नति का दिनांक</th>
                                        <td>01/23/2024</td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Date OF Filiing of annual Immovabel Property Return  
                                            <br />
                                            स्थाई संपत्ती विवरण दाखिल करने का दिनांक </th>
                                        <td>10-Dec-1989
                                        </td>

                                    </tr>
                                </table>

                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">

                                <h4 class="text-center mt-2 mb-2 font-bold">:: <u>Self-Evaluation ::<br />
                                    <span class="fs-5">:: स्वमूल्यांकन ::</span></u></h4>
                            </div>
                            <div class="col-12">

                                <h5 class=" font-bold"><u>Improving Attendance Of Childdren  / छात्र उपिस्थिति में वृद्धि</u> :-</h5>
                            </div>
                            <br />

                            <div class="col-12">
                                <table class="table table-bordered  text-center ">
                                    <tbody>
                                        <tr valign="middle">
                                            <th rowspan="2">S.No.<br />
                                                सरल.क्र </th>
                                            <th rowspan="2">Class being taught<br />
                                                पढाई जाने वाली कक्षा</th>
                                            <th colspan="2">Enrolment<br />
                                                नामांकन</th>
                                            <th rowspan="2">Average Annual attendance 
                
                    in Percentege<br />
                                                वार्षिक औसत उपिस्थिति</th>
                                            <th rowspan="2">Remark
                                           <br />
                                                टिप्पणी</th>
                                        </tr>


                                        <tr valign="middle">
                                            <th>Previous Session<br />
                                                विगत सत्र</th>
                                            <th>Present Session
                                                <br />
                                                वर्तमान सत्र</th>
                                        </tr>

                                        <tr valign="middle">
                                            <td>1
                                            </td>
                                            <td>पहली कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>85%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>2</td>
                                            <td>दूसरी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>92%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>3</td>
                                            <td>तीसरी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>82%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>4</td>
                                            <td>चौथी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>76%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>5</td>
                                            <td>पाचंवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>89%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>6</td>
                                            <td>छटवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>75%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>7
                                            </td>
                                            <td>सातवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>85%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>


                                        </tr>
                                        <tr valign="middle">
                                            <td>8</td>
                                            <td>आठवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>92%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>9</td>
                                            <td>नव्वी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>82%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>10</td>
                                            <td>दसवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>76%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>11</td>
                                            <td>ग्यारवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>`189%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>12</td>
                                            <td>बरवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>75%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                    <div class="page-break"></div>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Complention of Syllabus Aganinst The Target / लक्ष्य के विरुद्ध पाठ्यक्रम  पूर्णता की स्थिति</u> :-</h5>

                            </div>
                            <br />
                            <div class="col-12">
                                <table class="table table-bordered text-center ">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>S.No.
      <br />
                                                सरल.क्र</th>
                                            <th>Class<br />
                                                कक्षा</th>
                                            <th>Subject<br />
                                                विषय</th>
                                            <th>Target (In % age)<br />
                                                लक्ष्य (प्रतिशत में)</th>
                                            <th>Achievement (In % age)<br />
                                                उपलब्धि (प्रतिशत में)</th>
                                        </tr>


                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>पहली कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>100%</td>

                                            <td>89%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>2</td>
                                            <td>दूसरी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%
                                            </td>
                                            <td>68%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>3</td>
                                            <td>तीसरी कक्षा</td>
                                            <td>अंग्रेजी</td>
                                            <td>100%</td>
                                            <td>74%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>4</td>
                                            <td>चौथी कक्षा</td>
                                            <td>पर्यावरण</td>
                                            <td>100%</td>
                                            <td>63%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>5</td>
                                            <td>पाचंवी कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>100%</td>

                                            <td>89%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>6</td>
                                            <td>छटवी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%
                                            </td>
                                            <td>68%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>7</td>
                                            <td>सातवी कक्षा</td>
                                            <td>अंग्रेजी</td>
                                            <td>100%</td>
                                            <td>74%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>8</td>
                                            <td>आठवी कक्षा</td>
                                            <td>विज्ञान</td>
                                            <td>100%</td>
                                            <td>63%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>9</td>
                                            <td>नव्वी कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>100%</td>

                                            <td>89%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>10</td>
                                            <td>दसवी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%
                                            </td>
                                            <td>68%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>11</td>
                                            <td>ग्यारवी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%</td>
                                            <td>74%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>12</td>
                                            <td>बरवी कक्षा</td>
                                            <td>जीव विज्ञान</td>
                                            <td>100%</td>
                                            <td>63%</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>

                            <div class="col-12">
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr valign="middle">

                                            <th style="width: 60%">Reasons, if any, for not completing the target
                                                <br />
                                                लक्ष्य प्राप्ति न होने के कारण </th>
                                            <td style="padding: 0.75rem;" class=" text-center"><span>Nill</span></td>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <div class="row">
                            <div class="col-12">

                                <h5 class=" font-bold"><u>Academic Performance and Syllabus Completion Status  / शैक्षणिक प्रदर्शन और पाठ्यक्रम समापन की स्थिति</u>:-</h5>
                            </div>
                            <br />

                            <div class="col-12">
                                <table class="table table-bordered text-center">
                                    <tbody>
                                        <tr>
                                            <th>S.No.<br />
                                                सरल.क्र</th>
                                            <th>Class<br />
                                                कक्षा</th>
                                            <th>Subject<br />
                                                विषय</th>
                                            <th>No.of
                     Student<br />
                                                छात्र संख्या
                                            </th>
                                            <th colspan="5">Previous class annual
examination Result grade
wises Student number<br />
                                                पूर्व कक्षा के परीक्षा परिणाम के
अनुसार छात्रों की ग्रेडवार संख्या
                                            </th>
                                            <th colspan="5">Achievement on the basis
of annual examination result
                                                <br />
                                                वार्षिक परीक्षा के
आधार पर उपलब्धि<br />
                                                (Student in Grade)<br />
                                                (ग्रेडवार छात्र संख्या)</th>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>A<br />
                                                (अ)</td>
                                            <td>B<br />
                                                (ब)</td>
                                            <td>C<br />
                                                (स)</td>
                                            <td>D<br />
                                                (द)</td>
                                            <td>E<br />
                                                (ई)</td>


                                            <td>A<br />
                                                (अ)</td>
                                            <td>B<br />
                                                (ब)</td>
                                            <td>C<br />
                                                (स)</td>
                                            <td>D<br />
                                                (द)</td>
                                            <td>E<br />
                                                (ई)</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>पहली कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>20</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>


                                        </tr>
                                        <tr valign="middle">
                                            <td>2
                                            </td>
                                            <td>दूसरी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>30</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>3
                                            </td>
                                            <td>तीसरी कक्षा
                                            </td>
                                            <td>अंग्रेजी
                                            </td>
                                            <td>50
                                            </td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>4
                                            </td>
                                            <td>चौथी  कक्षा
                                            </td>
                                            <td>पर्यावरण
                                            </td>
                                            <td>25
                                            </td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>5
                                            </td>
                                            <td>पाचंवी कक्षा
                                            </td>
                                            <td>हिंदी
                                            </td>
                                            <td>68
                                            </td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>6
                                            </td>
                                            <td>छटवी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>20</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>7
                                            </td>
                                            <td>सातवी कक्षा
                                            </td>
                                            <td>अंग्रेजी
                                            </td>
                                            <td>30</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>8
                                            </td>
                                            <td>आठवी कक्षा
                                            </td>
                                            <td>विज्ञान
                                            </td>
                                            <td>50
                                            </td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>9
                                            </td>
                                            <td>नव्वी कक्षा
                                            </td>
                                            <td>हिंदी
                                            </td>
                                            <td>25
                                            </td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>10
                                            </td>
                                            <td>दसवी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>68
                                            </td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>11
                                            </td>
                                            <td>ग्यारवी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>40
                                            </td>
                                            <td>8</td>
                                            <td>6</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>11</td>
                                            <td>8</td>
                                            <td>6</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>11</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>12
                                            </td>
                                            <td>बरवी कक्षा
                                            </td>
                                            <td>जीव विज्ञान
                                            </td>
                                            <td>45
                                            </td>
                                            <td>6</td>
                                            <td>7</td>
                                            <td>15</td>
                                            <td>10</td>
                                            <td>7</td>
                                            <td>6</td>
                                            <td>7</td>
                                            <td>15</td>
                                            <td>10</td>
                                            <td>7</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-12">
                                <table class="table table-bordered ">
                                    <tbody>
                                        <tr valign="middle">
                                            <th style="width: 60%">Reasons, if any, for not completing the target
                                                <br />
                                                लक्ष्य प्राप्ति न होने के कारण </th>
                                            <td style="padding: 0.75rem;" class="text-center text-"><span>Nill</span></td>
                                    </tbody>
                                </table>

                            </div>
                        </div>


                    </fieldset>

                    <div class="page-break"></div>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Role in academic / अकादमिक कार्यो में भूमिका  </u>:-</h5>
                            </div>
                            <br />
                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Role in academic<br />

                                            अकादमिक कार्यो में भूमिका</th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                    <tr valign="middle">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>1</th>
                                            <th>Use of teaching learning aid
                                                <br />
                                                शिक्षक सहायक सामग्री का उपयोग </th>
                                            <td>Nill</td>
                                        </tr>

                                        <tr valign="middle">
                                            <th>2</th>
                                            <th>Use of lesson plan<br />
                                                पाठ्य योजना का उपयोग</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>3</th>
                                            <th>Innovation and impect
                                                <br />
                                                नवाचार तथा उसका प्रभाव</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>4</th>
                                            <th>Checking of notebook's of students
                                                <br />
                                                छात्रों की अभ्यास पुस्तिका की जांच</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>5</th>
                                            <th>Remedial teaching
                                                <br />
                                                निदात्मक शिक्षण</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>6</th>
                                            <th>Extra Classes
                                                <br />
                                                अतिरिक्त कक्षा संचालन </th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <br />
                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Extraacurricular Activities / पाठ्येत्तर गतिविधियों मे भूमिका   </u>:-</h5>
                            </div>
                            <br />
                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Extraacurricular Activities
          <br />
                                            पाठ्येत्तर गतिविधियों मे भूमिका
          <br />

                                            अकादमिक कार्यो में भूमिका</th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                    <tr valign="middle">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>1</th>
                                            <th>Sports/Literary/Cultural Activities
                                                <br />
                                                खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ </th>
                                            <td>Nill</td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>2</th>
                                            <th>Extra Ordinary Work in Hygiene/Environment
                                                <br />
                                                स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>3</th>
                                            <th>Use of ICT in teaching and learning<br />
                                                शिक्षण एवं सिखने में आई सी टी का उपयोग</th>
                                            <td>Nil
                                            </td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Academic trsining attended during Appraisal period / प्रतिवेदित अवधि मे प्रशिक्षण मे सहभागिता </u>:-</h5>
                            </div>
                            <br />
                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>S.No.<br />
                                                सरल.क्र</th>
                                            <th>Name of Training<br />
                                                प्रशिक्षण का नाम</th>
                                            <%-- <th>Subject<br />
                                                विषय</th>--%>
                                            <th>Period of Training<br />
                                                प्रशिक्षण की अवधि</th>
                                            <th>Result/Grade<br />
                                                उपलब्धि/ग्रेड</th>
                                        </tr>


                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>स्कूली शिक्षा</td>
                                            <%--   <td>जीव विज्ञान</td>--%>
                                            <td>45 दिन</td>
                                            <td>"A"</td>

                                        </tr>
                                    </tbody>

                                </table>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <table class="table table-bordered th-left">
                                    <tbody>
                                        <tr valign="middle" style="width: 50%">
                                            <th>Any Other Work Which You Want to Mention as an Outstanding Contribution
                                                <br />
                                                कोई अन्य कार्य जिसे आप एक उत्कृष्ट योगदान के रूप में उल्लेख करना चाहते है </th>
                                            <td style="width: 50%" class="text-center">Nill</td>
                                        </tr>
                                    </tbody>
                                </table>


                            </div>
                        </div>
                        <br />
                    </fieldset>

                </div>
                <div class="modal-footer justify-content-center d-print-none">
                    <button type="button" class="btn btn-primary" onclick=" printModalContent('staticBackdrop'); ">Print</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
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

