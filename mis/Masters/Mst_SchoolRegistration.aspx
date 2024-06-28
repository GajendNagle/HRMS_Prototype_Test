<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_SchoolRegistration.aspx.cs" Inherits="mis_Masters_Mst_SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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

    <script>
        function showHideDiv() {
            var dropdown = document.getElementById("dropdown");
            var divnagarnigam = document.getElementById("divnagarnigam");
            var divnagarpalika = document.getElementById("divnagarpalika");
            var divward = document.getElementById("divward");
            var divZilapanchayat = document.getElementById("divZilapanchayat");
            var divjanpad = document.getElementById("divjanpad");
            var divgram = document.getElementById("divgram");
            var divvillage = document.getElementById("divvillage");
            var divhabitation = document.getElementById("divhabitation");
            var divdistance = document.getElementById("divdistance");
            var divdistanceByRoad = document.getElementById("divdistanceByRoad");

            if (dropdown.value === "1") {
                // If option 1 is selected, show div1 and hide div2
                divnagarnigam.style.display = "block";
                divnagarpalika.style.display = "block";
                divward.style.display = "block";

                divZilapanchayat.style.display = "none";
                divjanpad.style.display = "none";
                divgram.style.display = "none";
                divvillage.style.display = "none";
                divhabitation.style.display = "none";
                divdistance.style.display = "none";
                divdistanceByRoad.style.display = "none";

            } else if (dropdown.value === "2") {
                // If option 2 is selected, show div2 and hide div1
                divnagarnigam.style.display = "none";
                divnagarpalika.style.display = "none";
                divward.style.display = "none";

                divZilapanchayat.style.display = "block";
                divjanpad.style.display = "block";
                divgram.style.display = "block";
                divvillage.style.display = "block";
                divhabitation.style.display = "block";
                divdistance.style.display = "block";
                divdistanceByRoad.style.display = "block";
            }
            else if (dropdown.value === "3") {
                divnagarnigam.style.display = "none";
                divnagarpalika.style.display = "none";
                divward.style.display = "none";

                divZilapanchayat.style.display = "none";
                divjanpad.style.display = "none";
                divgram.style.display = "none";
                divvillage.style.display = "none";
                divhabitation.style.display = "none";
                divdistance.style.display = "none";
                divdistanceByRoad.style.display = "none";
            }
        }



    </script>
    <style>
        #divnagarnigam {
            display: none;
        }

        #divnagarpalika {
            display: none;
        }

        #divward {
            display: none;
        }

        #divZilapanchayat {
            display: none;
        }

        #divjanpad {
            display: none;
        }

        #divgram {
            display: none;
        }

        #divvillage {
            display: none;
        }

        #divhabitation {
            display: none;
        }

        #divdistance {
            display: none;
        }

        #divdistanceByRoad {
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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">OIS Registration</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से  ऑफिस का टाइप स्कूल, इंस्टिट्यूट या ऑफिस है सर्वप्रथम उसको सेलेक्ट किया जाता है उसके उपरांत  ऑफिस का लेवल सलेक्ट करें स्टेट,  डिविजन, डिस्टिक, ब्लॉक, डीडीयू,  जेएसके और स्कूल सिलेक्ट करने के उपरांत ऑफिस का नाम इंग्लिश और हिंदी में  प्रविष्टि कर उसका कोर्ट प्रविष्टि कर सेव किया जाता है जिससे आपका नया ऑफिस मास्टर में दिखने लग जाएगा, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title">Office/Institute/School Registration / कार्यालय/संस्थान/विद्यालय पंजीकरण
                    </h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Office/Institute/School Registration / कार्यालय/संस्थान/विद्यालय पंजीकरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Registration Type<br />
                                पंजीकरण प्रकार चुनें <span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlRegistrationType" OnSelectedIndexChanged="ddlFYear_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="2">Office Registration</asp:ListItem>
                                <asp:ListItem Value="3">Institute Registration</asp:ListItem>
                                <asp:ListItem Value="1">School Registration</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial Year
                                <br />
                                वित्तीय वर्ष चुनें <span style="color: red">*</span></label>

                            <asp:DropDownList runat="server" ID="ddlFinancialYear" CssClass="form-control">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>2024-25</asp:ListItem>
                                <asp:ListItem>2023-24</asp:ListItem>
                                <asp:ListItem>2022-23</asp:ListItem>
                                <asp:ListItem>2021-22</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Office Basic Details / कार्यालय का मूल विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Office Type<br />
                                    कार्यालय प्रकार का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Head Office</option>
                                    <option value="Bhopal">JOINT DIRECTORS</option>
                                    <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                    <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                    <option value="Bhopal">SANKUL/AEO</option>
                                    <option value="Bhopal">SCHOOL</option>
                                    <option value="Principal Secretary">Principal Secretary</option>
                                    <option value="Secretary">Secretary</option>
                                    <option value="Deputy Secretary">Deputy Secretary</option>
                                    <option value="CPI">CPI</option>
                                    <option value="CRSK">CRSK</option>
                                    <option value="DPI">DPI</option>
                                    <option value="Collector">Collector</option>
                                    <option value="CEO, ZP">CEO, ZP</option>
                                    <option value="DPC">DPC</option>
                                    <option value="BRC">BRC</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Office Name (In English)<br />
                                    कार्यालय का नाम (अंग्रेजी में)<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Office Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Name of Office (in Hindi)<br />
                                    कार्यालय नाम (हिंदी में)<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="कार्यालय का नाम दर्ज करे" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Office Code No.<br />
                                    कार्यालय कोड नं.<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Office Code No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Division<br />
                                    संभाग का चयन करें <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                                <label>
                                    Select District<br />
                                    जिला का चयन करें<span style="color: red">*</span></label>
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Block<br />
                                    ब्लॉक चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2">
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
                                <label>
                                    Select Village<br />
                                    गांव का चयन करें<span style="color: red">*</span></label>
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
                                <label>
                                    Address (Line 1)<br />
                                    पता (1)<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Address (Line 1)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Address (Line 2)<br />
                                    पता (2)<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Address (Line 2)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Pincode<br />
                                    पिन कोड<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Pincode" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Office Landline Number<br />
                                    ऑफिस लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Office Landline No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Office Email ID<br />
                                    ऑफिस ईमेल आईडी<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Office Email ID" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Office Establishment Date<br />
                                    कार्यालय स्थापना तिथि<span style="color: red;">*</span></label>
                                <input type="date" class="form-control" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label>
                                    IsActive<br />
                                    सक्रिय है
                                <i style="color: red;">*</i></label>

                                <asp:CheckBox Checked="true" runat="server" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Office Bank Details / कार्यालय बैंक विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Bank Type<br />
                                    बैंक प्रकार चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2 " id="BankTypeId" name="BankTypeId" data-select2-id="BankTypeId" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="64">Select</option>
                                    <option value="1" data-select2-id="147">Public Sector Commercial Banks</option>
                                    <option value="2" data-select2-id="148">Private  Sector  Commercial Banks</option>
                                    <option value="3" data-select2-id="149">Regional Rural Banks</option>
                                    <option value="4" data-select2-id="150">Co-operative Banks</option>
                                    <option value="5" data-select2-id="151">Small Finance Banks</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select IFSC Code<br />
                                    IFSC कोड चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="">--Select--</option>
                                    <option value="SBIN0001308">SBIN0001308</option>
                                    <option value="SBIN0003099">SBIN0003099</option>
                                    <option value="HDFC0000062">HDFC0000062</option>
                                    <option value="UBIN0532525">UBIN0532525</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Bank Name<br />
                                    बैंक का नाम चुनें<span style="color: red;">*</span></label>
                                <%--<input type="text" class="form-control" placeholder="Enter Bank Name" />--%>
                                <select class="form-control select2">
                                    <option value="">--Select--</option>
                                    <option value="sbi">State Bank of India (SBI)</option>
                                    <option value="boi">Bank of India (BOI)</option>
                                    <option value="central_bank">Central Bank of India</option>
                                    <option value="union_bank">Union Bank of India</option>
                                    <option value="hdfc">HDFC Bank</option>
                                </select>

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Account Number<br />
                                    खाता संख्या<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Account No." />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Office Geographical Details / कार्यालय भौगोलिक विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Latitude<br />
                                    अक्षांश <span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Latitude" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Longitude<br />
                                    देशांतर<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Longitude" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Office Incharge Details / कार्यालय प्रभारी का विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Unique Id<br />
                                    प्रभारी यूनिक आईडी<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter In Charge Unique ID" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Name<br />
                                    प्रभारी का नाम<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="Enter In Charge Name" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Mobile Number<br />
                                    प्रभारी मोबाइल नंबर <span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter In Charge Mobile No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Email ID<br />
                                    प्रभारी ईमेल आई.डी<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter In Charge Email ID" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                        <a href="Mst_SchoolRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </div>
            <div runat="server" id="divInstitute">
                <fieldset>
                    <legend>Institute Basic Information / संस्थान की जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Institute Type<br />
                                    संस्थान का प्रकार चुनें<span style="color: red;"> *</span></label>
                                <select class="form-select form-control select2">
                                    <option>-select-</option>
                                    <option>Maharshi Pathanjali Sanskrit Sansthan, Bhopal</option>
                                    <option>Other Institutes/Colleges</option>
                                    <option>District Institute of Education & Training/District resource coordinator</option>
                                    <option>Libraries</option>
                                    <option>Kasturba Gandhi Balika Vidyalaya</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Institute Code<br />
                                    संस्थान कोड<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="Enter Institute Code" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Institute Name (In English)<br />
                                    संस्थान का नाम (अंग्रेजी में)<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="Enter Institute Name (In English)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Name of Institute (in Hindi)<br />
                                    संस्थान का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="संस्थान का नाम दर्ज करे|" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Year of Establishment<br />
                                    स्थापना वर्ष<span style="color: red;">*</span></label>

                                <input type="date" class="form-control your-selector" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Management Group<br />
                                    प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
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
                                <label>
                                    Select Management Group Details<br />
                                    प्रबंधन समूह विवरण चुनें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="1-Department of Education">1-Department of Education</option>
                                    <option value="2-Tribal Welfare Department">2-Tribal Welfare Department</option>
                                    <option value="3-Local Body ">3-Local Body </option>
                                    <option value="4-Government Aided ">4-Government Aided </option>
                                    <option value="5-Private Unaided (Recognized)">5-Private Unaided (Recognized)</option>
                                    <option value="6-Other State Govt. Managed ">6-Other State Govt. Managed </option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Institute Shift<br />
                                    संस्थान शिफ्ट का चयन करें <span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Morning">Morning</option>
                                    <option value="Afternoon">Afternoon</option>
                                    <option value="Both">Both</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Is Institute Residential<br />
                                    क्या संस्थान आवासीय है इसका चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Yes">Yes</option>
                                    <option selected="selected" value="No">No</option>

                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Facility<br />
                                    छात्रावास सुविधा का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-1 mt-3">
                            <label>
                                IsActive<br />
                                सक्रिय है
                                <i style="color: red;">*</i></label>
                            <br />
                            <asp:CheckBox Checked="true" runat="server" />
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Institute Address Information / संस्थान के पते की जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Division<br />
                                    संभाग का चयन करें <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                                <label>
                                    Select District<br />
                                    जिले का चयन करें<span style="color: red">*</span></label>
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Block<br />
                                    ब्लॉक का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
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
                                <label>
                                    Select Parliament<br />
                                    संसद का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
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
                                <label>
                                    Select Assembly
                                    <br />
                                    विधानसभा का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Govindpura">Govindpura</option>
                                    <option value="Huzur">Huzur</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Area
                                    <br />
                                    क्षेत्र का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="0">-Select-</option>
                                    <option value="1-Urban">1-Urban</option>
                                    <option value="2-Rural">2-Rural</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Nagar Nigam<br />
                                    नगर निगम का चयन करें<span style="color: red">*</span></label>
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
                                <label>
                                    Select Nagar Palika<br />
                                    नगर पालिका का चयन करें<span style="color: red">*</span></label>
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
                                <label>
                                    Select District Panchayat<br />
                                    जिला पंचायत का चयन करें<span style="color: red">*</span></label>
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
                                <label>
                                    Select Janpad Panchayat<br />
                                    जनपद पंचायत का चयन करें<span style="color: red">*</span></label>
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
                                <label>
                                    Select Gram Panchayat<br />
                                    ग्राम पंचायत का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                                <label>
                                    Select Village<br />
                                    गांव का चयन करें<span style="color: red">*</span></label>
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
                                <label>
                                    Select Habitation
                                    <br />
                                    आवास का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Berasia">Berasia</option>

                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Address (Line 1)<br />
                                    पता (1)
                                    <span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Institute Address (Line 1)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Address (Line 2)<br />
                                    पता (2)<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Institute Address (Line 2)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Pincode<br />
                                    पिन कोड<span style="color: red;">*</span>
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Pincode No." />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Institute Contact Details / संस्थान संपर्क विवरण</legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select In Charge Type<br />
                                    इन चार्ज प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                <asp:DropDownList ID="ddl_Inst_InchargeType" runat="server" CssClass="form-control select2">
                                    <asp:ListItem Value="">-Select-</asp:ListItem>
                                    <asp:ListItem Value="1">1-Head Master / Principal</asp:ListItem>
                                    <asp:ListItem Value="2">2-Asst. head Master  / VP</asp:ListItem>
                                    <asp:ListItem Value="3">3-Acting Head Teacher</asp:ListItem>
                                    <asp:ListItem Value="4">4-Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Unique Id<br />
                                    प्रभारी यूनिक आई.डी<span style="color: red;">*</span></label>
                                <asp:TextBox runat="server" ID="InChargeUniqueId" class="form-control" placeholder="Enter In Charge Unique ID" OnTextChanged="InChargeUniqueId_TextChanged" AutoPostBack="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Name<br />
                                    प्रभारी का नाम<span style="color: red;"> *</span></label>
                                <asp:TextBox runat="server" ID="txtInst_InChargeName" class="form-control" placeholder="Enter In Charge Name"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Mobile Number
                                    <br />
                                    प्रभारी मोबाइल नंबर<span style="color: red;">*</span></label>

                                <asp:TextBox runat="server" ID="txtInst_InchargeMobile" class="form-control" placeholder="Enter In Charge Mobile No."></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    In Charge Email ID<br />
                                    प्रभारी ईमेल आई.डी<span style="color: red;">*</span></label>
                                <asp:TextBox runat="server" ID="txtInst_InchargeEmail" class="form-control" placeholder="Enter In Charge Email ID"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select In Charge Designation<br />
                                    प्रभारी पदनाम का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option selected value="1-Head Master / Principal ">1-Head Master / Principal </option>
                                    <option value="2-Asst. head Master  / VP">2-Asst. head Master  / VP</option>
                                    <option value="3-Acting Head Teacher ">3-Acting Head Teacher </option>
                                    <option value="4-Other">4-Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Institute Landline Number<br />
                                    संस्थान का लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Institute Landline No." />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Institute Email ID<br />
                                    संस्थान ईमेल आई.डी<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Institute Email ID" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Institute Website<br />
                                    संस्थान की वेबसाइट<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Institute Website" />
                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Institute Bank Details / संस्थान बैंक विवरण</legend>

                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Bank Type<br />
                                    बैंक प्रकार चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2 " id="BankTypeId2" name="BankTypeId" data-select2-id="BankTypeId" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="64">Select</option>
                                    <option value="1" data-select2-id="147">Public Sector Commercial Banks</option>
                                    <option value="2" data-select2-id="148">Private  Sector  Commercial Banks</option>
                                    <option value="3" data-select2-id="149">Regional Rural Banks</option>
                                    <option value="4" data-select2-id="150">Co-operative Banks</option>
                                    <option value="5" data-select2-id="151">Small Finance Banks</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select IFSC Code
                                    <br />
                                    IFSC कोड चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="">--Select--</option>
                                    <option value="SBIN0001308">SBIN0001308</option>
                                    <option value="SBIN0003099">SBIN0003099</option>
                                    <option value="HDFC0000062">HDFC0000062</option>
                                    <option value="UBIN0532525">UBIN0532525</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Bank Name<br />
                                    बैंक का नाम चुनें<span style="color: red;">*</span></label>
                                <%--<input type="text" class="form-control" placeholder="Enter Bank Name" />--%>
                                <select class="form-control select2">
                                    <option value="">--Select--</option>
                                    <option value="sbi">State Bank of India (SBI)</option>
                                    <option value="boi">Bank of India (BOI)</option>
                                    <option value="central_bank">Central Bank of India</option>
                                    <option value="union_bank">Union Bank of India</option>
                                    <option value="hdfc">HDFC Bank</option>
                                </select>

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Account Number<br />
                                    खाता संख्या<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Account No." />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Institute Geographical Data / संस्थान भौगोलिक डेटा</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Latitude<br />
                                    देशांतर<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Latitude" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Longitude<br />
                                    अक्षांश <span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Longitude" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <hr />
                <div class="row ">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation w-lg btn btn-success btn-rounded">Save</button>
                        <a href="Mst_SchoolRegistration.aspx" class="btn w-lg btn-danger btn-rounded">Clear</a>
                    </div>
                </div>
            </div>
            <div runat="server" id="divSchool">
                <fieldset>
                    <legend>School Basic Information / स्कूल की बुनियादी जानकारी</legend>
                    <div class="row  align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter UDISE Code<br />
                                    UDISE कोड दर्ज करें<span style="color: red;"> *</span></label>
                                <input type="text" id="ContentBody_ir" class="form-control" placeholder="Enter UDISE Code" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>School Name (In English)<br />
                                    स्कूल का नाम (अंग्रेजी में)<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Name (In English)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Name of School (in Hindi)<br />
                                    स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="स्कूल का नाम दर्ज करे|" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Year of Establishment<br />
                                    स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                <input type="date" class="form-control your-selector" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Board Type<br />
                                    बोर्ड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-CBSE">1-CBSE</option>
                                    <option value="2-State Board">2-State Board</option>
                                    <option value="3-ICSE ">3-ICSE </option>
                                    <option value="4-International">4-International</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Board Code<br />
                                    बोर्ड कोड<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Board Code" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School Type<br />
                                    स्कूल का प्रकार चुनें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-Boy">1-Boy</option>
                                    <option value="2-Girls">2-Girls</option>
                                    <option value="3-Co-Ed">3-Co-Ed</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School Category<br />
                                    स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-Primary">1-Pre-Primary</option>
                                    <option value="1-Primary">2-Primary</option>
                                    <option value="2-Upper Primary">3-Upper Primary</option>
                                    <option value="3-Higher Secondary">4-Secondary</option>
                                    <option value="3-Higher Secondary">5-Higher Secondary</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School Category Details<br />
                                    स्कूल श्रेणी विवरण का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                    <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                    <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                    <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                    <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Management Group<br />
                                    प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
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
                                <label>
                                    Select Management Group Details<br />
                                    प्रबंधन समूह विवरण चुनें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="1">1-Department of Education</option>
                                    <option value="2">2-Tribal Welfare Department</option>
                                    <option value="3">3-Local Body </option>
                                    <option value="6">6-Other State Govt. Managed </option>
                                    <option value="89">89-Minority Affars Dept. </option>
                                    <option value="90">90-Social Welfare Department </option>
                                    <option value="91">91-Ministry of Labour </option>
                                    <option value="4">4-Government Aided </option>
                                    <option value="7">7-Partially Govt.Aided</option>
                                    <option value="5">5-Private Unaided (Recognized)</option>
                                    <option value="92">92-Kendriya Vidyalaya</option>
                                    <option value="93">93-Jawahar Navodaya Vidyalaya</option>
                                    <option value="94">94-Sainik School</option>
                                    <option value="95">95-Railway School</option>
                                    <option value="96">96-Central Tibetan School</option>
                                    <option value="101">101-Other Central Govt./PSU Schools**</option>
                                    <option value="8">8-Unrecognized</option>
                                    <option value="97">97-Madrasa Private Unaided (Recognized)</option>
                                    <option value="99">99-Madrasa Aided (Recognized)</option>
                                    <option value="98">98-Madrasa (Unrecognized)</option>


                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Recognition No.
                                    <br />
                                    मान्यता नं.<span style="color: red;">*</span></label>
                                <input class="form-control" type="text" placeholder="Enter Recognition No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Recognition  Valid From<br />
                                    मान्यता से मान्य<span style="color: red;">*</span></label>
                                <input class="form-control" type="date" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Recognition  Valid To<br />
                                    मान्यता के लिए मान्य<span style="color: red;">*</span></label>
                                <input class="form-control" type="date" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School Medium<br />
                                    स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2" data-live-search="true">
                                    <option value="0">Select</option>
                                    <option value="19">19-English</option>
                                    <option selected value="04">04-Hindi</option>
                                    <option value="18">18-Urdu</option>
                                    <option value="10">10-Marathi</option>
                                    <option value="99">99-Other</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Minority Community
                                    <br />
                                    अल्पसंख्यक समुदाय का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="1-Muslim">1-Muslim</option>
                                    <option value="2-Sikh">2-Sikh</option>
                                    <option value="3-Jain">3-Jain</option>
                                    <option value="4-Christian">4-Christian</option>
                                    <option value="5-Parsi">5-Parsi</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School Shift<br />
                                    स्कूल शिफ्ट का चयन करें <span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Morning">Morning</option>
                                    <option value="Afternoon">Afternoon</option>
                                    <option value="Both">Both</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Is School Residential<br />
                                    क्या विद्यालय आवासीय है का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Yes">Yes</option>
                                    <option selected="selected" value="No">No</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Special School<br />
                                    विशेष विद्यालय का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="CM Rise">01-CM Rise School</option>
                                    <option value="Model School">02-Model School</option>
                                    <option value="CM Rise / Model (Both) School">03-CM Rise / Model (Both) School	</option>
                                    <option value="District Excellence School">04-District Excellence School</option>
                                    <option value="Block Excellence School">05-Block Excellence School	</option>
                                    <option value="PM Shri School">06-PM Shri School</option>
                                    <option value="CWSN School">07-CWSN School</option>



                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select JSK<br />
                                    जेएसके का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School Status<br />
                                    स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Functional">Functional</option>
                                    <option value="Closed">Closed</option>
                                    <option value="Merged">Merged</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Attach<br />
                                    हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Yes">Yes</option>
                                    <option selected value="No">No</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                                <label>
                                    IsActive<br />
                                    सक्रिय है
         <i style="color: red;">*</i></label>
                                <asp:CheckBox Checked="true" runat="server" />
                            </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>School Address Information / स्कूल के पते की जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Division
                                    <br />
                                    प्रभाग का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                                <label>
                                    Select District<br />
                                    जिला चुनें<span style="color: red">*</span></label>
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Block<br />
                                    ब्लॉक चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2">
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
                                <label>
                                    Select Parliament<br />
                                    संसद का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
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
                                <label>
                                    Select Assembly (Vidhansabha)<br />
                                    विधानसभा का चयन करें <span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Govindpura">Govindpura</option>
                                    <option value="Huzur">Huzur</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Area (Urban/Rural)<br />
                                    क्षेत्र चुनें (शहरी/ग्रामीण) <span style="color: red;">*</span></label>
                                <select class="form-control select2" id="dropdown" onchange="showHideDiv()">
                                    <option value="3">-Select-</option>
                                    <option value="1">Urban</option>
                                    <option value="2">Rural</option>
                                </select>
                            </div>
                        </div>
                        <div id="divnagarnigam" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Nagar Nigam<br />
                                    नगर निगम का चयन करें<span style="color: red">*</span></label>
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
                        <div id="divnagarpalika" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Nagar Palika<br />
                                    नगर पालिका का चयन करें<span style="color: red">*</span></label>
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
                        <div id="divward" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Ward No./Name<br />
                                    वार्ड क्रमांक/नाम<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Ward No./Name" />

                            </div>
                        </div>
                        <div id="divZilapanchayat" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select District Panchayat<br />
                                    जिला पंचायत का चयन करें<span style="color: red">*</span></label>
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
                        <div id="divjanpad" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Janpad Panchayat<br />
                                    जनपद पंचायत का चयन करें<span style="color: red">*</span></label>
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
                        <div id="divgram" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Gram Panchayat<br />
                                    ग्राम पंचायत का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                        <div id="divvillage" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Village<br />
                                    गांव का चयन करें<span style="color: red">*</span></label>
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
                        <div id="divhabitation" class="col-md-3">
                            <div class="form-group">
                                <label>Select Habitation<br />आवास का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="-Select-">-Select-</option>
                                    <option value="Berasia">Berasia</option>

                                </select>
                            </div>
                        </div>
                        <div id="divdistance" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Habitation to School (By Air)<br />
                                    स्कूल तक आवास (हवाई मार्ग से)<span style="color: red">*</span></label>
                                <input type="text" placeholder="Enter Distance in Meter" class="form-control" />
                            </div>
                        </div>
                        <div id="divdistanceByRoad" class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Habitation to School (By Road)<br />
                                    स्कूल तक आवास (सड़क मार्ग से)<span style="color: red">*</span></label>
                                <input type="text" placeholder="Enter Distance in Meter" class="form-control" />

                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Address (Line 1)<br />
                                    पता (1)<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Address (Line 1)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Address (Line 2)<br />
                                    पता (2)<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Address (Line 2)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Pincode<br />
                                    पिन कोड<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Pincode" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset data-select2-id="105">
                    <legend>Sankul Information / संकुल सूचना</legend>
                    <div class="row" data-select2-id="104">
                        <div class="col-md-3" data-select2-id="103">
                            <div class="form-group" data-select2-id="102">
                                <label class="control-label" for="SankulId">Select Sankul/AEO Code<br />संकुल/एईओ कोड चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2 select2-hidden-accessible" id="SankulId" name="SankulId" data-select2-id="SankulId" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="109">Select</option>
                                    <option value="4" data-select2-id="113"></option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label">
                                    Board Type<br />
                                    बोर्ड का प्रकार<span style="color: red">*</span></label>
                                <input id="SankulBoardType" class="form-control valid" readonly aria-invalid="false">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label">
                                    Management Group<br />
                                    प्रबंधन समूह<span style="color: red">*</span></label>
                                <input id="SankulManagementGroup" readonly class="form-control">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label">
                                    Management Group Details<br />
                                    प्रबंधन समूह विवरण<span style="color: red">*</span></label>
                                <input id="SankulManagementGroupDetails" readonly class="form-control">
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>School Contact Details / स्कूल संपर्क विवरण</legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School Head Type<br />
                                    स्कूल प्रमुख प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-Head Master / Principal ">1-Head Master / Principal </option>
                                    <option value="2-Asst. head Master  / VP">2-Asst. head Master  / VP</option>
                                    <option value="3-Acting Head Teacher ">3-Acting Head Teacher </option>
                                    <option value="4-Other">4-Other</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Unique Id<br />
                                    कर्मचारी यूनिक आई.डी<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Employee Unique ID" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name<br />
                                    कर्मचारी का नाम<span style="color: red;"> *</span></label>
                                <input type="text" class="form-control" placeholder="Enter Employee Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Employee Designation<br />
                                    कर्मचारी पदनाम चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-Head Master / Principal ">1-Head Master / Principal </option>
                                    <option value="2-Asst. head Master  / VP">2-Asst. head Master  / VP</option>
                                    <option value="3-Acting Head Teacher ">3-Acting Head Teacher </option>
                                    <option value="4-Other">4-Other</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Mobile Number<br />
                                    कर्मचारी मोबाइल नंबर <span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Employee Mobile No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Email ID<br />
                                    कर्मचारी ईमेल आई.डी<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Employee Email ID" />
                            </div>
                        </div>



                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Landline Number<br />
                                    स्कूल का लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Landline No." />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Email ID<br />
                                    स्कूल ईमेल आई.डी<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Email ID" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Website<br />
                                    स्कूल की वेबसाइट<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter School Website" />
                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>School Bank Details / स्कूल बैंक विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Bank Type<br />
                                    बैंक प्रकार चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2 " id="BankTypeId1" name="BankTypeId" data-select2-id="BankTypeId" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="64">Select</option>
                                    <option value="1" data-select2-id="147">Public Sector Commercial Banks</option>
                                    <option value="2" data-select2-id="148">Private  Sector  Commercial Banks</option>
                                    <option value="3" data-select2-id="149">Regional Rural Banks</option>
                                    <option value="4" data-select2-id="150">Co-operative Banks</option>
                                    <option value="5" data-select2-id="151">Small Finance Banks</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select IFSC Code<br />
                                    IFSC कोड चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="">--Select--</option>
                                    <option value="SBIN0001308">SBIN0001308</option>
                                    <option value="SBIN0003099">SBIN0003099</option>
                                    <option value="HDFC0000062">HDFC0000062</option>
                                    <option value="UBIN0532525">UBIN0532525</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Bank Name<br />
                                    बैंक का नाम चुनें<span style="color: red;">*</span></label>
                                <%--<input type="text" class="form-control" placeholder="Enter Bank Name" />--%>
                                <select class="form-control select2">
                                    <option value="">--Select--</option>
                                    <option value="sbi">State Bank of India (SBI)</option>
                                    <option value="boi">Bank of India (BOI)</option>
                                    <option value="central_bank">Central Bank of India</option>
                                    <option value="union_bank">Union Bank of India</option>
                                    <option value="hdfc">HDFC Bank</option>
                                </select>

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Account Number<br />
                                    खाता संख्या<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Account No." />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>School Geographical Data / स्कूल भौगोलिक डेटा</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Latitude<br />
                                    अक्षांश<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Latitude" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Longitude<br />
                                    देशांतर <span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Longitude" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <hr />
                <div class="row ">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-rounded">Save</button>
                        <a href="Mst_SchoolRegistration.aspx" class="btn w-lg btn-danger btn-rounded">Clear</a>
                    </div>
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
        }
    </script>
    <script>
        $(".your-selector").datepicker({
            format: "yyyy",
            viewMode: "years",
            minViewMode: "years"
        });
    </script>
</asp:Content>

