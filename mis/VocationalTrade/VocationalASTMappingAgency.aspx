<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalASTMappingAgency.aspx.cs" Inherits="mis_VocationalTrade_VocationalASTMappingAgency" %>

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
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Vocational Trade</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vocational AST Mapping Agency</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill " style="padding-top: 11px;">
                            स्कूल यू डाईस
	
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                स्कूल यू डाईस की उपस्थिति की जानकारी
		
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School UDISE Code/
         
         स्कूल यू डाईस कोड
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                School UDISE Code /<br />
                                स्कूल यू डाईस कोड <span style="color: red">*</span></label>
                            <input type="text" class="form-control datepickerYear bg-white" id="SchoolUdiseCode" name="academic-year" placeholder="School Udise Code">
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" id="btnshow" class="btn btn-outline-success btn-border w-lg">Search</button>
                            <a href="VocationalASTMappingAgency.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>

                        </div>
                    </div>
                </div>

            </fieldset>
            <div id="schoolshow" style="display: none">
                <fieldset>
                    <legend>School Details /
स्कूल विवरण
                    </legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    District  Name/
                                <br />
                                    जिले का नाम<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Bhopal" readonly disabled />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Sankul Name UDISE Code/
             <br />
                                    संकुल नाम यू डाईस कोड<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="M.M School-32323244" readonly disabled />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Name UDISE Code/
                                    <br />
                                    स्कूल का नाम यू डाईस कोड<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Delhi Public School-234452" readonly disabled />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Incharge Name/
             <br />

                                    स्कूल प्रभारी का नाम<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Shubhash Gupta" readonly disabled />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Incharge Mobile No./
                                <br />
                                    स्कूल प्रभारी मोबाइल नं.<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="8523697415" readonly disabled />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Sub Category Details/ 
                                <br />
                                    स्कूल उप श्रेणी विवरण <span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Primary School (1 To 5)" readonly disabled />
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>A.S.T Mapping/ए.एस.टी. मैपिंग
                    </legend>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select Agency Name/
             <br />
                                    एजेंसी का नाम चयन करें
                               <span style="color: red">*</span>
                                </label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Elite Learning Agency</option>
                                    <option value="2">Future Scholars Academy</option>
                                    <option value="3">Bright Horizons Education Services</option>
                                    <option value="4">Global Education Network</option>
                                    <option value="5">Academic Excellence Agency</option>
                                    <option value="6">Pathway Learning Solutions</option>
                                    <option value="7">Scholarly Advancement Agency</option>
                                    <option value="8">NextGen School Services</option>
                                    <option value="9">Creative Minds Educational Hub</option>
                                    <option value="10">Learning Pathways Agency</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select Vocational Trade Name/
             <br />

                                    वोकेशनल ट्रेड नाम का चयन करें<span style="color: red">*</span>
                                </label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Agriculture</option>
                                    <option value="2">BEAUTY AND WELLNESS</option>
                                    <option value="3">Electronics and Hardware</option>
                                    <option value="4">Health Care</option>
                                    <option value="5">IT-ITES</option>
                                    <option value="6">BFSI (Banking, Financial Services, and Insurance)</option>
                                    <option value="7">Private Security</option>
                                    <option value="8">Retail</option>
                                    <option value="9">Tourism and Hospitality</option>
                                    <option value="10">Physical Education And Sports</option>
                                    <option value="11">Automotive</option>
                                    <option value="12">Media and Entertainment</option>
                                    <option value="13">Plumbing</option>
                                    <option value="13">Apparel</option>
                                </select>

                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select Vocational Trade Sub Name/
                                <br />
                                    वोकेशनल ट्रेड उप नाम का चयन करें<span style="color: red">*</span>
                                </label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Solanaceous Crop Cultivator</option>
                                    <option value="2">Assistant Beauty Therapist</option>
                                    <option value="3">Home Health Aid Trainee</option>
                                    <option value="4">Domestic Data Entry Operator</option>
                                    <option value="5">Microfinance Executive</option>
                                    <option value="6">Junior Field Technician Home Appliances</option>
                                    <option value="7">Security Guard</option>
                                    <option value="8">Food & Beverage Service Assistant</option>
                                    <option value="9">Sewing Machine Operator</option>
                                    <option value="10">Retail Store Operations Assistant</option>
                                    <option value="11">Physical Education Assistant - Early Year</option>
                                    <option value="12">Four Wheeler Service Assistant</option>
                                </select>

                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select Vocational Schame Name/
                                <br />
                                    वोकेशनल योजना का नाम का चयन करें<span style="color: red">*</span>
                                </label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">C1200</option>
                                    <option value="2">C224</option>
                                    <option value="3">C269</option>
                                    <option value="4">C546</option>
                                    <option value="5">PMSHRI</option>
                                    <option value="6">STAR</option>
                                    <option value="7">Stars-new</option>
                                </select>

                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select Vocational Teachar Name/
                                <br />
                                    वोकेशनल शिक्षक का नाम का चयन करें
                                <span style="color: red">*</span>
                                </label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Ashok Vajpeyi</option>
                                    <option value="2">Miranjeet Singh Sahni</option>
                                    <option value="3">Narendra Tiwari</option>
                                    <option value="4">Shambhu Dayal Sharma</option>
                                    <option value="5">Raahi Masoom Raza</option>
                                    <option value="6">Harishankar Parsai</option>
                                    <option value="7">Makhanlal Chaturvedi</option>
                                    <option value="8">Bhagwat Rawat</option>
                                    <option value="9">Dr. Rajkumar Pandey</option>
                                    <option value="10">Shivani Gupta</option>
                                    <option value="11">Narendra Kohli</option>
                                </select>

                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select Is Lab Availble/
                                <br />
                                    क्या प्रयोगशाला उपलब्ध है 
                                <span style="color: red">*</span>
                                </label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>

                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" id="btngrid" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                            <a href="BookUpload.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="griddata" style="display: none">
                <fieldset>
                    <legend>Report/रिपोर्ट</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No./
                             <br />
                                                सरल क्र.</th>

                                            <th>District  Name/<br />
                                                जिले का नाम</th>

                                            <th>School Name UDISE/<br />
                                                स्कूल का नाम यू डाईस</th>

                                            <th>Agency Name/<br />
                                                एजेंसी का नाम</th>

                                            <th>Vocational Trade Name/<br>
                                                वोकेशनल ट्रेड का नाम</th>

                                            <th>Vocational Trade Sub Name/
                                                <br />
                                                वोकेशनल ट्रेड उप का नाम </th>

                                            <th>Vocational Scheme Name/<br />
                                                वोकेशनल योजना का नाम </th>

                                            <th>Vocation Teachar Name/<br />
                                                वोकेशनल शिक्षक का नाम</th>
                                            <th>Lab Oratory/<br />
                                                प्रयोग शाला </th>

                                            <th>Action/<br />
                                                कार्यवाहीं</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>M.M School-32323244</td>
                                        <td>Creative Minds Educational Hub</td>
                                        <td>BEAUTY AND WELLNESS</td>
                                        <td>Assistant Beauty Therapist</td>
                                        <td>C1200</td>
                                        <td>Aruhi Gupta</td>
                                        <td>Yes</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Vidisha</td>
                                        <td>Crist Academy School-23356245</td>
                                        <td>NextGen School Services</td>
                                        <td>Health Care</td>
                                        <td>Domestic Data Entry Operator</td>
                                        <td>C224</td>
                                        <td>Anuu Sharma </td>
                                        <td>No</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Indore</td>
                                        <td>M.P School-32323246</td>
                                        <td>Scholarly Advancement Agency</td>
                                        <td>IT-ITES</td>
                                        <td>Microfinance Executive</td>
                                        <td>C546</td>
                                        <td>Makhanlal Chaturvedi</td>
                                        <td>Yes</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        $(document).ready(function () {
            $('#btnshow').click(function () {
                $('#schoolshow').toggle();
            });
        });

    </script>
    <script>
        $(document).ready(function () {
            $('#btngrid').click(function () {
                $('#griddata').toggle();
            });
        });

    </script>
</asp:Content>

