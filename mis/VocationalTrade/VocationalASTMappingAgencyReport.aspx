<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalASTMappingAgencyReport.aspx.cs" Inherits="mis_VocationalTrade_VocationalASTMappingAgencyReport" %>

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
                        <li class="breadcrumb-item"><span>Vocational A.S.T Mapping Agency Report</span></li>
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
                           वोकेशनल ए.एस.टी. मैपिंग एजेंसी रिपोर्ट

                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                वोकेशनल ए.एस.टी. मैपिंग एजेंसी रिपोर्ट
	
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vocational A.S.T Mapping Agency Report / वोकेशनल ए.एस.टी. मैपिंग एजेंसी रिपोर्ट
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District  Name/<br />
                                जिले का नाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
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
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" id="showreport" class="btn btn-outline-success btn-border w-lg">Search</button>
                            <a href="VocationalASTMappingAgencyReport.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>

                        </div>
                    </div>
                </div>

            </fieldset>
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
                                      
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Raisen</td>
                                        <td>M.P School-32323246</td>
                                        <td>Scholarly Advancement Agency</td>
                                        <td>IT-ITES</td>
                                        <td>Microfinance Executive</td>
                                        <td>C546</td>
                                        <td>Makhanlal Chaturvedi</td>
                                        <td>Yes</td>
                                    
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Bhopal</td>
                                        <td>M.M School-32323244</td>
                                        <td>Creative Minds Educational Hub</td>
                                        <td>BEAUTY AND WELLNESS</td>
                                        <td>Assistant Beauty Therapist</td>
                                        <td>C1200</td>
                                        <td>Aruhi Gupta</td>
                                        <td>Yes</td>
                             
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Rewa</td>
                                        <td>Crist Academy School-23356245</td>
                                        <td>NextGen School Services</td>
                                        <td>Health Care</td>
                                        <td>Domestic Data Entry Operator</td>
                                        <td>C224</td>
                                        <td>Anuu Sharma </td>
                                        <td>No</td>
                               
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Betul</td>
                                        <td>M.P School-32323246</td>
                                        <td>Scholarly Advancement Agency</td>
                                        <td>IT-ITES</td>
                                        <td>Microfinance Executive</td>
                                        <td>C546</td>
                                        <td>Makhanlal Chaturvedi</td>
                                        <td>Yes</td>
                            
                                    </tr>

                                    <tr>
                                        <td>7</td>
                                        <td>Seoni</td>
                                        <td>M.M School-32323244</td>
                                        <td>Creative Minds Educational Hub</td>
                                        <td>BEAUTY AND WELLNESS</td>
                                        <td>Assistant Beauty Therapist</td>
                                        <td>C1200</td>
                                        <td>Aruhi Gupta</td>
                                        <td>Yes</td>
                             
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Ashoknagar</td>
                                        <td>Crist Academy School-23356245</td>
                                        <td>NextGen School Services</td>
                                        <td>Health Care</td>
                                        <td>Domestic Data Entry Operator</td>
                                        <td>C224</td>
                                        <td>Anuu Sharma </td>
                                        <td>No</td>
                                
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>Ratlam</td>
                                        <td>M.P School-32323246</td>
                                        <td>Scholarly Advancement Agency</td>
                                        <td>IT-ITES</td>
                                        <td>Microfinance Executive</td>
                                        <td>C546</td>
                                        <td>Makhanlal Chaturvedi</td>
                                        <td>Yes</td>
                                      
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Dhar</td>
                                        <td>M.M School-32323244</td>
                                        <td>Creative Minds Educational Hub</td>
                                        <td>BEAUTY AND WELLNESS</td>
                                        <td>Assistant Beauty Therapist</td>
                                        <td>C1200</td>
                                        <td>Aruhi Gupta</td>
                                        <td>Yes</td>
                                    
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Chhindwara</td>
                                        <td>Crist Academy School-23356245</td>
                                        <td>NextGen School Services</td>
                                        <td>Health Care</td>
                                        <td>Domestic Data Entry Operator</td>
                                        <td>C224</td>
                                        <td>Anuu Sharma </td>
                                        <td>No</td>
                                      
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
            $('#showreport').click(function () {
                $('#griddata').toggle();
            });
        });

    </script>
</asp:Content>

