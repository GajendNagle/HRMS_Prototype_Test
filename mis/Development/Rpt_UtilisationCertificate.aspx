<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                     <li class="breadcrumb-item">Project Details</li>
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

    <div class="card card-border-primary" id="divprint">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Utilisation Certificate Report </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>

            <%-- <legend>Add Project Creation / नई परियोजना जोड़े</legend>--%>
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
                            Select Sanction No. /<br />
                            स्वीकृति संख्या का चयन करें
                                <span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="0">3124</option>
                            <option value="1">1223</option>
                            <option value="2">8269</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Select Installment /
                            <br />
                            किस्त का चयन करें
                            <span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="0">प्रथम किस्त</option>
                            <option value="1">द्वितीय किस्त</option>
                            <option value="2">तृतीय किस्त</option>
                            <option value="3">चतुर्थी किस्त   </option>
                            <option value="4">पञ्चमी किस्त   </option>
                            <option value="5">षष्ठी किस्त   </option>
                            <option value="6">सप्तमी किस्त </option>
                            <option value="7">अष्टमी किस्त  </option>
                            <option value="8">नवमी किस्त  </option>
                            <option value="9">दशमी किस्त </option>
                        </select>
                    </div>
                </div>

                <hr />
                <div class="col-md-12">
                    <input type="submit" name="ctl00$ContentBody$btnSave" value="Search" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                    <a href="Rpt_UtilisationCertificate.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </div>
            <fieldset>
                <legend>Details /  विवरण</legend>
                <div class="row mb-0">
                    <div id="divexport">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <label>UTILISATION CERTIFICATE</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 text-center">
                                <label>(Note- To be accompanied with prescribed work wise Expenditure Statement)</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 text-center">
                                <label>District Office :&nbsp;<span id="lblDFO">Bhopal- ( BPL )</span></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 text-center">
                                <label>Financial Year :&nbsp;<span id="lblFYear">2023-24</span></label>
                            </div>
                        </div>

                        <table class="table table-bordered" id="gridMain">
                            <thead>
                                <tr>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">S.No.</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Work Category</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Name of work</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Sanction Letter No.</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Sanction Letter Date</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Sanctioned Amount (In Rs.)</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Installment Amount (In Rs.)</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Utilized Amount (In Rs.)</th>
                                    <th style="font-weight: bold; background-color: #eaeaea; text-align: center;">Remaining Amount (In Rs.)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td align="center">1</td>
                                    <td><span id="lblSamiti">बिल्डिंग निर्माण/मरम्मत	</span></td>
                                    <td><span id="lblWorkCategory">इमारत मरम्मत</span></td>
                                    <td align="center"><span id="lblSanction_LetterNo">826923</span></td>
                                    <td align="center"><span id="lblSanction_LetterDate">26/09/2023</span></td>
                                    <td align="right"><span id="lblSanctionedAmountGrid">100000.00</span></td>
                                    <td align="right"><span id="lblInstallmentAmount">50000.00</span></td>
                                    <td align="right"><span id="lblUtilizedAmount">50000.00</span></td>
                                    <td align="right"><span id="lblAmountRemaining">0.00</span></td>
                                </tr>
                                <tr align="right" style="font-weight: bold;">
                                    <td>&nbsp;</td>
                                    <td align="center">Total</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td align="right">100000.00</td>
                                    <td align="right">50000.00</td>
                                    <td align="right">50000.00</td>
                                    <td align="right">0.00</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="5" style="text-align: right; font-weight: bold;">Total</td>
                                    <td style="text-align: right; font-weight: bold;">100000.00</td>
                                    <td style="text-align: right; font-weight: bold;">50000.00</td>
                                    <td style="text-align: right; font-weight: bold;">50000.00</td>
                                    <td style="text-align: right; font-weight: bold;">0.00</td>
                                </tr>
                            </tfoot>
                        </table>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>2. Certified that I have satisfied my self that the condition on which the grant-in-aid was Sanctioned have been duly fulfilled and that I have exercised the following checks to see that money was actually utilized for the purpose for which it was sanctioned.</label>
                                </div>
                            </div>
                        </div>

                        <div class="row justify-content-end">
                            <div class="col-md-5 col-md-offset-7 text-center" style="float: right; margin-top: 20px;">
                                <label>
                                    अधिकारी<br />
                                    एवं पदेन प्रबन्ध संचालक<br />
                                    स्कूल शिक्षा विभाग<br />
                                    <span id="lblDFO2">Bhopal- ( BPL )</span>&nbsp;(म.प्र.)
                                </label>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-12">
                        <label class="NoteMsg" style="float: left;">This is system generated, signature not required.</label>
                        <label class="GeneratedTime" style="float: right;">Generated time&nbsp;-&nbsp;<span runat="server" id="lblGenerationTime"></span></label>
                    </div>
                </div>
        </div>
        </fieldset>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

