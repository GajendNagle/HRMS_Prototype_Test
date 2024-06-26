<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentInfo.aspx.cs" Inherits="mis_Student_StudentInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        #btn1:hover {
            background-color: var(--vz-primary) !important;
            color: white !important;
        }

        #btn1 {
            border: 1px solid var(--vz-primary) !important;
        }

        .form-control:read-only {
            background-color: #fff !important;
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
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                        <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                            <span>ACR</span></a>
                    </li>--%>
                        <li class="breadcrumb-item"><span>Student Registration</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 mb-2">

        <button id="BtnBack" class="btn-info rounded-2" type="button" onclick="Backclickfn()" style="position: relative; left: 950px;">BACK</button>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Student Registration /छात्र पंजीकरण 
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">


            <div id="show">
                <fieldset>
                    <legend>General Information/सामान्य जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Student  Name (English)<br />

                                    छात्र का नाम (अंग्रेजी में)<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Student  Name (English)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter  Student  Name (Hindi)<br />

                                    छात्र का नाम (हिंदी में)<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder=" Enter  Student  Name (Hindi)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Gender<br />
                                    लिंग<span style="color: red">*</span></label>
                                <select class="form-control" placeholder="Female">
                                    <option>Select</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter   Date of Birth<br />
                                    जन्म तिथि<span style="color: red">*</span></label>
                                <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Category<br />
                                    वर्ग<span style="color: red">*</span></label>
                                <select class="form-control select2">

                                    <option value="Select">Select</option>
                                    <option value="Bhopal">General</option>
                                    <option value="Bhopal">OBC</option>
                                    <option value="Bhopal">SC</option>
                                    <option value="Bhopal">ST</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">

                                <label>
                                    Select  Caste<br />
                                    जाति<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="Select">Select</option>
                                    <option value="Bhopal">Hindu</option>
                                    <option value="Bhopal">Muslim</option>
                                    <option value="Bhopal">Sikh</option>
                                    <option value="Bhopal">Christian</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Father Name 
                                <br />

                                    पिता का नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder=" Enter Fater Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter  Mother Name 
                                <br />
                                    माता का नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter  Mother Name " />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter  Mobile No<br />
                                    मोबाइल नंबर<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Mobile No" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select   BPL<br />
                                    गरीबी रेखा से नीचे<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="Select">Select</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select  Disability
                                <br />
                                    विकलांग<span style="color: red">*</span></label>
                                <select id="options" class="form-control select2" onchange="myFunction3()">
                                    <option value="0">Select</option>
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3 hidden" id="hiddenElement" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select   Disability type<br />
                                    विकलांगता प्रकार
                                <span style="color: red">*</span></label>
                                <select id="ddlHandicappedType" class="form-control select2">
                                    <option>Select</option>
                                    <option value="Cancer/ कैंसर">Blindnes/अंधापन</option>
                                    <option value="Low Vision/कम दृष्टि">Low Vision/कम दृष्टि</option>
                                    <option value="Hearing Impaiment/ श्रवण हानि">Hearing Impaiment/ श्रवण हानि</option>
                                    <option value="Speech and Language / वाणी और भाषा">Speech  Language / वाणी और भाषा</option>
                                    <option value="Loco Moto Disability / लोको मोटो विकलांगता">Loco Moto Disability / लोको मोटो विकलांगता</option>
                                    <option value="Mental Illness /मानसिक बिमारी">Mental Illness /मानसिक बिमारी</option>
                                    <option value="Specipic Illness /विशिष्ट बीमारी">Specipic Illness /विशिष्ट बीमारी</option>
                                    <option value="Intellectual Disability / बौद्धिक विकलांगता">Intellectual Disability / बौद्धिक विकलांगता</option>
                                    <option value="Leprosy Cured Person /कुष्ठ रोग से ठीक हुआ व्यक्ति">Leprosy Cured Person /कुष्ठ रोग से ठीक हुआ व्यक्ति</option>
                                    <option value="Autism Spectrum Disorder /ऑटिज्म स्पेक्ट्रम डिस्ऑर्डर">Autism Spectrum Disorder /ऑटिज्म स्पेक्ट्रम डिस्ऑर्डर</option>
                                    <option value="Multiple Disability / एकाधिक विकलांगता">Multiple Disability / एकाधिक विकलांगता</option>
                                    <option value="Cerebral Palsy / मस्तिष्क पक्षाघात">Cerebral Palsy / मस्तिष्क पक्षाघात</option>
                                    <option value="Dwarfism / बौनापन">Dwarfism / बौनापन</option>
                                    <option value="Muscular Dystrophy">Muscular Dystrophy</option>
                                    <option value="Chronic Disease / मांसपेशीय दुर्विकास">Chronic Disease / मांसपेशीय दुर्विकास</option>
                                    <option value="Multiple Sclerosis / मल्टीपल स्क्लेरोसिस">Multiple Sclerosis / मल्टीपल स्क्लेरोसिस</option>
                                    <option value="Thalassemia / थैलेसीमिया">Thalassemia / थैलेसीमिया</option>
                                    <option value="Hemophilia / हीमोफीलिया">Hemophilia / हीमोफीलिया</option>
                                    <option value="Sickle Cell Disease / सिकल सेल रोग">Sickle Cell Disease / सिकल सेल रोग</option>
                                    <option value="Acid Attack Victim / एसिड अटैक पीड़िता">Acid Attack Victim / एसिड अटैक पीड़िता</option>
                                    <option value="Parkinson's Disease / पार्किंसंस रोग">Parkinson's Disease / पार्किंसंस रोग</option>
                                </select>
                            </div>
                        </div>
                        <div id="HandicapePercentage" class="col-md-3" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select  Handicapped Percentage 
     <br />
विकलांग प्रतिशत<span style="color: red">*</span></label>
विकलांग प्रतिशत<span style="color: red">*</span></label>
                                <select id="ddlHandicappedPercentage" class="form-control select2">
                                    <option>Select</option>
                                    <option value="40 to 50">41 to 50</option>
                                    <option value="51 to 60">51 to 60</option>
                                    <option value="61 to 70">61 to 70</option>
                                    <option value="71 to 80">71 to 80</option>
                                    <option value="81 to 90">81 to 90</option>
                                    <option value="91 to 100">1  to 100</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Address Information/
पता की जानकारी</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select  State Name<br />
                                    राज्य नाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="Select">Select</option>
                                    <option value="Bhopal">Madhya Pradesh</option>
                                    <option value="Bhopal">Chhattisgarh</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Nagaland">Nagaland</option>
                                    <option value="Nashik">Nashik</option>
                                    <option value="West">West</option>
                                    <option value="Bengal">Bengal</option>
                                    <option value="Telangana">Telangana</option>
                                    <option value="Assam">Assam</option>
                                    <option value="Tripura">Tripura</option>
                                    <option value="Tamil">Tamil</option>
                                    <option value="Nadu">Nadu</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Sikkim">Sikkim</option>
                                    <option value="Andhra">Andhra Pradesh</option>
                                    <option value="Uttar">Uttar Pradesh</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Meghalaya">Meghalaya</option>
                                    <option value="Uttarakhand">Uttarakhand</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Mizoram">Mizoram</option>
                                    <option value="Arunachal">Arunachal Pradesh</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Himachal">Himachal</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Orissa">Orissa</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select   Division Name
                                    <br />
                                    संभाग नाम
                                </label>
                                <select class="form-control select2">

                                    <option value="Select">Select</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Ujjain">Ujjain</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Chambal">Chambal</option>
                                    <option value="Shahdol">Shahdol</option>
                                    <option value="Hoshangabad">Hoshangabad</option>
                                    <option value="Narmadapuram">Narmadapuram</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select    District Name<br />
                                    ज़िला नाम<span style="color: red">*</span></label>
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
                                    Select Block  Name
                                    <br />
                                    विकासखण्ड नाम <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl03" class="form-control select2">

                                    <option value="Select">Select</option>
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
                                    Enter Village Name<br />
                                    गाँव नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="  Enter Village" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                    Enter  Address
                                    <br />
                                    पता <span style="color: red">*</span></label>
                                <textarea class="form-control  w-100"
                                    placeholder=" Enter  Address" rows="1" autocomplete="off"></textarea>
                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Family Other Information/परिवार अन्य जानकारी</legend>

                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select   Is Vimukti<br />

                                    विमुक्ति है<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option>Select</option>
                                    <option>YES</option>
                                    <option>NO</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select    Is Single Child<br />
                                    भाई बहन की संख्या<span style="color: red">*</span></label>
                                <select id="child" name="ctl00$ContentBody$ctl02" class="form-control select2" onchange="myFunction4()">
                                    <option value="0">Select</option>
                                    <option value="1">YES</option>
                                    <option value="2">NO</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="Sibling" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select    No Of Sibling's<br />
                                    भाई बहन की संख्या<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option>Select</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select  Fatherless<br />

                                    पितृहीन <span style="color: blue; font-size: 12px;">(पिता की ना होने की 
स्थिति में )</span><span style="color: red">*</span></label>
                                <select id="Fatherless" name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">YES</option>
                                    <option value="2">NO</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    EnterFamily /Father Occupation
                                    <br />
                                    परिवार/पिता का व्यवसाय <span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Family Samagra ID" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Family Income(Yearly)<br />
                                    पारिवारिक  वार्षिक आय <span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Family Income" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Previous Acedemic Information/पिछली शैक्षणिक जानकारी</legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select   School UDICE Code<br />
                                    स्कूल डीआईएसई कोड</label>
                                <%-- <select id="ddlSchoolDise" class="form-control select2" onchange="myFunction7()">
                                    <option>Select</option>
                                    <option>23320400117-GOVT HSS AHAMDABAD</option>
                                    <option>23320303134-GOVT HSS KHAJURI KALAN</option>
                                    <option>23320212709-GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</option>
                                    <option>23320110008-GOVT HSS GUNGA</option>
                                    <option>23340101207-M.P. CONVENT BADI</option>
                                    <option>23340202202-GMS BERKHEDI BARAMAD GADHI</option>
                                    <option>23340300401-UEGS KUSNAGAR AMGAWAN</option>
                                    <option>23340402101-GGPS BAMULIYA DANGI</option>
                                    <option>23340502509-GHSS BANGAWAN</option>
                                    <option>23340603802-GAYANDEEP M S CHANDAN PIPALIYA</option>
                                </select>--%>
                                <input id="ddlSchoolDise" class="form-control" autocomplete="off" placeholder="Enter School Dise Code" onchange="myFunction7()" />
                            </div>
                        </div>
                        <div class="col-md-3" id="school" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select School Name<br />
                                    स्कूल  का नाम</label>
                                <select class="form-control  ">

                                    <option>GOVT HSS AHAMDABAD</option>
                                    <option>GOVT HSS KHAJURI KALAN</option>
                                    <option>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</option>
                                    <option>GOVT HSS GUNGA</option>
                                    <option>M.P. CONVENT BADI</option>
                                    <option>GMS BERKHEDI BARAMAD GADHI</option>
                                    <option>UEGS KUSNAGAR AMGAWAN</option>
                                    <option>GGPS BAMULIYA DANGI</option>
                                    <option>GHSS BANGAWAN</option>
                                    <option>GAYANDEEP M S CHANDAN PIPALIYA</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Class<br />
                                    कक्षा<span style="color: red">*</span></label>
                                <select class="form-control select2" id="class" onchange="myFunction5()">
                                    <option value="0">Select</option>
                                    <option value="1">1st Class</option>
                                    <option value="2">2nd Class</option>
                                    <option value="3">3rd Class</option>
                                    <option value="4">4th Class</option>
                                    <option value="5">5th Class</option>
                                    <option value="6">6th Class</option>
                                    <option value="7">7th Class</option>
                                    <option value="8">8th Class</option>
                                    <option value="9">9th Class</option>
                                    <option value="10">10th Class</option>
                                    <option value="11">11th Class</option>
                                    <option value="12">12th Class</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="subject" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select Subject<br />

                                    विषय<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Biology</option>
                                    <option value="2">Mathematics </option>
                                    <option value="3">Commerce</option>
                                    <option value="4">Arts</option>


                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select  Percentage<br />
                                    प्रतिशत<span style="color: red">*</span>
                                </label>
                                <select id="percentage" name="percentage" class="form-control select2">
                                    <option>Select</option>
                                    <option value="0">0%</option>
                                    <option value="10">10%</option>
                                    <option value="20">20%</option>
                                    <option value="30">30%</option>
                                    <option value="40">40%</option>
                                    <option value="50">50%</option>
                                    <option value="60">60%</option>
                                    <option value="70">70%</option>
                                    <option value="80">80%</option>
                                    <option value="90">90%</option>
                                    <option value="100">100%</option>
                                </select>

                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Current Acedemic Information/वर्तमान अकादमिक जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Class<br />
                                    कक्षा<span style="color: red">*</span></label>
                                <select class="form-control select2" id="class1" onchange="myFunction6()">
                                    <option value="0">Select</option>
                                    <option value="1">1st Class</option>
                                    <option value="2">2nd Class</option>
                                    <option value="3">3rd Class</option>
                                    <option value="4">4th Class</option>
                                    <option value="5">5th Class</option>
                                    <option value="6">6th Class</option>
                                    <option value="7">7th Class</option>
                                    <option value="8">8th Class</option>
                                    <option value="9">9th Class</option>
                                    <option value="10">10th Class</option>
                                    <option value="11">11th Class</option>
                                    <option value="12">12th Class</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="subject1" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select Subject<br />

                                    विषय<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Biology</option>
                                    <option value="2">Mathematics </option>
                                    <option value="3">Commerce</option>
                                    <option value="4">Arts</option>


                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Student Bank Account Information/

छात्र बैंक खाते की जानकारी</legend>
                    <div class="row">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter IFSC Code<br />
                                    आई.एफ.एस.सी कोड<span style="color: red">*</span></label>
                                <input class="form-control " id="IFSC" placeholder="Enter IFSC Code" autocomplete="off" onchange="myFunction8()" />
                                <%--     <option value="0">Select</option>
                                    <option value="1">SBIN0051467</option>
                                    <option value="2">ORBC0101947</option>
                                    <option value="3">CBIN0287003</option>
                                    <option value="4">CBIN0284742</option>
                                    <option value="4">CBIN0281071</option>


                                </inpute>--%>
                            </div>
                        </div>
                        <div class="col-md-3" style="display: none;" id="bankname">
                            <div class="form-group">
                                <label>
                                    Bank Name<br />
                                    बैंक का नाम<span style="color: red">*</span></label>
                                <input class="form-control " placeholder="STATE BANK OF INDIA BHOPAL" autocomplete="off" />
                                <%-- <option value="0">Select</option>
             <option value="1">STATE BANK OF INDIA BHOPAL</option>
             <option value="2">ORIENTAL BANK OF COMMERCE BHOPAL </option>
             <option value="3">CENTRAL BANK OF INDIA HOSHANGABAD</option>
             <option value="4">CENTRAL BANK OF INDIA BABAI</option>
             <option value="4">CENTRAL BANK OF INDIA BETUL</option>--%>
                            </div>
                        </div>
                        <div class="col-md-3" style="display: none;" id="Branch">
                            <div class="form-group">
                                <label>
                                    Branch<br />
                                    शाखा<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Account No.<br />
                                    खाता नंबर<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Account No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Account Holder Name<br />
                                    खाता धारक का नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter  Account Holder Name" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" class="Alert-Save btn btn-success w-lg btn-border">
                                Save & Next</button>
                            <!-- Clear button (link) -->
                            <a href="StudentReg.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>

                </fieldset>
            </div>

            <div id="show1" style="display: none;">

                <fieldset>
                    <legend>Document / दस्तावेज़</legend>
                    <div class="row align-items-end">
                        <div>
                            <h5 style="font-weight: 400;">Note :<span style="color: red;">Please upload a PDF or JPG file that is less than 700 KB in size.</span></h5>
                        </div>
                    </div>
                    <div class="row align-items-end mt-4">
                        <div id="DocAppointment" class="col-md-4">
                            <label>
                                Uploade Student Photo<br />

                                छात्र फोटो अपलोड करें :
                            </label>
                        </div>
                        <div id="DocAppointment1" class="col-md-4">
                            <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocAppointment2" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>


                        </div>
                    </div>

                    <div class="row align-items-end mt-3">

                        <div class="col-md-4" style="display: none;" id="DisCertificate">
                            <label>
                                Upload Student Disability Certificate<br />
                                छात्र विकलांगता प्रमाणपत्र अपलोड करें
 :
                            </label>
                        </div>
                        <div class="col-md-4" style="display: none;" id="file">
                            <input type="file" id="fileInput3" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4" style="display: none;" id="eye">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>


                        </div>


                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="DocCaste" class="col-md-4">
                            <label>
                                Upload Student Cast/Category Certificate<br />
                                छात्र का जाति और श्रेणी प्रमाणपत्र अपलोड करें:
                            </label>
                        </div>
                        <div id="DocCaste1" class="col-md-4">
                            <input type="file" id="fileInput2" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocCaste2" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="DocPresentpost" class="col-md-4">
                            <label>
                                Student Upload 
Transfer Certificate<br />
                                छात्र का   स्थानांतरण  प्रमाण पत्र अपलोड करें :
                            </label>
                        </div>
                        <div id="DocPresentpost1" class="col-md-4">
                            <input type="file" id="fileInput4" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocPresentpost2" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="Dochandicapped" class="col-md-4">
                            <label>
                                Upload  Student   Bank Passbook
                                <br />
                                छात्र का बैंक पासबुक  अपलोड करें :
                            </label>
                        </div>
                        <div id="Dochandicapped1" class="col-md-4">
                            <input type="file" id="fileInput6" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="Dochandicapped2" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="CriticalIllness" class="col-md-4">
                            <label>
                                Upload Family Income Proof<br />
                                पारिवारिक आय प्रमाण अपलोड करें:
                            </label>
                        </div>
                        <div id="CriticalIllness1" class="col-md-4">
                            <input type="file" id="fileInput010" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="CriticalIllness3" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>

                </fieldset>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="StudentReg.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
    <script>    function myFunction1() {
            document.getElementById('customRadio1').style.display = "block";
            document.getElementById('StudentSamagraID').style.display = "block";
            document.getElementById('familySamagraID').style.display = "none";

        }</script>
    <script> 
        function myFunction2() {
            document.getElementById('customRadio1').style.display = "block";
            document.getElementById('StudentSamagraID').style.display = "block";
            document.getElementById('familySamagraID').style.display = "block";

        }</script>
    <script> 
        function myFunction3() {
            var ForwordTo = document.getElementById("options").value;
            if (ForwordTo == "1") {
                document.getElementById('hiddenElement').style.display = "block";
                document.getElementById('HandicapePercentage').style.display = "block";
                document.getElementById('DisCertificate').style.display = "block";
                document.getElementById('eye').style.display = "block";
                document.getElementById('file').style.display = "block";
            } else {
                document.getElementById('hiddenElement').style.display = "none";
                document.getElementById('HandicapePercentage').style.display = "none";
                document.getElementById('DisCertificate').style.display = "none";
                document.getElementById('eye').style.display = "none";
                document.getElementById('file').style.display = "none";
            }
        }</script>
    <script>
        function myFunction4() {
            var forwardTo = document.getElementById("child").value;
            if (forwardTo === "2") {
                document.getElementById('Sibling').style.display = "block";
            } else {
                document.getElementById('Sibling').style.display = "none";
            }
        }
</script>
    <script>
        function myFunction5() {
            var forwardTo = document.getElementById("class").value;
            if (forwardTo === "11") {
                document.getElementById('subject').style.display = "block";
            }
            else if (forwardTo === "12") {
                document.getElementById('subject').style.display = "block";
            }
            else {
                document.getElementById('subject').style.display = "none";
            }
        }
</script>
    <script>
        function myFunction6() {
            var forwardTo = document.getElementById("class1").value;
            if (forwardTo === "11") {
                document.getElementById('subject1').style.display = "block";
            }
            else if (forwardTo === "12") {
                document.getElementById('subject1').style.display = "block";
            }
            else {
                document.getElementById('subject1').style.display = "none";
            }
        }
</script>



    <%--<script>
         function myFunction() {
             var x = document.getElementById("show");
             if (x.style.display === "none") {
                 x.style.display = "block";
             } else {
                 x.style.display = "block";
             }
         }
     </script>--%>
    <script>
        function DivHide() {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var showDiv = document.getElementById("show"); // Assuming your div id is "show"

            if (checkbox1.checked) {
                showDiv.style.display = "block"; // Show the div
            } else if (checkbox2.checked) {
                // Redirect to StudentInfo.aspx when checkbox2 is checked
                window.location.href = 'StudentInfo.aspx';
            } else {
                showDiv.style.display = "none"; // Hide the div if neither radio is checked
            }
        }
    </script>

    <script>
        debugger;
        $(document).ready(function () {
            "use strict";

            var SweetAlert = function () { };

            // Initialize SweetAlert function
            SweetAlert.prototype.init = function () {
                // Handle click event for .Alert-Save class
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Send this record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000,
                            }).then(() => {
                                document.getElementById('show1').style.display = "block";
                            });

                            // Manipulate element displays after success
                            document.getElementById('show1').style.display = "block";
                            document.getElementById('show').style.display = "none";
                            /*   document.getElementById('show2').style.display = "none";*/
                        }
                    });
                });
            }

            // Initialize SweetAlert
            var sweetAlert = new SweetAlert();
            sweetAlert.init();
        });
    </script>
    <script>
        function Backclickfn() {
            var show = document.getElementById('show');
            var show1 = document.getElementById('show1');


            //if (show.style.display === 'block') {
            //    show.style.display = 'none';
            //   /* show2.style.display = 'block';*/
            //    BtnBack.style.display = 'none';
            //    show1.style.display = 'none';
            //    // Ensure to hide show2 if necessary
            //} else if (show1.style.display === 'block') {
            if (show1.style.display === 'block') {
                show1.style.display = 'none';
                show.style.display = 'block';
                /* show2.style.display = 'none'; */// Ensure to hide show2 if necessary
            } else {
                window.location.href = 'StudentReg.aspx'; // Redirect if neither show nor show1 is displayed
            }
        }
    </script>

    <script>
        function myFunction7() {
            var selectedValue = document.getElementById("ddlSchoolDise").value;
            var schoolDiv = document.getElementById('school');

            if (selectedValue !== "") {
                schoolDiv.style.display = "block"; // Show the div
            } else {
                schoolDiv.style.display = "none"; // Hide the div
            }
        }
    </script>
    <script>
        function myFunction8() {
            var selectedValue = document.getElementById("IFSC").value;
            var branchDiv = document.getElementById('Branch');
            var bankNameDiv = document.getElementById('bankname');

            if (selectedValue !== "") {
                branchDiv.style.display = "block"; // Show the Branch div
                bankNameDiv.style.display = "block"; // Show the bankname div
            } else {
                branchDiv.style.display = "none"; // Hide the Branch div
                bankNameDiv.style.display = "none"; // Hide the bankname div
            }
        }
    </script>


</asp:Content>
