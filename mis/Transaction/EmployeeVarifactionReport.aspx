<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeVarifactionReport.aspx.cs" Inherits="mis_Transaction_EmployeeVarifaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
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
                                <a href="#EmployeeReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                    <span>Employee Report</span></a>
                            </li>
                            <li class="breadcrumb-item"><span>Employee Verification Report</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <img src="/img/Employee%20Registration.png" style="height: 70px">
        </div>
    </div>
    <div class="card card-border-primary ">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Employee Verification Report / कर्मचारी सत्यापन विवरण</h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Employee Verification / कर्मचारी सत्यापन
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District
                                    <br />
                                जिला <span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlApprove">
                                <option value="0">--Select--</option>
                                <option value="51">Agar Malwa</option>
                                <option value="49">Alirajpur</option>
                                <option value="47">Anuppur</option>
                                <option value="46">Ashoknagar</option>
                                <option value="45">Balaghat</option>
                                <option value="28">Barwani</option>
                                <option value="35">Betul</option>
                                <option value="3">Bhind</option>
                                <option value="32">Bhopal</option>
                                <option value="48">Burhanpur</option>
                                <option value="9">Chhatarpur</option>
                                <option value="43">Chhindwara</option>
                                <option value="12">Damoh</option>
                                <option value="5">Datia</option>
                                <option value="23">Dewas</option>
                                <option value="25">Dhar</option>
                                <option value="41">Dindori</option>
                                <option value="7">Guna</option>
                                <option value="4">Gwalior</option>
                                <option value="36">Harda</option>
                                <option value="26">Indore</option>
                                <option value="39">Jabalpur</option>
                                <option value="24">Jhabua</option>
                                <option value="38">Katni</option>
                                <option value="29">Khandwa</option>
                                <option value="27">Khargone</option>
                                <option value="42">Mandla</option>
                                <option value="19">Mandsaur</option>
                                <option value="2">Morena</option>
                                <option value="37">Narmadapuram</option>
                                <option value="40">Narsinghpur</option>
                                <option value="18">Neemuch</option>
                                <option value="52">Niwari</option>
                                <option value="10">Panna</option>
                                <option value="34">Raisen</option>
                                <option value="30">Rajgarh</option>
                                <option value="20">Ratlam</option>
                                <option value="14">Rewa</option>
                                <option value="11">Sagar</option>
                                <option value="13">Satna</option>
                                <option value="33">Sehore</option>
                                <option value="44">Seoni</option>
                                <option value="16">Shahdol</option>
                                <option value="22">Shajapur</option>
                                <option value="1">Sheopur</option>
                                <option value="6">Shivpuri</option>
                                <option value="17">Sidhi</option>
                                <option value="50">Singrauli</option>
                                <option value="8">Tikamgarh</option>
                                <option value="21">Ujjain</option>
                                <option value="15">Umaria</option>
                                <option value="31">Vidisha</option>
                            </select>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12 form-group">
                        <button onclick="myFunction()" id="searchButton" type="button" class="btn btn-outline-success w-lg btn-border">Search</button>
                        <a runat="server" id="A1" href="EmployeeVarificationReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="showdetails" style="display: none;">
                <legend>Verification Details / सत्यापन विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
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
                <div class="row form-group">
                    <div class="col-md-12" id="appid">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No.
                                                <br />
                                            सरल क्र.</th>
                                        <th>Employee's name 
                                                <br />
                                            कर्मचारी का नाम</th>
                                        <th>Designation
                                                <br />
                                            पद</th>

                                        <th>District Name
                                                <br />
                                            जिला का नाम
                                        </th>
                                        <th>OIS Udise Code
                                                <br />

                                            OIS यू डाइस कोड </th>
                                        <th>View More
                                                <br />
                                            अधिक विवरण देखे</th>
                                        <th>Status
                                                <br />
                                            स्थिति</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Shri A.K. Ranjan-0001</td>
                                    <td>LDC</td>
                                    <td>Bhopal</td>
                                    <td>23354932167 - Delhi Public School</td>
                                    <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                    <td>Approved</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Omprakash-0012</td>
                                    <td>UDC</td>
                                    <td>Sehore</td>
                                    <td>23568546215 - Sarasvati Vidhya Mandir</td>
                                    <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                    <td>Approved</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="des">
                <legend>Description / विवरण</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Designation Type</strong>
                                <ul>
                                    <li>User will be able to select <strong>Designation Type </strong>from dropdown. Data populated from <strong>Designation Type master.</strong> </li>
                                </ul>
                            </li>
                            <li><strong>Designation</strong>
                                <ul>
                                    <li>User should be able to select the <strong>Designation </strong>from the dropdown and the data will be populated from the <strong>Designation Master</strong> and data cascade from <strong>Designation Type Master.</strong> </li>
                                </ul>
                            </li>
                            <li><strong>Verification Status</strong>
                                <ul>
                                    <li>In the <strong>verification drop</strong> down, the drop down of pending reject and approval opens. On clicking on pending, the approval option opens, through which the concerned employees can be verified.
                                            <br />
                                        The related drop down is used for the information of the rejected and approved employee.</li>
                                </ul>
                            </li>
                            <li><strong>Search </strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                </ul>

                            </li>
                            <li><strong>Clear</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                </ul>
                            </li>
                            <li><strong>Excel</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on Excel button grid view data export in Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Searchbox</strong>
                                <ul>
                                    <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> .</li>
                                </ul>
                            </li>

                            <li><strong>View more</strong>
                                <ul>
                                    <li>User should be able to click on View button.</li>
                                    <li>After clicking on the View button selected <strong>Employee's
                                    </strong>details will be shown on the pop up screen.</li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </fieldset>
            <!-- sample modal content -->
            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" id="firsttimeModel" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV">
                            <h4 class="modal-title" id="myLargeModalLabel1">Employee Registration Details / कर्मचारी पंजीकरण विवरण</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend id="l1">Personal Information / व्यक्तिगत जानकारी</legend>

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>

                                                <th>First Name :</th>
                                                <td>Ajay </td>
                                                <th>Middle Name</th>
                                                <td>Kumar</td>
                                                <th>Last Name :</th>
                                                <td>Verma</td>

                                            </tr>
                                            <tr>


                                                <th>Father's / Husband Name :</th>
                                                <td>Rameshwar Verma</td>
                                                <th>Date of Birth :</th>
                                                <td>03/06/1992</td>
                                                <th>Age :</th>
                                                <td>33</td>
                                            </tr>
                                            <tr>

                                                <th>Gender :</th>
                                                <td>Male</td>
                                                <th>Height :</th>
                                                <td>5'7'</td>
                                                <th>Caste :</th>
                                                <td>OBC</td>

                                            </tr>
                                            <tr>

                                                <th>Sub Caste :</th>
                                                <td>Bhardwaj</td>
                                                <th>Religion :</th>
                                                <td>Hindu</td>
                                                <th>Identification Mark :
                                                </th>
                                                <td>Moles in left Hand</td>
                                            </tr>
                                            <tr>
                                                <th>Blood Group</th>
                                                <td>A+</td>
                                                <th>Handicapped (PWD) :</th>
                                                <td>No</td>
                                                <th>Critical Illness :</th>
                                                <td>No</td>
                                            </tr>
                                            <tr>

                                                <th>Pan No. :</th>
                                                <td>ABCTY1234D</td>
                                                <th>Aadhaar No. :</th>
                                                <td>334512098765</td>
                                                <th>Samagra ID No :</th>
                                                <td>213409876</td>
                                            </tr>
                                            <tr>
                                                <th>Employee Treasury Code :</th>
                                                <td>TYE2345</td>
                                                <th>Employee PRAN Code :</th>
                                                <td>UPE456</td>
                                                <th>Mobile No. :</th>
                                                <td>8878346789</td>
                                            </tr>

                                            <tr>

                                                <th>Email Id :</th>
                                                <td>ajay@gmail.com</td>
                                                <th>Employee Roll No. :</th>
                                                <td>A45687</td>
                                                <th>Aadhaar No. :</th>
                                                <td>334512098765</td>
                                            </tr>

                                            <tr>
                                                <th>Employee Rank :</th>
                                                <td>3rd</td>
                                                <th>Hobbies :</th>
                                                <td colspan="3">Reading Books</td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>

                            <fieldset>
                                <legend id="l2">Nominee Details / नामांकित व्यक्ति का विवरण</legend>
                                <div class="table-responsive">
                                    <table class="table table-bordered">

                                        <tr>
                                            <th>S.No.</th>
                                            <th>Nominee Name</th>
                                            <th>Relationship with Nominee</th>
                                            <th>Nominee Percentage</th>
                                            <%-- <th>Action</th>--%>
                                        </tr>

                                        <tr>
                                            <td>1</td>
                                            <td>Sourya Verma</td>
                                            <td>Brother</td>
                                            <td>50%</td>
                                            <%-- <td><i class="fa fa-pen"></i>|&nbsp <i class="fa fa-trash"></i></td>--%>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Simran Verma</td>
                                            <td>Sister</td>
                                            <td>50%</td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend id="l11">Address / पता</legend>
                                <fieldset class="mt-5">

                                    <legend id="l3">Present Address / वर्तमान पता</legend>

                                    <div class="table-responsive">
                                        <table class="table table-bordered">

                                            <tr>
                                                <th>State :</th>
                                                <td>Madhya Pradesh</td>
                                                <th>Division :</th>
                                                <td>Bhopal</td>
                                            </tr>
                                            <tr>
                                                <th>District :</th>
                                                <td>Raisen</td>
                                                <th>Block :</th>
                                                <td>Begamganj</td>
                                            </tr>
                                            <tr>
                                                <th>Pincode :</th>
                                                <td>462010</td>
                                                <th>Address line 1 :
                                                </th>
                                                <td>2 B, near bank of india, Awadhpuri, Bhopal, Madhya Pradesh</td>
                                            </tr>
                                            <tr>
                                                <th>Address line 2 :</th>
                                                <td colspan="3">Apt 202</td>
                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend id="l4">Permanent Address / स्थायी पता</legend>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>State :</th>
                                                <td>Madhya Pradesh</td>
                                                <th>Division :</th>
                                                <td>Bhopal</td>
                                            </tr>
                                            <tr>
                                                <th>District :</th>
                                                <td>Raisen</td>
                                                <th>Block :</th>
                                                <td>Badi</td>
                                            </tr>
                                            <tr>
                                                <th>Pincode :</th>
                                                <td>462030</td>
                                                <th>Address line 1 :
                                                </th>
                                                <td>123 Main Street, apt 4B San Diego CA, 91911</td>
                                            </tr>
                                            <tr>
                                                <th>Address line 2 :</th>
                                                <td colspan="3">Main Street, apt 4B</td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>
                            </fieldset>
                            <fieldset>

                                <legend id="l5">Marital Status and Spouse Details / वैवाहिक स्थिति और जीवनसाथी का विवरण</legend>

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>Married Status :</th>
                                            <td>Yes</td>
                                            <th>Spouse Name :
                                            </th>
                                            <td>Shalini Verma</td>
                                            <th>Is Spouse Government Employee :</th>
                                            <td>No</td>
                                        </tr>

                                    </table>
                                </div>
                            </fieldset>
                            <fieldset>

                                <legend id="l6">Education Qualification / शैक्षणिक योग्यता</legend>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        
                                        <tr>
                                            <th>S.No.</th>
                                            <th>Qualification</th>
                                            <th>Subject</th>
                                            <th>Board / University Name</th>
                                            <th>Passing Year</th>
                                            <th>Grade / Percentage</th>
                                        </tr>

                                        <tr>
                                            <td>1</td>
                                            <td>MCA</td>
                                            <td>Maths</td>
                                            <td>MP Board</td>
                                            <td>09/05/2020</td>
                                            <td>70%</td>
                                        </tr>

                                        <tr>
                                            <td>2</td>
                                            <td>BSC</td>
                                            <td>Computer</td>
                                            <td>MP Board</td>
                                            <td>09/05/2020</td>
                                            <td>75%</td>
                                        </tr>

                                        <tr>
                                            <td>3</td>
                                            <td>BCA</td>
                                            <td>Maths</td>
                                            <td>MP Board</td>
                                            <td>09/05/2021</td>
                                            <td>77%</td>
                                        </tr>

                                        <tr>
                                            <td>4</td>
                                            <td>MCA</td>
                                            <td>Maths</td>
                                            <td>MP Board</td>
                                            <td>09/05/2020</td>
                                            <td>70%</td>
                                        </tr>

                                    </table>
                                </div>
                            </fieldset>
                            <fieldset>

                                <legend id="l7">First Appointment Details / प्रथम नियुक्ति विवरण</legend>

                                <div class="table-responsive">

                                    <table class="table table-bordered">

                                        <tr>
                                            <th>OIS Type :</th>
                                            <td>Office</td>
                                            <th>Office Type :
                                            </th>
                                            <td>Principal Secretary</td>
                                        </tr>
                                        <tr>
                                            <th>First Appointment Division :</th>
                                            <td>Gwalior</td>
                                            <th>First Appointment District :
                                            </th>
                                            <td>Raisen</td>
                                        </tr>
                                        <tr>
                                            <th>First Appointment Block :</th>
                                            <td>Badi</td>
                                            <th>DDO / Sankul :
                                            </th>
                                            <td>MVM School</td>
                                        </tr>
                                        <tr>

                                            <th>Office/Institute/School Code & Name :
                                            </th>
                                            <td>Reem Higher Secondary School</td>
                                            <th>Office/Institute/School Address of first Posting
                                                   :</th>
                                            <td>Robertson, 1234 NW Bobcat Lane, St. Robert</td>
                                        </tr>
                                        <tr>

                                            <th>First Appointment Order No :
                                            </th>
                                            <td>3456</td>
                                            <th>First Appointment Order Date :</th>
                                            <td>08/04/2020</td>
                                        </tr>
                                        <tr>

                                            <th>First Appointment Department :
                                            </th>
                                            <td>DPI</td>
                                            <th>Employee’s Designation Type :</th>
                                            <td>Clerical</td>
                                        </tr>
                                        <tr>

                                            <th>First Appointment Designation :
                                            </th>
                                            <td>Director</td>
                                            <th>Appointment Joining Date :</th>
                                            <td>09/11/2021</td>
                                        </tr>
                                        <tr>

                                            <th>Panal Name :
                                            </th>
                                            <td>SSS-3</td>
                                            <th>Subject :</th>
                                            <td>English</td>
                                        </tr>
                                        <tr>

                                            <th>Samvilian Order No. :
                                            </th>
                                            <td>56789</td>
                                            <th>Samvilian Order Date :</th>
                                            <td>23/12/2018</td>
                                        </tr>
                                        <tr>

                                            <th>Working in other Department Organization on Deputation Transfer :
                                            </th>
                                            <td>No</td>
                                            <th>Is Regular :</th>
                                            <td>Yes</td>
                                        </tr>
                                        <tr>

                                            <th>Increment Month :
                                            </th>
                                            <td>January</td>
                                            <th>Provision Period From Month :</th>
                                            <td>01/03/2017</td>
                                        </tr>
                                        <tr>

                                            <th>Provision Period To Month :
                                            </th>
                                            <td>04/07/2021</td>
                                            <th>If Provision Extend :</th>
                                            <td>No</td>
                                        </tr>
                                        <tr>

                                            <th>Provision Type :
                                            </th>
                                            <td>Regular Employee</td>
                                            <th>Employee Retirement Date</th>
                                            <td>09/12/2026</td>
                                        </tr>
                                        <tr>
                                            <th>Type of Post :</th>
                                            <td>Samvida Employee</td>
                                            <th>Class :
                                            </th>
                                            <td>Class 3</td>

                                        </tr>
                                        <tr>
                                            <th>Pay Commission :</th>
                                            <td>Seventh Pay Commission</td>
                                            <th>Level :</th>
                                            <td>Level-3</td>

                                        </tr>
                                        <tr>
                                            <th>Pay Scale :</th>
                                            <td>9300-34800</td>
                                            <th>Basic Pay :</th>
                                            <td>16500</td>
                                        </tr>

                                    </table>
                                </div>
                            </fieldset>
                            <fieldset>

                                <legend id="l8">Current Appointment Details / वर्तमान नियुक्ति विवरण</legend>

                                <div class="table-responsive">

                                    <table class="table table-bordered">

                                        <tr>
                                            <th>OIS Type :</th>
                                            <td>Institude</td>
                                            <th>Office Type :
                                            </th>
                                            <td>Deputy Secretary</td>
                                        </tr>
                                        <tr>
                                            <th>First Appointment Division :</th>
                                            <td>Narmadapuram</td>
                                            <th>First Appointment District :
                                            </th>
                                            <td>Sehore</td>
                                        </tr>
                                        <tr>
                                            <th>First Appointment Block :</th>
                                            <td>Ashta</td>
                                            <th>DDO / Sankul :
                                            </th>
                                            <td>Geetanjali Public School</td>
                                        </tr>
                                        <tr>
                                            <th>Office/Institute/School Code & Name :
                                            </th>
                                            <td>Reem Higher Secondary School</td>
                                            <th>Office/Institute/School Address of first Posting
