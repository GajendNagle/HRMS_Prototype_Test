<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentReg.aspx.cs" Inherits="mis_Student_StudentReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        #btn2:hover {
            background-color: var(--vz-primary) !important;
            color: white !important;
        }

        #btn2 {
            border: 1px solid var(--vz-primary) !important;
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


    <%--  <div class="col-md text-end">
              <div class="form-group">

    <button id="BtnBack" class="btn-info rounded-2" type="button" onclick="Backclickfn()" style=" display:none;">BACK</button>
</div>
        </div>--%>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-10">
                    <h5 class="card-title">Student Registration /विद्यार्थी  पंजीकरण 
                    </h5>
                </div>
                <div class="col-lg-2 text-end " id="BtnBack" style="display: none;">
                    <button class="btn btn-primary btn-label waves-effect waves-light rounded-pill" type="button" onclick="Backclickfn()"><i class="ri-arrow-go-back-line label-icon align-middle fs-14 me-1"></i>BACK</button>
                </div>

            </div>
        </div>
        <div class="card-body">

            <div id="show2">

                <fieldset>
                    <legend>Student Registration/विद्यार्थी  पंजीकरण</legend>

                    <div class="row align-items-end">
                        <%--<div class="col-md-3">
                            <div class="form-group">--%>
                        <%--  <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio1" name="customRadio" class="form-check-input" onclick="myFunction1()">--%>
                        <%-- <label class="form-check-label" for="customRadio1">
                                        With Student Samagra ID<br />
                                        विद्यार्थी समग्र आईडी के साथ<span style="color: red">*</span></label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio2" name="customRadio" class="form-check-input" onclick="myFunction2()">
                                    <label class="form-check-label" for="customRadio11">
                                        With Family Samagra ID<br />
                                        परिवार समग्र आईडी के साथ<span style="color: red">*</span></label>
                                </div>
                            </div>
                        </div>--%>
                        <div class="col-md-3" id="StudentSamagraID">
                            <div class="form-group">
                                <label>
                                    Enter Student  Samagra ID<br />
                                    विद्यार्थी समग्र आईडी
        <span style="color: red">*</span>
                                </label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Student  Samagra ID" id="StudentSsm" required />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3" id="familySamagraID" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Enter Family Samagra ID<br />
                                    परिवार समग्र आईडी<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Family Samagra ID" />
                            </div>
                        </div>
                        <div class="col-md-3" id="StudentSamagraID1" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Enter Student  Samagra ID<br />
                                    विद्यार्थी समग्र आईडी
                               <span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Student  Samagra ID" />
                            </div>
                        </div>


                        <div class="col-md-12">
                            <input id="checkbox2" onclick="showhidesavebtn3()" type="checkbox" />
                            <span class="text-danger fw-bold fs-5">विधार्थी की जानकारी समग्र पोर्टल से  
