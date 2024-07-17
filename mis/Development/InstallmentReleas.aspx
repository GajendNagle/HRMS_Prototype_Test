<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentReleas.aspx.cs" Inherits="mis_Development_InstallmentReleas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table th {
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
                        <li class="breadcrumb-item">Installment Payment Release</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Installment Payment Release / किस्त भुगतान जारी</h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Installment Payment Release/ किस्त भुगतान जारी </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District Name<br />
                                ज़िला के नाम का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">

                                <option value="Select">Select</option>
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
                                <option value="Indore">Indore</option>
                                <option value="Jhabua">Jhabua</option>
                                <option value="Khandwa">Khandwa</option>
                                <option value="Khargone">Khargone</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Katni">Katni</option>
                                <option value="Mandla">Mandla</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Seoni">Seoni</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Satna">Satna</option>
                                <option value="Sidhi">Sidhi</option>
                                <option value="Singroli">Singroli</option>
                                <option value="Chhatarpur">Chhatarpur</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Panna">Panna</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Tikamgarh">Tikamgarh</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Umaria">Umaria</option>
                                <option value="Dindori">Dindori</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Dewas">Dewas</option>
                                <option value="Mandsaur">Mandsaur</option>
                                <option value="Neemuch">Neemuch</option>
                                <option value="Ratlam">Ratlam</option>
                                <option value="Shajapur">Shajapur</option>
                                <option value="Ujjain">Ujjain</option>
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
                                        <th>Work Description<br />
                                            कार्य का विवरण</th>
                                        <th>Estimated Budget Cost(In Rs) 
                                            <br />
                                            अनुमानित बजट</th>
                                        <th>Acceptor Amount(In Rs) 
                                            <br />
                                            स्वीकर्ता राशि</th>
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
                                        <td>Work For Bhopal Office</td>
                                        <td>10000.00</td>
                                        <td>10000.00</td>

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
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table-bordered">
                            <tbody>
                                <tr style="white-space: nowrap;" class="text-center">
                                    <th>Sr.No.<br />
                                        सरल क्रमांक</th>
                                    <th class="text-center">Milestone
                                    <br />


                                        माइल स्टोन
                                    </th>
                                    <th>Select Work Subcategory
                                    <br />
                                        कार्य के प्रकार का चयन करें</th>
                                    <th>Totel  Project Amount(%)<br />
                                        कुल परियोजना राशि(%)<span style="color: red">*</span></th>
                                    <th style="width: fit-content;" class="text-center">Installment Amount<br />
                                        इन्सटॉलमेंट  अमाउंट</th>
                                    
                                    <th style="width: 200px;" class="text-center">Remark
                                    <br />
                                        टिप्पणी
                                    </th>
                                    <th>Viwe Document  
<br />
    दस्तावेज देखें</th>

                                    <th style="width: 50px;">Installment Release
                                        <br />
                                        किस्त जारी</th>
                                </tr>

                                <tr>
                                    <td align="center">1</td>
                                    <%-- <td align="center">1</td>--%>
                                    <td align="center">Foundation
                                        <%--<input type="Text" name="birthday" class="form-control" value="Foundation" style="width: 200px" readonly autocomplete="off" />--%>
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
                                    <td>स्कूल नया निमार्ण
                                       <%-- <select class="form-control " disabled>--%>
                                            <%--   <option value="--Select--">--Select--</option>--%>
                                            <%-- <option value="A">कक्षा निमार्ण</option>
      <option value="A">इमारत मरम्मत</option>--%>
                                            <<%--option value="A">स्कूल नया निमार्ण</option>--%>


                                            <%--selection of this next textbox will visible--%>
                                       <%-- </select>--%>
                                    </td>
                                    <td>60000
                                      <%--  <input type="Text" name="birthday" class="form-control text-center" value="60000" readonly autocomplete="off" />--%>
                                    </td>
                                    <td>10000
                                      <%--  <input type="Text" value="10000" name="birthday" class="form-control text-center" disabled>--%></td>

                                   
                                    <td>completed tasks
                                        <%--<textarea class="form-control color-black fw-bold" style="width: 200px;" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>--%>
                                    </td>

                                     <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-eye" aria-hidden="true"></i></a></td>


                                    <td>
                                        <button id="BtnBack1" class="Alert-Save btn btn-outline-primary  fs-13 me-4 rounded-4 w-lg" type="button">
                                            <%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%>
                                            <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%>  Release
                                        </button>
                                    </td>
                                </tr>
                                <tr id="TableRow1" style="display:none;">
                                    <td align="center">2</td>
                                    <%-- <td align="center">1</td>--%>
                                    <td align="center">Plinth
                                       <%-- <input type="Text" name="birthday" class="form-control" value="Plinth" readonly autocomplete="off" />--%>
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
                                    <td>स्कूल नया निमार्ण
                                      <%--  <select class="form-control " disabled>--%>
                                            <%--   <option value="--Select--">--Select--</option>--%>
                                            <%-- <option value="A">कक्षा निमार्ण</option>
     <option value="A">इमारत मरम्मत</option>--%>
                                        <%--    <option value="A">स्कूल नया निमार्ण</option>--%>
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
                                       <%-- </select>--%>
                                    </td>
                                    <td>60000
                                        <%--<input type="Text" name="birthday" class="form-control text-center" value="60000" readonly autocomplete="off" />--%>
                                    </td>
                                    <td>10000
                                        <%--<input type="Text" value="10000" name="birthday" class="form-control text-center" disabled>--%></td>
                                    <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                    <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                    <td>
                                        <textarea class="form-control color-black fw-bold" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                                    </td>



                                    <td>
                                        <button id="BtnBack" class="Alert-Save btn btn-outline-primary w-lg  fs-13 me-4 rounded-4 " type="button">
                                            <%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%>
                                            <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%>  Release
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">3</td>
                                    <%-- <td align="center">1</td>--%>
                                    <td align="center">
                                        <input type="Text" name="birthday" class="form-control" value="Mid level completion" readonly autocomplete="off" />
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
                                        <input type="Text" name="birthday" class="form-control text-center" value="60000" readonly autocomplete="off" />
                                    </td>
                                    <td>
                                        <input type="Text" value="20000" name="birthday" class="form-control text-center" disabled></td>
                                    <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                    <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                    <td>
                                        <textarea class="form-control color-black fw-bold" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                                    </td>


                                    <td>
                                        <button id="BtnBack" class="Alert-Save btn btn-outline-primary w-lg fs-13 me-4 rounded-4 " type="button">
                                            <%--<i class="ri-arrow-go-back-line label-icon align-middle fs-13 me-2"></i>--%>
                                            <%-- <i class="fa-regular fa-paper-plane-top  fs-13 me-2"></i>--%> Release
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">4</td>
                                    <%-- <td align="center">1</td>--%>
                                    <td align="center">
                                        <input type="Text" name="birthday" class="form-control " value="Final level completion" readonly autocomplete="off" />
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
                                        <select class="form-control " disabled>
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
                                        <input type="Text" id="txtInstallmentPer1" name="birthday" class="form-control text-center" value="60000" readonly autocomplete="off" />
                                    </td>
                                    <td>
                                        <input type="Text" id="txtInstallmentAmount1" value="20000" name="birthday" class="form-control text-center" disabled></td>
                                    <%--<td>
                                   <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                   <span id="spndocDeathCertificateName" style="display: none"></span>
                                   <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                               </td>--%>
                                    <td class="text-center"><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                    <td>
                                        <textarea class="form-control color-black fw-bold" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="completed tasks"></textarea>
                                    </td>

                                    <td>
                                        <button id="BtnBack" class="Alert-Save btn btn-outline-primary w-lg  fs-13  rounded-4 " type="button">
                                            Release
                                        </button>
                                    </td>
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
                                    <%--<div>
            <h5 style="font-weight: 200;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
        </div>--%>
                                    <div class="col-md-12 mt-3">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-responsive-lg">
                                                <thead>
                                                    <th class="w-25">Sr.No.<br />
                                                        सरल क्रमांक</th>
                                                    <th class="w-25">Document Name
                    <br />
                                                        दस्तावेज का नाम</th>

                                                    <th class="text-center w-25">View Document
                    <br />
                                                        दस्तावेज देंखे</th>

                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td><b>Upload Project Photo-1<br />
                                                            प्रोजेक्ट फ़ोटो अपलोड करें 1</b></td>


                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td><b>Upload Project Photo-2<br />
                                                            प्रोजेक्ट फ़ोटो अपलोड करें 2 </b></td>


                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td><b>Upload Project Photo-3<br />
                                                            प्रोजेक्ट फ़ोटो अपलोड करें 3 </b></td>


                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td><b>Upload Bil<br />
                                                            बिल अपलोड करें </b></td>


                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td><b>Upload Installment  Demand Letter
                        <br />
                                                            किस्त मांग पत्र अपलोड करें</b></td>

                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                                    </tr>
                                                </tbody>
                                            </table>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function div() {
            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';
            document.getElementById("Show").style.display = (document.getElementById("Show").style.display == 'block') ? 'none' : 'block';
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

