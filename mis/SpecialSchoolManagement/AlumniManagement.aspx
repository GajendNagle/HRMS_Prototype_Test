<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AlumniManagement.aspx.cs" Inherits="mis_SpecialSchoolManagement_AlumniManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #showAllDetails {
            display: none;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />


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
                         <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Special School Management</span></a>
                     </li>
                     <li class="breadcrumb-item">Alumni Management</li>
                 </ol>
             </div>
         </div>
     </div>
 </div>



    <div class="card card-border-primary">
        <%-- <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Student Achievement Report/ छात्र उपलब्धि ट्रैकिंग
                    </h5>
                </div>
            </div>
        </div>--%>
        <div class="card-body">
            <fieldset>
                <legend>Alumni Management Report /
                    पूर्व छात्र प्रबंधन रिपोर्ट
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Passing Academic Year/<br />
                                उत्तीर्ण शैक्षणिक वर्ष<span style="color: red">*</span></label>
                            <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="txtAcademicYear" class="form-control datepickerYear2 form-select" type="text" data-val="true" required="required" />
                        </div>
                    </div>
                </div>
                <div class="row">


                    <div class="col-md-12">
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" class="btn btn-success w-lg btn-border" id="   " onclick="HideShow()">
                                Search
                            </button>
                            <!-- Clear button (link) -->
                            <a href="AlumniManagement.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>






            <div id="showAllDetails" class="row">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-6 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table" id="hideshowTable">
                                        <thead>
                                            <tr style="white-space: nowrap" class="text-center">
                                                <th>S.No.</th>
                                                <th>Samagra Id</th>
                                                <th>Student Name</th>
                                                <th>Year Of Passing</th>
                                                <th>Mobile No.</th>
                                                <th>Email Id.</th>
                                                <th>Address</th>
                                                <th>Class</th>
                                                <th>Subject</th>
                                                <th>View More</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="text-center">
                                                <td>1</td>
                                                <td>108723904</td>
                                                <td>Aarti Sharma</td>
                                                <td>2022</td>
                                                <td>9896352678</td>
                                                <td>Aarti123@gmail.com </td>
                                                <td>Bhopal, MP</td>
                                                <td>12th</td>
                                                <td>Commerce</td>
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>

                                                </tr>
                                            <tr class="text-center">
                                                <td>2</td>
                                                <td>104567348</td>
                                                <td>Riya Verma</td>
                                                <td>2022</td>
                                                <td>8765432109</td>
                                                <td>riya.verma@example.com</td>
                                                <td>Indore, MP</td>
                                                <td>12th</td>
                                                <td>Science</td>

                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>

                                            </tr>
                                            <tr class="text-center">
                                                <td>3</td>
                                                <td>108429090</td>
                                                <td>Rahul Gupta</td>
                                                <td>2021</td>
                                                <td>7654321098</td>
                                                <td>rahul.gupta@example.com</td>
                                                <td>Jabalpur, MP</td>
                                                <td>12th</td>
                                                <td>Arts</td>
                                               
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4</td>
                                                <td>104509097</td>
                                                <td>Neha Singh</td>
                                                <td>2023</td>
                                                <td>6543210987</td>
                                                <td>neha.singh@example.com</td>
                                                <td>Gwalior, MP</td>
                                                <td>12th</td>
                                                <td>Commerce</td>
                                               

                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5</td>
                                                <td>106702360</td>
                                                <td>Ankit Jain</td>
                                                <td>2020</td>
                                                <td>5432109876</td>
                                                <td>ankit.jain@example.com</td>
                                                <td>Sagar, MP</td>
                                                <td>12th</td>
                                                <td>Science</td>
                                                

                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>

                                            <tr class="text-center">
                                                <td>6</td>
                                                <td>107321079</td>
                                                <td>Pooja Patel</td>
                                                <td>2022</td>
                                                <td>4321098765</td>
                                                <td>pooja.patel@example.com</td>
                                                <td>Ujjain, MP</td>
                                                <td>12th</td>
                                                <td>Arts</td>
                                                
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>

                                            <tr class="text-center">
                                                <td>7</td>
                                                <td>124542009</td>
                                                <td>Rohit Mishra</td>
                                                <td>2021</td>
                                                <td>3210987654</td>
                                                <td>rohit.mishra@example.com</td>
                                                <td>Rewa, MP</td>
                                                <td>12th</td>
                                                <td>Commerce</td>
                                               
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>8</td>
                                                <td>127854329</td>
                                                <td>Simran Chauhan</td>
                                                <td>2023</td>
                                                <td>2109876543</td>
                                                <td>simran.chauhan@example.com</td>
                                                <td>Ratlam, MP</td>
                                                <td>12th</td>
                                                <td>Science</td>
                                                
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>9</td>
                                                <td>120987432</td>
                                                <td>Mohit Tiwari</td>
                                                <td>2020</td>
                                                <td>1098765432</td>
                                                <td>mohit.tiwari@example.com</td>
                                                <td>Shahdol, MP</td>
                                                <td>12th</td>
                                                <td>Arts</td>
                                               
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>10</td>
                                                <td>108723904</td>
                                                <td>Anjali Dubey</td>
                                                <td>2022</td>
                                                <td>0987654321</td>
                                                <td>anjali.dubey@example.com</td>
                                                <td>Dewas, MP</td>
                                                <td>12th</td>
                                                <td>Commerce</td>
                                                
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>



                                            <!-- Add more rows here -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                </div>
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
                                                <select class="form-control select2" placeholder="Female" disabled="disabled">
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
                                            <th>Select Class</th>
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
                                                <select class="form-control select2">
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
            <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: var(--vz-primary);">
                            <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                            <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Student Registration Details/विद्यार्थी  पंजीकरण विवरण</h3>
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
                                            <td>Riya Gupta</td>
                                            <th>Student Name (Hindi)
                                            </th>
                                            <td>रिया गुप्ता</td>
                                            <th>Gender
                                            </th>
                                            <td>Female</td>
                                        </tr>
                                        <tr>
                                            <th>Date of Birth</th>
                                            <td>05/03/2000</td>
                                            <th>Category</th>
                                            <td>OBC</td>
                                            <th>Religion</th>
                                            <td>Hindu</td>
                                        </tr>
                                        <tr>
                                            <th>Father's Name</th>
                                            <td>Ram Gupta</td>
                                            <th>Mother's Name</th>
                                            <td>Nikita Gupta</td>
                                            <th>Mobile No</th>
                                            <td>8878456789</td>
                                        </tr>
                                        <tr>
                                            <th>BPL</th>
                                            <td>Yes</td>
                                            <th>Disability</th>
                                            <td>No</td>
                                            <th>Is there a Freed/Nomadic/Semi-Nomadic Caste</th>
                                            <td>घुमक्कड़</td>
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
                                            <td>Madhya Pradesh</td>
                                            <th>Division Name</th>
                                            <td>Bhopal</td>
                                            <th>District Name</th>
                                            <td>Bhopal</td>
                                        </tr>
                                        <tr>
                                            <th>Block Name</th>
                                            <td>Phanda</td>
                                            <th>Village Name</th>
                                            <td>Berasia</td>
                                            <th>Habitation Name</th>
                                            <td>Shivpuri</td>
                                        </tr>
                                        <tr>
                                            <th>Address</th>
                                            <td>Robertson, 1234 NW Bobcat Lane,<br />
                                                Robert, MO 65584-5678</td>
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
                                            <th>Is Single Child</th>
                                            <td>Yes</td>
                                            <th>Is Father Dead ?</th>
                                            <td>No</td>
                                        </tr>
                                        <tr>
                                            <th>Are the Students Unparented ?</th>
                                            <td>No</td>
                                            <td colspan="2"></td>
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
                                            <td>2234769808</td>
                                            <th>Class</th>
                                            <td>4th class</td>
                                            <th>Select Applicable for Student Residence</th>
                                            <td>Day Scholar</td>
                                        </tr>
                                        <tr>
                                            <th>Scolar Number</th>
                                            <td>RTY345345</td>
                                            <th>Percentage</th>
                                            <td>30%</td>
                                            <td colspan="2"></td>
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
                                            <td>GOVT HSS AHAMDABAD-23320400117</td>
                                            <th>Date of Admission</th>
                                            <td>02/04/2022</td>
                                            <th>Select Applicable for Student Residence</th>
                                            <td>Day Scholar</td>
                                        </tr>
                                        <tr>
                                            <th>Class</th>
                                            <td>4th class</td>
                                            <th>Scolar Number</th>
                                            <td>RTE4567788</td>
                                            <td colspan="2"></td>
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
                                            <td>SBI7897653</td>
                                            <th>Bank Name</th>
                                            <td>State Bank of India</td>
                                            <th>Branch</th>
                                            <td>Bhopal</td>
                                        </tr>
                                        <tr>
                                            <th>Account No.
                                            </th>
                                            <td>236576867889</td>
                                            <th>Account Holder Name</th>
                                            <td colspan="3">Riya Gupta</td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>

                            <fieldset>
                                <legend id="l13">Document / दस्तावेज़</legend>
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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

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
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg6"></i></button>

                                                </td>
                                            </tr>

                                    </table>
                                </div>
                            </fieldset>
                        </div>
                        <%--<div id="show1">
                
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
                              
