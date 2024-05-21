<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="OIS_Transfer.aspx.cs" Inherits="mis_Transaction_OIS_Transfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Administrative Level Transfer</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Administrative Level Transfer</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Generate OIS Transfer</legend>
                <div class="row">
                        <div class="col-md-3">
        <div class="form-group">
            <label>Designation Type/पदनाम का प्रकार <span style="color: red">*</span></label>
            <select class="form-control select2">
                <option value="--Select--">--Select--</option>
                <option value="Indore">Ministry (मंत्रालय)</option>
                <option value="Gwalior">Executive (कार्यकारी)</option>
                <option value="Jabalpur">Teacher (अध्यापक)</option>
            </select>
        </div>
    </div>
    <div class="col-md-3">
        <div class="form-group">
            <label>Designation Name/पदनाम<span style="color: red">*</span></label>
            <select class="form-control select2">
                <option value="--Select--">--Select--</option>
                <option value="Additional Director">Additional Director</option>
                <option value="Joint Director">Joint Director</option>
                <option value="Deputy Director">Deputy Director</option>
                <option value="Asstt Director">Asstt Director</option>
                <option value="Regional Librarian">Regional Librarian</option>
                <option value="Planning Officer">Planning Officer</option>
                <option value="Director (ELTI)">Director (ELTI)</option>
                <option value="Director(SISE)">Director(SISE)</option>
                <option value="Principal (PGBT)">Principal (PGBT)</option>
                <option value="Principal (DIET)">Principal (DIET)</option>
                <option value="Principal HSS">Principal HSS</option>
                <option value="Principal HS">Principal HS</option>
                <option value="Lecturer">Lecturer</option>
                <option value="HM(MS)">HM(MS)</option>
                <option value="Teacher (UDT)">Teacher (UDT)</option>
                <option value="Music Teacher">Music Teacher</option>
                <option value="Tabla Teacher">Tabla Teacher</option>
                <option value="Craft Teacher">Craft Teacher</option>
                <option value="HM(PS)">HM(PS)</option>
                <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                <option value="Adhyapak">Adhyapak</option>
                <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
            </select>
        </div>
    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">District Name / जिले का नाम<span style="color: red">*</span></label>
                            <select name="ddlDistrict" class="form-control select2">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Block Name / विकासखण्ड का नाम<span style="color: red">*</span></label>
                            <select id="ddlBlock" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Agar">Agar</option>
                                <option value="Barod">Barod</option>
                                <option value="Nalkheda">Nalkheda</option>
                                <option value="Susner">Susner</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Bhabra">Bhabra</option>
                                <option value="Katthiwara">Katthiwara</option>
                                <option value="Sondwa">Sondwa</option>
                                <option value="Udaygarh">Udaygarh</option>
                                <option value="Jobat">Jobat</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Jaithari">Jaithari</option>
                                <option value="Kotma">Kotma</option>
                            </select>
                        </div>
                    </div>
                
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee ID-Name /
                                <br />
                                कर्मचारी का आई.डी. - नाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Yes">20562-Rohan</option>
                                <option value="No">03265-Aalok</option>
                                <option value="No">95865-Sahil</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-5 mt-5 ">
                        <div class="form-group ">
                            <button type="button" onclick="btnSearch()" class="btn btn-success btn-rounded">Search</button>
                            <a href="OIS_Transfer.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div id="divDetails" style="display: none;">
                <fieldset>
                    <legend>Current Office Location</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Employee ID-Name / कर्मचारी का आई.डी. - नाम</label>
                                <input name="ename" type="text" value="20562-Rohan" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>OIS-Udise Code / ओ.आइ.एस. कोड</label>
                                <input name="ename" type="text" value="7850041" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Sankul Code / संकुल कोड</label>
                                <input name="ename" type="text" value="689200" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Type of Post / पद प्रकार</label>
                                <input name="ename" type="text" value="Regular" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Class / श्रेणी</label>
                                <input name="ename" type="text" value="Class IV" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Name / पदनाम</label>
                                <input name="ename" type="text" value="Regular" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Department / विभाग</label>
                                <input name="ename" type="text" value="Administration" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>New Office Location</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">District Name / जिले का नाम<span style="color: red">*</span></label>
                                <select name="ddlDistrict2" class="form-control select2">
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Block Name / विकासखण्ड का नाम<span style="color: red">*</span></label>
                                <select id="ddlBlock2" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Agar">Agar</option>
                                    <option value="Barod">Barod</option>
                                    <option value="Nalkheda">Nalkheda</option>
                                    <option value="Susner">Susner</option>
                                    <option value="Alirajpur">Alirajpur</option>
                                    <option value="Bhabra">Bhabra</option>
                                    <option value="Katthiwara">Katthiwara</option>
                                    <option value="Sondwa">Sondwa</option>
                                    <option value="Udaygarh">Udaygarh</option>
                                    <option value="Jobat">Jobat</option>
                                    <option value="Anuppur">Anuppur</option>
                                    <option value="Jaithari">Jaithari</option>
                                    <option value="Kotma">Kotma</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>OIS-Udise Code / ओ.आइ.एस. कोड</label>
                                <select id="ddlOISCode" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="7850041">7850041</option>
                                    <option value="7952441">7952441</option>
                                    <option value="9657132">9657132</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Sankul Code / संकुल कोड</label>
                                <select id="ddlSankulCode" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="6741578">6741578</option>
                                    <option value="1487641">1487641</option>
                                    <option value="2014800">2014800</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Type of Post / पद प्रकार<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">Regular</option>
                                    <option value="Yes">Permanent</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Name / पदनाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Additional Director">Additional Director</option>
                                    <option value="Joint Director">Joint Director</option>
                                    <option value="Deputy Director">Deputy Director</option>
                                    <option value="Asstt Director">Asstt Director</option>
                                    <option value="Regional Librarian">Regional Librarian</option>
                                    <option value="Planning Officer">Planning Officer</option>
                                    <option value="Director (ELTI)">Director (ELTI)</option>
                                    <option value="Director(SISE)">Director(SISE)</option>
                                    <option value="Principal (PGBT)">Principal (PGBT)</option>
                                    <option value="Principal (DIET)">Principal (DIET)</option>
                                    <option value="Principal HSS">Principal HSS</option>
                                    <option value="Principal HS">Principal HS</option>
                                    <option value="Lecturer">Lecturer</option>
                                    <option value="HM(MS)">HM(MS)</option>
                                    <option value="Teacher (UDT)">Teacher (UDT)</option>
                                    <option value="Music Teacher">Music Teacher</option>
                                    <option value="Tabla Teacher">Tabla Teacher</option>
                                    <option value="Craft Teacher">Craft Teacher</option>
                                    <option value="HM(PS)">HM(PS)</option>
                                    <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                    <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                    <option value="Adhyapak">Adhyapak</option>
                                    <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Department / विभाग<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="----">--Select--</option>
                                    <option value="----">DPI</option>
                                    <option value="----">Department of Education</option>
                                    <option value="----">Tribal Welfare Department</option>
                                    <option value="----">Local Body</option>
                                    <option value="----">Other State Govt Managed</option>
                                    <option value="----">Other Department</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="form-group">
                            <input type="button" class="btn btn-success btn-rounded" value="Add" onclick="btnAdd();" />
                            <input type="button" class="btn btn-danger btn-rounded" value="Clear" />
                        </div>
                    </div>
                </div>

                <fieldset id="divEnteredDetails" style="display: none;">
                    <legend>Details</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Action</th>
                                            <th>Employee ID-Name / कर्मचारी का आई.डी. - नाम</th>
                                            <th>Current OIS-Udise Code / वर्तमान ओ.आइ.एस. कोड</th>
                                            <th>Current Sankul Code / वर्तमान संकुल कोड</th>
                                            <th>New OIS-Udise Code / नया ओ.आइ.एस. कोड</th>
                                            <th>New Sankul Code / नया संकुल कोड</th>
                                            <th>Delete</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <input type="checkbox" id="chckTransfer" onclick="checkClick();" /></td>
                                            <td>23010800102 - HS & MS BALAWANI</td>
                                            <td>23010800102-HS & MS BALAWANI</td>
                                            <td>4012003014 - VIJAYPUR, PRINCIPAL H S S TARRAKALAN</td>
                                            <td>4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN</td>
                                            <td>4012003013 -	SAHSRAM, Principal H S S SAHSRAM</td>
                                            <td><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a></td>
                                        </tr>
                                        
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="divTransfer" style="display: none;">
                    <legend>Final Details</legend>
                    <div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Order No. / आदेश नंबर<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." value="546545" readonly />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Order Date / आदेश तारीख<span style="color: red">*</span></label>
                                    <input name="ename" type="date" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Effective Date / प्रभावी तारीख<span style="color: red">*</span></label>
                                    <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Upload Documents<span style="color: red">*</span></label>
                                    <input name="ename" type="file" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Remark</label>
                                    <input type="text" class="form-control" placeholder="Enter Remark" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-2 mt-4">
                                <div class="form-group">
                                    <input type="button" class="Alert-Save btn btn-success btn-block btn-rounded" value="Transfer" />
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="divOrderDetails" style="display:none;">
                    <legend>Details</legend>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Order No.</th>
                                    <th>Order Date</th>
                                    <th>Effective Date</th>
                                    <th>Generate Order</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>546545</td>
                                    <td>05/02/2024</td>
                                    <td>06/02/2024</td>
                                    <td>
                                        <button onclick="openPDF1()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                </tr>
                            </table>
                        </div>
                    </div>

                </fieldset>

            </div>

        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function btnSearch() {
            var divDetails = document.getElementById("divDetails");
            divDetails.style.display = "block";
        }

        function btnAdd() {
            var divEnteredDetails = document.getElementById("divEnteredDetails");
            divEnteredDetails.style.display = "block";
        }

        function checkClick() {
            var chckTransfer = document.getElementById("chckTransfer");
            var divTransfer = document.getElementById("divTransfer");

            if (chckTransfer.checked) {
                divTransfer.style.display = "block";
            } else {
                divTransfer.style.display = "none";
            }
        }

        function openPDF1() {
            var pdfUrl = '../Document/Promotion-1.pdf';
            window.open(pdfUrl, '_blank');
        }

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
                        text: "Do you want to save this record ?",
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
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            var x = document.getElementById("divOrderDetails");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);

    </script>
</asp:Content>

