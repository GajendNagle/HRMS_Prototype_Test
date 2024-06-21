<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_PublicSchool.aspx.cs" Inherits="mis_Registration_Rpt_PublicSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link href="../dist/css/bootstrap-multiselect.css" rel="stylesheet" />
    <link href="../dist/css/bootstrap-select.css" rel="stylesheet" />
    <link href="../dist/css/multi-select.css" rel="stylesheet" />
    <link href="../dist/css/select2.min.css" rel="stylesheet" />
    <%--<link href="../dist/css/site.css" rel="stylesheet" />--%>
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
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>

                        <li class="breadcrumb-item"><a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a></li>
                        <li class="breadcrumb-item"><a href="#SchoolReports" data-bs-toggle="collapse" onclick="SidebarToggle('SchoolDirectory')" role="button" aria-expanded="false"><span>Reports</span></a></li>
                        <li class="breadcrumb-item ">School Summary Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">School Summary Report/स्कूल सारांश रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server">
                <fieldset>
                    <legend>School Summary Report/स्कूल सारांश रिपोर्ट</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Division /प्रभाग का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control">
                                    <option value="All">Select</option>
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
                                <label>Select District/जिला चुनें</label><span style="color: red">*</span>
                                <select class="form-control">
                                    <option value="All">Select</option>
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
                                <label>Select Block/ब्लॉक चुनें</label>
                                <select class="form-control">
                                    <option value="All">Select</option>
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
                                <label>Select Board Type/बोर्ड प्रकार का चयन करें</label>
                                <select class="form-control">
                                    <option value=" All">Select</option>
                                    <option value="1-CBSE">1-CBSE</option>
                                    <option value="2-State Board">2-State Board</option>
                                    <option value="3-ICSE ">3-ICSE </option>
                                    <option value="4-International">4-International</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select School Type/स्कूल का प्रकार चुनें</label>
                                <select class="form-control">
                                    <option value=" All">Select</option>
                                    <option value="1-Boy">1-Boy</option>
                                    <option value="2-Girls">2-Girls</option>
                                    <option value="3-Co-Ed">3-Co-Ed</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select School Category/स्कूल श्रेणी का चयन करें</label>
                                <select class="form-control">
                                    <option value=" All">Select</option>
                                    <option value="1-Primary">1-Primary</option>
                                    <option value="2-Upper Primary">2-Upper Primary</option>
                                    <option value="3-Higher Secondary">3-Higher Secondary</option>
                                    <option value="4-Upper Primary School">4-Upper Primary School</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select School Category Details/स्कूल श्रेणी विवरण का चयन करें</label>
                                <select class="form-control">
                                    <option value=" All">Select</option>
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
                                <label>Select Management Group/प्रबंधन समूह का चयन करें</label>
                                <select class="form-control">
                                    <option value=" All">Select</option>
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
                                <label>Select Management Group Details/प्रबंधन समूह विवरण चुनें</label>
                                <select class="form-control">
                                    <option value="All">Select</option>
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
                                <label>Select School Medium/स्कूल माध्यम का चयन करें</label>
                                <select class="form-control" data-live-search="true">
                                    <option value="0">Select</option>
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
                                <label>Select Sankul Name/संकुल नाम का चयन करें</label>
                                <asp:DropDownList runat="server" CssClass="form-control">
                                    <asp:ListItem>Select</asp:ListItem>
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
                                <label>Select Parliament/संसद का चयन करें</label>
                                <select class="form-control">
                                    <option value="All">Select</option>
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
                                <label>Select Assembly /विधानसभा का चयन करें</label>
                                <select class="form-control">
                                    <option value="All">Select</option>
                                    <option value="Govindpura">Govindpura</option>
                                    <option value="Huzur">Huzur</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Location /स्थान चुनें</label>
                                <select class="form-control">
                                    <option value="All">Select</option>
                                    <option value="1-Urban">1-Urban</option>
                                    <option value="2-Rural">2-Rural</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Nagar Nigam/नगर निगम का चयन करें</label>
                                <select class="form-control">
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
                                <label>Select Nagar Palika/नगर पालिका का चयन करें</label>
                                <select class="form-control">
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
                                <label>Select Zila Panchayat/जिला पंचायत का चयन करें</label>
                                <select class="form-control">
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
                                <label>Select Janpad Panchayat/जनपद पंचायत का चयन करें</label>
                                <select class="form-control">
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
                                <label>Select Gram Panchayat/ग्राम पंचायत का चयन करें</label>
                                <select class="form-control">
                                    <option value="All">Select</option>
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
                                <label>Select Village/गांव का चयन करें</label>
                                <select class="form-control">
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
                                <label>Select Habitation/आवास का चयन करें </label>
                                <select class="form-control">
                                    <option value="All">All</option>
                                    <option value="Berasia">Berasia</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <button type="button" class="Alert-Download btn w-lg btn-outline-success btn-border">Download</button>
                                <a href="Rpt_PublicSchool.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
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