:</th>
                                            <td>Robertson, 1234 NW Bobcat Lane, St. Robert</td>
                                        </tr>
                                        <tr>

                                            <th>First Appointment Order No :
                                            </th>
                                            <td>9840</td>
                                            <th>First Appointment Order Date :</th>
                                            <td>09/10/2020</td>
                                        </tr>
                                        <tr>

                                            <th>First Appointment Department :
                                            </th>
                                            <td>DPI</td>
                                            <th>Employee’s Designation Type :</th>
                                            <td>Executive</td>
                                        </tr>
                                        <tr>

                                            <th>First Appointment Designation :
                                            </th>
                                            <td>Joint Director</td>
                                            <th>Appointment Joining Date :</th>
                                            <td>01/11/2021</td>
                                        </tr>
                                        <tr>

                                            <th>Panal Name :
                                            </th>
                                            <td>SSS-5</td>
                                            <th>Subject :</th>
                                            <td>Maths</td>
                                        </tr>
                                        <tr>

                                            <th>Samvilian Order No. :
                                            </th>
                                            <td>92357</td>
                                            <th>Samvilian Order Date :</th>
                                            <td>20/12/2018</td>
                                        </tr>
                                        <tr>

                                            <th>Working in other Department Organization on Deputation Transfer :
                                            </th>
                                            <td>No</td>
                                            <th>Is Regular :</th>
                                            <td>Yes</td>
                                        </tr>
                                        <tr>

                                            <th>Increment Month :
                                            </th>
                                            <td>January</td>
                                            <th>Provision Period From Month :</th>
                                            <td>01/03/2017</td>
                                        </tr>
                                        <tr>

                                            <th>Provision Period To Month :
                                            </th>
                                            <td>04/07/2021</td>
                                            <th>If Provision Extend :</th>
                                            <td>No</td>
                                        </tr>
                                        <tr>

                                            <th>Provision Type :
                                            </th>
                                            <td>Regular Employee</td>
                                            <th>Employee Retirement Date</th>
                                            <td>09/10/2026</td>

                                        </tr>
                                        <tr>
                                            <th>Type of Post :</th>
                                            <td>Samvida Employee</td>
                                            <th>Class :
                                            </th>
                                            <td>Class 3</td>

                                        </tr>
                                        <tr>
                                            <th>Pay Commission :</th>
                                            <td>Seventh Pay Commission</td>
                                            <th>Level :</th>
                                            <td>Level-3</td>

                                        </tr>
                                        <tr>
                                            <th>Pay Scale :</th>
                                            <td>9300-34800</td>
                                            <th>Basic Pay :</th>
                                            <td>16500</td>
                                        </tr>

                                    </table>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend id="l9">Employee Account Info / कर्मचारी खाता जानकारी</legend>
                                <div class="table-responsive">

                                    <table class="table table-bordered">

                                        <tr>
                                            <th>IFSC Code :</th>
                                            <td>SBIN0005943 </td>
                                            <th>Bank Name</th>
                                            <td>State Bank of India</td>

                                        </tr>
                                        <tr>
                                            <th>Branch Name</th>
                                            <td>Jawahar Chowk</td>
                                            <th>Account Type</th>
                                            <td>Salary</td>
                                        </tr>
                                        <tr>
                                            <th>Account No.</th>
                                            <td>0112345678 </td>
                                            <th>Provident Fund :</th>
                                            <td>DPF No.</td>

                                        </tr>
                                        <tr>
                                            <th>DPF No. :</th>
                                            <td>34567</td>
                                            <th>Group Insurance No :</th>
                                            <td>B57445</td>
                                        </tr>
                                        <tr>
                                            <th>Gratuity No. :</th>
                                            <td>TGT5676</td>
                                            <th>EGLS No. :</th>
                                            <td>PO7856</td>
                                        </tr>
                                        <tr>
                                            <th>EDLI No. :</th>
                                            <td>ILG98</td>
                                            <th>ESIC No. :</th>
                                            <td>UYT567</td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Document / दस्तावेज़</legend>
                                <div class="table-responsive">

                                    <table class="table table-bordered ">
                                        <thead  class="nowrap">
                                            <tr>
                                                <th class="text-center">
                                                    <label style="font-weight: bold;">Sr.No.</label>
                                                </th>
                                                <th>
                                                    <label style="font-weight: bold;">Document Name </label>
                                                </th>
                                                <th class="text-center">
                                                    <label style="font-weight: bold;">View Document</label>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td>
                                                    <label>
                                                        Appointment Order Certificate
        <br />
                                                        नियुक्ति आदेश प्रमाण पत्र :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg4"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td>
                                                    <label>
                                                        Birth Certificate
                                                                <br />
                                                        जन्म प्रमाण पत्र  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg5"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td>
                                                    <label>
                                                        Caste Certificate (OBC/ST/SC)<br />
                                                        जाति प्रमाण पत्र (ओबीसी/एसटी/एससी) :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg6"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">5</td>
                                                <td>
                                                    <label>
                                                        Handicapped Certificate
                                                                <br />
                                                        विकलांग प्रमाण पत्र  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg7"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">6</td>
                                                <td>
                                                    <label>
                                                        Critical Illness Certificate<br />
                                                        गंभीर बीमारी प्रमाणपत्र  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg7"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">4</td>
                                                <td>
                                                    <label>
                                                        Present Posting Order
                                                                <br />
                                                        वर्तमान पोस्टिंग ऑर्डर  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg4"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">7</td>
                                                <td>
                                                    <label>
                                                        Married Certificate<br />
                                                        विवाहित प्रमाणपत्र  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg8"></i></button>

                                                </td>
                                            </tr>

                                    </table>
                                </div>
                            </fieldset>

                            <fieldset>
                                <legend>Educational Document / शैक्षिक दस्तावेज़</legend>
                                <div class="table-responsive">

                                    <table class="table table-bordered">
                                        <thead class="nowrap">
                                            <tr>
                                                <th class="text-center">
                                                    <label style="font-weight: bold;">Sr.No.</label>
                                                </th>
                                                <th>
                                                    <label style="font-weight: bold;">Document Name</label>
                                                </th>
                                                <th class="text-center">
                                                    <label style="font-weight: bold;">View Document</label>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td>
                                                    <label>
                                                        10th Marksheet<br />
                                                        10वीं की मार्कशीट  :</label></td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg9"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td>
                                                    <label>
                                                        12th Marksheet<br />
                                                        12वीं की मार्कशीट  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg10"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td>
                                                    <label>
                                                        UG Certificate<br />
                                                        यूजी सर्टिफिकेट  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">4</td>
                                                <td>
                                                    <label>
                                                        Upload PG Certificate<br />
                                                        पीजी प्रमाणपत्र अपलोड करें :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">5</td>
                                                <td>
                                                    <label>
                                                        Diploma Certificate<br />
                                                        डिप्लोमा प्रमाणपत्र  :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">6</td>
                                                <td>
                                                    <label>
                                                        Other Certificate<br />
                                                        अन्य प्रमाणपत्र :
                                                    </label>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal bs-example-modal-lg4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <img src="../../img/AppointmentOrder.jpg" class="img-fluid" />
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal bs-example-modal-lg5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <img src="../../img/Birth-Certificate.jpg" class="img-fluid" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="modal bs-example-modal-lg6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <img src="../../img/CasteCertificate1.jpg" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal bs-example-modal-lg7" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <img src="../../img/Handicape-Certificate.jpg" class="img-fluid" width="800" />

                        </div>
                    </div>
                </div>
            </div>
            <div class="modal bs-example-modal-lg8" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <img src="../../img/Marriage-Certificate1.jpg" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal bs-example-modal-lg9" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <img src="../../img/10thMarksheet.jpg" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal bs-example-modal-lg10" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>
                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <img src="../../img/12thMarksheet.jpg" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal bs-example-modal-lg11" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 style="font: bold; margin-left: auto;"></h3>

                            <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <img src="../../img/UG-Certificate.jpeg" class="img-fluid" width="750" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            var dropdown = document.getElementById("ddlApprove");
            var searchButton = document.getElementById("searchButton");
            var dataSection = document.getElementById("showdetails");
            if (dropdown.value != "0") {
                dataSection.style.display = "block";
            } else {
                dataSection.style.display = "none";
            }
        }
        window.onload = function () {
            document.getElementById("showdetails").style.display = "none";
        }
    </script>
    <script>

        document.getElementById('btn-close').addEventListener('click', function () {
            $('#firsttimeModel').modal('show');
        });
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Success').click(function () {
                    Swal.fire({
                        type: 'success',
                        title: 'Good job!',
                        text: 'Something went wrong!',
                        timer: 2000
                    })
                });

                $('.Alert-Empverify').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Verify Employee ?",
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
                                text: 'Employee Verified Successfully!',
                                timer: 2000
                            }
                            )
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
        // Function to open the Bootstrap modal
        function openBootstrapModalreg() {
            $('#bootstrapModalreg').modal('show');
        }
        function openBootstrapModalreg1() {
            $('#bootstrapModalreg1').modal('show');
        }

    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-SaveOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Approve Successfully!',
                                timer: 2000

                            }
                            )
                            var x = document.getElementById('ShowOrders');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
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
</asp:Content>
