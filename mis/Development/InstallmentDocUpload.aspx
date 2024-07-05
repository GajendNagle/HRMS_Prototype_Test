<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #divprint {
            display: none;
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
                          <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                              <span>Civil Construction</span></a>
                      </li>
                      <li class="breadcrumb-item">Installment Release</li>
                  </ol>
              </div>
          </div>
      </div>
  </div>
  <div class="marqueecontainer">
      <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
      <div>
          <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
              <%--इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |--%>
          </marquee>
      </div>
  </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Installment Release / किस्त जारी </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Installment Release / किस्त जारी </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial year /
             <br />
                                वितीय वर्ष का चयन करें
             <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2024-25</option>
                                <option value="Raisen">2023-24</option>
                                <option value="Rajgarh">2022-23</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Type /<br />
                                कार्यालय के प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--  <option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">School</option>
                                <option value="3">Sankul</option>
                                <option value="3">BEO</option>
                                <option value="3">DEO</option>
                                <option value="3">JD</option>
                                <option value="3">HO</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name /<br />
                                कार्यालय के नाम का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--<option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">Maharishi Mahavidyalaya</option>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Sentioned Number /<br />
                                स्वीकृति संख्या</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="3">542162</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Installment Number /<br />
                                किस्त संख्या चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--<option value="--Select--">--Select--</option>--%>

                                <option value="A">द्वितीय किस्त</option>
                                <option value="A">तृतीय किस्त</option>
                                <option value="A">चतुर्थी किस्त</option>
                                <option value="A">पञ्चमी किस्त</option>

                            </select>
                        </div>
                    </div>
                    <%-- <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Head Name /<br />
                                मद का नाम</label>
                            
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="3">CM Rise Building Construction</option>
                            </select>
                        </div>
                    </div>--%>
                    <div class="col-md-3">
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
                    <div class="col-md-3" id="school-subcategory-container">

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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Date /<br />
                                परियोजना दिनांक</label>
                            <input type="Text" id="PDate" name="birthday" class="form-control" value="11/06/2024" disabled autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Approvel Amount(Approx. In Rs) /<br />
                                अनुमानित राशि
                            </label>
                            <input type="text" id="Budget" name="birthday" class="form-control" value="100000.00" disabled autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Sentioned Amount(Approx. In Rs) /<br />
                                अनुमानित राशि
                            </label>
                            <input type="text" id="Budget" name="birthday" class="form-control" value="20000.00" disabled autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Remaining Amount(Approx. In Rs) /<br />
                                अनुमानित राशि
                            </label>
                            <input type="text" id="Budget" name="birthday" class="form-control" value="80000.00" disabled autocomplete="off">
                        </div>
                    </div>

                    <%--   <div class="col-md-12">
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" class="btn btn-success btn-border" />
                        <a href="InstallmentDocUpload.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>--%>
                  
                        <div class="col-sm-12">
                            <table class="datatable table table-striped table-bordered table-hover" style="border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th>Installment No. /<br />
                                            इन्सटॉलमेंट  नं.</th>
                                        <th>Select Work Subcategory /<br />
                                            कार्य के प्रकार का चयन करें</th>
                                        <th>Installment (%)/<br />
                                            इन्सटॉलमेंट  (%)<span style="color: red">*</span></th>
                                        <th>Installment Amount /<br />
                                            इन्सटॉलमेंट  अमाउंट</th>
                                        <th>Document Upload /<br />
                                            दस्तावेज अपलोड</th>
                                        <th>Action /<br />
                                            क्रिया
                                        </th>
                                    </tr>
                                    <tr>
                                        <td align="center">1</td>
                                        <%--    <td>
                                            <input type="date" id="txtExpStartDate11" name="birthday" placeholder="Enter Project Exp. Start Date" class="form-control">
                                        </td>
                                        <td>
                                            <input type="date" id="txtExpStartDate12" name="birthday" class="form-control">
                                        </td>--%>
                                        <td>
                                            <input type="Text" id="txtInstallmentPer1" name="birthday" class="form-control" onchange="calculateInstallmentAmt1();" autocomplete="off" />
                                        </td>
                                        <td>
                                            <input type="Text" id="txtInstallmentPer1" name="birthday" class="form-control" onchange="calculateInstallmentAmt1();" autocomplete="off" />
                                        </td>
                                        <td>
                                            <input type="Text" id="txtInstallmentAmount1" value="" name="birthday" class="form-control" disabled></td>
                                        <td>
                                            <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                            <span id="spndocDeathCertificateName" style="display: none"></span>
                                            <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                                        </td>
                                        <td>
                                            <input type="button" onclick="myFunction()" value="Realese" class="btn btn-success btn-border" id="disableButton" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td>Total</td>
                                        <td>
                                            <input type="Text" id="txtInstallmentPer_Total" name="birthday" class="form-control" disabled />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInstallmentAmount_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="15" disabled></asp:TextBox></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="col-md-3">

                            <div class="row">
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-success btn-border" value="Save" data-bs-dismiss="modal">Final Save</button>

                                </div>
                            </div>
                        </div>
                    </div>
              

            </fieldset>
            <!-- Modal Component -->
            <div class="modal" id="viewModel" tabindex="-1" role="dialog" aria-labelledby="viewModelListLabel1">
                <div class="modal-dialog modal-xl" style="width: 100%;">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalLabel1">Project Details</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Enter Remark /<br />
                                            टिप्पणी दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Remark" />
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="button"
                                            onclick="window.location.href = 'InstallmentCreation.aspx';"
                                            value="Save & Next" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />


                                        <%--<a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>--%>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- Modal Footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
