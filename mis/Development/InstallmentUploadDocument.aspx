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
                        <li class="breadcrumb-item">Demand  Request</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Demand  Request  /
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
            <fieldset id="hide" style="display:none;">
                <legend>Installment Document Upload/किस्त के दस्तावेज़ अपलोड करे</legend>
                <div class="col-sm-12">
                    <table class="datatable table table-striped table-bordered table-hover" style="border-collapse: collapse;">
                        <tbody>
                            <tr>
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
                           
                            <tr>
                                <td align="center">1</td>
                               <%-- <td align="center">1</td>--%>
                                     <td align="center"> <input type="Text"  name="birthday" class="form-control" value="Foundation" readonly  autocomplete="off" />
        <%-- <select class="form-control" disabled>--%>
          <%--   <option value="--select--">--Select--</option>--%>
        <%--     <option value="Foundation">Foundation</option>--%>
            <%-- <option value="Plinth">Plinth</option>
             <option value="Mid level completion">Mid level completion</option>
             <option value="Final level completion">Final level completion</option>--%>
       <%--  </select>--%></td>
                                <%--    <td>
                    <input type="date" id="txtExpStartDate11" name="birthday" placeholder="Enter Project Exp. Start Date" class="form-control">
                </td>
                <td>
                    <input type="date" id="txtExpStartDate12" name="birthday" class="form-control">
                </td>--%>
                                <td>
                                     <select  class="form-control " disabled>
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
                                    <input type="Text"  name="birthday" class="form-control text-center" value="60000" readonly  autocomplete="off" />
                                </td>
                                <td>
                                    <input type="Text" value="10000" name="birthday" class="form-control text-center" disabled></td>
                                <%--<td>
                                    <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                    <span id="spndocDeathCertificateName" style="display: none"></span>
                                    <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                                </td>--%>
                                 <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
 <td>
                           <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reason"></textarea>
                                </td>
                                <td>    <button id="BtnBack"  class="Alert-Save btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button"><%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%> 
   <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%> Send Demand</button></td>
                            </tr>
                                                       <tr>
                               <td align="center">2</td>
                              <%-- <td align="center">1</td>--%>
                                  <td align="center"> <input type="Text"  name="birthday" class="form-control" value="Plinth" readonly  autocomplete="off" />
       <%--   <select class="form-control" disabled>--%>
         <%--   <option value="--select--">--Select--</option>
            <option value="Foundation">Foundation</option>--%>
            <%--<option value="Plinth">Plinth</option>
        --%>   <%-- <option value="Mid level completion">Mid level completion</option>
            <option value="Final level completion">Final level completion</option>--%>
        <%--</select>--%></td>
                               <%--    <td>
                   <input type="date" id="txtExpStartDate11" name="birthday" placeholder="Enter Project Exp. Start Date" class="form-control">
               </td>
               <td>
                   <input type="date" id="txtExpStartDate12" name="birthday" class="form-control">
               </td>--%>
                               <td>
                                    <select  class="form-control " disabled>
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
                                   <input type="Text"  name="birthday" class="form-control text-center" value="60000" readonly  autocomplete="off" />
                               </td>
                               <td>
                                   <input type="Text" value="10000" name="birthday" class="form-control text-center" disabled></td>
                               <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
<td>
                          <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reason"></textarea>
                               </td>
                                                           <td>    <button id="BtnBack"  class="Alert-Save btn btn-outline-primary w-lg  fs-13 me-4 rounded-4 " type="button"><%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%> 
   <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%> Send Demand</button></td>
                           </tr>
                                                       <tr>
                               <td align="center">3</td>
                              <%-- <td align="center">1</td>--%>
                                    <td align="center"> <input type="Text" name="birthday" class="form-control" value="Mid level completion" readonly  autocomplete="off" />
      <%--  <select class="form-control select2">
            <option value="--select--">--Select--</option>
            <option value="Foundation">Foundation</option>
            <option value="Plinth">Plinth</option>
            <option value="Mid level completion">Mid level completion</option>
            <option value="Final level completion">Final level completion</option>
        </select>--%></td>
                               <%--    <td>
                   <input type="date" id="txtExpStartDate11" name="birthday" placeholder="Enter Project Exp. Start Date" class="form-control">
               </td>
               <td>
                   <input type="date" id="txtExpStartDate12" name="birthday" class="form-control">
               </td>--%>
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
                                   <input type="Text" name="birthday" class="form-control text-center" value="60000" readonly  autocomplete="off" />
                               </td>
                               <td>
                                   <input type="Text"  value="20000" name="birthday" class="form-control text-center" disabled></td>
                               <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
<td>
                          <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reason"></textarea>
                               </td>
                                                           <td>    <button id="BtnBack"  class="Alert-Save btn btn-outline-primary w-lg fs-13 me-4 rounded-4 " type="button"><%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%> 
   <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%>Send Demand</button></td>
                           </tr>
                                                       <tr>
                               <td align="center">4</td>
                              <%-- <td align="center">1</td>--%>
                                    <td align="center"> <input type="Text" name="birthday" class="form-control " value="Final level completion" readonly  autocomplete="off" />
      <%--  <select class="form-control select2" id="ddlInstallment" onchange="myaddbtn2()">--%>
        <%--    <option value="--select--">--Select--</option>
            <option value="Foundation">Foundation</option>
            <option value="Plinth">Plinth</option>
            <option value="Mid level completion">Mid level completion</option>
            <option value="Final level completion">Final level completion</option>
        </select>--%></td>
                               <%--    <td>
                   <input type="date" id="txtExpStartDate11" name="birthday" placeholder="Enter Project Exp. Start Date" class="form-control">
               </td>
               <td>
                   <input type="date" id="txtExpStartDate12" name="birthday" class="form-control">
               </td>--%>
                               <td>
                                    <select  class="form-control " disabled>
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
                                   <input type="Text" id="txtInstallmentPer1" name="birthday" class="form-control text-center" value="60000" readonly  autocomplete="off" />
                               </td>
                               <td>
                                   <input type="Text" id="txtInstallmentAmount1" value="20000" name="birthday" class="form-control text-center" disabled></td>
                               <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                <td class="text-center"> <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
<td>
                          <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reason"></textarea>
                               </td>
                                                           <td>    <button id="BtnBack"  class="Alert-Save btn btn-outline-primary w-lg  fs-13  rounded-4 " type="button"><%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%> 
   <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%> Send Demand</button></td>
                           </tr>
                            <%--<tr>
                <td></td>
                <td></td>
                <td>Total</td>
                <td>
                    <input type="Text" id="txtInstallmentPer_Total" name="birthday" class="form-control" value="60000" readonly />
                </td>
                <td>
                    <input type="text" id="txtInstallmentAmount_Total" class="form-control" maxlength="15"  ></td>
            </tr>--%>
                        </tbody>
                    </table>
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
          }
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
                 $('.Alert-Save').click(function () {
                     Swal.fire({
                         title: 'Are you sure?',
                         text: "Do you want to Send this record ?",
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
                                 text: 'Project Record  Send Successfully!',
                                 timer: 2000000
                                 // animation: false,
                                 // customClass: {
                                 //     popup: 'animated tada'
                                 // }
                             }
                             )

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
</asp:Content>