विद्यार्थी  फोटो अपलोड करें :
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
                    
                        <div  class="col-md-4" id="DisCertificate">
                            <label>
                                Upload Student Disability Certificate<br />
                                विद्यार्थी  विकलांगता प्रमाणपत्र अपलोड करें
 :
                            </label>
                        </div>
                        <div class="col-md-4" id="file">
                            <input type="file" id="fileInput3" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4" id="eye">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>


                        </div>
                        
                            
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="DocCaste" class="col-md-4">
                            <label>
                                Upload Student Cast/Category Certificate<br />
                             विद्यार्थी  का जाति और श्रेणी प्रमाणपत्र अपलोड करें:
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
                               Student Upload Transfer Certificate<br />
                             विद्यार्थी  का   स्थानांतरण  प्रमाण पत्र अपलोड करें :
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
                            Upload  Student   Bank Passbook <br />
                               विद्यार्थी  का बैंक पासबुक  अपलोड करें :
                            </label>
                        </div>
                        <div id="Dochandicapped1" class="col-md-4">
                            <input type="file" id="fileInput6" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="Dochandicapped2" class="col-md-4">
                            <a href=""  class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></a>

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
              
                 <div class="modal-footer justify-content-center d-print-none">
     <button type="button" class="btn btn-primary mr-2" onclick="printModalContent('staticBackdrop'); ">Print</button>
     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
 </div>
        </div>--%>
                    </div>
                </div>
            </div>
            <div class="modal" id="bs-example-modal-lg6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#exampleModal" aria-hidden="true" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">

                            <img src="../../img/CasteCertificate1.jpg" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>


            </div>

        </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">

    </script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });</script>

    <script>
        function HideShow() {
            var txtAcademicYear = document.getElementById('txtAcademicYear');

            if (txtAcademicYear.value === "") {
                document.getElementById('showAllDetails').style.display = 'none';
            } else {
                document.getElementById('showAllDetails').style.display = 'block';
            }
        }
    </script>

</asp:Content>

