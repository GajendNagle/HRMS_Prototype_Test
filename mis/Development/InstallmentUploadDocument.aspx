<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentUploadDocument.aspx.cs" Inherits="mis_Development_InstallmentUploadDocument" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        textarea {
            resize: vertical;
            min-height: 40px;
            /* Set a minimum height */
        }
    </style>

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

        .form-control:read-only {
            background-color: white;
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
                        <%--  <li class="breadcrumb-item">
                          <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                      </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')">
                                <span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Generate Demand</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Generate Demand/
अनुरोध करना </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Demand  Request/
अनुरोध करना </legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Work Category
        <br />
                                कार्य की श्रेणी का चयन करें<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">स्कूल मरम्मत/निर्माण</option>
                                <option value="B">पेयजल व्यवस्था</option>
                                <option value="C">स्कूल मार्ग निर्माण</option>
                                <option value="D">अन्य कार्य</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4" id="school-subcategory-container">

                        <div class="form-group">
                            <label>
                                Select Work Subcategory
        <br />
                                कार्य के प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select id="school-subcategory" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">कक्षा निमार्ण</option>
                                <option value="A">इमारत मरम्मत</option>
                                <option value="A">स्कूल नया निमार्ण</option>
                                <option value="B">हेंडपंप खनन</option>
                                <option value="B">बोरबेल खनन</option>
                                <option value="B">पानी की टंकी निर्माण</option>
                                <option value="B">पेयजल हेतु पाइपलाइन निर्माण</option>
                                <option value="C">WBM / कच्ची सड़क निमार्ण</option>
                                <option value="C">CC Road निर्माण</option>
                                <option value="C">मार्ग मरम्मत</option>
                                <option value="C">मुरम रोड निर्माण</option>
                                <option value="C">डामर रोड निर्माण</option>
                                <option value="D">नाली निर्माण</option>
                                <option value="D">पेपर ब्लाक निर्माण</option>

                                <%--selection of this next textbox will visible--%>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6  col-lg-4 col-xl-4">
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
                </div>
                <div class="col-md-12">
                    <hr />
                    <input type="button" value="Search" class="btn btn-success btn-border"
                        onclick="div()" />
                    <a href="InstallmentCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </fieldset>
            <fieldset id="Show" style="display: none;">
                <legend>Project Details / परियोजना विवरण</legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr style="white-space: nowrap">
                                        <th>Sr.No.<br />
                                            सरल क्रमांक</th>
                                        <%-- <th>Action Status/<br>
                                  गतिविधि स्थिति</th>
                              <th>Edit/<br>
                                  एडिट करें</th>
                              <th>View Document/<br>
                                  दस्तावेज़ देखें</th>
                              <th>View Details/<br>
                                  विवरण देखें</th>
                              <th>Project Status/<br>
                                  परियोजना की स्थिति</th>--%>
                                        <th>Project Code<br>
                                            परियोजना क्रमांक</th>
                                        <th>Project Date<br>
                                            परियोजना दिनांक</th>
                                        <%--<th>Village /<br />
                                  गाँव का नाम</th>--%>
                                        <th>Work Category<br />
                                            कार्य की श्रेणी</th>
                                        <th>Work Subcategory<br />
                                            कार्य उपश्रेणी</th>
                                        <th>OIS Code<br />
                                            OIS कोड</th>
                                        <th>Address<br />
                                            पता</th>
                                        <%-- <th>Action Status<br>
                                  गतिविधि स्थिति</th>--%>
                                        <%--  <th>Work Place  /<br />
                                  कार्य स्थल</th>--%>

                                        <th>Estimated Budget Cost(In Rs) 
                                      <br />
                                            अनुमानित बजट</th>
                                        <th>Acceptor Amount(In Rs) 
                                      <br />
                                            स्वीकर्ता राशि</th>
                                        <th>Work Description<br />
                                            कार्य का विवरण</th>
                                        <th>View Document<br>
                                            दस्तावेज़ देखें</th>
                                        <%-- <th>Edit<br>
एडिट करें</th>
                              <th>Send To Request<br />अनुरोध करने के लिए भेजें</th>--%>
                                    </tr>
                                </thead>
                                <tbody id="tbody">
                                    <tr>

                                        <td>1</td>
                                        <%--   <td>
                                  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" class="form-check-input">
                              </td>--%>
                                        <td>P00019</td>
                                        <th>22/05/2023</th>
                                        <td>स्कूल मरम्मत/निर्माण</td>
                                        <td>इमारत मरम्मत</td>
                                        <td>Delhi Public School_44561</td>
                                        <td>Bhopal M.P</td>
                                        <%--<td>Working Mode</td>--%>
                                        <%--    <td>Work For Bhopal Office</td>--%>
                                        <td>10000.00</td>
                                        <td>10000.00</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                        </td>
                                        <td><%--<a class="btn btn-info btn-rounded" href="#">--%>  <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="hide" style="display: none;">
                <legend>Installment Document Upload/किस्त के दस्तावेज़ अपलोड करे</legend>
                <div class="col-sm-12">
                    <div class="table-responsive">
                        <table class="datatable table table-striped table-bordered table-hover" style="border-collapse: collapse;" id="Table1">
                            <tbody>
                                <tr style="white-space: nowrap;">
                                    <th>Sr.No.<br />
                                        सरल क्रमांक</th>
                                    <th class="w-xl">Milestone
                                    <br />


                                        माइल स्टोन
                                    </th>
                                    <th>Select Work Subcategory
                                    <br />
                                        कार्य के प्रकार का चयन करें</th>
                                    <th>Installment<br />
                                        किस्त</th>
                                    <th>Totel  Project Amount(%)<br />
                                        कुल परियोजना राशि(%)<span style="color: red">*</span></th>
                                    <th style="width: fit-content;" class="text-center">Installment Amount<br />
                                        इन्सटॉलमेंट  अमाउंट</th>
                                    <th>Document Upload
                                    <br />
                                        दस्तावेज अपलोड</th>
                                    <th style="width: 150px;" class="text-center">Remark
                                    <br />
                                        टिप्पणी
                                    </th>
                                    <th>Utilization Certificate<br />
                                        उपयोगिता प्रमाण पत्र</th>
                                    <th style="width: 50px;">Send To Request<br />
                                        अनुरोध करने के लिए भेजें</th>
                                </tr>

                                <tr id="TableRow" class="text-center nowrap">
                                    <td>1</td>
                                    <%-- <td >1</td>--%>
                                    <td>Foundation <%--<input type="Text"  name="birthday" class="form-control" value="Foundation" readonly   autocomplete="off" />--%>
                                    </td>

                                    <td>
                                        <%--  <select  class="form-control " disabled >--%>

                                        <%--  <option value="A">--%>स्कूल नया निमार्ण<%--</option>--%>
                                        <%-- 
  </select>--%>
                                    </td>
                                    <td>1st Installment</td>
                                    <td>25%
                                    <%--<input type="Text"  name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />--%>
                                    </td>
                                    <td>15000
                                   <%-- <input type="Text" value="15000" name="birthday" class="form-control text-center" disabled>--%></td>

                                    <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                    <td>
                                        <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks" style="width: 200px;"></textarea>
                                    </td>
                                    <td>
                                        <button id="Btn1" class="Alert-Save5 btn btn-outline-primary  fs-13 me-4 rounded-4 w-xl" type="button">Utilization Certificate</button>
                                        <button id="Btn5" onclick="#Btn5" class="btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button" style="display: none;">View</button>
                                    </td>
                                    <td>
                                        <button id="BtnBack1" disabled="disabled" class="Alert-Save btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button">
                                            <%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%>
                                            <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%> Send Demand</button></td>
                                </tr>
                                <tr class="text-center nowrap">
                                    <td>2</td>
                                    <%-- <td >1</td>--%>
                                    <td>Plinth<%--<input type="Text"  name="birthday" class="form-control" value="Plinth" readonly  autocomplete="off" />--%>

                                    <td>स्कूल नया निमार्ण
                                  <%--  <select  class="form-control " disabled>
 
     <option value="A">स्कूल नया निमार्ण</option>
  

    
 </select>
                                  --%>                  </td>
                                    <td>2nd Installment</td>
                                    <td>25%
                                   <%--<input type="Text"  name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />--%>
                                    </td>
                                    <td>15000
                                  <%-- <input type="Text" value="15000" name="birthday" class="form-control text-center" disabled>--%></td>

                                    <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                    <td>
                                        <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                                    </td>

                                    <td>
                                        <button id="Btn2" class="Alert-Save6 btn btn-outline-primary  fs-13 me-4 rounded-4 w-xl" type="button" disabled="disabled">Utilization Certificate</button>
                                        <button id="Btn6" onclick="#Btn6" class="btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button" style="display: none;">View</button></td>
                                    <td><%--  id="TableRow1" style="display:none;"--%>
                                        <button id="BtnBack2" disabled="disabled" class="Alert-Save1 btn btn-outline-primary w-lg  fs-13 me-4 rounded-4 " type="button">Send Demand</button></td>
                                </tr>
                                <tr class="text-center nowrap">
                                    <td>3</td>
                                    <td>Mid level completion</td>
                                    <%-- <td >1</td>--%>
                                    <%-- <input type="Text" name="birthday" class="form-control" value="Mid level completion" readonly  autocomplete="off" />--%>


                                    <td>स्कूल नया निमार्ण
                                    <%--<select id="school-subcategory" class="form-control " disabled>--%>
                                        <%--   <option value="--Select--">--Select--</option>--%>
                                        <%-- <option value="A">कक्षा निमार्ण</option>
     <option value="A">इमारत मरम्मत</option>--%>
                                        <%-- <option value="A">स्कूल नया निमार्ण</option>--%>
                                        <%--   <option value="B">हेंडपंप खनन</option>
     <option value="B">बोरबेल खनन</option>
     <option value="B">पानी की टंकी निर्माण</option>
     <option value="B">पेयजल हेतु पाइपलाइन निर्माण</option>
     <option value="C">WBM / कच्ची सड़क निमार्ण</option>
     <option value="C">CC Road निर्माण</option>
     <option value="C">मार्ग मरम्मत</option>
     <option value="C">मुरम रोड निर्माण</option>
     <option value="C">डामर रोड निर्माण</option>
     <option value="D">नाली निर्माण</option>
     <option value="D">पेपर ब्लाक निर्माण</option>--%>

                                        <%--selection of this next textbox will visible--%>
                                        <%-- </select>
                                        --%>                    </td>
                                    <td>3rd Installment</td>
                                    <td>25%
                                 <%--  <input type="Text" name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />--%>
                                    </td>
                                    <td>15000
                                 <%--  <input type="Text"  value="15000" name="birthday" class="form-control text-center" disabled>--%></td>

                                    <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                    <td>
                                        <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                                    </td>

                                    <td>
                                        <button id="Btn3" disabled="disabled" class="Alert-Save7 btn btn-outline-primary  fs-13 me-4 rounded-4 w-xl" type="button">Utilization Certificate</button>
                                        <button id="Btn7" onclick="#Btn7" class="btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button" style="display: none;">View</button>
                                    </td>
                                    <td><%--id="TableRow2" style="display:none;">--%>
                                        <button id="BtnBack3" disabled="disabled" class="Alert-Save2 btn btn-outline-primary w-lg fs-13 me-4 rounded-4 " type="button">Send Demand</button></td>
                                </tr>
                                <tr class="text-center nowrap">
                                    <td>4</td>
                                    <%-- <td >1</td>--%>
                                    <td>Final level completion <%--<input type="Text" name="birthday" class="form-control " value="Final level completion" readonly  autocomplete="off" />--%>

                                    <td>स्कूल नया निमार्ण
                                 <%--   <select  class="form-control " disabled>
 
     <option value="A">स्कूल नया निमार्ण</option>
  

   
 </select>--%>

                                    </td>
                                    <td>4th Installment</td>
                                    <td>25%
                                <%--   <input type="Text" id="txtInstallmentPer1" name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />--%>
                                    </td>
                                    <td>15000
                                   <%--<input type="Text" id="txtInstallmentAmount1" value="15000" name="birthday" class="form-control text-center" disabled>--%></td>
                                    <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                    <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                    <td>
                                        <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                                    </td>

                                    <td>
                                        <button id="Btn4" disabled="disabled" class="Alert-Save8 btn btn-outline-primary  fs-13 me-4 rounded-4 w-xl" type="button">Utilization Certificate</button>
                                        <button id="Btn8" onclick="#Btn8" class="btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button" style="display: none;">View</button></td>
                                    <td>
                                        <button id="BtnBack4" disabled="disabled" class="Alert-Save4 btn btn-outline-primary w-lg  fs-13  rounded-4 " type="button" style="display: block">Send Demand</button></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
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
                                    <div>
                                        <h5 style="font-weight: 200;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                                    </div>
                                    <div class="col-md-12 mt-3">
                                        <table class="table table-bordered table-responsive-lg">
                                            <thead>
                                                <th>Sr.No.<br />
                                                    सरल क्रमांक</th>
                                                <th>Document Name
                    <br />
                                                    दस्तावेज का नाम</th>
                                                <th>Document Upload
                    <br />
                                                    दस्तावेज अपलोड</th>
                                                <%-- <th>View Document
                    <br />
                        दस्तावेज देंखे</th>
                    <th>Remove Document
                    <br />
                        दस्तावेज हटाये</th>--%>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td><b>Upload Project Photo-1
                                                        <br />
                                                        प्रोजेक्ट फ़ोटो अपलोड करें 1 </b></td>
                                                    <td>
                                                        <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                                        <span id="spndocDeathCertificateName" style="display: none"></span>
                                                        <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                                                    </td>
                                                    <%--  <td class="text-center">
                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                        </td>--%>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td><b>Upload Project Photo-2
                                                        <br />
                                                        प्रोजेक्ट फ़ोटो अपलोड करें 2 </b></td>
                                                    <td>
                                                        <input id="docDateofBirth" type="file" asp-for="docDateofBirth" class="form-control getfileinfo" required onchange="ValidateUploadFile(this,'lnkDob')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                                        <span id="spndocDateofBirthName" style="display: none;"></span>
                                                        <span asp-validation-for="docDateofBirth" class="text-danger"></span>
                                                    </td>
                                                    <%-- <td class="text-center">
                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                        </td>--%>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td><b>Upload Project Photo-3
                        <br />
                                                        प्रोजेक्ट फ़ोटो अपलोड करें 3  </b></td>
                                                    <td>
                                                        <input id="docResidenceCertificate" type="file" asp-for="docResidenceCertificate" required class="form-control getfileinfo" onchange="ValidateUploadFile(this,'lnkDomicile')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                                        <span id="spndocResidenceCertificateName" style="display: none"></span>
                                                        <span asp-validation-for="docResidenceCertificate" class="text-danger"></span>
                                                    </td>
                                                    <%--  <td class="text-center">
                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                        </td>--%>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td><b>Upload Bil 
                        <br />
                                                        बिल अपलोड करें</b></td>
                                                    <td>
                                                        <input id="docCasteCertificate" type="file" class="form-control getfileinfo" asp-for="docCasteCertificate" onchange="ValidateUploadFile(this,'lnkCaste')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                                        <span id="spndocCasteCertificateName" style="display: none"></span>
                                                        <span asp-validation-for="docCasteCertificate" class="text-danger"></span>
                                                    </td>
                                                    <%-- <td class="text-center">
                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                        </td>--%>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td><b>Upload Installment  Demand Letter
  <br />
                                                        किस्त मांग पत्र अपलोड करें</b></td>
                                                    <td>
                                                        <input id="docHscOrHsscCertificate" type="file" asp-for="docHscOrHsscCertificate" class="form-control getfileinfo" required onchange="ValidateUploadFile(this,'lnkHSC')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                                        <span id="spndocHscOrHsscCertificateName" style="display: none"></span>
                                                        <span asp-validation-for="docHscOrHsscCertificate" class="text-danger"></span>
                                                    </td>
                                                    <%--  <td class="text-center">
                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                        </td>--%>
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
                                        <p class="border p-2 border-primary fs-5 rounded-4">
                                            Buildings serve several needs of society primarily as shelter from weather, security, living space, privacy, to store belongings, and to comfortably live and work. A building as a shelter represents a physical division of the human habitat (a place of comfort and safety) and the outside (a place that at times may be harsh and harmful),

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
                                                            <h4 class="text-center mt-3 font-bold"><u>: :Utilization Certificate  : :</u></h4>
                                                            <h6 class="text-center mt-2 font-bold"><u>: : उपयोगिता प्रमाणपत्र : :</u></h6>
                                                        </div>
                                                        <table class="table table-bordered modal-table table-st fs-5">
                                                            <tr class="text-center">

                                                                <th>OIS Code<br />
                                                                    OIS कोड</th>
                                                                <td class="text-center ">Delhi Public School_44561</td>
                                                                <th>Project Code<br />
                                                                    परियोजना क्रमांक</th>
                                                                <td class="text-center ">P00019</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>Project Date<br />
                                                                    परियोजना दिनांक</th>
                                                                <td class="text-center ">22/05/2023</td>

                                                                <th>Work Category<br />
                                                                    कार्य की श्रेणी</th>
                                                                <td class="text-center ">स्कूल मरम्मत/निर्माण</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>Milestone<br />
                                                                    माइल स्टोन</th>
                                                                <td>Foundation</td>
                                                                <th>Installment<br />
                                                                    किस्त</th>
                                                                <td>1st Installment</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>Work Subcategory<br />
                                                                    कार्य उपश्रेणी</th>
                                                                <td class="text-center ">इमारत मरम्मत</td>
                                                                <th>Estimated Budget Cost(In Rs)<br />
                                                                    अनुमानित बजट</th>
                                                                <td class="text-center ">60000</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>1st Installment Utilization Amount<br />
                                                                    पहली किस्त उपयोग राशि</th>
                                                                <td>5000</td>
                                                                <th>Remaining Amount<br />
                                                                    बाकी अमाउंट</th>
                                                                <td>55000</td>

                                                            </tr>
                                                            <%--   <tr>
                               <th>Work Subcategory<br />
कार्य उपश्रेणी</th>
                               <td class="text-center ">इमारत मरम्मत</td>  
                               <th>Estimated Budget Cost(In Rs)<br />
अनुमानित बजट</th>
                               <td class="text-center ">60000</td>
                               
                           </tr>
                           <tr ><th>Approved Cost(Approx. In Rs)<br />
स्वीकृत राशि</th><td class="text-center ">60000</td><th>Total Expense Amount<br />
कुल व्यय राशि</th><td class="text-center ">60000</td></tr>--%>
                                                        </table>
                                                    </div>



                                                    <div class="row ms-0 me-0">
                                                        <div class="col-12">

                                                            <h4 class="text-center font-bold">: : <u>Self Verified/
स्वयं सत्यापित</u> : :</h4>
                                                        </div>

                                                        <div class="col-12">
                                                            <p class="font-15 text-justify text-danger">
                                                                Certified That I Have Personally Verified That The Work For Which The Grant-In-Aid Was Sanctioned Has Been Duly Completed And That I Have Made The Following Checks To See That The Money Is Actually Utilized For The Purpose For Which It Was Approved.<br />
                                                                प्रमाणित किया जाता है कि मेरे द्वारा स्वयं सत्यापित किया गया हैं की  जिस कार्य के लिए अनुदान सहायता स्वीकृत की गई थी, उसे विधिवत पूरा किया गया है, और मैंने यह देखने के लिए निम्नलिखित जांच की है कि पैसा वास्तव में उसी उद्देश्य के लिए उपयोग किया गया था जिसके लिए इसे मंजूरी दी गई थी।

                                                            </p>
                                                        </div>
                                                        <div class="col-md-7"></div>

                                                        <div class="col-md-5 justify-content-end">
                                                            <div class="text-end d-flex flex-column gap-3 justify-content-end">
                                                                <h6><b>अधिकारी एवं पदेन प्रबन्ध संचालक........................</b></h6>
                                                                <h6><b>स्कूल शिक्षा विभाग..........................................</b></h6>
                                                                <h6><b>Bhopal- ( BPL ) (म.प्र.)
......................................</b></h6>
                                                                <%-- <h6><b>पद........................................................</b></h6>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>  $('#Btn5').on('click', function () {
            $('#staticBackdrop').modal('show');
        });</script>
    <script>  $('#Btn6').on('click', function () {
            $('#staticBackdrop').modal('show');
        });</script>
    <script>  $('#Btn7').on('click', function () {
            $('#staticBackdrop').modal('show');
        });</script>
    <script>  $('#Btn8').on('click', function () {
            $('#staticBackdrop').modal('show');
        });</script>
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
    <script>
        function div() {
            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';
            document.getElementById("Show").style.display = (document.getElementById("Show").style.display == 'block') ? 'none' : 'block';
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () {
                return this;
            };

            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').on('click', function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Send this record ?",
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
                                text: 'Project Record  Send Successfully!',
                                timer: 2000
                            })
                            var table = document.getElementById("Table1");
                            document.getElementById("BtnBack2").disabled = false;
                            //table.style.display = "contents"; 
                            //document.getElementById("TableRow1").style.display = "contents";
                            document.getElementById("BtnBack1").innerText = 'DONE';
                        }
                    })
                });
            };

            $.SweetAlert = new SweetAlert();
            $.SweetAlert.Constructor = SweetAlert;

            $.SweetAlert.init();
        }(window.jQuery);
    </script>
    <script>
        $(document).ready(function () {
            !function ($) {
                "use strict";
                var SweetAlert = function () {
                    return this;
                };

                SweetAlert.prototype.init = function () {
                    //Basic
                    //Success Message
                    $('.Alert-Save1').on('click', function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "Do you want to Send this record ?",
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
                                    text: 'Project Record  Send Successfully!',
                                    timer: 2000
                                })
                                var table = document.getElementById("Table1");
                                document.getElementById("BtnBack3").disabled = false;
                                //table.style.display = "";
                                //document.getElementById("TableRow2").style.display = "";
                                document.getElementById("BtnBack2").innerText = 'DONE';
                            }
                        })
                    });
                };

                $.SweetAlert = new SweetAlert();
                $.SweetAlert.Constructor = SweetAlert;

                $.SweetAlert.init();
            }(window.jQuery);
        });
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () {
                return this;
            };

            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save2').on('click', function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Send this record ?",
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
                                text: 'Project Record  Send Successfully!',
                                timer: 2000
                            })
                            var table = document.getElementById("Table1");
                            document.getElementById("BtnBack4").disabled = false;
                            //table.style.display = "contents";
                            //document.getElementById("TableRow3").style.display = "contents";
                            document.getElementById("BtnBack3").innerText = 'DONE';
                        }
                    })
                });
            };

            $.SweetAlert = new SweetAlert();
            $.SweetAlert.Constructor = SweetAlert;

            $.SweetAlert.init();
        }(window.jQuery);
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
                $('.Alert-Save4').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to  Release  this Installment ?",
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
                                text: 'Release  this  Installment  Successfully! ',
                                timer: 2000000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            document.getElementById("BtnBack4").innerText = 'DONE';

                        }
                    })
                });
            },

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <%--<script>
    (function ($) {
        "use strict";
        var SweetAlert = function () {
            this.init = function () {
                // Basic
                // Success Message
                $(document).ready(function () {
                    $('#Btn1').on('click', function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: 'Do you want to Generate Utilization Certificate ?',
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
                                    text: 'Generate Utilization Certificate Successfully! ',
                                    timer: 2000
                                });
                                document.getElementById("Btn1").innerText = 'View';
                                document.getElementById("Alert-Save5").style.display = 'none';
                                document.getElementById("Btn1").classList.remove('Alert-Save5');
                                $('#Btn1').on('click', function () {
                                    $('#staticBackdrop').modal('show');
                                });
                            }
                        });
                    });
                });
            };
        };
        $.SweetAlert = new SweetAlert();
        $.SweetAlert.init();
    })(window.jQuery);
