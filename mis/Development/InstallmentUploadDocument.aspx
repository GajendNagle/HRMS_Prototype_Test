<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentUploadDocument.aspx.cs" Inherits="mis_Development_InstallmentUploadDocument" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style> 
        textarea {
     resize: vertical;
     min-height: 40px;
    /* Set a minimum height */
 }</style>
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
        <div class="col-md-6  col-lg-4 col-xl-3">
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
                                      कार्य का नाम</th>
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
<button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button></td>
                                  <td><%--<a class="btn btn-info btn-rounded" href="#">--%>  <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                 
                              </tr>
                          </tbody>
                      </table>
                  </div>
              </div>
          </div>
      </fieldset>
            <fieldset id="hide" style="display:none;">
                <legend>Installment Document Upload/किस्त के दस्तावेज़ अपलोड करे</legend>
                <div class="col-sm-12">
                    <div class="table-responsive">
                    <table class="datatable table table-striped table-bordered table-hover" style="border-collapse: collapse;" id="Table1">
                        <tbody>
                            <tr style="white-space:nowrap;">
                                <th>Sr.No.<br />
सरल क्रमांक</th>
                                <th>Milestone
                                    <br />


                                    माइल स्टोन
                                </th>
                                <th>Select Work Subcategory
                                    <br />
                                    कार्य के प्रकार का चयन करें</th>
                                <th>Totel  Project Amount(%)<br />
                                  कुल परियोजना राशि(%)<span style="color: red">*</span></th>
                                <th style="width:fit-content;" class="text-center">Installment Amount<br />
                                    इन्सटॉलमेंट  अमाउंट</th>
                                <th>Document Upload
                                    <br />
                                    दस्तावेज अपलोड</th>
                                <th style="width:150px;" class="text-center">Remark
                                    <br />
                                    टिप्पणी
                                </th>
                                   <th style="width:50px;">Send To Request<br />अनुरोध करने के लिए भेजें</th>
</tr>
                           
                            <tr id="TableRow">
                                <td align="center">1</td>
                               <%-- <td align="center">1</td>--%>
                                     <td align="center"> <input type="Text"  name="birthday" class="form-control" value="Foundation" readonly  style="width:150px;"  autocomplete="off" />
      </td>
                            
                                <td>
                                     <select  class="form-control " disabled >
  
      <option value="A">स्कूल नया निमार्ण</option>
 
  </select>
                                </td>
                                <td>
                                    <input type="Text"  name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />
                                </td>
                                <td>
                                    <input type="Text" value="15000" name="birthday" class="form-control text-center" disabled></td>
                              
                                 <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
 <td>
                           <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks" style="width:200px;"></textarea>
                                </td>
                                <td>    <button id="BtnBack1"  class="Alert-Save btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button"><%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%> 
   <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%> Send Demand</button></td>
                            </tr>
                            <tr>
                               <td align="center">2</td>
                            <%-- <td align="center">1</td>--%>
                                  <td align="center"> <input type="Text"  name="birthday" class="form-control" value="Plinth" readonly  autocomplete="off" />
  
                               <td>
                                    <select  class="form-control " disabled>
 
     <option value="A">स्कूल नया निमार्ण</option>
  

    
 </select>
                               </td>
                               <td>
                                   <input type="Text"  name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />
                               </td>
                               <td>
                                   <input type="Text" value="15000" name="birthday" class="form-control text-center" disabled></td>
                            
                                <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
<td>
                          <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                               </td>
                                                           <td><%--  id="TableRow1" style="display:none;"--%>    <button id="BtnBack2" disabled="disabled"  class="Alert-Save1 btn btn-outline-primary w-lg  fs-13 me-4 rounded-4 " type="button">Send Demand</button></td>
                           </tr>
                                                       <tr>
                               <td align="center">3</td>
                              <%-- <td align="center">1</td>--%>
                                    <td align="center"> <input type="Text" name="birthday" class="form-control" value="Mid level completion" readonly  autocomplete="off" />
</td>
                             
                               <td>
                                    <select id="school-subcategory" class="form-control " disabled>
  <%--   <option value="--Select--">--Select--</option>--%>
    <%-- <option value="A">कक्षा निमार्ण</option>
     <option value="A">इमारत मरम्मत</option>--%>
     <option value="A">स्कूल नया निमार्ण</option>
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
 </select>
                               </td>
                               <td>
                                   <input type="Text" name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />
                               </td>
                               <td>
                                   <input type="Text"  value="15000" name="birthday" class="form-control text-center" disabled></td>
                             
                                <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
<td>
                          <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                               </td>
                                                           <td> <%--id="TableRow2" style="display:none;">--%>    <button id="BtnBack3" disabled="disabled"  class="Alert-Save2 btn btn-outline-primary w-lg fs-13 me-4 rounded-4 " type="button">Send Demand</button></td>
                           </tr>
                                                       <tr >
                               <td align="center">4</td>
                              <%-- <td align="center">1</td>--%>
                                    <td align="center"> <input type="Text" name="birthday" class="form-control " value="Final level completion" readonly  autocomplete="off" />
    
                               <td>
                                    <select  class="form-control " disabled>
 
     <option value="A">स्कूल नया निमार्ण</option>
  

   
 </select>
                               </td>
                               <td>
                                   <input type="Text" id="txtInstallmentPer1" name="birthday" class="form-control text-center" value="25%" readonly  autocomplete="off" />
                               </td>
                               <td>
                                   <input type="Text" id="txtInstallmentAmount1" value="15000" name="birthday" class="form-control text-center" disabled></td>
                               <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
<td>
                          <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                               </td>
                                                           <td>  <%--id="TableRow3" style="display:none;"> --%>   <button id="BtnBack4"  disabled="disabled" class="Alert-Save4 btn btn-outline-primary w-lg  fs-13  rounded-4 " type="button"><%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%> 
   <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%> Send Demand</button></td>
                           </tr>
                         
                        </tbody>
                    </table>
                </div></div>
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
</asp:Content>

