<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Order.aspx.cs" Inherits="mis_HRMS_Mst_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        /* Style for the textarea */
        #workdescription {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Order Information </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>--%>
                    <li class="breadcrumb-item active">Order Information </li>
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
                    1):- Please Upload File In PDF Formate.<br />
                    2):- File Shize Should Be Less Than 400 KB.<br />
                    3):-Don't upload .doc, .xls, .jpg or any other format file.
                    <br />
                    <%--4):-Click here to download PDF Creater software.--%>
                </p>
            </fieldset>
            <fieldset>
                <legend>Order Information 
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Order Number
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Order Number " />

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Subject</label>
                            <textarea class="form-control" id="workdescription" rows="1" placeholder="Enter Subject Description" oninput="autoResize(this)"></textarea>
                        </div>
                        <script>
                            // JavaScript function to automatically resize the textarea
                            function autoResize(textarea) {
                                textarea.style.height = 'auto'; // Reset height to auto
                                textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
                            }
                        </script>


                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Order Category
                            </label>
                            <select id="" name="circular-category" class="form-control">
                                <option value="Academic">Select</option>
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
                                Isseued By
                            </label>
                            <select id="tender_issued_by" name="tender_issued_by" class="form-control">
                                <option value="School Education Department">School Education Department</option>
                                <option value="Directorate of Public Instruction">Directorate of Public Instruction</option>
                                <option value="Rajya Shiksha Kendra">Rajya Shiksha Kendra</option>
                                <option value="Commissioner, Tribal Development">Commissioner, Tribal Development</option>
                                <option value="RMSA">RMSA</option>
                                <option value="District Education Officer">District Education Officer</option>
                                <option value="District Project Coordinator, SSA">District Project Coordinator, SSA</option>
                                <option value="SECRT">SECRT</option>
                                <option value="Joint Director">Joint Director</option>
                                <option value="Block Education Officer">Block Education Officer</option>
                                <option value="Block Resource Coordinator">Block Resource Coordinator</option>
                                <option value="Asst. Commissioner, Tribal">Asst. Commissioner, Tribal</option>
                                <option value="Others">Others</option>
                            </select>
                        </div>
                    </div>
                </div>



                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                From Whom
                            </label>
                            <select id="for-whom" name="for-whom" class="form-control">
                                <option value="Academic">Select</option>
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
                                Select Priority
                            </label>
                            <select id="" name="for-whom" class="form-control">
                                <option value="Academic">Select</option>
                                <option value="All">Normal</option>
                                <option value="Teacher">Medium</option>
                                <option value="DDO">High</option>
                                <option value="Principal/HOD">Very High</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Issue Date 

                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Expiry Date 

                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>

                </div>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Upload File</label>
                            <input type="file" class="form-control" />

                        </div>
                    </div>


                    <div class="col-md-3" style="margin-top: 30px;">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_Order.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>


                </div>



            </fieldset>
            <fieldset id="vacaniesDetail">
                <legend>Order Detail
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table  table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No</th>
                                        <th>Order-ID</th>
                                        <th>Order-No</th>
                                        <th>Issue Date</th>
                                        <th>Expiry Date</th>
                                        <th>Order Document</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>F11/8/2024/नियम/चार</td>
                                        <td>4/4/2024</td>
                                        <td>6/8/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>6</td>
                                        <td>F14/9/2024/नियम/चार</td>
                                        <td>14/4/2024</td>
                                        <td>16/8/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <!-- Add more rows if needed -->
                                    <tr hidden id="1">
                                        <td>3</td>
                                        <td>10</td>
                                        <td>F22/12/2024/नियम/चार</td>
                                        <td>22/4/2024</td>
                                        <td>24/8/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr hidden id="2">
                                        <td>4</td>
                                        <td>15</td>
                                        <td>F29/12/2024/नियम/चार</td>
                                        <td>29/4/2024</td>
                                        <td>1/9/2024</td>
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