</script>--%>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            SweetAlert.prototype.init = function () {
                // Basic
                // Success Message
                $('.Alert-Save5').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Utilization Certificate ?",
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
                                text: 'Generate Utilization Certificate  Successfully! ',
                                timer: 2000
                            });
                            // document.getElementById("Btn1").innerText = 'View';
                            document.getElementById("BtnBack1").disabled = false;
                            document.getElementById("Btn2").disabled = false;
                            document.getElementById("Btn5").style.display = "block";
                            document.getElementById("Btn1").style.display = "none";

                            //document.getElementById("Btn1").classList.remove('Alert-Save5');

                        }
                    });
                });
            };
            $.SweetAlert = new SweetAlert();
            $.SweetAlert.init();
        }(window.jQuery);
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
                $('.Alert-Save6').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Utilization Certificate ?",
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
                                text: 'Generate Utilization Certificate  Successfully! ',
                                timer: 2000000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            document.getElementById("Btn6").style.display = "block";
                            document.getElementById("Btn3").disabled = false;
                            document.getElementById("Btn2").style.display = "none";
                            /*document.getElementById("RequestTd2").style.display = 'table-cell';*/

                        }
                    })
                });
            },

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
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
                $('.Alert-Save7').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Utilization Certificate ?",
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
                                text: 'Generate Utilization Certificate  Successfully! ',
                                timer: 2000000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            document.getElementById("Btn7").style.display = "block";
                            document.getElementById("Btn4").disabled = false;
                            document.getElementById("Btn3").style.display = "none";
                            /*  document.getElementById("RequestTd3").style.display = 'table-cell';*/

                        }
                    })
                });
            },

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
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
                $('.Alert-Save8').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Utilization Certificate ?",
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
                                text: 'Generate Utilization Certificate  Successfully! ',
                                timer: 2000000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            document.getElementById("Btn8").style.display = "block";
                            document.getElementById("Btn4").style.display = "none";
                            //document.getElementById("RequestTd4").style.display = 'table-cell';

                        }
                    })
                });
            },

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <%--<script>
         function InstallmentRequest() {
             if (BtnBack1) {
                 document.getElementById("tr2").style.display = (document.getElementById("tr2").style.display == 'block') ? 'none' : 'block';
             }
             else if (BtnBack2) {
                 document.getElementById("tr3").style.display = (document.getElementById("tr3").style.display == 'block') ? 'none' : 'block';
             } else if (BtnBack3) {
                 document.getElementById("tr4").style.display = (document.getElementById("tr4").style.display == 'block') ? 'none' : 'block';
             }
             else {
                 document.getElementById("tr2").style.display = (document.getElementById("tr2").style.display == 'none') ? 'block' : 'none';
                 document.getElementById("tr3").style.display = (document.getElementById("tr3").style.display == 'none') ? 'block' : 'none';
                 document.getElementById("tr4").style.display = (document.getElementById("tr4").style.display == 'none') ? 'block' : 'none';
             }
            
         }
     </script>--%>
    <script>
        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
            window.location.href = "InstallmentUploadDocument.aspx";
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

