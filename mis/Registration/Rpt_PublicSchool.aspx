﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_PublicSchool.aspx.cs" Inherits="mis_Registration_Rpt_PublicSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link href="../dist/css/bootstrap-multiselect.css" rel="stylesheet" />
    <link href="../dist/css/bootstrap-select.css" rel="stylesheet" />
    <link href="../dist/css/multi-select.css" rel="stylesheet" />
    <link href="../dist/css/select2.min.css" rel="stylesheet" />
    <link href="../dist/css/site.css" rel="stylesheet" />
    <style>
        @media print {
            .noprint {
                display: none;
            }

            .table-responsive {
                overflow: hidden;
            }
        }
    </style>
    <style>
        .table-bordered > tbody > tr > th {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">School Summary Report</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                        <li class="breadcrumb-item active">School Summary Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div runat="server">
                    <fieldset>
                        <legend>School Summary Report</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Division <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Narmadapuram">Narmadapuram</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District</label><span style="color: red">*</span>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
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
                                    <label>Block</label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
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
                                    <label>Board Type</label>
                                    <select class="form-control select2">
                                        <option value=" All">All</option>
                                        <option value="1-CBSE">1-CBSE</option>
                                        <option value="2-State Board">2-State Board</option>
                                        <option value="3-ICSE ">3-ICSE </option>
                                        <option value="4-International">4-International</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Type</label>
                                    <select class="form-control select2">
                                        <option value=" All">All</option>
                                        <option value="1-Boy">1-Boy</option>
                                        <option value="2-Girls">2-Girls</option>
                                        <option value="3-Co-Ed">3-Co-Ed</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Category</label>
                                    <select class="form-control select2">
                                        <option value=" All">All</option>
                                        <option value="1-Primary">1-Primary</option>
                                        <option value="2-Upper Primary">2-Upper Primary</option>
                                        <option value="3-Higher Secondary">3-Higher Secondary</option>
                                        <option value="4-Upper Primary School">4-Upper Primary School</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Category Details</label>
                                    <select class="form-control select2">
                                        <option value=" All">All</option>
                                        <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                        <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                        <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                        <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                        <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group</label>
                                    <select class="form-control select2">
                                        <option value=" All">All</option>
                                        <option value="A-State Govt">A-State Govt</option>
                                        <option value="B-Govt Aided">B-Govt Aided</option>
                                        <option value="C-Private UnAided ">C-Private UnAided </option>
                                        <option value="D-Central Govt">D-Central Govt</option>
                                        <option value="E-Other">E-Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group Details</label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
                                        <option value="1-Department of Education (SED)">1-Department of Education (SED)</option>
                                        <option value="2-Tribal Welfare Department (TWD)">2-Tribal Welfare Department (TWD)</option>
                                        <option value="3-Local Body ">3-Local Body </option>
                                        <option value="4-Government Aided ">4-Government Aided </option>
                                        <option value="5-Private Unaided (Recognized)">5-Private Unaided (Recognized)</option>
                                        <option value="6-Other State Govt. Managed ">6-Other State Govt. Managed </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Medium</label>
                                    <select class="form-control select2" data-live-search="true">
                                        <option value="0">All</option>
                                        <option value="19">19-English</option>
                                        <option value="04">04-Hindi</option>
                                        <option value="18">18-Urdu</option>
                                        <option value="10">10-Marathi</option>
                                        <option value="99">99-Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Sankul Name</label>
                                    <asp:DropDownList runat="server" CssClass="form-control select2">
                                        <asp:ListItem>All</asp:ListItem>
                                        <asp:ListItem>AKBARPUR GOVT. HS</asp:ListItem>
                                        <asp:ListItem>BERASIA (BOYS) GOVT.HSS</asp:ListItem>
                                        <asp:ListItem>DHAMARRA GOVT. HS</asp:ListItem>
                                        <asp:ListItem>EENT KHEDI GOVT. HSS</asp:ListItem>
                                        <asp:ListItem>BAIRAGARH (BOYS) GOVT.HSS</asp:ListItem>
                                        <asp:ListItem>BERAISA (GIRLS) SN HSS</asp:ListItem>
                                        <asp:ListItem>BAGRODA GOVT. HS</asp:ListItem>
                                        <asp:ListItem>BARKHEDI (GIRLS) GOVT.HSS</asp:ListItem>
                                        <asp:ListItem>GOVINDPURA (GIRLS) GO.HSS</asp:ListItem>
                                        <asp:ListItem>GUNGA GOVT. HSS</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Parliament</label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Vidisha">Vidisha</option>
                                        <option value="Morena">Morena</option>
                                        <option value="Bhind">Bhind</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Dhar">Dhar</option>
                                        <option value="Khandwa">Khandwa</option>
                                        <option value="Khargone">Khargone</option>
                                        <option value="Balaghat">Balaghat</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Mandla">Mandla</option>
                                        <option value="Betul">Betul</option>
                                        <option value="Narmadapuram">Narmadapuram</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sidhi">Sidhi</option>
                                        <option value="Khajuraho">Khajuraho</option>
                                        <option value="Damoh">Damoh</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Tikamgarh">Tikamgarh</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Mandsaur">Mandsaur</option>
                                        <option value="Ratlam">Ratlam</option>
                                        <option value="Ujjain">Ujjain</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Assembly </label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
                                        <option value="Govindpura">Govindpura</option>
                                        <option value="Huzur">Huzur</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Location </label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
                                        <option value="1-Urban">1-Urban</option>
                                        <option value="2-Rural">2-Rural</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Nagar Nigam</label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Ujjain">Ujjain</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Katni">Katni</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Nagar Palika</label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Berasia">Berasia</option>
                                        <option value="Begumganj">Begumganj</option>
                                        <option value="Mandideep">Mandideep</option>
                                        <option value="Biaora">Biaora</option>
                                        <option value="Narsinghgarh">Narsinghgarh</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Sarangpur">Sarangpur</option>
                                        <option value="Sehore">Sehore</option>
                                        <option value="Ashta">Ashta</option>
                                        <option value="Vidisha">Vidisha</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Zila Panchayat</label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Berasia">Berasia</option>
                                        <option value="Phanda">Phanda</option>
                                        <option value="ALIRAJPUR ">ALIRAJPUR </option>
                                        <option value="ASHOKNAGAR ">ASHOKNAGAR </option>
                                        <option value="JAITHARI ">JAITHARI </option>
                                        <option value="KOTMA ">KOTMA </option>
                                        <option value="PUSHPRAJ GARH">PUSHPRAJ GARH</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Janpad Panchayat</label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BARODI">BARODI</option>
                                        <option value="DEPALPUR ">DEPALPUR </option>
                                        <option value="MHOW ">MHOW </option>
                                        <option value="SANWER ">SANWER </option>
                                        <option value="BHANDER">BHANDER </option>
                                        <option value="DATIA ">DATIA </option>
                                        <option value="SEONDHA ">SEONDHA </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Gram Panchayat</label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
                                        <option value="AMARPUR">AMARPUR</option>
                                        <option value="ANKIA">ANKIA</option>
                                        <option value="ARJUNKHEDI">ARJUNKHEDI</option>
                                        <option value="ARRAWATI">ARRAWATI</option>
                                        <option value="BABACHIYA">BABACHIYA</option>
                                        <option value="BADBELI KALAN">BADBELI KALAN</option>
                                        <option value="BAGSI">BAGSI</option>
                                        <option value="BAHRAWAL">BAHRAWAL</option>
                                        <option value="BAIRAGARH">BAIRAGARH</option>
                                        <option value="BANDARUA">BANDARUA</option>
                                        <option value="BARKHEDA">BARKHEDA</option>
                                        <option value="BARAMAD">BARAMAD</option>
                                        <option value="BARODI">BARODI</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Village</label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BARODI">BARODI</option>
                                        <option value="Agra">Agra</option>
                                        <option value="Amalya">Amalya</option>
                                        <option value="Arjunkhedi">Arjunkhedi</option>
                                        <option value="Babukhedi">Babukhedi</option>
                                        <option value="Barrai">Barrai</option>
                                        <option value="Bhesoda">Bhesoda</option>
                                        <option value="Garha Kalan">Garha Kalan</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Habitation </label>
                                    <select class="form-control select2">
                                        <option value="All">All</option>
                                        <option value="Berasia">Berasia</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4 mt-4">
                                <div class="form-group">
                                    <button type="button" class="Alert-Download btn btn-success btn-rounded">Download</button>
                                    <a href="Rpt_PublicSchool.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <%--<div class="row justify-content-center">
                    </div>--%>
                    <%-- <fieldset>
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Dropdown's</strong>
                                        <ul>
                                            <li>All the following fields will display their data cascaded from each other <strong>Dropdown</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Download</strong>
                                        <ul>
                                            <li>Download button should be visible and user should be able to click.</li>
                                            <li>After clicking on Download button all dropdown's data export in <strong>Excel</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Clear</strong>
                                        <ul>
                                            <li>User should be able to click on Clear button. </li>
                                            <li>After clicking on Clear button all the <strong>dropdown</strong> should be Clear or reload the same page</li>
                                        </ul>
                                    </li>
                                    <li><strong>Division</strong>
                                        <ul>
                                            <li><strong>Division</strong> field is mandatory. </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script src="../dist/js/bootstrap-select.min.js"></script>
    <script src="../dist/js/select2.full.min.js"></script>
    <script src="../dist/js/jquery.multi-select.js"></script>
    <script>
        function FbotonOn() {
            confirm("Are you sure you want to save this record?");
            //const element = document.getElementById("myDIV");
            //element.className = "modal-header alert-success"
            //document.getElementById('myLargeModalLabel1').innerHTML = "School UnMerged Successfully";
            //document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>
</asp:Content>

