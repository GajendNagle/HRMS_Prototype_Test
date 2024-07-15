<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewSchemeWiseEligibleStudent.aspx.cs" Inherits="mis_Scheme_ViewSchemeWiseEligibleStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #searchdetails {
            display: none;
        }

        #btncontainer {
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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>View Scheme Wise Eligible Student</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">View Scheme Wise Eligible Student / योजना अनुसार पात्र विद्यार्थी देखें</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>View Scheme Wise Eligible Student / योजना अनुसार पात्र विद्यार्थी देखें
                </legend>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="General">2023-2024</option>
                                <option value="General">2024-2025</option>
                            </select>
                        </div>
                    </div>
                    <%--<div class="col-md-4">
                    <div class="form-group">
                        <label>
                            Select District<br />
                            जिला का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="General">Bhopal</option>
                            <option value="General">Sehore</option>
                            <option value="General">Indore</option>
                            <option value="General">Mandsore</option>
                        </select>
                    </div>
                </div>--%>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Scheme Title<br />
                                योजना शीर्षक का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="General">Laptop</option>
                                <option value="General">Cycle</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr style="margin-top: -25px;" />
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <button id="viewMoreBtn" class="btn btn-outline-info btn-border w-lg" type="button" onclick="btnsearch()">SEARCH</button>
                        </div>
                    </div>
                </div>
                <div class="row form-group" id="searchdetails">
                    <fieldset id="gridid">

                        <legend>Details / विवरण </legend>
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
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table  text-center">
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>DEO Name/Code<br />
                                            डीईओ नाम/कोड</th>
                                        <th>Sankul Name UDISE<br />
                                            संकुल नाम UDISE</th>
                                        <th>School Name UDISE<br />
                                            स्कूल नाम UDISE</th>
                                        <th>Student Enrollment No.<br />
                                            छात्र नामांकन संख्या</th>
                                        <th>Student Name<br />
                                            छात्र का नाम</th>
                                        <th>Gender<br />
                                            लिंग</th>
                                        <th>Category<br />
                                            श्रेणी</th>
                                        <th>Disability<br />
                                            विकलांगता</th>
                                        <th>Scheme Benefit Amount<br />
                                            योजना लाभ राशि</th>
                                        <th>ViewMore<br />
                                            अधिक देखें</th>
                                        <th>Action<br />
                                        </th>



                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>RAISEN-021</td>
                                        <td>Sankul-212646448 
                                        </td>
                                        <td>Higher Secondary<br />
                                            -212646448 
                                        </td>
                                        <td>E798797987
                                        </td>
                                        <td>Vikas Namdev
                                        </td>
                                        <td>Male
                                        </td>
                                        <td>OBC
                                        </td>
                                        <td>NO
                                        </td>
                                        <td>250000
                                        </td>

                                        <td class="text-center align-middle">
                                            <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye"></i></button>
                                            <%--<button type="button" class="btn btn-outline-primary btn-sm" onclick="btnsearch1()"><i class="fa fa-eye"></i></button>--%>
                                        </td>
                                        <td class="text-center align-middle">
                                            <input type="checkbox" />
                                        </td>



                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>SEHORE-031</td>

                                        <td>Sankul-979841654
                                        </td>
                                        <td>Primary<br />
                                            -212646448 
                                        <td>E501797987
                                        </td>
                                        <td>Shivraj Goutam
                                        </td>
                                        <td>Male
                                        </td>
                                        <td>OBC
                                        </td>
                                        <td>NO
                                        </td>
                                        <td>250000
                                        </td>

                                        <td class="text-center align-middle">

                                            <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye"></i></button>

                                        </td>
                                        <td class="text-center align-middle">
                                            <input type="checkbox" />
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal  fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header" style="background-color: var(--vz-primary);">
                                <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                                <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel2">Update Student Registration Details/छात्र पंजीकरण विवरण अपडेट करें</h3>
                                <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <fieldset>
                                    <legend>General Information/सामान्य जानकारी</legend>

                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <tr>
                                                <th>Student Name (English)
                                                </th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Riya Gupta" readonly /></td>
                                                <th>Student Name<br />
                                                    (Hindi)
                                                </th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="रिया गुप्ता" readonly /></td>
                                                <th>Gender
                                                </th>
                                                <td>
                                                    <select class="form-control" placeholder="Female" disabled="disabled">
                                                        <option selected="selected">Female</option>
                                                        <option>Male</option>
                                                    </select></td>
                                                <th>Date of Birth</th>
                                                <td>
                                                    <input name="ename" id="DOB" class="form-control" autocomplete="off" placeholder="07/11/2002" readonly /></td>
                                            </tr>
                                            <tr>
                                                <th>Category</th>
                                                <td>
                                                    <select class="form-control" disabled="disabled">
                                                        <option value="Select">Select</option>
                                                        <option value="Bhopal" selected="selected">OBC</option>
                                                        <option value="Bhopal">General</option>
                                                        <option value="Bhopal">OBC</option>
                                                        <option value="Bhopal">SC</option>
                                                        <option value="Bhopal">ST</option>
                                                    </select></td>
                                                <th>Religion</th>
                                                <td>
                                                    <select class="form-control" readonly="true" disabled="disabled">
                                                        <option value="Select">Select</option>
                                                        <option value="Bhopal" selected="selected">Hindu</option>
                                                        <option value="Bhopal">Muslim</option>
                                                        <option value="Bhopal">Sikh</option>
                                                        <option value="Bhopal">Christian</option>
                                                    </select></td>
                                                <th>Father's Name</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Ram Gupta" readonly /></td>
                                                <th>Mother's Name</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Nikita Gupta" readonly /></td>
                                            </tr>

                                            <tr>
                                                <th>Mobile No</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="8956231478" readonly /></td>
                                                <th>Select BPL</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="Select">Select</option>
                                                        <option value="yes" selected="selected">Yes</option>
                                                        <option value="no">No</option>
                                                    </select></td>

                                                <th>Select Disability</th>
                                                <td>
                                                    <select id="ddlHandicape" class="form-control select2" onchange="ShowHideHandicape()">
                                                        <option value="0">Select</option>
                                                        <option value="Yes">Yes</option>
                                                        <option value="No" selected="selected">No</option>
                                                    </select></td>

                                                <th>Select Disability type</th>
                                                <td>
                                                    <select id="ddlHandicappedType" class="form-control select2" disabled="disabled">
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

                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Select Handicapped Percentage</th>
                                                <td>
                                                    <select id="ddlHandicappedPercentage" class="form-control select2" disabled="disabled">
                                                        <option>Select</option>
                                                        <option value="40 to 50">41 to 50</option>
                                                        <option value="51 to 60">51 to 60</option>
                                                        <option value="61 to 70">61 to 70</option>
                                                        <option value="71 to 80">71 to 80</option>
                                                        <option value="81 to 90">81 to 90</option>
                                                        <option value="91 to 100">1  to 100</option>
                                                    </select></td>
                                                <th>Is there a Freed/Nomadic/Semi-Nomadic Caste</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option>Select</option>
                                                        <option value="40 to 50">विमुक्त </option>
                                                        <option value="51 to 60" selected="selected">घुमक्कड़</option>
                                                        <option value="61 to 70">अर्ध घुमक्कड़</option>
                                                        <option value="71 to 80">इनमें से कोई नहीं है</option>
                                                    </select></td>
                                                <td colspan="4"></td>
                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Address Information/पते की जानकारी</legend>

                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <tr>
                                                <th>State Name</th>
                                                <td>
                                                    <select class="form-control" disabled="disabled">
                                                        <option value="Bhopal">Madhya Pradesh</option>
                                                        <option value="Select">Select</option>
                                                        <option value="Bhopal" selected="selected">Madhya Pradesh</option>
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
                                                    </select></td>
                                                <th>Division Name</th>
                                                <td>
                                                    <select class="form-control" disabled="disabled">
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Select">Select</option>
                                                        <option value="Bhopal" selected="selected">Bhopal</option>
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
                                                    </select></td>
                                                <th>District Name</th>
                                                <td>
                                                    <select name="ctl00$ContentBody$ctl02" class="form-control " disabled="disabled">
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Select">Select</option>
                                                        <option value="Bhopal" selected="selected">Bhopal</option>
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
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <th>Block Name</th>
                                                <td>
                                                    <select name="ctl00$ContentBody$ctl03" class="form-control" disabled="disabled">
                                                        <option value="Agar">Hoshur</option>
                                                        <option value="Select">Select</option>
                                                        <option value="Agar">Agar</option>
                                                        <option value="Barod">Barod</option>
                                                        <option value="Nalkheda" selected="selected">Nalkheda</option>
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

                                                    </select></td>
                                                <th>Village Name</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off"
                                                        value="Berasia" readonly="readonly" /></td>
                                                <th>Habitation Name</th>
                                                <td>
                                                    <input class="form-control  w-100"
                                                        value="Shivpuri" autocomplete="off" /></td>
                                            </tr>
                                            <tr>
                                                <th>Address</th>
                                                <td>
                                                    <input class="form-control  w-100"
                                                        value="Robertson, 1234 NW Bobcat Lane,
                                     Robert, MO 65584-5678"
                                                        rows="1" autocomplete="off" /></td>
                                                <td colspan="4"></td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Family Other Information/परिवार की अन्य जानकारी</legend>

                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <tr>
                                                <th>Only Girl Child</th>
                                                <td>
                                                    <select id="child" class="form-control select2" onchange="GirlChild()">
                                                        <option>Select</option>
                                                        <option value="Yes" selected="selected">Yes</option>
                                                        <option value="No">No</option>
                                                    </select></td>

                                                <th>Select No Of Sibling's</th>
                                                <td>
                                                    <select name="ctl00$ContentBody$ctl02" id="ddlSibling" class="form-control select2" disabled="disabled">
                                                        <option>Select</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>

                                                    </select></td>
                                            </tr>

                                            <tr>
                                                <th>Is Father Dead ?</th>
                                                <td>
                                                    <select id="orphanSelect" name="ctl00$ContentBody$ctl02" class="form-control select2" onchange="toggleGuardianField(); ">
                                                        <option value="0">Select</option>
                                                        <option value="1">Yes</option>
                                                        <option value="2" selected="selected">No</option>
                                                    </select></td>
                                                <th>Are the Students Unparented ?</th>
                                                <td>
                                                    <select id="orphanSelect1" name="ctl00$ContentBody$ctl02" class="form-control select2" onchange="toggleGuardianField(); ">
                                                        <option value="0">Select</option>
                                                        <option value="1">Yes</option>
                                                        <option value="2" selected="selected">No</option>
                                                    </select></td>
                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Previous Acedemic Information/विगत शैक्षणिक वर्ष की जानकारी</legend>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>School UDISE Code</th>
                                                <td>
                                                    <input id="ddlSchoolDise" class="form-control" autocomplete="off" placeholder="Enter School Dise Code" onchange="myFunction7()" value="22547689875" /></td>
                                                <th>Class</th>
                                                <td>
                                                    <select class="form-control select2" id="class" onchange="myFunction5()">
                                                        <option value="0">Select</option>
                                                        <option value="1">1st Class</option>
                                                        <option value="2">2nd Class</option>
                                                        <option value="3" selected="selected">3rd Class</option>
                                                        <option value="4">4th Class</option>
                                                        <option value="5">5th Class</option>
                                                        <option value="6">6th Class</option>
                                                        <option value="7">7th Class</option>
                                                        <option value="8">8th Class</option>
                                                        <option value="9">9th Class</option>
                                                        <option value="10">10th Class</option>
                                                        <option value="11">11th Class</option>
                                                        <option value="12">12th Class</option>
                                                    </select></td>
                                                <th>Scolar Number</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="TYU4353" /></td>
                                            </tr>
                                            <tr>
                                                <th>Percentage</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="30%" /></td>
                                                <th>Attendance day of student in previous year</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="70 days" /></td>
                                               
                                                <th>Select Applicable for Student Residence</th>
                                                <td>
                                                    <select class="form-control select2" onchange="myFunction5()">
                                                        <option value="1">Select</option>
                                                        <option value="2" selected="selected">Day Scholar</option>
                                                        <option value="3">Private Hostel</option>
                                                        <option value="4">Govt. Hostel</option>

                                                    </select></td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Current Acedemic Information/वर्तमान शैक्षणिक वर्ष जानकारी</legend>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">

                                            <tr>
                                                <th>School UDISE Code</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option>Select School UDISE Code</option>
                                                        <option>23145484551-Sarasvati Gyan Mandir</option>
                                                        <option>23146321212-Gyan Ganga Vidhya Mandir</option>
                                                        <option>23245874655-Reema Gyan Mandir</option>
                                                        <option>23154734659-Sarasvati Vidhya Mandir</option>
                                                        <option>23248765460-Bal Bharti Higher Secondary School</option>
                                                    </select></td>
                                                <th>Date of Admission</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="07/06/2022" /></td>
                                                <th>Select Class</th>
                                                <td>
                                                    <select class="form-control select2" id="class" >
                                                        <option value="0">Select</option>
                                                        <option value="1">1st Class</option>
                                                        <option value="2">2nd Class</option>
                                                        <option value="3" selected="selected">3rd Class</option>
                                                        <option value="4">4th Class</option>
                                                        <option value="5">5th Class</option>
                                                        <option value="6">6th Class</option>
                                                        <option value="7">7th Class</option>
                                                        <option value="8">8th Class</option>
                                                        <option value="9">9th Class</option>
                                                        <option value="10">10th Class</option>
                                                        <option value="11">11th Class</option>
                                                        <option value="12">12th Class</option>
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <th>Scolar Number</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="TYU4353" /></td>
                                                <th>working days in the current academic year </th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="300 days" /></td>
                                                
                                                <th>Select Applicable for Student Residence</th>
                                                <td>
                                                    <select class="form-control select2" onchange="myFunction5()">
                                                        <option value="1">Select</option>
                                                        <option value="2" selected="selected">Day Scholar</option>
                                                        <option value="3">Private Hostel</option>
                                                        <option value="4">Govt. Hostel</option>

                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <th>Student Attendance Day in the current academic year</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="300 days" /></td>

                                                <th>attendance percentage</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="100%" /></td>

                                                <th>Result</th>
                                                <td>
                                                    <select class="form-control select2" onchange="Result()" id="ddlResult">
                                                        <option value="Pass" selected="selected">Pass</option>
                                                        <option value="Fail">Fail</option>
                                                    </select>
                                                </td>

                                            </tr>
                                            <tr style="display: none" id="tblfields">
                                                <th>School UDISE Code</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option>Select School UDISE Code</option>
                                                        <option>23145484551-Sarasvati Gyan Mandir</option>
                                                        <option>23146321212-Gyan Ganga Vidhya Mandir</option>
                                                        <option>23245874655-Reema Gyan Mandir</option>
                                                        <option>23154734659-Sarasvati Vidhya Mandir</option>
                                                        <option>23248765460-Bal Bharti Higher Secondary School</option>
                                                    </select></td>
                                                <th>Select Class</th>
                                                <td>
                                                    <select class="form-control select2" id="class1" onchange="myFunction6()">
                                                        <option value="0">Select</option>
                                                        <option value="1">1st Class</option>
                                                        <option value="2">2nd Class</option>
                                                        <option value="3" selected="selected">3rd Class</option>
                                                        <option value="4">4th Class</option>
                                                        <option value="5">5th Class</option>
                                                        <option value="6">6th Class</option>
                                                        <option value="7">7th Class</option>
                                                        <option value="8">8th Class</option>
                                                        <option value="9">9th Class</option>
                                                        <option value="10">10th Class</option>
                                                        <option value="11">11th Class</option>
                                                        <option value="12">12th Class</option>
                                                    </select></td>

                                                <th>Select Subject</th>
                                                <td>
                                                    <select class="form-control select2">

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

                                                    </select></td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>
                                <fieldset>

                                    <legend>Student Bank Account Information/ विद्यार्थी बैंक खाते की जानकारी</legend>
                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <tr>
                                                <th>IFSC Code</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="SbI345466" readonly="readonly" /></td>
                                                <th>Bank Name</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="State Bank of India" readonly="readonly" /></td>
                                                <th>Branch</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="Bhopal" readonly="readonly" /></td>
                                            </tr>
                                            <tr>
                                                <th>Account No.
                                                </th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="236576867889" readonly="readonly" /></td>

                                                <th>Account Holder Name</th>
                                                <td>
                                                    <input class="form-control" autocomplete="off" placeholder="Enter School Dise Code" value="Riya Gupta" readonly="readonly" /></td>
                                                <td colspan="2"></td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Document / दस्तावेज़</legend>
                                    <div class="table-responsive">

                                        <table class="table table-bordered ">
                                            <thead>
                                                <tr>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">Sr. No.</label>
                                                    </td>

                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">Document Name</label>
                                                    </td>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">Upload Document</label>
                                                    </td>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">View Document</label>
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="text-center">
                                                    <td class="text-center">1</td>
                                                    <td>
                                                        <label>
                                                            Upload Student Photo
                     <br />

                                                            विद्यार्थी का फोटो अपलोड
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">2</td>
                                                    <td>
                                                        <label>
                                                            Upload Student Cast/Category Certificate<br />
                                                            विद्यार्थी का जाति और श्रेणी प्रमाण पत्र अपलोड
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">3</td>
                                                    <td>
                                                        <label>
                                                            Student Upload Transfer Certificate<br />
                                                            विद्यार्थी का स्थानांतरण प्रमाण पत्र अपलोड 
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">4</td>
                                                    <td>
                                                        <label>
                                                            Upload Student Bank Passbook<br />
                                                            विद्यार्थी का बैंक पासबुक अपलोड :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">5</td>
                                                    <td>
                                                        <label>
                                                            Upload Family Income Proof<br />
                                                            पारिवारिक आय प्रमाण पत्र अपलोड  :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">6</td>
                                                    <td>
                                                        <label>
                                                            Upload Below Poverty Line(BPL)<br />
                                                            गरीबी रेखा से नीचे (बीपीएल) की छाया प्रति अपलोड  :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">7</td>
                                                    <td>
                                                        <label>
                                                            Upload Domicile Certificate<br />
                                                            मूल निवासी प्रमाण पत्र अपलोड  :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">7</td>
                                                    <td>
                                                        <label>
                                                            Upload Disability Certificate<br />
                                                            विकलांगता प्रमाणपत्र अपलोड :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td class="text-center">8</td>
                                                    <td>
                                                        <label>
                                                            Income Tax Certificate<br />
                                                            आयकर प्रमाण पत्र अपलोड :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>

                                        </table>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="btncontainer">
                    <div class="col-md-12  text-center">

                        <button class="Alert-Save btn btn-outline-success btn-border w-lg" type="button" onclick="btnsearch()">Generate List</button>


                        <a class="btn btn-outline-danger btn-border w-lg" href="ViewSchemeWiseEligibleStudent.aspx">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script>
        function btnsearch(event) {
            var x = document.getElementById("searchdetails");
            var y = document.getElementById("btncontainer");
            x.style.display = "block";
            y.style.display = "block";
        }
    </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate List ?",
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
                                text: 'List Generate Successfully!',
                                timer: 2000,
                                //url:'ApplyForScheme.aspx'

                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
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


    <script>

        function ShowHideHandicape() {
            var ddlHandicape = document.getElementById("ddlHandicape");
            var ddlHandicappedPercentage = document.getElementById("ddlHandicappedPercentage");
            var ddlHandicappedType = document.getElementById("ddlHandicappedType");
            if (ddlHandicape.value === "Yes") {
                ddlHandicappedType.removeAttribute("disabled");
                ddlHandicappedPercentage.removeAttribute("disabled");
            } else if (ddlHandicape.value === "No") {
                ddlHandicappedType.setAttribute("disabled", 'disabled');
                ddlHandicappedPercentage.setAttribute("disabled", "disabled");

            }
            //if (ddlHandicape.value === "Yes") {
            //    ddlHandicappedPercentage.toggleAttribute('disabled');
            //} else if (ddlHandicape.value === "No") {
            //    ddlHandicappedPercentage.toggleAttribute('disabled');

            //}

        }

        function GirlChild() {
            var child = document.getElementById("child");

            if (child.value === "Yes") {
                ddlSibling.setAttribute("disabled", 'disabled');

            } else if (child.value === "No") {
                ddlSibling.removeAttribute("disabled");

            }
        }

        function Result() {
            var ddlResult = document.getElementById("ddlResult");

            if (ddlResult.value === "Pass") {
                tblfields.style.display = "none";

            } else if (ddlResult.value === "Fail") {
                tblfields.style.display = "table-Row";

            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

