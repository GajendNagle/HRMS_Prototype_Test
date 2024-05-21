<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_CircularOrder.aspx.cs" Inherits="mis_HRMS_Mst_CircularOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <%-- <link href="../dist/css/bootstrap-multiselect.css" rel="stylesheet" />--%>

    <style>
        /* Style for the textarea */
        #workdescription {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        .multiselect-native-select .multiselect {
            text-align: left !important;
        }

        .multiselect-native-select .multiselect-selected-text {
            width: 100% !important;
        }

        .multiselect-native-select .checkbox, .multiselect-native-select .dropdown-menu {
            width: 100% !important;
        }

        .multiselect-native-select .btn .caret {
            float: right !important;
            vertical-align: middle !important;
            margin-top: 8px;
            border-top: 6px dashed;
        }

        .multiselect-container {
            position: absolute;
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: auto;
            max-height: 250px;
        }

        .select2-container .select2-selection--single {
            height: 38px !important;
            border: 1px solid #c74900 !important;
            border-radius: 2rem !important;
        }

        .select2-container--default .select2-selection--multiple {
            border-radius: 0.6rem;
            border: 1px solid #1B5B5C;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Circular Order</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>--%>
                    <li class="breadcrumb-item active">Circular Order</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <%--                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b>Mutual Transfer Application</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Update Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferPrintApplication.aspx">Print Application</a></li>
                                </ul>
                            </li> --%>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="AllOrderDetails.aspx" role="button" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_CircularOrder.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Circulars</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_Order.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Orders</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_TenderDetail.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Tenders</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="PhotoAlbumDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Photos</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="NewsDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;News</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="EventInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Events</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="MessageInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Messages</b></strong></a>
                            </li>

                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>Important Note </legend>
                <p class="text-bold font-16">
                    <b>1):- Please Upload File In PDF Formate.</b><br />
                    <b>2):- File Shize Should Be Less Than 700 KB.</b><br />
                    <b>3):-Don't upload .doc, .xls, .jpg or any other format file.</b>
                    <br />

                </p>
            </fieldset>
            <fieldset>
                <legend>Circular Order
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Circular Number<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Circular Number " />

                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Issue Date <span style="color: red">*</span>

                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Isseued By <span style="color: red">*</span>
                            </label>
                            <select id="issuing-authority" name="issuing-authority" class="form-control">
                                <option value="Academic">--Select--</option>
                                <option value="School Education Dept, Govt of MP">School Education Dept, Govt of MP</option>
                                <option value="MPBSE- MP Board of Secondary Education">MPBSE- MP Board of Secondary Education</option>
                                <option value="DPI-Directorate of Public Instruction">DPI-Directorate of Public Instruction</option>
                                <option value="CTD-Tribal Development">CTD-Tribal Development</option>
                                <option value="RSK-Rajya Shiksha Kendra">RSK-Rajya Shiksha Kendra</option>
                                <option value="SECRT-State Coincil of Eucation and Training">SECRT-State Coincil of Eucation and Training</option>
                                <option value="JDE-Office of Joint Director (Education)">JDE-Office of Joint Director (Education)</option>
                                <option value="DEO-District Education Offices">DEO-District Education Offices</option>
                                <option value="DPC-District Project Office">DPC-District Project Office</option>
                                <option value="MP State Open School Education Board">MP State Open School Education Board</option>
                                <option value="MPSS-Maharashi Patanjali Sanskrit Sansthaan">MPSS-Maharashi Patanjali Sanskrit Sansthaan</option>
                                <option value="MP Madarasa Board">MP Madarasa Board</option>
                                <option value="Bharat Scout and Guide">Bharat Scout and Guide</option>
                                <option value="Others">Others</option>
                                <option value="All">All</option>
                                <option value="Government/Mantralaya">Government/Mantralaya</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">


                        <div class="form-group">
                            <label>Select Circular Related Module <span style="color: red">*</span> </label>

                            <asp:DropDownList ID="ddlmedium" runat="server" multiple="multiple" CssClass="select2 form-control" ToolTip="Select Circular Related Module">
                                <asp:ListItem Value="" Text="Select options..." />
                                <asp:ListItem Value="Appointment Related">Appointment Related</asp:ListItem>
                                <asp:ListItem Value="HR MIS">HR MIS</asp:ListItem>
                                <asp:ListItem Value="Deputation Related">Deputation Related</asp:ListItem>
                                <asp:ListItem Value="Civil Works">Civil Works</asp:ListItem>
                                <asp:ListItem Value="Teacher Portal">Teacher Portal</asp:ListItem>
                                <asp:ListItem Value="Enrollment & Facilities">Enrollment & Facilities</asp:ListItem>
                                <asp:ListItem Value="Retirement Claims Monitoring - RCMS">Retirement Claims Monitoring - RCMS</asp:ListItem>
                                <asp:ListItem Value="Monthly Tests">Monthly Tests</asp:ListItem>
                                <asp:ListItem Value="Utkrisht Karya Hetu Shikshak Samman">Utkrisht Karya Hetu Shikshak Samman</asp:ListItem>
                                <asp:ListItem Value="e-Service Book">e-Service Book</asp:ListItem>
                                <asp:ListItem Value="Guest Faculties">Guest Faculties</asp:ListItem>
                                <asp:ListItem Value="Inspections">Inspections</asp:ListItem>
                                <asp:ListItem Value="Transfers">Transfers</asp:ListItem>
                                <asp:ListItem Value="Out Of School Related(OOSC)">Out Of School Related(OOSC)</asp:ListItem>
                                <asp:ListItem Value="CivilServices Encouragement Scheme">CivilServices Encouragement Scheme</asp:ListItem>
                                <asp:ListItem Value="Village Education Register(VER)">Village Education Register(VER)</asp:ListItem>
                                <asp:ListItem Value="VTCs/TCPCs">VTCs/TCPCs</asp:ListItem>
                                <asp:ListItem Value="Children With Special Needs(CWSN)">Children With Special Needs(CWSN)</asp:ListItem>
                                <asp:ListItem Value="Kanya Saksharta Protsahan Yojna">Kanya Saksharta Protsahan Yojna</asp:ListItem>
                                <asp:ListItem Value="Free Cycles Distribution">Free Cycles Distribution</asp:ListItem>
                                <asp:ListItem Value="Financial Accounts Management System">Financial Accounts Management System</asp:ListItem>
                                <asp:ListItem Value="Samiksha & Score Card">Samiksha & Score Card</asp:ListItem>
                                <asp:ListItem Value="Right To Education">Right To Education</asp:ListItem>
                                <asp:ListItem Value="Annual Property Returns(APR)">Annual Property Returns(APR)</asp:ListItem>
                                <asp:ListItem Value="KGBV">KGBV</asp:ListItem>
                                <asp:ListItem Value="Teacher Subject Mappings(TSM)">Teacher Subject Mappings(TSM)</asp:ListItem>
                                <asp:ListItem Value="Pratibha Prav">Pratibha Prav</asp:ListItem>
                                <asp:ListItem Value="Balika Shiksha Protsahan Yojna (BSPY)">Balika Shiksha Protsahan Yojna (BSPY)</asp:ListItem>
                                <asp:ListItem Value="School Portal">School Portal</asp:ListItem>
                                <asp:ListItem Value="Inspire Awards">Inspire Awards</asp:ListItem>
                                <asp:ListItem Value="New Pention Scheme">New Pention Scheme</asp:ListItem>
                                <asp:ListItem Value="School Mapping With VidhanSabha & JSK">School Mapping With VidhanSabha & JSK</asp:ListItem>
                                <asp:ListItem Value="Child Tracking System">Child Tracking System</asp:ListItem>
                                <asp:ListItem Value="Free Text Book Distribution Management">Free Text Book Distribution Management</asp:ListItem>
                                <asp:ListItem Value="SAMAGRA Scholarships">SAMAGRA Scholarships</asp:ListItem>
                                <asp:ListItem Value="Annual Exam Results Entry & Analysis">Annual Exam Results Entry & Analysis</asp:ListItem>
                                <asp:ListItem Value="m-Shiksha Mitra">m-Shiksha Mitra</asp:ListItem>
                                <asp:ListItem Value="Student Information System(SIS)">Student Information System(SIS)</asp:ListItem>
                                <asp:ListItem Value="knowledge hub">knowledge hub</asp:ListItem>
                                <asp:ListItem Value="Training">Training</asp:ListItem>
                            </asp:DropDownList>

                        </div>

                    </div>

                </div>


                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Circular Category<span style="color: red">*</span></label>
                            <select id="" name="circular-category" class="form-control">
                                <option value="Academic">--Select--</option>
                                <option value="Academic">Academic</option>
                                <option value="Academic Calendar">Academic Calendar</option>
                                <option value="Accounts">Accounts</option>
                                <option value="Administration">Administration</option>
                                <option value="Adult Education">Adult Education</option>
                                <option value="Book List of Books">Book List of Books</option>
                                <option value="Budget">Budget</option>
                                <option value="Building">Building</option>
                                <option value="CE">CE</option>
                                <option value="Chhatisgarh Cell">Chhatisgarh Cell</option>
                                <option value="Civil Works">Civil Works</option>
                                <option value="Coordination">Coordination</option>
                                <option value="Curriculam">Curriculam</option>
                                <option value="Cycle">Cycle</option>
                                <option value="Dakshata/Monthly Tests">Dakshata/Monthly Tests</option>
                                <option value="Education Portal">Education Portal</option>
                                <option value="EDUSAT">EDUSAT</option>
                                <option value="ELTI">ELTI</option>
                                <option value="EMRS">EMRS</option>
                                <option value="Enrollment and Retention (E&R)">Enrollment and Retention (E&R)</option>
                                <option value="Establishment">Establishment</option>
                                <option value="Evaluation">Evaluation</option>
                                <option value="Finance1">Finance1</option>
                                <option value="Free Coaching">Free Coaching</option>
                                <option value="Gender unit">Gender unit</option>
                                <option value="Gradation List">Gradation List</option>
                                <option value="Grant">Grant</option>
                                <option value="Grievances / परिवेदना">Grievances / परिवेदना</option>
                                <option value="Guest Faculty">Guest Faculty</option>
                                <option value="Headstart">Headstart</option>
                                <option value="HOSTEL / KHBV">HOSTEL / KHBV</option>
                                <option value="ICT@SCOOL">ICT@SCOOL</option>
                                <option value="IEC">IEC</option>
                                <option value="IED / CWSN">IED / CWSN</option>
                                <option value="INSPIRE AWARDS">INSPIRE AWARDS</option>
                                <option value="IT/E-Gov">IT/E-Gov</option>
                                <option value="Laptop Scheme">Laptop Scheme</option>
                                <option value="Legal cell">Legal cell</option>
                                <option value="Library">Library</option>
                                <option value="Media">Media</option>
                                <option value="Mid-Day Meal">Mid-Day Meal</option>
                                <option value="Minority cell">Minority cell</option>
                                <option value="MIS">MIS</option>
                                <option value="Model Schools/Kanya Shiksha Parisar">Model Schools/Kanya Shiksha Parisar</option>
                                <option value="Monitoring">Monitoring</option>
                                <option value="m-Shiksha Mitra">m-Shiksha Mitra</option>
                                <option value="NTSE-NMMS">NTSE-NMMS</option>
                                <option value="Others">Others</option>
                                <option value="Partnership">Partnership</option>
                                <option value="Physical Education">Physical Education</option>
                                <option value="Planning">Planning</option>
                                <option value="Rationalization of teachers">Rationalization of teachers</option>
                                <option value="Research">Research</option>
                                <option value="RMSA">RMSA</option>
                                <option value="RTE">RTE</option>
                                <option value="RTI">RTI</option>
                                <option value="Samvida Shala Shikshak Recruitment-2012">Samvida Shala Shikshak Recruitment-2012</option>
                                <option value="Samvillian">Samvillian</option>
                                <option value="Sanskrit Cell">Sanskrit Cell</option>
                                <option value="SCERT">SCERT</option>
                                <option value="Scholarships">Scholarships</option>
                                <option value="School Inspections">School Inspections</option>
                                <option value="School of Excellence">School of Excellence</option>
                                <option value="Shiksha Karmi">Shiksha Karmi</option>
                                <option value="Shikshak Samman, Teacher Awards">Shikshak Samman, Teacher Awards</option>
                                <option value="Statistics">Statistics</option>
                                <option value="Stores">Stores</option>
                                <option value="Teacher Education">Teacher Education</option>
                                <option value="Teacher Training">Teacher Training</option>
                                <option value="Text Book">Text Book</option>
                                <option value="Training">Training</option>
                                <option value="Transfer">Transfer</option>
                                <option value="Typing Board">Typing Board</option>
                                <option value="Unit-Wise of Syllabus">Unit-Wise of Syllabus</option>
                                <option value="Vidhansabha">Vidhansabha</option>
                                <option value="Vigilance">Vigilance</option>
                                <option value="VIRTUAL Class">VIRTUAL Class</option>
                                <option value="Vocation Training Centers">Vocation Training Centers</option>
                                <option value="Vocational Education">Vocational Education</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                From Whom <span style="color: red">*</span></label>
                            <select id="for-whom" name="for-whom" class="form-control">
                                <option value="Academic">--Select--</option>
                                <option value="All">All</option>
                                <option value="Teacher">Teacher</option>
                                <option value="DDO">DDO</option>
                                <option value="Principal/HOD">Principal/HOD</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Priority <span style="color: red">*</span></label>
                            <select id="" name="for-whom" class="form-control">
                                <option value="Academic">--Select--</option>
                                <option value="All">Normal</option>
                                <option value="Teacher">Medium</option>
                                <option value="DDO">High</option>
                                <option value="Principal/HOD">Very High</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Upload File<span style="color: red">*</span></label>
                            <input type="file" class="form-control" />

                        </div>
                    </div>

                </div>
                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Enter Subject<span style="color: red">*</span></label>
                            <textarea class="form-control" id="workdescription" rows="1" placeholder="Enter Subject Description" oninput="autoResize(this)"></textarea>
                        </div>


                    </div>
                    <div class="col-md-3" style="margin-top: 30px;">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_CircularOrder.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
                <script>
                    // JavaScript function to automatically resize the textarea
                    function autoResize(textarea) {
                        textarea.style.height = 'auto'; // Reset height to auto
                        textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
                    }
                </script>


            </fieldset>
            <fieldset id="vacaniesDetail">
                <legend>Circular Order Detail
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table  table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>ID</th>
                                        <th>Circular Number</th>
                                        <th>Circular Date</th>
                                        <th>Circular Document</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>545686</td>
                                        <td>1097-1098 कार्यालय संयुक्त संचालक लोक शिक्षण इंदौर संभाग इंदौर अंतर्गत गणक/लेखापाल संवर्ग की दिनाक 01/04/2023 की स्थिति में अंतरिम वरिष्ठता सूची का प्रकाशन |</td>
                                        <td>03/04/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>78878</td>
                                        <td>1097-1098 कार्यालय संयुक्त संचालक लोक शिक्षण इंदौर संभाग इंदौर अंतर्गत गणक/लेखापाल संवर्ग की दिनाक 01/04/2023 की स्थिति में अंतरिम वरिष्ठता सूची का प्रकाशन |</td>
                                        <td>03/02/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                    <tr hidden id="1">
                                        <td>3</td>
                                        <td>73678</td>
                                        <td>क्रमांक/समन्वय/बी/वीडियों कॉन्फ्रेसिंग/01/2024/91-8 अप्रैल 2024 को आयोजित वीडियो कांफ्रेंसिंग स्थगित किये जाने विषयक ।</td>
                                        <td>06/04/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                    <tr hidden id="2">
                                        <td>4</td>
                                        <td>79778</td>
                                        <td>क्रमांक/550-551/744/2018/20-3 पालक द्वारा यूनिफार्म, पुस्तकें एवं अन्य सामग्री क्रय करने के संबंध में।</td>
                                        <td>03/03/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="row">
                <div class="col-md-12 text-center">
                    <button id="viewMoreBtn" class="btn btn-success" type="button" value="View More" onclick="myFunction()">View More</button>

                </div>

            </div>
        </div>
    </div>
    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- <script src="../dist/js/bootstrap-multiselect_Prarup.js"></script>--%>
    <script>
        $(function () {
            $('[id*=temp]').multiselect({
                includeSelectAllOption: true,
                enableFiltering: true,
                filterPlaceholder: 'Search',
                enableCaseInsensitiveFiltering: true,
                buttonWidth: '100%'
            });
        });
    </script>
    <script>
        function myFunction() {
            let element1 = document.getElementById("1");
            let element2 = document.getElementById("2");
            /*   let element3 = document.getElementById("news3");*/

            let view = document.getElementById("viewMoreBtn");
            let hidden1 = element1.getAttribute("hidden") !== null;
            let hidden2 = element2.getAttribute("hidden") !== null;
            /*          let hidden3 = element3.getAttribute("hidden") !== null;*/
            if (hidden1 && hidden2) {
                element1.removeAttribute("hidden");
                element2.removeAttribute("hidden");
                /*   element3.removeAttribute("hidden");*/
                view.innerText = "View Less...";
            }
            else {
                element1.setAttribute("hidden", "hidden");
                element2.setAttribute("hidden", "hidden");

                view.innerText = "View More...";
            }
        }
    </script>
</asp:Content>