लाने के लिये चेक बॉक्स पर क्लिक करे ।</span>
                        </div>

                    </div>
                    <hr />
                    <div class="col-md-12" style="display: none;" id="search">
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" class="btn btn-success w-lg btn-border" onclick="DivHide()" id="btn1">
                                Search</button>
                            <!-- Clear button (link) -->
                            <a href="StudentReg.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>

                </fieldset>

                <div id="show" style="display: none;">
                    <fieldset>
                        <legend>General Information/सामान्य जानकारी</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Family Samagra ID<br />
                                        परिवार समग्र आईडी<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="4105209545" readonly />
                                </div>

                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Student Samagra ID<br />
                                        विद्यार्थी समग्र आईडी<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="85469545" readonly />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Student Name (English)<br />

                                        विद्यार्थी  का नाम (अंग्रेजी में)<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Riya Gupta" readonly />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Student  Name (Hindi)<br />

                                        विद्यार्थी  का नाम (हिंदी में)<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="रिया गुप्ता" readonly />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Gender<br />
                                        लिंग<span style="color: red">*</span></label>
                                    <select class="form-control" placeholder="Female" readonly="true">
                                        <option>Female</option>
                                        <%--<option>Select</option>
                                    <option>Male</option>
                                    <option>Female</option>--%>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Date of Birth<br />
                                        जन्म तिथि<span style="color: red">*</span></label>
                                    <input name="ename" id="DOB" <%--type="date"--%> class="form-control" autocomplete="off" placeholder="07/11/2002" readonly />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Category<br />
                                        श्रेणी<span style="color: red">*</span></label>
                                    <select class="form-control" readonly="true">
                                        <option value="Bhopal">OBC</option>
                                        <%-- <option value="Select">Select</option>
                                    <option value="Bhopal">General</option>
                                    <option value="Bhopal">OBC</option>
                                    <option value="Bhopal">SC</option>
                                    <option value="Bhopal">ST</option>--%>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">

                                    <label>
                                        Religion<br />
                                        धर्म<span style="color: red">*</span></label>
                                    <select class="form-control" readonly="true">
                                        <%--<option value="Select">Select</option>--%>
                                        <option value="Bhopal">Hindu</option>
                                        <%--  <option value="Bhopal">Muslim</option>
                                    <option value="Bhopal">Sikh</option>
                                    <option value="Bhopal">Christian</option>--%>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Father's Name 
                                <br />

                                        पिता का नाम<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Ram Gupta" readonly />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Mother's  Name 
                                <br />

                                        माता का नाम<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Nikita Gupta" readonly />
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Mobile No<br />
                                        मोबाइल नंबर<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="8956231478" readonly />
                                </div>
                            </div>
                         
                            <div class="col-md-3">

                                <div class="form-group">
                                    <label>
                                        Select BPL<br />
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

                                        विकलांगता का चयन करें<span style="color: red">*</span></label>
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
                                        विकलांगता का प्रकार
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
                                        विकलांगता का प्रतिशत<span style="color: red">*</span></label>
                                    <select id="ddlHandicappedPercentage" class="form-control select2">
                                        <option>Select</option>
                                        <option value="40 to 50">41 to 50</option>
                                        <option value="51 to 60">51 to 60</option>
                                        <option value="61 to 70">61 to 70</option>
                                        <option value="71 to 80">71 to 80</option>
                                        <option value="81 to 90">81 to 90</option>
                                        <option value="91 to 100">91  to 100</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Is there a Freed/Nomadic/Semi-Nomadic Caste
                                    <br />
                                        क्या विमुक्त/घुमक्कड़/अर्ध घुमक्कड़ जाति है <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option>Select</option>
                                        <option value="40 to 50">विमुक्त </option>
                                        <option value="51 to 60">घुमक्कड़</option>
                                        <option value="61 to 70">अर्ध घुमक्कड़</option>
                                        <option value="71 to 80">इनमें से कोई नहीं है</option>
                                    </select>
                                </div>
                            </div>
                        </div>


                    </fieldset>
                </div>
                <fieldset>
                    <legend>General Information/सामान्य जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Family Samagra ID<br />
                                    परिवार समग्र आईडी दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Family Samagra ID" />
                            </div>

                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Student Samagra ID<br />
                                    विद्यार्थी समग्र आईडी दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Student Samagra ID" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Student Name (English)<br />

                                    विद्यार्थी  का नाम (अंग्रेजी में) दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Student Name (English)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Student  Name (Hindi)<br />

                                    विद्यार्थी  का नाम (हिंदी में) दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Student  Name (Hindi)" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Gender<br />
                                    लिंग चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2" placeholder="Female">

                                    <option>Select</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter  Date of Birth<br />
                                    जन्म तिथि दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Category<br />
                                    श्रेणी<span style="color: red">*</span></label>
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
                                    Select Religion<br />
                                    धर्म चुनें<span style="color: red">*</span></label>
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
                                    Enter Father's Name 
                           <br />

                                    पिता का नाम दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Father's Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Mother's  Name 
                           <br />

                                    माता का नाम दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Mother's Name" />
                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Mobile No<br />
                                    मोबाइल नंबर दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Mobile No" />
                            </div>
                        </div>
                        <div class="col-md-3">

                            <div class="form-group">
                                <label>
                                    Select BPL<br />
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

                                    विकलांगता का चयन करें<span style="color: red">*</span></label>
                                <select id="options1" class="form-control select2" onchange="myFunction3()">
                                    <option value="0">Select</option>
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3 hidden" id="hiddenElement1" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select   Disability type<br />
                                    विकलांगता का प्रकार
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
                        <div id="HandicapePercentage1" class="col-md-3" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select  Handicapped Percentage 
                                <br />
                                    विकलांगता का प्रतिशत<span style="color: red">*</span></label>
                                <select id="ddlHandicappedPercentage" class="form-control select2">
                                    <option>Select</option>
                                    <option value="40 to 50">41 to 50</option>
                                    <option value="51 to 60">51 to 60</option>
                                    <option value="61 to 70">61 to 70</option>
                                    <option value="71 to 80">71 to 80</option>
                                    <option value="81 to 90">81 to 90</option>
                                    <option value="91 to 100">91  to 100</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Is there a Freed/Nomadic/Semi-Nomadic Caste
                               <br />
                                    क्या विमुक्त/घुमक्कड़/अर्ध घुमक्कड़ जाति है <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option value="40 to 50">विमुक्त </option>
                                    <option value="51 to 60">घुमक्कड़</option>
                                    <option value="61 to 70">अर्ध घुमक्कड़</option>
                                    <option value="71 to 80">इनमें से कोई नहीं है</option>
                                </select>
                            </div>
                        </div>
                    </div>


                </fieldset>

                <fieldset>
                    <legend>Address Information/पते की जानकारी</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select State Name<br />
                                    राज्य का नाम चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>select</option>
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
                                    Select  Division Name
                                    <br />
                                    संभाग  का नाम चुनें
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
                                    Select District Name<br />
                                    ज़िला  का नाम चुनें<span style="color: red">*</span></label>
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
                                    Select  Block Name
                                    <br />
                                    विकासखण्ड  का नाम चुनें<span style="color: red">*</span></label>
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
                                    Select Village Name
                                    <br />
                                    गाँव  का नाम चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2">

                                    <option value="Select">Select</option>
                                    <option value="Bhopal">Dhakraura</option>
                                    <option value="Indore">Napakhedi</option>
                                    <option value="Gwalior">Magarpat</option>
                                    <option value="Jabalpur">Patan</option>
                                    <option value="Ujjain">Chouraiya</option>
                                    <option value="Sagar">Kalkua</option>
                                    <option value="Rewa">DHIMARI</option>
                                    <option value="Chambal">HARDUA VYARMA</option>
                                    <option value="Shahdol">AMGHAT</option>
                                    <option value="Hoshangabad">KATARRA</option>
                                    <option value="Narmadapuram">Jhikri Bori</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    SelectHabitation Name
             <br />
                                    बसाहट  का नाम चुनें <span style="color: red">*</span></label>
                                <select class="form-control select2">

                                    <option value="Select">Select</option>
                                    <option value="Bhopal">Shivpuri</option>
                                    <option value="Indore">Khacrod</option>
                                    <option value="Gwalior">Magarpat</option>
                                    <option value="Jabalpur">Kosampura Saras</option>
                                    <option value="Ujjain">Saras</option>
                                    <option value="Sagar">Patan</option>
                                    <option value="Rewa">Chouraiya</option>
                                    <option value="Chambal">Kalkua</option>
                                    <option value="Shahdol">DHIMARI</option>
                                    <option value="Hoshangabad">HARDUA VYARMA</option>
                                    <option value="Narmadapuram">AMGHAT</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                    Enter  Address
                                    <br />
                                    पता <span style="color: red">*</span></label>
                                <textarea class="form-control  w-100"
                                    placeholder="  Enter  Address" rows="1" autocomplete="off"></textarea>
                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Family Other Information/परिवार की अन्य जानकारी</legend>

                    <div class="row align-items-end">
                        <%--  <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select   Is Vimukti<br />

                                    विमुक्ति है /नहीं  <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option>Select</option>
                                    <option>YES</option>
                                    <option>NO</option>
                                </select>
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Only Girl  Child<br />
                                    एकमात्र बालिका<span style="color: red">*</span></label>
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
                                    Select No Of Sibling's<br />
                                    भाई बहन की संख्या<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option>Select</option>

                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <%--  <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>--%>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Is  Father Dead ?<br />
                                    क्या पिता स्वर्गवासी हैं ?  <span style="color: red">*</span></label>
                                <select id="Fatherless" name="ctl00$ContentBody$ctl02" class="form-control select2" onchange="myFunction10()">
                                    <option value="0">Select</option>
                                    <option value="1">YES</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="Unparented" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Are the Students Unparented ?<br />
                                    क्या विद्यार्थी अनाथ हैं ?   <span style="color: red">*</span>
                                </label>
                                <select id="orphanSelect" name="ctl00$ContentBody$ctl02" class="form-control select2" onchange="toggleGuardianField(); ">
                                    <option value="0">Select</option>
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                        </div>


                        <div id="guardianField" class="col-md-3" style="display: none;">
                            <div class="form-group">
                                <label>
                                  Enter Name of Guardian<br />
                                    पालक का नाम दर्ज करे   <span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Name of Guardian" />
                            </div>
                        </div>
                        <div class="col-md-3" id="fatherDis" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select Father  Disability<br />
                                    पिता की विकलांगता का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2" >
                                    <option value="0">Select</option>
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                        </div>
                        <div id="FamilydianIncome" class="col-md-3" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select Family Income(Yearly)<br />
                                    परिवार की वार्षिक आय का चयन करें<span style="color: red">*</span>
                                </label>
                                <%--<input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Family Income" />--%>
                                <select id="dates-field2" class="form-control select2">
                                    <option>select</option>
                                    <option value="0-50000">0-50000</option>
                                    <option value="50001-100000">50001-100000</option>
                                    <option value="100001-350000">100001-300000</option>
                                    <option value="300000-500000">300000-500000</option>
                                    <option value="more than 500000">More Than 500000</option>
                                </select>
                            </div>
                        </div>
                        <div id="FamilyddlDepartment" class="col-md-3" style="display: none;">
                            <div class="form-group">
                                <label>
                                 Select Family Occupation<br />
                                    परिवार का व्यवसाय चुनें
       
                                </label>
                                <select id="dropdown2" onchange="toggleSection2()" class="form-control select2">
                                    <option>Select</option>
                                    <option>Govt. Job</option>
                                    <option>Private Job</option>
                                    <option>Bussiness</option>
                                    <option>Farmer</option>
                                    <option>Retirement</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3" id="GuardianIncome" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Enter Guardian Income(Yearly)<br />
                                    पालक की वार्षिक आय दर्ज करें<span style="color: red">*</span></label>
                                <%--<select id="dates-field2" class="form-control select2">
     <option>select</option>
     <option value="0-50000">0-50000</option>
     <option value="50001-100000">50001-100000</option>
     <option value="100001-350000">100001-300000</option>
     <option value="100001-350000">100001-300000</option>
     <option value="300000-500000">300000-500000</option>
     <option value="more than 500000">More Than 500000</option>
 </select>--%>

                                <select name="ename" type="text" class="form-control select2" autocomplete="off" placeholder="Enter Guardian Income">
                                    <option>select</option>
                                    <option value="0-50000">0-50000</option>
                                    <option value="50001-100000">50001-100000</option>
                                    <option value="100001-350000">100001-300000</option>
                                    <option value="100001-350000">100001-300000</option>
                                    <option value="300000-500000">300000-500000</option>
                                    <option value="more than 500000">More Than 500000</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-md-3" id="GuardianddlDepartment" style="display: none;">
                            <div class="form-group">
                                <label>
                                   Select Guardian Occupation<br />
                                    पालक  का व्यवसाय चुनें</label>
                                <select id="dropdown1" onchange="toggleSection1()" class="form-control select2">
                                    <option>Select</option>
                                    <option>Govt. Job</option>
                                    <option>Private Job</option>
                                    <option>Bussiness</option>

                                    <option>Farmer</option>
                                    <option>Retirement</option>
                                </select>
                            </div>
                        </div>

                        
                        <div class="col-md-3" id="DepartmentName" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Department Name<br />
                                    विभाग का नाम
                               
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Department Name">
                            </div>
                        </div>
                        <div class="col-md-3" id="IsIncometaxpayer" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Is Income Tax Payer<br />
                                    क्या आयकर दाता है
                                </label>
                                <select class="form-control select2">
                                    <option value="">Select</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="Bhumiekd" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Whether land is more than 10 acres<br />
                                    क्या 10 एकड़ से अधिक भूमि है
                                </label>
                                <select class="form-control select2">
                                    <option value="">Select</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                        </div>

                        <%-- <div class="col-md-3" id="PBhumiekd" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Whether land is more than 10 acres<br />
                                    क्या 10 एकड़ से अधिक भूमि है
        
                                </label>
                                <select class="form-control">
                                    <option value="">Select</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                        </div>--%>
                        <%-- <div class="col-md-3" id="FIsIncometaxpayer" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Is Income Tax Payer<br />
                                    क्या आयकर दाता है
       
                                </label>
                                <select class="form-control">
                                    <option value="">Select</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                        </div>--%>
                        <%-- <div class="col-md-3" id="FBhumiekd" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Whether land is more than 10 acres<br />
                                    क्या 10 एकड़ से अधिक भूमि है
        
                                </label>
                                <select class="form-control">
                                    <option value="">Select</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                        </div>--%>

                   

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Previous Acedemic Information/विगत शैक्षणिक वर्ष की  जानकारी</legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter   School UDISE Code<br />
                                    स्कूल का UDISE कोड दर्ज करें</label>
                                <input id="ddlSchoolDise" class="form-control" autocomplete="off" placeholder="Enter School Dise Code" onchange="myFunction7()" />
                            </div>
                        </div>
                        <div class="col-md-3" id="school" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select School Name<br />
                                    स्कूल का नाम चुनें</label>
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
                                    कक्षा का चयन करें</label>
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

                                    विषय का चयन करें</label>
                                <select class="form-control select2">
                                    <option>select</option>
                                    <option>SSS-1 Sociology</option>
                                    <option>SSS-2 Science</option>
                                    <option>SSS-3 Physical Education</option>
                                    <option>SSS-3 Dance</option>
                                    <option>SSS-3 General (PTI-3)</option>
                                    <option>SSS-2 General (PTI-2)</option>
                                    <option>SSS-3 General Urdu</option>
                                    <option>SSS-3 Information Technology</option>
                                    <option>SSS-2 Information Technology</option>
                                    <option>SSS-3 General (Music)</option>
                                    <option>SSS-3 General</option>
                                    <option>SSS-2 Biology - MS Teachers</option>
                                    <option>SSS-2 Hindi - MS Teachers</option>
                                    <option>SSS-2 Sanskrit - MS Teachers</option>
                                    <option>SSS-2 English - MS Teachers</option>
                                    <option>SSS-2 Maths - MS Teachers</option>
                                    <option>SSS-1 Home Science (HS/HSS Teachers)</option>
                                    <option>SSS-1 Vocational Education (HS/HSS Teachers)</option>
                                    <option>SSS-1 Urdu (HS/HSS Teachers)</option>
                                    <option>SSS-1 Geography-HS/HSS teachers</option>
                                    <option>SSS-2 Social Science MS Teacher</option>
                                    <option>SSS-3 General Science</option>
                                    <option>SSS-1 Agriculture (HS/HSS Teachers)</option>
                                    <option>SSS-1 Commerce (HS/HSS Teachers)</option>
                                    <option>SSS-1 Sociology (HS/HSS Teachers)</option>
                                    <option>SSS-1 Economics (HS/HSS Teachers)</option>
                                    <option>SSS-1 Political Science (HS/HSS Teachers)</option>
                                    <option>SSS-1 Civics (HS/HSS Teachers)</option>
                                    <option>SSS-1 History (HS/HSS Teachers)</option>
                                    <option>SSS-1 Biology (HS/HSS Teachers)</option>
                                    <option>SSS-1 Maths (HS/HSS Teachers)</option>
                                    <option>SSS-1 Chemistry (HS/HSS Teachers)</option>
                                    <option>SSS-1 Physics (HS/HSS Teachers)</option>
                                    <option>SSS-2 Urdu - MS Teachers</option>
                                    <option>SSS-1 Sanskrit (HS/HSS Teachers)</option>
                                    <option>SSS-1 English (HS/HSS Teachers)</option>
                                    <option>SSS-1 Hindi (HS/HSS Teachers)</option>



                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="Enrollment" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Enter Enrollment Number<br />
                                    नामांकन संख्या दर्ज करें</label>
                                <input class="form-control" autocomplete="off" placeholder="Enter Enrollment Number" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter   Scolar Number<br />

                                    छात्रवृत्ति संख्या दर्ज करें</label>
                                <input class="form-control" autocomplete="off" placeholder="Enter   Scolar Number" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter  Percentage<br />
                                    प्रतिशत दर्ज करें
                                </label>
                                <%--  <select id="percentage" name="percentage" class="form-control select2">
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
                                </select>--%>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Percentage" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Applicable for Student Residence<br />
                                    छात्र निवास के लिए लागू का चयन करें</label>
                                <select class="form-control select2" onchange="myFunction5()">
                                    <option value="0">Select</option>
                                   <%-- <option value="1">Select</option>--%>
                                    <option value="2">Day Scholar</option>
                                    <option value="3">Private Hostel</option>
                                    <option value="4">Govt. Hostel</option>

                                </select>



                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Current Acedemic Information/वर्तमान शैक्षणिक वर्ष जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select School UDISE Code<br />
                                    स्कूल UDISE कोड चुनें<span style="color: red;"> *</span></label>
                                <select class="form-control " disabled="disabled">
                                    <%--<option> Select School UDISE Code</option>--%>
                                    <option selected>23145484551-Sarasvati Gyan Mandir</option>
                                    <%--  <asp:ListItem>23146321212-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>23245874655-Reema Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>23154734659-Sarasvati Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>23248765460-Bal Bharti Higher Secondary School</asp:ListItem>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date of Admission<br />
                                    प्रवेश की तिथि<span style="color: red">*</span></label>
                                <input type="date" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Class<br />
                                    कक्षा का चयन करें<span style="color: red">*</span></label>
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
                                    विषय का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>select</option>
                                    <option>SSS-1 Sociology</option>
                                    <option>SSS-2 Science</option>
                                    <option>SSS-3 Physical Education</option>
                                    <option>SSS-3 Dance</option>
                                    <option>SSS-3 General (PTI-3)</option>
                                    <option>SSS-2 General (PTI-2)</option>
                                    <option>SSS-3 General Urdu</option>
                                    <option>SSS-3 Information Technology</option>
                                    <option>SSS-2 Information Technology</option>
                                    <option>SSS-3 General (Music)</option>
                                    <option>SSS-3 General</option>
                                    <option>SSS-2 Biology - MS Teachers</option>
                                    <option>SSS-2 Hindi - MS Teachers</option>
                                    <option>SSS-2 Sanskrit - MS Teachers</option>
                                    <option>SSS-2 English - MS Teachers</option>
                                    <option>SSS-2 Maths - MS Teachers</option>
                                    <option>SSS-1 Home Science (HS/HSS Teachers)</option>
                                    <option>SSS-1 Vocational Education (HS/HSS Teachers)</option>
                                    <option>SSS-1 Urdu (HS/HSS Teachers)</option>
                                    <option>SSS-1 Geography-HS/HSS teachers</option>
                                    <option>SSS-2 Social Science MS Teacher</option>
                                    <option>SSS-3 General Science</option>
                                    <option>SSS-1 Agriculture (HS/HSS Teachers)</option>
                                    <option>SSS-1 Commerce (HS/HSS Teachers)</option>
                                    <option>SSS-1 Sociology (HS/HSS Teachers)</option>
                                    <option>SSS-1 Economics (HS/HSS Teachers)</option>
                                    <option>SSS-1 Political Science (HS/HSS Teachers)</option>
                                    <option>SSS-1 Civics (HS/HSS Teachers)</option>
                                    <option>SSS-1 History (HS/HSS Teachers)</option>
                                    <option>SSS-1 Biology (HS/HSS Teachers)</option>
                                    <option>SSS-1 Maths (HS/HSS Teachers)</option>
                                    <option>SSS-1 Chemistry (HS/HSS Teachers)</option>
                                    <option>SSS-1 Physics (HS/HSS Teachers)</option>
                                    <option>SSS-2 Urdu - MS Teachers</option>
                                    <option>SSS-1 Sanskrit (HS/HSS Teachers)</option>
                                    <option>SSS-1 English (HS/HSS Teachers)</option>
                                    <option>SSS-1 Hindi (HS/HSS Teachers)</option>

                                </select>
                            </div>
                        </div>

                        <div class="col-md-3" id="Enrollment1" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Enter Enrollment Number<br />
                                    नामांकन संख्या दर्ज करें</label>
                                <input class="form-control" autocomplete="off" placeholder="Enter Enrollment Number" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter   Scolar Number<br />

                                    छात्रवृत्ति संख्या दर्ज करें</label>
                                <input class="form-control" autocomplete="off" placeholder="Enter   Scolar Number" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Applicable for Student Residence<br />
                                    छात्र निवास के लिए लागू का चयन करें</label>
                                <select class="form-control select2" onchange="myFunction5()">
                                    <option value="0">Select</option>
                                  <%--  <option value="1">Select</option>--%>
                                    <option value="2">Day Scholar</option>
                                    <option value="3">Private Hostel</option>
                                    <option value="4">Govt. Hostel</option>

                                </select>



                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Student Bank Account Information/

