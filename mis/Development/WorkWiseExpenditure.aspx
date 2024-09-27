<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="WorkWiseExpenditure.aspx.cs" Inherits="mis_Development_WorkWiseExpenditure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #divprint {
            display: none;
        }
    </style>
    <style>
    .modal-body {
        display: flex;
        justify-content: center !important;
        align-items: center;
    }

    .modal fade {
        justify-content: center !important;
    }

    @media print {
        @page {
            size: A4;
            margin: 10mm;
        }

        body {
            font-size: 12px;
            transform-origin: top left;
            transform: scale(calc(100% / var(--print-scale, 1)))
        }

        .page-break {
            page-break-after: always;
        }

        .modal-body {
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center; /* added this line */
        }
    }

    textarea {
        resize: vertical;
        min-height: 60px; /* Set a minimum height */
    }

    .table th {
        background-color: white;
    }
    .form-control:read-only{
         background-color: white;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--  <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Work Wise Expenditure Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <%--  <li class="breadcrumb-item">
                         <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                     </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')">
                                <span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Work Wise Expenditure</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Work Wise Expenditure  /कार्यानुसार व्यय</h4>
                </div>
            </div>
        </div>
        <div class="card-body" id="First">
            <%-- $(".divIDClass").hide();--%>
            <span id="ContentBody_lblMsg"></span>

            <%-- <legend>Add Project Creation / नई परियोजना जोड़े</legend>--%>
            <fieldset>
                <legend>Work Wise Expenditure  /कार्यानुसार व्यय</legend>
                <div class="row align-items-end">
                    <div class="col-md-6  col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select District Name 
                 <br />
                                जिला का चयन करे<span style="color: red">*</span></label>
                            <select id="DistrictName" class="form-control select2">
                                <option value="--Select--">--Select--</option>
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
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Code
              <br />
                                परियोजना कोड<span style="color: red">*</span></label>
                            <select id="Project_Code" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">P00017</option>
                                <option value="B">P00018</option>
                                <option value="C">P00019</option>
                                <option value="D">All</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                From Date<br />
                                प्रारंभिक दिनांक से<span style="color: red">*</span></label>
                            <input class="form-control" name="Approvaldate" type="date" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                To Date<br />
                                अंतिम दिनांक तक<span style="color: red">*</span></label>
                            <input class="form-control" name="Approvaldate" type="date" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <input type="button" name="ctl00$ContentBody$btnSave" value="Search" class="btn btn-success btn-border" />
                        <a href="WorkWiseExpenditure.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>


        

        <fieldset>
            <legend>Details/
विवरण</legend>
            <div class="row justify-content-end">
                <div class="col-md-4 text-end">
                    <%-- <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>--%>
                </div>

            </div>

            <div class="row form-group">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <tr style="white-space:nowrap;">
                                <th>Sr.No.<br />
                                    सरल क्रमांक
                                </th>
                                <th>OIS Code<br />
                                    OIS कोड</th>
                                <th>Project Code<br />
                                    परियोजना क्रमांक</th>
                                <th>Project Date<br />
                                    परियोजना दिनांक</th>
                                <th>Work Category<br />
                                    कार्य की श्रेणी</th>
                                <th>Work Subcategory<br />
                                    कार्य उपश्रेणी</th>
                                <th>Estimated Budget Cost(In Rs)<br />
                                    अनुमानित बजट</th>
                                <th>Approved Cost(Approx. In Rs)<br />
                                    स्वीकृत राशि </th>
                                <th>Total Expense Amount<br />कुल व्यय राशि</th>
                                    <th>Work Description<br />
                                        कार्य का विवरण</th>
                                <th id="View">View Document<br>
                                    दस्तावेज़ देखें</th>

                                 <th>Print <br />प्रिंट
                                        </th>
                                <%-- <th>Office Name	
                                        </th>
                                        <th>Sanction Letter No
                                        </th>
                                        <th>Sanction Letter Date 
                                        </th>


                                        <th>Work Category
                                        </th>
                                        <th>Work Description</th>
                                        <th>Foundation</th>
                                        <th>Plinth</th>
                                        <th>Mid level completion</th>
                                        <th>Final level completion</th>--%>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Delhi Public School_44561</td>
                                <td>P00019</td>
                                <td>22/05/2023</td>
                                <td>स्कूल मरम्मत/निर्माण</td>
                                <td>इमारत मरम्मत</td>
                                <td>60000</td>
                                <td>60000</td>
                                <td>60000</td>
                             <td>
<button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button></td>
                              <td id="Document"><%--<a class="btn btn-info btn-rounded" href="#">--%>  <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>

                                <td><%--<button class="btn btn-info btn-rounded" onclick="printpage()"><i class="fa fa-print"></i></button>--%>


                                     <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></a>
                                </td>
                              <%--  <td>
                                    <button class="btn btn-info btn-rounded" onclick="printpage()"><i class="fa fa-print"></i></button>
                                </td>
                                <td>Subhash School</td>
                                <td>8269</td>
                                <td>01/01/2024</td>


                                <td>स्कूल मरम्मत/निर्माण</td>
                                <td>इमारत मरम्मत</td>
                                <td>
                                    <button class="btn btn-info btn-rounded"><i class="fa fa-eye"></i></button>
                                </td>
                                <td>
                                    <button class="btn btn-info btn-rounded"><i class="fa fa-eye"></i></button>
                                </td>
                                <td></td>
                                <td></td>--%>
                            </tr>




                        </table>
                    </div>
                </div>
            </div>

        </fieldset>
                          
               <%--<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
       <div class="modal-dialog modal-xl">
           <div class="modal-content">
               <div class="modal-header">
                   <h3 class="modal-title w-100 text-center"></h3>
                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body text-center">
                   <fieldset style="width: max-content">
                       <img src="../../img/SchoolTec.jpg" alt="SchoolTec Image" />
                   </fieldset>
               </div>
               <div class="modal-footer justify-content-center">
                   <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop')">Print</button>
                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
               </div>
           </div>
       </div>
   </div>--%>
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                       
                        <div class="row text-center">
                            <%--<div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>--%>
                      
                            
                            <div class="col-sm-12 text-center">
                                <br />
                                <h3><strong><b>Directorate of Public Instructions</b></strong></h3>
                                <h4><strong><b>मध्य प्रदेश शासन</b></strong></h4>
                                <h4><strong><b>जिला:- भोपल</b></strong></h4>
                            </div>
                         <%--  <div class="col-sm-2">
                                <img id="imglogo1" src="../../img/qr-code-logo-27adb92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>--%>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <div class="row">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="">
                                        <div class="">
                                            <div class="row">
                                                <div class="col text-start">
                                                    <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

                                                    <span class="fw-bold">2023-2024</span>
                                                </div>

                                                <div class="col text-end">
                                                    <span class="fw-bold">आवेदन दिनाँक:-</span>
                                                    <span class="fw-bold">09-03-2024</span>
                                                </div>
                            <div class="col-md-12 mb-5">
                           <h4 class="text-center mt-3 font-bold"><u>: : Work Wise Expenditure : :</u></h4>
                           <h6 class="text-center mt-2 font-bold"><u>: : कार्यानुसार व्यय : :</u></h6>
                       </div>
                       <table class="table table-bordered modal-table table-st fs-5">
                           <tr class="mt-3">

                               <th>OIS Code<br />
OIS कोड</th>
                               <td class="text-center ">Delhi Public School_44561</td>
                                                              <th>Project Code<br />
परियोजना क्रमांक</th>
                               <td class="text-center ">P00019</td>
                           </tr>
                           <tr>
                               <th> Project Date
परियोजना दिनांक</th>
                               <td class="text-center ">22/05/2023</td>
                               <th>Work Category<br />
कार्य की श्रेणी</th>
                               <td class="text-center ">स्कूल मरम्मत/निर्माण</td>
                           </tr>
                           <tr>
                               <th>Work Subcategory<br />
कार्य उपश्रेणी</th>
                               <td class="text-center ">इमारत मरम्मत</td>  
                               <th>Estimated Budget Cost(In Rs)<br />
अनुमानित बजट</th>
                               <td class="text-center ">60000</td>
                               
                           </tr>
                           <tr ><th>Approved Cost(Approx. In Rs)<br />
स्वीकृत राशि</th><td class="text-center ">60000</td><th>Total Expense Amount<br />
कुल व्यय राशि</th><td class="text-center ">60000</td></tr>
                       </table>
                                     </div>

                                        <%--    <h3 class="text-center mt-4 mb-4 font-bold"><u>:: Information filled by the Accepting Authority::<br />
                                                <span class="fs-5">:: भाग-4 स्वीकृत अधिकारी द्वारा भरी गई जानकारी ::</span></u></h3>
                                        </div>
                                        <table class="table table-bordered table-st fs-5">
                                            <tr class="mt-3">

                                                <th>Employee Name Unique ID
<br />कर्मचारी का नाम यूनिक आई.डी</th>
                                                <td>सिया वर्मा/EDP4454445</td>
                                            </tr>
                                            <tr>
                                                <th> Do you agree with the remarks of the reporting officer ?<br />क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|</th>
                                                <td>YES/हँ</td>
                                            </tr>
                                            <tr>

                                                <th> If no or agree partially give reasons for disagreement<br />यदि नही या आंशिक रूप से सहमत होने पर बसहमति का कारण </th>
                                                <td>Nil</td>
                                            </tr>
                                            <tr class="mt-3">
                                                <th>Grading<br />ग्रेड
                                                </th>
                                                <td>Outstanding/उत्कृष्ट</td>
                                            </tr>

                                        </table>
                                        <br />--%>

                                        <div class="row ms-0 me-0">
                                            <div class="col-12">

                                                <h4 class="text-center font-bold">: : <u>Work Description/
कार्य का विवरण</u> : :</h4>
                                            </div>

                                            <div class="col-12">
                                                <p class="font-18 text-center">
                                                   Buildings serve several needs of society primarily as shelter from weather, security, living space, privacy, to store belongings, and to comfortably live and work. A building as a shelter represents a physical division of the human habitat (a place of comfort and safety) and the outside (a place that at times may be harsh and harmful)
                                                </p>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div></div>
                        <br />

                        <br />
                        <br />
                        <br />


                    </fieldset>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop')">Print</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                </div>
            </div>
        </div>


    </div>


                <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">
                    <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Document / दस्तावेज</h3>
                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <input type="hidden" asp-for="PrevEmpId" id="hdnPrevEmpId" />
                        <input type="hidden" asp-for="CompassionId" id="hdnCompassionId" />
                        <legend>Work Related Important Document / कार्य संबंधी आवश्यक दस्तावेज</legend>
                        <div class="row">
                            <%--<div>
    <h5 style="font-weight: 200;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
</div>--%>
                            <div class="col-md-12 mt-3">
                                <table class="table table-bordered table-responsive-lg">
                                    <thead>
                                        <th>Sr.No.<br />
                                            सरल क्रमांक</th>
                                        <th>Document Name
            <br />
                                            दस्तावेज का नाम</th>

                                        <th class="text-center">View Document
            <br />
                                            दस्तावेज देंखे</th>

                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><b>Techincal Document
                <br />
                                                तकनीकी दस्तावेज़  </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><b>Upload Civil Document
                <br />
                                                सिविल दस्तावेज अपलोड करें </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><b>Upload Elecrtrical Document
                <br />
                                                इलेक्ट्रिकल दस्तावेज अपलोड करें </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><b>Upload Project Document
                <br />
                                                परियोजना के दस्तावेज अपलोड करें </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><b>Upload Other Document
                <br />
                                                अन्य दस्तावेज अपलोड करें </b></td>

                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
    </div>


                                      <div class="modal" id="WorkDescription">
      <div class="modal-dialog">
          <div class="modal-content">
              <!-- Modal Header -->
              <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                  <h4 class="modal-title text-white">Work Description</h4>
                  <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
              </div>
              <!-- Modal Body -->
              <div class="modal-body">
                  <div class="row">
                      <div class="col-md-12">

                      
                  <div class="form-group">
                    <%--  <h5>Work Description</h5>--%>
                      <p class="border p-2 border-primary fs-5 rounded-4">Buildings serve several needs of society primarily as shelter from weather, security, living space, privacy, to store belongings, and to comfortably live and work. A building as a shelter represents a physical division of the human habitat (a place of comfort and safety) and the outside (a place that at times may be harsh and harmful),

</p>
                   <%--   <textarea class="form-control" rows="1" style="resize: vertical" placeholder="project approval & Installment Creation/ परियोजना अनुमोदन एवं किस्त निर्माण

"></textarea>--%>
                  </div>
              </div>
                          </div>

              <!-- Modal Footer -->
          <%--    <div class="modal-footer justify-content-center">

                  <button type="button" class="btn btn-success Alert-Reject btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                  <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              </div>--%>
          </div>
              </div>
      </div>
  </div>
             <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </div>
</div>


    




    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printpage() {
            var divContents = document.getElementById("divprint").innerHTML;
            /* document.getElementById("First").style.display = "none";*/
            var a = window.open('', '_blank', 'height=1500, width=1500');
            a.document.write('<html>');
            a.document.write('<body > <h1> <br>');
            a.document.write(divContents);
            a.document.write('</body></html>');
            a.document.close();
            a.print();
        }
    </script>
     <script>
         function printModalContent(modalId) {
             var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
             document.body.innerHTML = modalContent.innerHTML
             window.print();
             window.location.href = "WorkWiseExpenditure.aspx";
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

