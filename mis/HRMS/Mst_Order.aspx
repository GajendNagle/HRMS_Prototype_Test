<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Order.aspx.cs" Inherits="mis_HRMS_Mst_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }
        /* Style for the textarea */
        #workdescription {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#DashboardDisplay" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Dashboard Display Circulars-Orders</span></a>
                        </li>
                        <li class="breadcrumb-item">Order Information</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                <img src="../../img/Circular%20Order.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">Order Information / आदेश की जानकारी
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Important Note / महत्वपूर्ण लेख </legend>
                <ul class="font-16">
                    <li><b>Please Upload File in PDF Formate.</b></li>
                    <li><b>File Size Shuld be Less Than 400 kb.</b></li>
                    <li><b>Don't Upload .doc, .xls, .jpg or Any Other Formate File.</b></li>
                    <li><b>Click Here to Download PDF Crater Software.</b></li>
                </ul>
            </fieldset>
            <fieldset>
                <legend>Order Information / आदेश की जानकारी
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Enter Order Number /<br />
                            आदेश नंबर दर्ज करें<span style="color: red">*</span></label>
                        <input type="text" class="form-control" placeholder="Enter Order Number " />

                    </div>
                    <div class="col-md-3">
                        <label>
                            Enter Subject /<br />
                            विषय दर्ज करें<span style="color: red">*</span></label>
                        <textarea class="form-control" id="workdescription" rows="1" placeholder="Enter Subject Description" oninput="autoResize(this)"></textarea>
                    </div>
                    <script>
                        // JavaScript function to automatically resize the textarea
                        function autoResize(textarea) {
                            textarea.style.height = 'auto'; // Reset height to auto
                            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
                        }
                    </script>
                    <div class="col-md-3">
                        <label>
                            Select Order Category /
                                <br />
                            आदेश श्रेणी का चयन करें<span style="color: red">*</span></label>
                        <select id="" name="circular-category" class="form-control select2">
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
                    <div class="col-md-3">
                        <label>
                            Select Isseued By /<br />
                            जारीकर्ता का चयन करें<span style="color: red">*</span></label>
                        <select id="tender_issued_by" name="tender_issued_by" class="form-control select2">
                            <option>-Select-</option>
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
                <div class="row">
                    <div class="col-md-3">
                        <label>
                            From Whom /<br />
                            जिस से<span style="color: red">*</span></label>
                        <select id="for-whom" name="for-whom" class="form-control select2">
                            <option value="Academic">Select</option>
                            <option value="All">All</option>
                            <option value="Teacher">Teacher</option>
                            <option value="DDO">DDO</option>
                            <option value="Principal/HOD">Principal/HOD</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Priority /<br />
                            प्राथमिकता का चयन करें<span style="color: red">*</span></label>
                        <select id="" name="for-whom" class="form-control select2">
                            <option value="Academic">Select</option>
                            <option value="All">Normal</option>
                            <option value="Teacher">Medium</option>
                            <option value="DDO">High</option>
                            <option value="Principal/HOD">Very High</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Issue Date /
                                <br />
                            जारी करने की तिथि<span style="color: red">*</span></label>
                        <input type="date" class="form-control" />
                    </div>
                    <div class="col-md-3">
                        <label>
                            Expiry Date /
                                <br />
                            समाप्ति तिथि<span style="color: red">*</span></label>
                        <input type="date" class="form-control" />
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">
                        <label>
                            Upload File /  
                                <br />
                            फ़ाइल अपलोड करें<span style="color: red">*</span></label>
                        <input type="file" class="form-control" />

                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                            <button type="button" class="Alert-Confirmation btn btn-success btn w-lg btn-border">Save</button>
                            <a href="Mst_Order.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                        </div>
                </div>

            </fieldset>
            <fieldset id="vacaniesDetail">
                <legend>Order Detail / आदेश का विवरण
                </legend>

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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table text-center table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No /        
                                            <br />
                                            सरल क्र.</th>
                                        <th>Order-ID /      
                                            <br />
                                            आदेश आई.डी.</th>
                                        <th>Order-No /      
                                            <br />
                                            आदेश क्र.</th>
                                        <th>Issue Date /    
                                            <br />
                                            जारी करने की तिथि</th>
                                        <th>Expiry Date /   
                                            <br />
                                            समाप्ति तिथि</th>
                                        <th>Order Document /
                                            <br />
                                            आदेश दस्तावेज़ </th>
                                        <th>Action        
                                            <br />
                                        </th>
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
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>6</td>
                                        <td>F14/9/2024/नियम/चार</td>
                                        <td>14/4/2024</td>
                                        <td>16/8/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <!-- Add more rows if needed -->
                                    <tr hidden id="1">
                                        <td>3</td>
                                        <td>10</td>
                                        <td>F22/12/2024/नियम/चार</td>
                                        <td>22/4/2024</td>
                                        <td>24/8/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr hidden id="2">
                                        <td>4</td>
                                        <td>15</td>
                                        <td>F29/12/2024/नियम/चार</td>
                                        <td>29/4/2024</td>
                                        <td>1/9/2024</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>

                    <div class="text-center">
                        <button id="viewMoreBtn" class="btn btn-success btn-border" type="button" value="View More" onclick="myFunction()">View More</button>
                    </div>
            </fieldset>
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