विद्यार्थी  बैंक खाते की जानकारी</legend>
                    <div class="row">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter IFSC Code<br />
                                    आई.एफ.एस.सी कोड दर्ज करें<span style="color: red">*</span></label>
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
                                    खाता नंबर दर्ज करें<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Account No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Account Holder Name<br />
                                    खाता धारक का नाम दर्ज करें<span style="color: red">*</span></label>
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
                                Upload Student Photo<br />

                                विद्यार्थी का फोटो अपलोड करें :
                            </label>
                        </div>
                        <div id="DocAppointment1" class="col-md-4">
                            <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocAppointment2" class="col-md-4">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>


                        </div>
                    </div>

                    <div class="row align-items-end mt-3">

                        <div class="col-md-4" id="DisCertificate">
                            <label>
                                Upload Student Disability Certificate<br />
                                विद्यार्थी का  विकलांगता प्रमाण पत्र अपलोड करें
 :
                            </label>
                        </div>
                        <div class="col-md-4" id="file">
                            <input type="file" id="fileInput3" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4" id="eye">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>


                        </div>


                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="DocCaste" class="col-md-4">
                            <label>
                                Upload Student Cast/Category Certificate<br />
                                विद्यार्थी  का जाति और श्रेणी प्रमाण पत्र अपलोड करें:
                            </label>
                        </div>
                        <div id="DocCaste1" class="col-md-4">
                            <input type="file" id="fileInput2" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocCaste2" class="col-md-4">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="DocPresentpost" class="col-md-4">
                            <label>
                                Student Upload Transfer Certificate<br />
                                विद्यार्थी  का   स्थानांतरण  प्रमाण पत्र अपलोड करें :
                            </label>
                        </div>
                        <div id="DocPresentpost1" class="col-md-4">
                            <input type="file" id="fileInput4" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocPresentpost2" class="col-md-4">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="Dochandicapped" class="col-md-4">
                            <label>
                                Upload  Student   Bank Passbook
                                <br />
                                विद्यार्थी  का बैंक पासबुक  अपलोड करें :
                            </label>
                        </div>
                        <div id="Dochandicapped1" class="col-md-4">
                            <input type="file" id="fileInput6" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="Dochandicapped2" class="col-md-4">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="CriticalIllness" class="col-md-4">
                            <label>
                                Upload Family Income Proof<br />
                                पारिवारिक आय प्रमाण  पत्र अपलोड करें:
                            </label>
                        </div>
                        <div id="CriticalIllness1" class="col-md-4">
                            <input type="file" id="fileInput010" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="CriticalIllness3" class="col-md-4">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <%--fsdcxhbfhbv--%>
                    <div class="row align-items-end mt-3">
                        <div class="col-md-4">
                            <label>
                                Upload  Below Poverty Line(BPL)      
                                <br />
                                गरीबी रेखा से नीचे (बीपीएल) की छाया प्रति अपलोड करें:
                            </label>
                        </div>
                        <div class="col-md-4">
                            <input type="file" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div class="col-md-4">
                            <label>
                                Upload Domicile Certificate<br />
                                मूल निवासी प्रमाण पत्र  अपलोड करें:
                            </label>
                        </div>
                        <div class="col-md-4">
                            <input type="file" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4">
                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input id="checkbox1" onclick="showhidesavebtn2()" type="checkbox" />
                            <span class="text-danger fw-bold">स्कुल प्राचार्य द्वारा विद्यार्थी के समस्त दस्तावेजों का अवलोकन कर लिया गया है तथा समस्त जानकारी सही पाई गई हैं, अतः विद्यालय प्राचार्य द्वारा विद्यार्थी पंजीयन को अनुमोदित किया जा रहा हैं ।</span>
                        </div>

                    </div>
                    <%--    <div class="row align-items-end mt-3">
                        <div class="col-md-4">
                            <label>
                                Upload Disability Certificate<br />
                                विकलांगता प्रमाणपत्र अपलोड:
                            </label>
                        </div>
                        <div class="col-md-4">
                            <input type="file" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div class="col-md-4">
                            <label>
                                Income Tax Certificate<br />
                                आयकर प्रमाण पत्र अपलोड करें:
                            </label>
                        </div>
                        <div class="col-md-4">
                            <input type="file" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>--%>
                    <%--fsdcxhbfhbv--%>
                </fieldset>
                <hr />
                <div class="row" style="display: none;" id="showsavebtn2">
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
    <script>
        function showhidesavebtn2() {
            var checkbox1 = document.getElementById("checkbox1");
            /*var checkbox2 = document.getElementById("checkbox2");*/
            //var checkbox3 = document.getElementById("checkbox3");
            //var checkbox4 = document.getElementById("checkbox4");
            var showsavebtn2 = document.getElementById("showsavebtn2");
            if (checkbox1.checked) {
                showsavebtn2.style.display = "block"
            }
            //else if (checkbox2.checked === false && checkbox1.checked === false && checkbox3.checked === false && checkbox4.checked === false) {
            //    showsavebtn.style.display = "none"
            //}
            else  {
                showsavebtn2.style.display = "none"
            }
        }
    </script>
    <script>
        function showhidesavebtn3() {
            var checkbox1 = document.getElementById("checkbox2");
           
            var search = document.getElementById("search");
            var StudentSsm = document.getElementById("StudentSsm")
            if (checkbox1.checked) {
                search.style.display = "block"
            }
            
            else if (checkbox1.checked == false) {
                search.style.display = "none"
                show.style.display = "none"
            }
            else {
                search.style.display = "none"
            }
        }
    </script>
    <script>
        function toggleSpinachField() {
            var orphanSelect = document.getElementById("orphanSelect");
            var spinachField = document.getElementById("spinachField");
            var GuardianddlDepartment = document.getElementById("GuardianddlDepartment");
            var GuardianIncome = document.getElementById("GuardianIncome");


            if (orphanSelect.value === "1") {
                spinachField.style.display = "block";
                GuardianddlDepartment.style.display = "block";
                GuardianIncome.style.display = "block";
            } else {
                spinachField.style.display = "none";
                GuardianddlDepartment.style.display = "none";
                GuardianIncome.style.display = "none";
            }
        }
    </script>
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
            var ForwordTo = document.getElementById("options1").value;
            if (ForwordTo == "1") {
                document.getElementById('hiddenElement1').style.display = "block";
                document.getElementById('HandicapePercentage1').style.display = "block";
                document.getElementById('DisCertificate').style.display = "block";
                document.getElementById('eye').style.display = "block";
                document.getElementById('file').style.display = "block";
            } else {
                document.getElementById('hiddenElement1').style.display = "none";
                document.getElementById('HandicapePercentage1').style.display = "none";
                document.getElementById('DisCertificate').style.display = "none";
                document.getElementById('eye').style.display = "none";
                document.getElementById('file').style.display = "none";
            }
        }</script>

    <script>
        function myFunction5() {
            var forwardTo = document.getElementById("class").value;
            if (forwardTo === "11") {
                document.getElementById('subject').style.display = "block";
            }
            else if (forwardTo === "12") {
                document.getElementById('subject').style.display = "block";
                document.getElementById('Enrollment').style.display = "block";
            }
            else if (forwardTo === "10") {
                document.getElementById('subject').style.display = "block";
                document.getElementById('Enrollment').style.display = "block";
            }
            else if (forwardTo === "9") {
                document.getElementById('subject').style.display = "block";
            }
            else if (forwardTo === "8") {
                document.getElementById('Enrollment').style.display = "block";
            }
            else if (forwardTo === "5") {
                document.getElementById('Enrollment').style.display = "block";
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
                document.getElementById('Enrollment1').style.display = "block";
            }
            else if (forwardTo === "10") {
                document.getElementById('subject1').style.display = "block";
                document.getElementById('Enrollment1').style.display = "block";
            }
            else if (forwardTo === "9") {
                document.getElementById('subject1').style.display = "block";
            }
            else if (forwardTo === "5") {
                document.getElementById('Enrollment1').style.display = "block";
            }
            else if (forwardTo === "8") {
                document.getElementById('Enrollment1').style.display = "block";
            }
            else {
                document.getElementById('subject1').style.display = "none";
                document.getElementById('Enrollment1').style.display = "none";
            }
        }
    </script>
    <%--  <script>
        function DivHide() {
            //var checkbox1 = document.getElementById("customRadio1");
            //var checkbox2 = document.getElementById("customRadio2");
            var showDiv = document.getElementById("show"); // Assuming your div id is "show"

            if (checkbox1.checked) {
                showDiv.style.display = "block";
                BtnBack.style.display = "block";
                show2.style.display = "none";
            } else if (checkbox2.checked) {
                window.location.href = 'StudentInfo.aspx'; // Show the div
            } else {
                showDiv.style.display = "none"; // Hide the div if neither radio is checked
            }
        }
    </script>--%>
    <script>
        function DivHide() {
            /*document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';*/
            document.getElementById("show").style.display = (document.getElementById("show").style.display == 'block') ? 'none' : 'block';
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
                        text: "Do you want to Save Personal Information?",
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
                                BtnBack.style.display = 'block';
                            });

                            // Manipulate element displays after success
                            document.getElementById('show1').style.display = "block";
                            /*document.getElementById('show').style.display = "none";*/
                            document.getElementById('show2').style.display = "none";
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
        function toggleSection1() {
            var dropdown = document.getElementById("dropdown1");
            var section1 = document.getElementById("DepartmentName");
            var section2 = document.getElementById("IsIncometaxpayer");
            var section3 = document.getElementById("Bhumiekd");
            // Hide all sections
            section1.style.display = "none";
            section2.style.display = "none";
            section3.style.display = "none";

            // Determine which section to display based on selected option
            if (dropdown.value === "Govt. Job") {
                section1.style.display = "block";
                section2.style.display = "block";
                section3.style.display = "block";

            } else if (dropdown.value === "Private Job") {

                section1.style.display = "none";
                section2.style.display = "block";
                section3.style.display = "block";

            }
            else if (dropdown.value === "Retirement") {

                section1.style.display = "none";
                section2.style.display = "block";
                section3.style.display = "block";

            }
            else if (dropdown.value === "Bussiness") {
                section1.style.display = "none";
                section2.style.display = "block";
                section3.style.display = "block";
            } else if (dropdown.value === "Farmer") {
                section1.style.display = "none";
                section2.style.display = "none";
                section3.style.display = "block";

            }
        }


        function toggleSection2() {
            var dropdown = document.getElementById("dropdown2");
            var section1 = document.getElementById("DepartmentName");
            var section2 = document.getElementById("IsIncometaxpayer");
            var section3 = document.getElementById("Bhumiekd");



            // Hide all sections
            section1.style.display = "none";
            section2.style.display = "none";
            section3.style.display = "none";


            // Determine which section to display based on selected option
            if (dropdown.value === "Govt. Job") {
                section1.style.display = "block";
                section2.style.display = "block";
                section3.style.display = "block";

            } else if (dropdown.value === "Private Job") {

                section1.style.display = "none";
                section2.style.display = "block";
                section3.style.display = "block";

            }
            else if (dropdown.value === "Retirement") {

                section1.style.display = "none";
                section2.style.display = "block";
                section3.style.display = "block";

            }
            else if (dropdown.value === "Bussiness") {
                section1.style.display = "none";
                section2.style.display = "block";
                section3.style.display = "block";
            } else if (dropdown.value === "Farmer") {
                section1.style.display = "none";
                section2.style.display = "none";
                section3.style.display = "block";

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
         <script>
             function toggleGuardianField() {
                 var orphanSelect = document.getElementById("orphanSelect");
                 var guardianField = document.getElementById("guardianField");
                 var GuardianddlDepartment = document.getElementById("GuardianddlDepartment");
                 var FamilyddlDepartment = document.getElementById("FamilyddlDepartment");
                 var FamilydianIncome = document.getElementById("FamilydianIncome");
                 var GuardianIncome = document.getElementById("GuardianIncome");

                 if (orphanSelect.value === "1") {
                     guardianField.style.display = "block";
                     GuardianddlDepartment.style.display = "block";
                     GuardianIncome.style.display = "block";
                     FamilyddlDepartment.style.display = "none";
                     FamilydianIncome.style.display = "none";
                 } else if (orphanSelect.value === "2") {
                     guardianField.style.display = "none";
                     GuardianddlDepartment.style.display = "none";
                     GuardianIncome.style.display = "none";
                     FamilyddlDepartment.style.display = "block";
                     FamilydianIncome.style.display = "block";
                 } else {
                     guardianField.style.display = "none";
                     GuardianddlDepartment.style.display = "none";
                     GuardianIncome.style.display = "none";
                     FamilyddlDepartment.style.display = "none";
                     FamilydianIncome.style.display = "none";
                 }
             }


         </script>
     <script>
    function Backclickfn() {
//    var show1 = document.getElementById('show1');
//    var BtnBack = document.getElementById('BtnBack');

//    if (show1.style.display === 'block') {
//        show1.style.display = 'block';
//        BtnBack.style.display = 'block';
//    } else {
//        show1.style.display = 'none';
//        BtnBack.style.display = 'none';
//    }
        //}
        document.getElementById("show2").style.display = (document.getElementById("show2").style.display == 'block') ? 'none' : 'block';
        BtnBack.style.display = 'none';
        show1.style.display = 'none';
    }
    
     </script>
    <script>
        function myFunction4() {
            var selectedValue = document.getElementById("child").value;
            if (selectedValue === "2") {
                Sibling.style.display = "block"; // Show the div
            } else {
                Sibling.style.display = "none"; // Hide the div
            }
        }

        // Add event listener to call myFunction4 when the dropdown value changes
        document.getElementById("child").addEventListener("change", myFunction4);
    </script>

    <script>
        function myFunction10() {
            var selectedValue = document.getElementById("Fatherless").value;
            if (selectedValue === "1") {
                Unparented.style.display = "block";
                fatherDis.style.display = "none";
                FamilydianIncome.style.display = "block";
                FamilyddlDepartment.style.display = "block";// Show the div
            }
            else if (selectedValue === "2") {
                Unparented.style.display = "none";
                fatherDis.style.display = "block";
                FamilydianIncome.style.display = "block";
                FamilyddlDepartment.style.display = "block";// Show the div
            } else {
                Unparented.style.display = "none";
                fatherDis.style.display = "none";
                FamilydianIncome.style.display = "none";
                FamilyddlDepartment.style.display = "none"; // Hide the div
            }
        }

        // Add event listener to call myFunction4 when the dropdown value changes
        document.getElementById("child").addEventListener("change", myFunction4);
    </script>

</asp:Content>

