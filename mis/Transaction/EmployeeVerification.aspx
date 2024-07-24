<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeVerification.aspx.cs" Inherits="mis_Transaction_EmployeeVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        thead {
            white-space: nowrap;
        }

        .table-scroll {
            height: 600px;
            overflow-y: auto;
        }

            .table-scroll thead th {
                position: sticky;
                top: 0;
                background-color: #fff;
            }


        #idSpouseOfcAdd {
            display: none;
        }

        #idCertificateDate {
            display: none;
        }

        #idSpouseName {
            display: none;
        }

        #idSpouseDept {
            display: none;
        }

        #idSpouseGovEmp {
            display: none;
        }

        #idSpouseName {
            display: none;
        }



        #handipaceType {
            display: none;
        }

        #HandicapePercentage {
            display: none;
        }

        .card-border-primary {
            border-color: var(--vz-primary) !important;
        }

        #idDeptName {
            display: none;
        }

        #idCurDeptName {
            display: none;
        }

        #LevelF {
            display: none;
        }

        #BasicPayF {
            display: none;
        }

        #GradePayF {
            display: none;
        }

        #PayScaleF {
            display: none;
        }

        #txtBasicPayF {
            display: none;
        }

        #LevelC {
            display: none;
        }

        #BasicPayC {
            display: none;
        }

        #PayScaleC {
            display: none;
        }

        #GradePayC {
            display: none;
        }

        #txtBasicPayC {
            display: none;
        }

        #Div_officetype1 {
        }

        #DivCriticalIllness {
            display: none;
        }

        #P1 {
            display: none;
        }

        #P2 {
            display: none;
        }

        .card-body {
            margin-top: 1rem;
        }

        #P3 {
            display: none;
        }

        #Una {
            display: none;
        }
    </style>
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
                                <a href="#Employee" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                    <span>Employee Registration</span></a>
                            </li>
                            <li class="breadcrumb-item"><span>Employee Verification</span></li>
                        </ol>
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
                        <h4 class="card-title">Employee Verification / कर्मचारी सत्यापन</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                  <fieldset>
      <legend>Verification Details / सत्यापन विवरण</legend>
                      <div class="row align-items-end">
                          <div class="col-md-3">
    <div class="form-group">
        <label>
            Select Block Name
            <br />
            विकासखण्ड के नाम का चयन करें<span style="color: red">*</span></label>
        <select name="ctl00$ContentBody$ctl03" class="form-select select2">

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
                          
                      </div>
                      <hr />
                       <div class="col-md-12 form-group">
     <button onclick="myFunction()" id="searchButton" type="button" class="btn btn-outline-success w-lg btn-border">Search</button>
     <a runat="server" id="A1" href="EmployeeVerification.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
 </div>




                  </fieldset>

                <fieldset id="Verification" style="display:none;">
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
                        <div class="col-md-12" id="penid">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr class="text-center nowrap">
                                            <th>Sr.No.
                                            <br />
                                                सरल क्र.</th>
                                            <th>
                                                <div>
                                                     <label for="checkAll">Action<br />कार्रवाई</label><br />
                                                    <input type="checkbox" style="font-size: small;" id="checkAll" onclick="toggleAll(this)">
                                                   
                                                </div>
                                            </th>
                                            <th>Employee Name 
                                            <br />
                                                कर्मचारी का नाम</th>
                                            <th>Employee ID<br />
                                                कर्मचारी की आई डी</th>

                                            <th>Designation
                                            <br />
                                                पद</th>
                                            <th>Department<br />
                                                विभाग</th>

                                            <%--<th>Sankul Name
                                            <br />
                                                संकुल का नाम
                                            </th>
                                            <th>School Name
                                            <br />
                                                स्कूल का नाम</th>--%>
                                            <%--<th>View More
                                            <br />
                                                अधिक विवरण देखे</th>
                                            <th>Edit
                                            <br />
                                                संपादित करें
                                            </th--%>
                                            <th>Status
                                            <br />
                                                स्थिति</th>
                                            <th>Action<br />
                                                कार्रवाई</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                    <tr class="text-center nowrap">
                                        <td>1</td>
                                        <td scope="col">
                                            <input type="checkbox" id="CheckBox1" />
                                        </td>
                                        <td>Raghav Soni</td>
                                        <td>DF7660</td>
                                        <td>Teacher(UDE)</td>
                                        <td>Department of Eduction</td>
                                        <%-- <td>UDC</td>
                                        <td>23430601402 - Govt. PS Ambakhapa</td>
                                        <td>23320200505 - NEW BEST CONVENT SCHOOL</td>--%>

                                        <%--                 <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td><a class="alert-edit"><i class="fa fa-pen" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"></i></a></td>--%>
                                        <td>Pending</td>
                                        <td style="white-space: nowrap">
                                            <button id="BtnBack1" class="Alert-Save1 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
                                                Edit Personal Info
                                            </button>
                                            <button id="BtnBack2" class="Alert-Save2 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
                                                Edit Official Info
                                            </button>
                                            <button id="BtnBack3" class="Alert-Save3 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
                                                Edit Bank Info
                                            </button>
                                                                                                                                 <button id="BtnBack10" class="Alert-Save4 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
    Edit Upload Certificate
</button>
                                        </td>
                                    </tr>
                                                                   <tr  class="text-center nowrap">
                                     <td>2</td>
                                     <td scope="col">
                                         <input type="checkbox" id="CheckBox2" />
                                     </td>
                                     <td>Rohini Gupta</td>
                                     <td>DH5148</td>
                                     <td>Commissioner</td>
                                     <td>Department of Eduction</td>
                                     <%-- <td>UDC</td>
                                     <td>23430601402 - Govt. PS Ambakhapa</td>
                                     <td>23320200505 - NEW BEST CONVENT SCHOOL</td>--%>

                                     <%--                 <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                     <td><a class="alert-edit"><i class="fa fa-pen" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"></i></a></td>--%>
                                     <td>Pending</td>
                                     <td class="text-center" style="white-space:nowrap">
                                         <button id="BtnBack1" class="Alert-Save1 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
                                             Edit Personal Info
                                         </button>
                                            <button id="BtnBack2" class="Alert-Save2 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
    Edit Official Info
</button>
                                            <button id="BtnBack3" class="Alert-Save3 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
    Edit Bank Info
</button>
                                                                                                                              <button id="BtnBack11" class="Alert-Save4 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
    Edit Upload Certificate
</button>
                                     </td>
                                 </tr>                                    <tr  class="text-center nowrap">
                                     <td>3</td>
                                     <td scope="col">
                                         <input type="checkbox" id="CheckBox3" />
                                     </td>
                                     <td>Raghav Soni</td>
                                     <td>MW 0580</td>
                                     <td>Teacher(UDE)</td>
                                     <td>Department of Eduction</td>
                                     <%-- <td>UDC</td>
                                     <td>23430601402 - Govt. PS Ambakhapa</td>
                                     <td>23320200505 - NEW BEST CONVENT SCHOOL</td>--%>

                                     <%--                 <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                     <td><a class="alert-edit"><i class="fa fa-pen" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"></i></a></td>--%>
                                     <td>Pending</td>
                                     <td class="text-center" style="white-space:nowrap">
                                         <button id="BtnBack1" class="Alert-Save1 btn btn-outline-primary  fs-13 me-4 rounded-4 
                                             w-sm" type="button">
                                             Edit Personal Info
                                         </button>
                                            <button id="BtnBack2" class="Alert-Save2 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
    Edit Official Info
</button>
                                            <button id="BtnBack3" class="Alert-Save3 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
    Edit Bank Info
</button>
                                                                                     <button id="BtnBack12" class="Alert-Save4 btn btn-outline-primary  fs-13 me-4 rounded-4 w-sm" type="button">
    Edit Upload Certificate
</button>
                                     </td>
                                 </tr>
                                    <%--    <tr>
                                        <td>4</td>
                                        <td scope="col">
                                            <input type="checkbox" id="CheckBox4" />
                                        </td>
                                        <td>Dhanraj Sharma-0060</td>
                                        <td>UDC</td>
                                        <td>23430603004 - Govt. PS (Boys) Berdi</td>--%>
                                    <%--  <td>23320200504 - SRASHTI ENGLISH SCHOOL</td>--%>
                                    <%--<td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td><a class="alert-edit"><i class="fa fa-pen" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"></i></a></td>--%>
                                    <%--<td>Pending</td>
                                    </tr>--%>
                                </table>
                            </div>
                        </div>
                    </div>
         
                    <div class="row justify-content-center" id="divbtn">
                        <div class="col-md-12">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="openBootstrapModalreg1()">Approve</button>
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
                                                <th>Nominee Name</th>
                                                <th>Relationship with Nominee</th>
                                                <th>Nominee Percentage</th>
                                                <%--<th>Action</th>--%>
                                            </tr>

                                            <tr>
                                                <td>Sourya Verma</td>
                                                <td>Brother</td>
                                                <td>100%</td>
                                                <%--<td><i class="fa fa-pen"></i>|&nbsp <i class="fa fa-trash"></i></td>--%>
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
                                                <th>Qualification :</th>
                                                <td>BCA</td>
                                                <th>Subject :
                                                </th>
                                                <td>Computer</td>
                                            </tr>
                                            <tr>
                                                <th>Board / Univercity Name :</th>
                                                <td>MP Board</td>
                                                <th>Passing Year :
                                                </th>
                                                <td>03/05/2022</td>
                                            </tr>
                                            <tr>
                                                <th>Grade / Percentage :</th>
                                                <td colspan="3">75%</td>
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
                                                <th>Current Appointment Division :</th>
                                                <td>Narmadapuram</td>
                                                <th>Current Appointment District :
                                                </th>
                                                <td>Sehore</td>
                                            </tr>
                                            <tr>
                                                <th>Current Appointment Block :</th>
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

                                                <th>Current Appointment Order No :
                                                </th>
                                                <td>9840</td>
                                                <th>Current Appointment Order Date :</th>
                                                <td>09/10/2020</td>
                                            </tr>
                                            <tr>

                                                <th>Current Appointment Department :
                                                </th>
                                                <td>DPI</td>
                                                <th>Employee’s Designation Type :</th>
                                                <td>Executive</td>
                                            </tr>
                                            <tr>

                                                <th>Current Appointment Designation :
                                                </th>
                                                <td>Joint Director</td>
                                                <th>Current Appointment Joining Date :</th>
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
                                    <legend id="l13">Document / दस्तावेज़</legend>
                                    <div class="table-responsive">

                                        <table class="table table-bordered ">
                                            <thead>
                                                <tr>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">Sr. No.</label>
                                                    </td>
                                                    <td>
                                                        <label style="font-weight: bold; font-size: large;">Document Name  </label>
                                                    </td>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">View Document</label>
                                                    </td>
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
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg4"></i></button>

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
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg4"></i></button>

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
                                    <legend id="l12">Educational Document / शैक्षिक दस्तावेज़</legend>
                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">Sr. No.</label>
                                                    </td>
                                                    <td>
                                                        <label style="font-weight: bold; font-size: large;">Document Name  </label>
                                                    </td>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">View Document</label>
                                                    </td>
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
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>

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
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>

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
                                                        <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>

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
                                                        <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>
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


                <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" id="firsttimeModel2" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header" id="myDIV1">
                                <h4 class="modal-title" id="myLargeModalLabel2">Employee Update Profile Details / कर्मचारी अपडेट प्रोफ़ाइल विवरण</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>Personal Information / व्यक्तिगत जानकारी</legend>

                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tbody>
                                                <tr>

                                                    <th>First Name :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" id="txtMessage" placeholder="Enter First Name" value="Rohan" /></td>
                                                    <th>Middle Name</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Last Name" value="Kumar" /></td>
                                                    <th>Last Name :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Father/Husband Name" value="Sharma" /></td>

                                                </tr>
                                                <tr>


                                                    <th>Father's / Husband Name:</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Father/Husband Name" value="Akhilesh Sharma" /></td>
                                                    <th>Date of Birth :</th>
                                                    <td>
                                                        <input name="ename" id="dob" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" value="1992-04-05" /></td>
                                                    <th>Age :</th>
                                                    <td>
                                                        <input name="ename" id="txtAge" type="text" class="form-control" autocomplete="off" placeholder="Employee Age" value="32" /></td>
                                                </tr>
                                                <tr>

                                                    <th>Gender :</th>
                                                    <td>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--" selected="selected">Male</option>
                                                            <option value="--Select--">Female</option>
                                                            <option value="--Select--">Other</option>
                                                        </select></td>
                                                    <th>Height :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Height IN (C.M.)" value="5'7" /></td>
                                                    <th>Caste :</th>
                                                    <td>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--" selected="selected">GENERAL</option>
                                                            <option value="--Select--">OBC</option>
                                                            <option value="--Select--">SC</option>
                                                            <option value="--Select--">ST</option>
                                                        </select></td>

                                                </tr>
                                                <tr>

                                                    <th>Sub Caste :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Sub Caste" value="Purohit " /></td>
                                                    <th>Religion :</th>
                                                    <td>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">Hindu</option>
                                                            <option value="--Select--">Muslim</option>
                                                            <option value="--Select--" selected="selected">Sikh</option>
                                                            <option value="--Select--">Isai</option>
                                                        </select></td>
                                                    <th>Identification Mark :
                                                    </th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Identification Mark" value="moles in left hand" /></td>
                                                </tr>
                                                <tr>
                                                    <th>Blood Group</th>
                                                    <td>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">A+</option>
                                                            <option value="--Select--" selected="selected">A-</option>
                                                            <option value="--Select--">B+</option>
                                                            <option value="--Select--">B-</option>
                                                            <option value="--Select--">O+</option>
                                                            <option value="--Select--">O-</option>
                                                        </select></td>

                                                    <th>Critical Illness :</th>
                                                    <td>
                                                        <select class="form-control select2" onchange="ShowHideCriticalIllness()" id="ddlCriticalIllness">
                                                            <option value="Yes">Yes</option>
                                                            <option value="No" selected="selected">No</option>
                                                        </select></td>
                                                    <th>Type of Critical Illness</th>
                                                    <td>
                                                        <select class="form-control select2" disabled="disabled" id="ddlCritical">
                                                            <option>--Select--</option>
                                                            <option value="Cancer/ कैंसर">Cancer/ कैंसर</option>
                                                            <option value="Brain Tumor/ मस्तिष्क का ट्यूमर">Brain Tumor/ मस्तिष्क का ट्यूमर</option>
                                                            <option value="Kidney Transplant/ किडनी प्रत्यारोपण">Kidney Transplant/ किडनी प्रत्यारोपण</option>
                                                            <option value="Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी">Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी</option>
                                                            <option value="Parylasis / पक्षाघात">Parylasis / पक्षाघात</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <th>Handicapped (PWD):</th>
                                                    <td>
                                                        <select onchange="ShowHideHandicape()" id="ddlHandicape" class="form-control select2">
                                                            <option value="Yes">Yes</option>
                                                            <option value="No" selected="selected">No</option>
                                                        </select></td>

                                                    <th>Handicapped Type</th>
                                                    <td>
                                                        <select id="ddlHandicappedType" class="form-control select2" disabled="disabled">
                                                            <option>--Select--</option>
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
                                                    <th>Handicapped Percentage</th>
                                                    <td>
                                                        <select class="form-control select2" id="HandicapePer" disabled="disabled">
                                                            <option>--Select--</option>
                                                            <option value="40 to 50">40 to 50</option>
                                                            <option value="50 to 60">50 to 60</option>
                                                            <option value="60 to 70">60 to 70</option>
                                                            <option value="70 to 80">70 to 80</option>
                                                            <option value="80 to 90">80 to 90</option>
                                                            <option value="90 to 100">90 to 100</option>
                                                        </select></td>
                                                </tr>
                                                <tr>

                                                    <th>Pan No. :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter PAN No." value="CPVE67878" /></td>
                                                    <th>Aadhaar No. :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Aadhaar No." value="332367095476" /></td>
                                                    <th>Samagra ID No :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Samagra ID No." value="912387906" /></td>
                                                </tr>
                                                <tr>
                                                    <th>Employee Treasury Code :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Treasury Code" value="98565" /></td>
                                                    <th>Employee PRAN Code :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Pran Code" value="IOR45" /></td>
                                                    <th>Mobile No. :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Mobile No." value="7834678709" /></td>
                                                </tr>

                                                <tr>

                                                    <th>Email Id :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Email Id" value="rohan@gmail.com" /></td>
                                                    <th>Employee Roll No. :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Roll No." value="21547" /></td>
                                                    <th>Employee Rank :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Rank" value="3rd" /></td>
                                                </tr>

                                                <tr>
                                                    <th>Hobbies :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Hobbies" value="Reading Books" /></td>
                                                    <td colspan="4"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Nominee Details / नामांकित व्यक्ति का विवरण</legend>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">

                                            <tr>
                                                <th>Nominee Name</th>
                                                <th>Relationship with Nominee</th>
                                                <th>Nominee Percentage</th>
                                                <th></th>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <input name="ename" type="text" id="txtNomineeName" class="form-control" autocomplete="off" placeholder="Enter Nominee Name" value="Atul Sharma" /></td>

                                                <td>
                                                    <input name="ename" type="text" id="txtNomineeRelation" class="form-control" autocomplete="off" placeholder="Enter Relationship with Nominee" value="Brother" /></td>

                                                <td>
                                                    <input name="ename" type="text" id="txtNomineePercentage" class="form-control" autocomplete="off" placeholder="Nominee Percentage" value="50%" /></td>

                                                <td>
                                                    <input type="button" id="btnNomineeadd" class="btn btn-outline-success w-lg btn-border" value="ADD" onclick="AddNominee();" /></td>
                                            </tr>
                                        </table>

                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="tblNominee" style="display: none;">
                                                <tr>
                                                    <th>Sr. No.
                <br />
                                                        सरल क्र.</th>
                                                    <th>Nominee Name
                <br />
                                                        नामांकित व्यक्ति का नाम</th>
                                                    <th>Nominee Relation
                <br />
                                                        नामांकित के साथ संबंध</th>
                                                    <th>Nominee Percentage
                <br />
                                                        नामांकित व्यक्ति प्रतिशत</th>
                                                    <th>Action
                <br />
                                                        कार्यवाहीं
                                                    </th>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Address / पता</legend>
                                    <fieldset class="mt-5">

                                        <legend>Present Address / वर्तमान पता</legend>

                                        <div class="table-responsive">
                                            <table class="table table-bordered">

                                                <tr>
                                                    <th>State :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Rajasthan">Rajasthan</option>
                                                            <option value="Maharashtra">Maharashtra</option>
                                                            <option value="Nagaland">Nagaland</option>
                                                            <option value="Nashik">Nashik</option>
                                                            <option value="West">West</option>
                                                            <option value="Bengal">Bengal</option>
                                                            <option value="Telangana">Telangana</option>
                                                            <option value="Assam">Assam</option>
                                                            <option value="Tripura">Tripura</option>
                                                            <option value="Madhya" selected="selected">Madhya</option>
                                                            <option value="Pradesh">Pradesh</option>
                                                            <option value="Tamil">Tamil</option>
                                                            <option value="Nadu">Nadu</option>
                                                            <option value="Gujarat">Gujarat</option>
                                                            <option value="Sikkim">Sikkim</option>
                                                            <option value="Andhra">Andhra</option>
                                                            <option value="Uttar">Uttar</option>
                                                            <option value="Punjab">Punjab</option>
                                                            <option value="Karnataka">Karnataka</option>
                                                            <option value="Meghalaya">Meghalaya</option>
                                                            <option value="Uttarakhand">Uttarakhand</option>
                                                            <option value="Goa">Goa</option>
                                                            <option value="Haryana">Haryana</option>
                                                            <option value="Mizoram">Mizoram</option>
                                                            <option value="Arunachal">Arunachal</option>
                                                            <option value="Pradesh">Pradesh</option>
                                                            <option value="Chhattisgarh">Chhattisgarh</option>
                                                            <option value="Bihar">Bihar</option>
                                                            <option value="Himachal">Himachal</option>
                                                            <option value="Kerala">Kerala</option>
                                                            <option value="Jharkhand">Jharkhand</option>
                                                            <option value="Orissa">Orissa</option>
                                                        </select></td>
                                                    <th>Division :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal">Bhopal</option>
                                                            <option value="Gwalior" selected="selected">Gwalior</option>
                                                            <option value="Narmadapuram">Narmadapuram</option>
                                                            <option value="Indore">Indore</option>
                                                            <option value="Jabalpur">Jabalpur</option>
                                                            <option value="Rewa">Rewa</option>
                                                            <option value="Sagar">Sagar</option>
                                                            <option value="Shahdol">Shahdol</option>
                                                            <option value="Ujjain">Ujjain</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <th>District :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal">Bhopal</option>
                                                            <option value="Raisen">Raisen</option>
                                                            <option value="Rajgarh" selected="selected">Rajgarh</option>
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
                                                    <th>Block :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal">Huzur</option>
                                                            <option value="Raisen">Fanda</option>
                                                            <option value="Govindapura" selected="selected">Govindapura</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <th>Pincode :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Pincode" value="459843" /></td>
                                                    <th>Address line 1 :
                                                    </th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 1" value="Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678" /></td>
                                                </tr>
                                                <tr>
                                                    <th>Address line 2 :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 2" value="Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678" /></td>
                                                    <td colspan="2"></td>
                                                </tr>

                                            </table>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Permanent Address / स्थायी पता</legend>
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th>State :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Rajasthan">Rajasthan</option>
                                                            <option value="Maharashtra" selected="selected">Maharashtra</option>
                                                            <option value="Nagaland">Nagaland</option>
                                                            <option value="Nashik">Nashik</option>
                                                            <option value="West">West</option>
                                                            <option value="Bengal">Bengal</option>
                                                            <option value="Telangana">Telangana</option>
                                                            <option value="Assam">Assam</option>
                                                            <option value="Tripura">Tripura</option>
                                                            <option value="Madhya">Madhya</option>
                                                            <option value="Pradesh">Pradesh</option>
                                                            <option value="Tamil">Tamil</option>
                                                            <option value="Nadu">Nadu</option>
                                                            <option value="Gujarat">Gujarat</option>
                                                            <option value="Sikkim">Sikkim</option>
                                                            <option value="Andhra">Andhra</option>
                                                            <option value="Uttar">Uttar</option>
                                                            <option value="Punjab">Punjab</option>
                                                            <option value="Karnataka">Karnataka</option>
                                                            <option value="Meghalaya">Meghalaya</option>
                                                            <option value="Uttarakhand">Uttarakhand</option>
                                                            <option value="Goa">Goa</option>
                                                            <option value="Haryana">Haryana</option>
                                                            <option value="Mizoram">Mizoram</option>
                                                            <option value="Arunachal">Arunachal</option>
                                                            <option value="Pradesh">Pradesh</option>
                                                            <option value="Chhattisgarh">Chhattisgarh</option>
                                                            <option value="Bihar">Bihar</option>
                                                            <option value="Himachal">Himachal</option>
                                                            <option value="Kerala">Kerala</option>
                                                            <option value="Jharkhand">Jharkhand</option>
                                                            <option value="Orissa">Orissa</option>
                                                        </select></td>
                                                    <th>Division :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal" selected="selected">Bhopal</option>
                                                            <option value="Gwalior">Gwalior</option>
                                                            <option value="Narmadapuram">Narmadapuram</option>
                                                            <option value="Indore">Indore</option>
                                                            <option value="Jabalpur">Jabalpur</option>
                                                            <option value="Rewa">Rewa</option>
                                                            <option value="Sagar">Sagar</option>
                                                            <option value="Shahdol">Shahdol</option>
                                                            <option value="Ujjain">Ujjain</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <th>District :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal">Bhopal</option>
                                                            <option value="Raisen">Raisen</option>
                                                            <option value="Rajgarh">Rajgarh</option>
                                                            <option value="Sehore" selected="selected">Sehore</option>
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
                                                    <th>Block :</th>
                                                    <td>
                                                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal">Huzur</option>
                                                            <option value="Raisen" selected="selected">Fanda</option>
                                                            <option value="Govindapura">Govindapura</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <th>Pincode :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Pincode" value="456723" /></td>
                                                    <th>Address line 1 :
                                                    </th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 1" value="Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678" /></td>
                                                </tr>
                                                <tr>
                                                    <th>Address line 2 :</th>
                                                    <td>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 2" value="Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678" /></td>
                                                    <td colspan="2"></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </fieldset>
                                </fieldset>

                                <fieldset>

                                    <legend>Marital Status and Spouse Details / वैवाहिक स्थिति और जीवनसाथी का विवरण</legend>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <th>Married Status :</th>
                                                        <td>
                                                            <select id="ddlMaarriedStatus" onchange="ShowHideMarried()" class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="Yes" selected="selected">Yes</option>
                                                                <option value="No">No</option>
                                                            </select></td>

                                                        <th>Spouse Name</th>
                                                        <td>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Name" value="Soniya Sharma" /></td>

                                                        <th>Is Spouse Government Employee</th>
                                                        <td>
                                                            <select id="ddlSpouseGovEmp" onchange="ShowHideGovEmp()" class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="Yes">Yes</option>
                                                                <option value="No" selected="selected">No</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr id="GovEmp" style="display: none">
                                                        <th>Spouse Department Name</th>
                                                        <td>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Department Name" /></td>
                                                        <th>Office Address</th>
                                                        <td>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Office Address" /></td>
                                                        <td colspan="2"></td>
                                                    </tr>

                                                </table>

                                            </div>

                                        </div>
                                    </div>

                                </fieldset>

                                <fieldset>

                                    <legend>Education Qualification / शैक्षणिक योग्यता</legend>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>Qualification :</th>
                                                <td>
                                                    <select id="Education" class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="BALLB">BALLB</option>
                                                        <option value="BachelorOfArts">Bachelor of Arts</option>
                                                        <option value="BachelorOfCommerce">Bachelor of Commerce</option>
                                                        <option value="Architecture">Architecture</option>
                                                        <option value="BCA" selected="selected">BCA</option>
                                                        <option value="ComputerScience">Computer Science</option>
                                                        <option value="Education">Education</option>
                                                        <option value="BBA">BBA</option>
                                                        <option value="MBBS">MBBS</option>
                                                        <option value="BachelorOfScience">Bachelor of Science</option>
                                                        <option value="BDesInDesign">BDes in Design</option>
                                                        <option value="Biotechnology">Biotechnology</option>
                                                        <option value="BScIT">BSc IT</option>
                                                        <option value="Engineering">Engineering</option>
                                                        <option value="Humanities">Humanities</option>
                                                        <option value="Management">Management</option>
                                                        <option value="Arts">Arts</option>
                                                        <option value="Aviation">Aviation</option>
                                                        <option value="Bsc">Bsc</option>
                                                        <option value="ChemicalEngineering">Chemical Engineering</option>
                                                        <option value="CivilEngineering">Civil Engineering</option>
                                                        <option value="Economics">Economics</option>
                                                        <option value="ElectricalEngineering">Electrical Engineering</option>
                                                        <option value="FashionDesigning">Fashion designing</option>
                                                        <option value="MBA">MBA</option>
                                                        <option value="EducationLaw">Education Law</option>
                                                        <option value="HospitalAdministration">Hospital Administration</option>
                                                        <option value="MasterOfScienceBiochemistry">Master of Science Biochemistry</option>
                                                        <option value="MBAFinance">MBA Finance</option>
                                                        <option value="MD">MD</option>
                                                        <option value="MassCommunications">Mass communications</option>
                                                        <option value="MastersOfPhysician">Masters Of Physician</option>
                                                        <option value="MCA">MCA</option>
                                                        <option value="PGDiplomaInEntrepreneurshipDevelopment">PG Diploma in Entrepreneurship Development</option>
                                                        <option value="ExecutivePGProgramInManagement">Executive PG program in Management</option>
                                                        <option value="HumanResourceManagement">Human Resource Management</option>
                                                        <option value="InternationalBusiness">International business</option>
                                                        <option value="MasterOfArts">Master of Arts</option>
                                                        <option value="MasterOfDataScience">Master of Data Science</option>
                                                        <option value="MBABusinessAnalytics">MBA Business Analytics</option>
                                                    </select></td>
                                                <th>Subject :
                                                </th>
                                                <td>
                                                    <input id="Subject" value="Computer" name="ename" type="text" class="form-control" placeholder="Enter Subject" /></td>
                                            </tr>
                                            <tr>
                                                <th>Board / Univercity Name :</th>
                                                <td>
                                                    <select id="Board" class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="MP Board" selected="selected">MP Board</option>
                                                        <option value="CBSC Board">CBSC Board</option>
                                                        <option value="ICSC Board">ICSC Board</option>
                                                    </select></td>
                                                <th>Passing Year :
                                                </th>
                                                <td>
                                                    <input id="PassingYear" name="ename" type="date" class="form-control" autocomplete="off" value="2019-02-05" /></td>
                                            </tr>
                                            <tr>
                                                <th>Grade / Percentage :</th>
                                                <td>
                                                    <input id="Grade" value="78%" name="ename" type="text" class="form-control" placeholder="Enter Grade/Percentage" /></td>
                                                <td colspan="2">
                                                    <input type="button" id="btnAdd" class="btn btn-outline-success w-lg btn-border" value="ADD" onclick="AddRow();" /></td>
                                            </tr>

                                        </table>

                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="tableAdd" style="display: none">
                                                <thead>
                                                    <tr>
                                                        <th>Sr. No. 
                    <br />
                                                            सरल क्र.</th>
                                                        <th>Qualification
                    <br />
                                                            योग्यता</th>
                                                        <th>Subject
                    <br />
                                                            विषय</th>
                                                        <th>Board/University
                    <br />
                                                            बोर्ड/यूनिवर्सिटी का नाम</th>
                                                        <th>Passing Year
                    <br />
                                                            उतीर्ण वर्ष</th>
                                                        <th>Grade/Percentage
                    <br />
                                                            क्षेणी (प्रतिशत)</th>
                                                        <th>Action
                    <br />
                                                            कार्यवाहीं</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>

                                    <legend>First Appointment Details / प्रथम नियुक्ति विवरण</legend>

                                    <div class="table-responsive">

                                        <table class="table table-bordered">

                                            <tr>
                                                <th>OIS Type :</th>
                                                <td>
                                                    <select id="ddlRegistrationType" class="form-control select2">
                                                        <option value="0">--Select--</option>
                                                        <option value="2">Office</option>
                                                        <option value="3" selected="selected">Institute</option>
                                                        <option value="1">School</option>
                                                    </select></td>
                                                <th>Office Type :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="PrincipalSecretary">Principal Secretary</option>
                                                        <option value="Secretary" selected="selected">Secretary</option>
                                                        <option value="DeputySecretary">Deputy Secretary</option>
                                                        <option value="CPI">CPI</option>
                                                        <option value="CRSK">CRSK</option>
                                                        <option value="DPI">DPI</option>
                                                        <option value="Collector">Collector</option>
                                                        <option value="CEOZP">CEO, ZP</option>
                                                        <option value="JointDirector">Joint Director</option>
                                                        <option value="DEO">DEO</option>
                                                        <option value="DPC">DPC</option>
                                                        <option value="BEO">BEO</option>
                                                        <option value="BRC">BRC</option>
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <th>First Appointment Division :</th>
                                                <td>
                                                    <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Gwalior" selected="selected">Gwalior</option>
                                                        <option value="Narmadapuram">Narmadapuram</option>
                                                        <option value="Indore">Indore</option>
                                                        <option value="Jabalpur">Jabalpur</option>
                                                        <option value="Rewa">Rewa</option>
                                                        <option value="Sagar">Sagar</option>
                                                        <option value="Shahdol">Shahdol</option>
                                                        <option value="Ujjain">Ujjain</option>
                                                    </select></td>
                                                <th>First Appointment District :
                                                </th>
                                                <td>
                                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Raisen">Raisen</option>
                                                        <option value="Rajgarh" selected="selected">Rajgarh</option>
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
                                                <th>First Appointment Block :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="Agar">Agar</option>
                                                        <option value="Barod">Barod</option>
                                                        <option value="Nalkheda">Nalkheda</option>
                                                        <option value="Susner">Susner</option>
                                                        <option value="Alirajpur" selected="selected">Alirajpur</option>
                                                        <option value="Bhabra">Bhabra</option>
                                                        <option value="Katthiwara">Katthiwara</option>
                                                        <option value="Sondwa">Sondwa</option>
                                                        <option value="Udaygarh">Udaygarh</option>
                                                        <option value="Jobat">Jobat</option>
                                                        <option value="Anuppur">Anuppur</option>
                                                        <option value="Jaithari">Jaithari</option>
                                                        <option value="Kotma">Kotma</option>

                                                    </select></td>
                                                <th>DDO / Sankul :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="--Select--">Geetanjali Public School</option>
                                                        <option value="--Select--" selected="selected">MVM School</option>
                                                        <option value="--Select--">Uma Vidhaya Niketan HS School</option>
                                                        <option value="--Select--">Manvendra Public School</option>
                                                        <option value="--Select--">Rose Marry Public School</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Office/Institute/School Code & Name :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="--Select--">GB Convent School</option>
                                                        <option value="--Select--">Reem Higher Secondary School</option>
                                                        <option value="--Select--" selected="selected">Geetanjali Public School</option>
                                                        <option value="--Select--">Uma Vidhaya Niketan HS School</option>
                                                        <option value="--Select--">Manvendra Public School</option>
                                                        <option value="--Select--">Rose Marry Public School</option>
                                                    </select></td>
                                                <th>Office/Institute/School Address of first Posting
                                                   :</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address" value="Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678" /></td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Order No :
                                                </th>
                                                <td>
                                                    <input name="ename" type="text" placeholder="Enter Order No." class="form-control" autocomplete="off" value="12689" /></td>
                                                <th>First Appointment Order Date :</th>
                                                <td>
                                                    <input name="ename" type="date" class="form-control" autocomplete="off" value="2021-09-23" /></td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Department :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----">DPI</option>
                                                        <option value="----" selected="selected">Department of Education</option>
                                                        <option value="----">Tribal Welfare Department</option>
                                                        <option value="----">Local Body</option>
                                                        <option value="----">Other State Govt Managed</option>
                                                        <option value="----">Other Department</option>
                                                    </select></td>
                                                <th>Employee’s Designation Type :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----">Clerical</option>
                                                        <option value="----">Executive</option>
                                                        <option value="----" selected="selected">Ministry</option>
                                                        <option value="----">Teaching</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Designation :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="Commissioner">Commissioner</option>
                                                        <option value="Director">Director</option>
                                                        <option value="AdditionalDirector">Additional Director</option>
                                                        <option value="JointDirector">Joint Director</option>
                                                        <option value="DeputyDirector">Deputy Director</option>
                                                        <option value="AsstDirector" selected="selected">Asstt Director</option>
                                                        <option value="RegionalLibrarian">Regional Librarian</option>
                                                        <option value="PlanningOfficer">Planning Officer</option>
                                                        <option value="DirectorELTI">Director (ELTI)</option>
                                                        <option value="DirectorSISE">Director (SISE)</option>
                                                        <option value="PrincipalPGBT">Principal (PGBT)</option>
                                                        <option value="PrincipalDIET">Principal (DIET)</option>
                                                        <option value="PrincipalHSS">Principal HSS</option>
                                                        <option value="PrincipalHS">Principal HS</option>
                                                        <option value="Lecturer">Lecturer</option>
                                                        <option value="HMMS">HM(MS)</option>
                                                        <option value="TeacherUDT">Teacher (UDT)</option>
                                                        <option value="MusicTeacher">Music Teacher</option>
                                                        <option value="TablaTeacher">Tabla Teacher</option>
                                                        <option value="CraftTeacher">Craft Teacher</option>
                                                        <option value="HMPS">HM(PS)</option>
                                                        <option value="AsstTeacherLDT">Asstt Teacher(LDT)</option>
                                                        <option value="VaristhaAdhyapak">Varistha Adhyapak</option>
                                                        <option value="Adhyapak">Adhyapak</option>
                                                        <option value="SahayakAdhyapak">Sahayak Adhyapak</option>
                                                        <option value="ShikshaKarmi1">Shiksha Karmi-1</option>
                                                        <option value="ShikshaKarmi2">Shiksha Karmi-2</option>
                                                        <option value="ShikshaKarmi3">Shiksha Karmi-3</option>
                                                        <option value="SamvidaShikshak1">Samvida Shikshak-1</option>
                                                        <option value="SamvidaShikshak2">Samvida Shikshak-2</option>
                                                        <option value="SamvidaShikshak3">Samvida Shikshak-3</option>
                                                    </select></td>
                                                <th>Appointment Joining Date :</th>
                                                <td>
                                                    <input name="ename" type="date" class="form-control" autocomplete="off" value="2018-09-12" /></td>
                                            </tr>
                                            <tr>

                                                <th>Panal Name :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="SSS-1">SSS-1</option>
                                                        <option value="SSS-2">SSS-2</option>
                                                        <option value="SSS-3">SSS-3</option>
                                                        <option value="PR-HSS" selected="selected">PR-HSS</option>
                                                        <option value="PR-HS">PR-HS</option>
                                                        <option value="HM-MS">HM-MS</option>
                                                        <option value="HM-PS">HM-PS</option>
                                                    </select></td>
                                                <th>Subject :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="--Select--">English</option>
                                                        <option value="--Select--">Hindi</option>
                                                        <option value="--Select--" selected="selected">Science</option>
                                                        <option value="--Select--">Maths</option>
                                                        <option value="--Select--">Chemistry</option>
                                                        <option value="--Select--">Physics</option>
                                                        <option value="--Select--">Bio</option>
                                                        <option value="--Select--">Sanskrit</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Samvilian Order No. :
                                                </th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Samvilian Order No" value="YU3457" /></td>
                                                <th>Samvilian Order Date :</th>
                                                <td>
                                                    <input name="ename" type="date" class="form-control" autocomplete="off" value="2023-09-02" /></td>
                                            </tr>
                                            <tr>

                                                <th>Working in other Department Organization on Deputation Transfer :
                                                </th>
                                                <td>
                                                    <select id="ddlWorkingDept" onchange="ShowHideWorkingDept()" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes">Yes</option>
                                                        <option value="No" selected="selected">No</option>
                                                    </select></td>
                                                <th>Is Regular :</th>
                                                <td>
                                                    <select id="ddlIsRegular" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes" selected="selected">Yes</option>
                                                        <option value="No">No</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Increment Month :
                                                </th>
                                                <td>
                                                    <select id="ddlIncrementMonth" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="January" selected="selected">January</option>
                                                        <option value="July">July</option>
                                                    </select></td>
                                                <th>Provision Period From Month :</th>
                                                <td>
                                                    <input name="ename" id="From1" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" value="2021-09-03" /></td>
                                            </tr>
                                            <tr>

                                                <th>Provision Period To Month :
                                                </th>
                                                <td>
                                                    <input name="ename" id="To1" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" value="2023-09-03" /></td>
                                                <th>If Provision Extend :</th>
                                                <td>
                                                    <select id="ddlProviosionExtend1" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes" selected="selected">Yes</option>
                                                        <option value="No">No</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Provision Type :
                                                </th>
                                                <td>
                                                    <select id="ddlProviosionType1" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes" selected="selected">Regular Employee</option>
                                                        <option value="No">Separation</option>
                                                    </select></td>
                                                <th>Employee Retirement Date :</th>
                                                <td>
                                                    <input name="ename" placeholder="Retirement Date" type="text" id="retirementDateTextbox1" class="form-control" autocomplete="off" value="2023-06-09" /></td>
                                            </tr>
                                            <tr>
                                                <th>Type of Post :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="RegularPermanent">Regular/Permanent</option>
                                                        <option value="FixedEmployee">Fixed Employee</option>
                                                        <option value="ContingentEmployee" selected="selected">Contingent Employee</option>
                                                        <option value="SamvidaEmployee">Samvida Employee</option>
                                                        <option value="ThekaShramik">Theka Shramik</option>
                                                        <option value="OutsourceEmployee">Outsource Employee</option>
                                                        <option value="DeputationEmployee">Deputation Employee</option>
                                                        <option value="ContractualEmployee">Contractual Employee</option>
                                                        <option value="DailyWageEmployee">Daily Wage Employee</option>
                                                        <option value="DailyWagesFederation">Daily Wages Federation</option>
                                                        <option value="JobRateEmployee">Job Rate Employee</option>
                                                    </select></td>
                                                <th>Class :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----">Class 1</option>
                                                        <option value="----" selected="selected">Class 2</option>
                                                        <option value="----">Class 3</option>
                                                        <option value="----">Class 4</option>
                                                    </select></td>

                                            </tr>
                                            <tr>
                                                <th>Pay Commission :</th>
                                                <td>
                                                    <select onchange="ShowHidePayCommissionC()" id="PayCommission" class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="FourthPay" selected="selected">Fourth Pay Commission</option>
                                                        <option value="SixthPay">Sixth Pay Commission</option>
                                                        <option value="SeventhPay">Seventh Pay Commission</option>
                                                    </select></td>
                                                <th>Level :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="Level-1">Level-1</option>
                                                        <option value="Level-2">Level-2</option>
                                                        <option value="Level-3">Level-3</option>
                                                        <option value="Level-4" selected="selected">Level-4</option>
                                                        <option value="Level-5">Level-5</option>
                                                        <option value="Level-6">Level-6</option>
                                                        <option value="Level-7">Level-7</option>
                                                        <option value="Level-8">Level-8</option>
                                                        <option value="Level-9">Level-9</option>
                                                        <option value="Level-10">Level-10</option>
                                                        <option value="Level-11">Level-11</option>
                                                        <option value="Level-12">Level-12</option>
                                                        <option value="Level-13">Level-13</option>
                                                        <option value="Level-14">Level-14</option>
                                                        <option value="Level-15">Level-15</option>
                                                        <option value="Level-16">Level-16</option>
                                                        <option value="Level-17">Level-17</option>
                                                    </select></td>

                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>

                                    <legend>Current Appointment Details / वर्तमान नियुक्ति विवरण</legend>

                                    <div class="table-responsive">

                                        <table class="table table-bordered">

                                            <tr>
                                                <th>OIS Type :</th>
                                                <td>
                                                    <select id="DropDownList1" class="form-control select2">
                                                        <option value="0">--Select--</option>
                                                        <option value="2" selected="selected">Office</option>
                                                        <option value="3">Institute</option>
                                                        <option value="1">School</option>
                                                    </select></td>
                                                <th>Office Type :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="PrincipalSecretary">Principal Secretary</option>
                                                        <option value="Secretary">Secretary</option>
                                                        <option value="DeputySecretary" selected="selected">Deputy Secretary</option>
                                                        <option value="CPI">CPI</option>
                                                        <option value="CRSK">CRSK</option>
                                                        <option value="DPI">DPI</option>
                                                        <option value="Collector">Collector</option>
                                                        <option value="CEOZP">CEO, ZP</option>
                                                        <option value="JointDirector">Joint Director</option>
                                                        <option value="DEO">DEO</option>
                                                        <option value="DPC">DPC</option>
                                                        <option value="BEO">BEO</option>
                                                        <option value="BRC">BRC</option>
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <th>Current Appointment Division :</th>
                                                <td>
                                                    <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Gwalior">Gwalior</option>
                                                        <option value="Narmadapuram">Narmadapuram</option>
                                                        <option value="Indore" selected="selected">Indore</option>
                                                        <option value="Jabalpur">Jabalpur</option>
                                                        <option value="Rewa">Rewa</option>
                                                        <option value="Sagar">Sagar</option>
                                                        <option value="Shahdol">Shahdol</option>
                                                        <option value="Ujjain">Ujjain</option>
                                                    </select></td>
                                                <th>Current Appointment District :
                                                </th>
                                                <td>
                                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Raisen">Raisen</option>
                                                        <option value="Rajgarh">Rajgarh</option>
                                                        <option value="Sehore">Sehore</option>
                                                        <option value="Vidisha">Vidisha</option>
                                                        <option value="Ashoknagar" selected="selected">Ashoknagar</option>
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
                                                <th>Current Appointment Block :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
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
                                                <th>DDO / Sankul :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="--Select--">Geetanjali Public School</option>
                                                        <option value="--Select--">MVM School</option>
                                                        <option value="--Select--" selected="selected">Uma Vidhaya Niketan HS School</option>
                                                        <option value="--Select--">Manvendra Public School</option>
                                                        <option value="--Select--">Rose Marry Public School</option>
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <th>Office/Institute/School Code & Name :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="--Select--">GB Convent School</option>
                                                        <option value="--Select--">Reem Higher Secondary School</option>
                                                        <option value="--Select--">Geetanjali Public School</option>
                                                        <option value="--Select--">Uma Vidhaya Niketan HS School</option>
                                                        <option value="--Select--" selected="selected">Manvendra Public School</option>
                                                        <option value="--Select--">Rose Marry Public School</option>
                                                    </select></td>
                                                <th>Office/Institute/School Address of first Posting
:</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address" value="Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678" /></td>
                                            </tr>
                                            <tr>

                                                <th>Current Appointment Order No :
                                                </th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." value="OP345" /></td>
                                                <th>Current Appointment Order Date :</th>
                                                <td>
                                                    <input name="ename" type="date" class="form-control" autocomplete="off" value="2021-09-12" /></td>
                                            </tr>
                                            <tr>

                                                <th>Current Appointment Department :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----" selected="selected">DPI</option>
                                                    </select></td>
                                                <th>Employee’s Designation Type :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----">Clerical</option>
                                                        <option value="----" selected="selected">Executive</option>
                                                        <option value="----">Ministry</option>
                                                        <option value="----">Teaching</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Current Appointment Designation :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="Commissioner">Commissioner</option>
                                                        <option value="Director">Director</option>
                                                        <option value="AdditionalDirector">Additional Director</option>
                                                        <option value="JointDirector" selected="selected">Joint Director</option>
                                                        <option value="DeputyDirector">Deputy Director</option>
                                                        <option value="AsstDirector">Asstt Director</option>
                                                        <option value="RegionalLibrarian">Regional Librarian</option>
                                                        <option value="PlanningOfficer">Planning Officer</option>
                                                        <option value="DirectorELTI">Director (ELTI)</option>
                                                        <option value="DirectorSISE">Director (SISE)</option>
                                                        <option value="PrincipalPGBT">Principal (PGBT)</option>
                                                        <option value="PrincipalDIET">Principal (DIET)</option>
                                                        <option value="PrincipalHSS">Principal HSS</option>
                                                        <option value="PrincipalHS">Principal HS</option>
                                                        <option value="Lecturer">Lecturer</option>
                                                        <option value="HMMS">HM(MS)</option>
                                                        <option value="TeacherUDT">Teacher (UDT)</option>
                                                        <option value="MusicTeacher">Music Teacher</option>
                                                        <option value="TablaTeacher">Tabla Teacher</option>
                                                        <option value="CraftTeacher">Craft Teacher</option>
                                                        <option value="HMPS">HM(PS)</option>
                                                        <option value="AsstTeacherLDT">Asstt Teacher(LDT)</option>
                                                        <option value="VaristhaAdhyapak">Varistha Adhyapak</option>
                                                        <option value="Adhyapak">Adhyapak</option>
                                                        <option value="SahayakAdhyapak">Sahayak Adhyapak</option>
                                                        <option value="ShikshaKarmi1">Shiksha Karmi-1</option>
                                                        <option value="ShikshaKarmi2">Shiksha Karmi-2</option>
                                                        <option value="ShikshaKarmi3">Shiksha Karmi-3</option>
                                                        <option value="SamvidaShikshak1">Samvida Shikshak-1</option>
                                                        <option value="SamvidaShikshak2">Samvida Shikshak-2</option>
                                                        <option value="SamvidaShikshak3">Samvida Shikshak-3</option>
                                                    </select></td>
                                                <th>Current Appointment Joining Date :</th>
                                                <td>
                                                    <input name="ename" type="date" class="form-control" autocomplete="off" value="2018-04-09" /></td>
                                            </tr>
                                            <tr>

                                                <th>Panal Name :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="SSS-1">SSS-1</option>
                                                        <option value="SSS-2">SSS-2</option>
                                                        <option value="SSS-3">SSS-3</option>
                                                        <option value="PR-HSS" selected="selected">PR-HSS</option>
                                                        <option value="PR-HS">PR-HS</option>
                                                        <option value="HM-MS">HM-MS</option>
                                                        <option value="HM-PS">HM-PS</option>
                                                    </select></td>
                                                <th>Subject :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="--Select--">English</option>
                                                        <option value="--Select--">Hindi</option>
                                                        <option value="--Select--" selected="selected">Science</option>
                                                        <option value="--Select--">Maths</option>
                                                        <option value="--Select--">Chemistry</option>
                                                        <option value="--Select--">Physics</option>
                                                        <option value="--Select--">Bio</option>
                                                        <option value="--Select--">Sanskrit</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Samvilian Order No. :
                                                </th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Samvilian Order No" value="UYR675" /></td>
                                                <th>Samvilian Order Date :</th>
                                                <td>
                                                    <input name="ename" type="date" class="form-control" autocomplete="off" value="2022-09-02" /></td>
                                            </tr>
                                            <tr>

                                                <th>Working in other Department Organization on Deputation Transfer :
                                                </th>
                                                <td>
                                                    <select id="ddlCurWorkingDept" onchange="ShowHideCurWorkingDept()" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes" selected="selected">Yes</option>
                                                        <option value="No">No</option>
                                                    </select></td>
                                                <th>Is Regular :</th>
                                                <td>
                                                    <select id="ddlIsRegular1" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes" selected="selected">Yes</option>
                                                        <option value="No">No</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Increment Month :
                                                </th>
                                                <td>
                                                    <select id="ddlIncrementMonth1" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="January" selected="selected">January</option>
                                                        <option value="July">July</option>
                                                    </select></td>
                                                <th>Provision Period From Month :</th>
                                                <td>
                                                    <input name="ename" id="From" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" value="2019-09-04" /></td>
                                            </tr>
                                            <tr>

                                                <th>Provision Period To Month :
                                                </th>
                                                <td>
                                                    <input name="ename" id="To" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" value="2021-09-04" /></td>
                                                <th>If Provision Extend :</th>
                                                <td>
                                                    <select id="ddlProviosionExtend" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes" selected="selected">Yes</option>
                                                        <option value="No">No</option>
                                                    </select></td>
                                            </tr>
                                            <tr>

                                                <th>Provision Type :
                                                </th>
                                                <td>
                                                    <select id="ddlProviosionType" class="form-control select2">
                                                        <option value="Select">--Select--</option>
                                                        <option value="Yes" selected="selected">Regular Employee</option>
                                                        <option value="No">Separation</option>
                                                    </select></td>
                                                <th>Employee Retirement Date :</th>
                                                <td>
                                                    <input name="ename" placeholder="Retirement Date" type="text" id="retirementDateTextbox" class="form-control" autocomplete="off" value="2024-09-03" /></td>

                                            </tr>
                                            <tr>
                                                <th>Type of Post :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="RegularPermanent">Regular/Permanent</option>
                                                        <option value="FixedEmployee">Fixed Employee</option>
                                                        <option value="ContingentEmployee">Contingent Employee</option>
                                                        <option value="SamvidaEmployee" selected="selected">Samvida Employee</option>
                                                        <option value="ThekaShramik">Theka Shramik</option>
                                                        <option value="OutsourceEmployee">Outsource Employee</option>
                                                        <option value="DeputationEmployee">Deputation Employee</option>
                                                        <option value="ContractualEmployee">Contractual Employee</option>
                                                        <option value="DailyWageEmployee">Daily Wage Employee</option>
                                                        <option value="DailyWagesFederation">Daily Wages Federation</option>
                                                        <option value="JobRateEmployee">Job Rate Employee</option>
                                                    </select></td>
                                                <th>Class :
                                                </th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----">Class 1</option>
                                                        <option value="----">Class 2</option>
                                                        <option value="----" selected="selected">Class 3</option>
                                                        <option value="----">Class 4</option>
                                                    </select></td>

                                            </tr>
                                            <tr>
                                                <th>Pay Commission :</th>
                                                <td>
                                                    <select onchange="ShowHidePayCommissionC()" id="PayCommissionC" class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="FourthPay" selected="selected">Fourth Pay Commission</option>
                                                        <option value="SixthPay">Sixth Pay Commission</option>
                                                        <option value="SeventhPay">Seventh Pay Commission</option>
                                                    </select></td>
                                                <th>Level :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="Level-1">Level-1</option>
                                                        <option value="Level-2">Level-2</option>
                                                        <option value="Level-3">Level-3</option>
                                                        <option value="Level-4" selected="selected">Level-4</option>
                                                        <option value="Level-5">Level-5</option>
                                                        <option value="Level-6">Level-6</option>
                                                        <option value="Level-7">Level-7</option>
                                                        <option value="Level-8">Level-8</option>
                                                        <option value="Level-9">Level-9</option>
                                                        <option value="Level-10">Level-10</option>
                                                        <option value="Level-11">Level-11</option>
                                                        <option value="Level-12">Level-12</option>
                                                        <option value="Level-13">Level-13</option>
                                                        <option value="Level-14">Level-14</option>
                                                        <option value="Level-15">Level-15</option>
                                                        <option value="Level-16">Level-16</option>
                                                        <option value="Level-17">Level-17</option>
                                                    </select></td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>

                                    <legend>Employee Account Info / कर्मचारी खाता जानकारी</legend>
                                    <div class="table-responsive">

                                        <table class="table table-bordered">

                                            <tr>
                                                <th>IFSC Code :</th>
                                                <td>
                                                    <input onchange="ShowBankDetails(this.value)" placeholder="Enter IFSC Code" name="ename" type="text" class="form-control" autocomplete="off" value="SBIN0005943" />
                                                </td>
                                                <th>Bank Name :</th>
                                                <td>
                                                    <input placeholder="Bank Name" name="ename" type="text" class="form-control" autocomplete="off" value="State Bank of India" /></td>

                                            </tr>
                                            <tr>
                                                <th>Branch Name :</th>
                                                <td>
                                                    <input placeholder="Branch Name" name="ename" type="text" class="form-control" autocomplete="off" value="Dwarakapuri Punjagutta Branch" /></td>
                                                <th>Account Type :</th>
                                                <td>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----" selected="selected">Salary</option>
                                                        <option value="----">Other</option>
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <th>Account No. :</th>
                                                <td>
                                                    <input placeholder="Enter Account No." name="ename" type="text" class="form-control" autocomplete="off" value="223465657786" />
                                                </td>
                                                <th>Provident Fund :</th>
                                                <td>
                                                    <select id="Providedfund" class="form-control select2" onchange="SelectP()">
                                                        <option value="">Select</option>
                                                        <option value="1" selected="selected">DPF No.</option>
                                                        <option value="2">EPF No.</option>
                                                        <option value="3">GPF No.</option>
                                                        <option value="4">NPS No.</option>
                                                    </select></td>

                                            </tr>
                                            <tr>
                                                <th>DPF No. :</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter DPF No." value="YUT78989" /></td>
                                                <th>Group Insurance No :</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Group Insurance No." value="TYR54" /></td>
                                            </tr>
                                            <tr>
                                                <th>Gratuity No. :</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Gratuity No." value="HJ4564" /></td>
                                                <th>EGLS No. :</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter EGLS No." value="QWE890" /></td>
                                            </tr>
                                            <tr>
                                                <th>EDLI No. :</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter EDLI No." value="PWR464" /></td>
                                                <th>ESIC No. :</th>
                                                <td>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter ESIC No." value="TYU7895" /></td>
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
                                                        <label style="font-weight: bold; font-size: large;">Document Name  </label>
                                                    </td>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">Upload Document  </label>
                                                    </td>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">View Document</label>
                                                    </td>
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
                                                    <td>
                                                        <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>

                                                    <%--<td><input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)" /></td>--%>
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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                                                    </td>
                                                </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Educational Document / शैक्षिक दस्तावेज़</legend>
                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">Sr. No.</label>
                                                    </td>
                                                    <td>
                                                        <label style="font-weight: bold; font-size: large;">Document Name  </label>
                                                    </td>
                                                    <td>
                                                        <label style="font-weight: bold; font-size: large;">Upload Document  </label>
                                                    </td>
                                                    <td class="text-center">
                                                        <label style="font-weight: bold; font-size: large;">View Document</label>
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">1</td>
                                                    <td>
                                                        <label>
                                                            10th Marksheet<br />
                                                            10वीं की मार्कशीट  :</label></td>

                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>
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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye"></i></button>

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
                                                    <td>
                                                        <input type="file" class="form-control" onchange="displayImage(this)" /></td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye"></i></button>
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
            </div>
            <!-- /.modal-dialog -->

        </div>
        <!-- /.modal -->
    </div>
    <div class="modal" id="bs-example-modal-lg4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
    <div class="modal " tabindex="-1" role="dialog" id="bs-example-modal-lg11" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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


    <div class="modal" tabindex="-1" role="dialog" id="bootstrapModalreg">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Reject Remark</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Remark</label>
                            <asp:TextBox ID="TextBoxreg2" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-danger Alert-Reject" data-bs-dismiss="modal">Reject</button>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade modal-lg ml-lg-5"    aria-hidden="true" id="bootstrapModalreg1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"><u>आहरण संवितरण अधिकारी की अनुशंसा
                    </u></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered" style="border: 1px solid">
                                    <tr>
                                       <%-- <th><span style="font-size: large; font-weight: bold; white-space: nowrap;">सरल क्रमांक
                                        </span>
                                        </th>--%>
                                        <th>
                                            <center style="font-size: large; font-weight: bold;">
                                                <u>अधिकारी की अनुशंसा
                                                </u>
                                            </center>
                                        </th>
                                    </tr>
                                    <tr>
                                      <%--  <td class="text-center">1.</td>--%>
                                        <td>
                                            <label style="padding: 10px; text-align: justify;">
                                              प्रमाणित किया जाता है आज दिनांक 07/04/2024 को कर्मचारी द्वारा दी गई समस्त जानकारी का मिलान कार्यालय अभिलेख से कर लिया गया है एवं जानकारी सही पायी गयी। संबंधित कर्मचारी को जिला शिक्षा अधिकारी द्वारा Education Portal 3.0 पर जोड़ने एवं Unique Id प्रदान करने की अनुशंसा की जाती हैं।
                                            </label>
                                            
                                        </td>
                                    </tr>
                               
                                </table>
                            </div>
                           <hr />

<div class="row">
    <div class="col-md-12 text-center">
        <button type="button" class="btn btn-success btn-border" data-toggle="modal" data-target="#myModal" onclick="document.getElementById('bootstrapModalreg1').style.display='none'">Get DSC</button>
        <a href="EmployeeVerification.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
    </div>
</div>
                            
</div>
                   </div>
                    </div>
                
</div>      
            
<%--<div class="modal fade" id="staticModel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-modal="true" role="dialog">--%>
 <%--   <div class="modal" id="staticBackdrop" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 id="staticBackdropLabel" class="modal-title"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <fieldset>
                    <legend>Verification</legend>
                    <div class="row">
                        <label>OTP (one time Password)</label>
                        <input class="form-control" placeholder="Enter Verification Code">
                    </div>
                </fieldset>
                <div class="modal-footer text-center">
                    <button type="button" class="Alert-Confirmation btn btn-success" data-bs-dismiss="modal" onclick="document.getElementById('tblFields').style.display='none'">Submit</button>
                    <button type="button" id="ContentBody_clearfirst" class="btn btn-warning" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>--%>
             </div>

 </div>
               
<div class="modal" id="myModal" aria-hidden="true">
      <div class="modal-dialog">
          <div class="modal-content">
              <!-- Modal Header -->
              <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                  <h4 class="modal-title text-white">DSC Upload </h4>
                  <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
              </div>
              <!-- Modal Body -->
                <div class="modal-body">
       <fieldset>
           <legend>Verification</legend>
           <div class="row">
               <label>OTP (one time Password)</label>
               <input class="form-control" placeholder="Enter Verification Code">
           </div>
       </fieldset>
       <div class="modal-footer justify-content-center">
           <button type="button" class="Alert-Confirmation btn btn-success" data-bs-dismiss="modal" onclick="document.getElementById('tblFields').style.display='none'">Submit</button>
           <%--<button type="button" id="ContentBody_clearfirst1" class="btn btn-warning" data-bs-dismiss="modal">Close</button>--%>
            <a href="EmployeeVerification.aspx" class="btn btn-outline-danger btn-border w-lg">Close</a>
       </div>
   </div>
              <!-- Modal Footer -->
             
          </div>
      </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                       
            
     
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
     <script>
         debugger;
         !function ($) {
             "use strict";
             var SweetAlert = function () { };
             //examples
             SweetAlert.prototype.init = function () {
                 //Basic
                 //Success Message
                 $('.Alert-Save1').click(function () {
                     Swal.fire({
                         title: 'Are you sure?',
                         text: "Do you want to Edit Personal Information ?",
                         type: 'warning',
                         showCancelButton: true,
                         confirmButtonColor: '#3085D6',
                         cancelButtonColor: '#d33',
                         confirmButtonText: 'Yes'
                         //animation: false,
                         //customClass: {
                         //    popup: 'animated tada'
                         //}
                     }).then((result) => {
                         if (result.value) {
                             Swal.fire({
                                 type: 'success',
                                 title: 'Success!',
                                 text: 'Record proceed Successfully!',
                                 timer: 2000,

                                 // animation: false,<a href="">TeacherFillReport.aspx</a>
                                 // customClass: {
                                 //     popup: 'animated tada'
                                 // }
                             }
                             ).then(() => {
                                 // Redirect to another page after success message is closed
                                 window.location.href = 'EmployeeRegistration.aspx';
                             });
                             var x = document.getElementById("#navpills-1");
                             if (x.style.display === "none") {
                                 x.style.display = "block";
                             } else {
                                 x.style.display = "block";
                             }
                         }
                     })
                 });
             },


                 $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
         }(window.jQuery),
             //initializing
             function ($) {
                 "use strict";
                 $.SweetAlert.init()
             }(window.jQuery);
     </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save2').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Edit Official Information ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        //animation: false,
                        //customClass: {
                        //    popup: 'animated tada'
                        //}
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record proceed Successfully!',
                                timer: 2000,

                                // animation: false,<a href="">TeacherFillReport.aspx</a>
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'EmployeeRegistration.aspx';
                                document.getElementById('BtnBack2').addEventListener('click', function () {
                                    handleConfirmationAndActivate('navpills-2');
                                })

                            });
                        }
                    })
                });
            },


                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
 <script>
     debugger;
     !function ($) {
         "use strict";
         var SweetAlert = function () { };
         //examples
         SweetAlert.prototype.init = function () {
             //Basic
             //Success Message
             $('.Alert-Save3').click(function () {
                 Swal.fire({
                     title: 'Are you sure?',
                     text: "Do you want to Edit Bank Information ?",
                     type: 'warning',
                     showCancelButton: true,
                     confirmButtonColor: '#3085D6',
                     cancelButtonColor: '#d33',
                     confirmButtonText: 'Yes'
                     //animation: false,
                     //customClass: {
                     //    popup: 'animated tada'
                     //}
                 }).then((result) => {
                     if (result.value) {
                         Swal.fire({
                             type: 'success',
                             title: 'Success!',
                             text: 'Record proceed Successfully!',
                             timer: 2000,

                             // animation: false,<a href="">TeacherFillReport.aspx</a>
                             // customClass: {
                             //     popup: 'animated tada'
                             // }
                         }
                         ).then(() => {
                             // Redirect to another page after success message is closed
                             window.location.href = 'EmployeeRegistration.aspx';
                         });
                         document.getElementById('BtnBack3').addEventListener('click', function () {
                             handleConfirmationAndActivate('navpills-3');
                         })
                     }
                 })
             });
         },


             $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
     }(window.jQuery),
         //initializing
         function ($) {
             "use strict";
             $.SweetAlert.init()
         }(window.jQuery);
 </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save4').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Edit Upload Ceritificate?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        //animation: false,
                        //customClass: {
                        //    popup: 'animated tada'
                        //}
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record proceed Successfully!',
                                timer: 2000,

                                // animation: false,<a href="">TeacherFillReport.aspx</a>
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'EmployeeRegistration.aspx';
                            });
                            document.getElementById('BtnBack4').addEventListener('click', function () {
                                handleConfirmationAndActivate('navpills-4');
                            })
                        }
                    })
                });
            },


                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>

    <script>
        function toggleAll(source) {
            var checkboxes = document.querySelectorAll('table input[type="checkbox"]');
            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i] != source)
                    checkboxes[i].checked = source.checked;
            }
        }
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

    <script>

        document.getElementById('btn-close').addEventListener('click', function () {
            $('#firsttimeModel').modal('show');
        });
    </script>

    <script>
        function ShowHideHandicape() {
            var ddlHandicape = document.getElementById("ddlHandicape");
            var HandicapePer = document.getElementById("HandicapePer");
            var handipaceType = document.getElementById("handipaceType");
            if (ddlHandicape.value === "Yes") {
                ddlHandicappedType.toggleAttribute('disabled');
            } else if (ddlHandicape.value === "No") {
                ddlHandicappedType.toggleAttribute('disabled');

            }
            if (ddlHandicape.value === "Yes") {
                HandicapePer.toggleAttribute('disabled');
            } else if (ddlHandicape.value === "No") {
                HandicapePer.toggleAttribute('disabled');

            }

        }
        function ShowHideCriticalIllness() {
            var ddlCriticalIllness = document.getElementById("ddlCriticalIllness");
            var ddlCritical = document.getElementById("ddlCritical");
            var handipaceType = document.getElementById("handipaceType");
            if (ddlCriticalIllness.value === "Yes") {
                ddlCritical.toggleAttribute('disabled')

            } else if (ddlCriticalIllness.value === "No") {
                ddlCritical.toggleAttribute('disabled')
            }
        }
    </script>
    <script>
        function AddNominee() {
            var tableAdd = document.getElementById("tblNominee");
            tableAdd.style.display = "table";
            if ((tableAdd.rows.length - 1) == 2) {
                alert('Maximum two entries allowed !!');
            }
            else {
                tableAdd.style.display = "table";
                var rows = tableAdd.rows.length;
                var r = tableAdd.insertRow(rows);
                var Education = document.getElementById("txtNomineeName");
                var Subject = document.getElementById("txtNomineeRelation");
                var Board = document.getElementById("txtNomineePercentage");
                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;
                var c2 = r.insertCell(1);
                c2.innerHTML = Education.value;
                var c3 = r.insertCell(2);
                c3.innerHTML = Subject.value;
                var c4 = r.insertCell(3);
                c4.innerHTML = Board.value;
                var c5 = r.insertCell(4);
                c5.innerHTML = "<a class='Alert-Edit' onclick='EditConfirmation()'><i class='fa fa-pen'></i></a>| <a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a>";
            }
        }


        function AddRow() {
            var tableAdd = document.getElementById("tableAdd");
            tableAdd.style.display = "table";;
            if ((tableAdd.rows.length - 1) == 6) {
                alert('Maximum six entries allowed !!');
            }
            else {

                tableAdd.style.display = "table";;
                var rows = tableAdd.rows.length;
                var r = tableAdd.insertRow(rows);
                var Education = document.getElementById("Education");
                var Subject = document.getElementById("Subject");
                var Board = document.getElementById("Board");
                var PassingYear = document.getElementById("PassingYear");
                var Grade = document.getElementById("Grade");
                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;
                var c2 = r.insertCell(1);
                c2.innerHTML = Education.value;
                var c3 = r.insertCell(2);
                c3.innerHTML = Subject.value;
                var c4 = r.insertCell(3);
                c4.innerHTML = Board.value;
                var c5 = r.insertCell(4);
                c5.innerHTML = PassingYear.value;
                var c6 = r.insertCell(5);
                c6.innerHTML = Grade.value;
                var c7 = r.insertCell(6);
                c7.innerHTML = "<a class='Alert-Edit' onclick='EditConfirmation()'><i class='fa fa-pen'></i></a>| <a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a>";
            }
        }

        //function ShowHideMarried() {
        //    var ddl = document.getElementById('ddlMaarriedStatus');
        //    var selectedValue = ddl.options[ddl.selectedIndex].value;
        //    var fieldsToShow = document.getElementById('tblfields');

        //    if (selectedValue === 'Yes') {
        //        tblfields.style.display = 'table'; // Show the fields
        //    } else {
        //        tblfields.style.display = 'none'; // Hide the fields
        //    }
        //}

        function ShowHideGovEmp() {
            var ddlSpouseGovEmp = document.getElementById("ddlSpouseGovEmp");
            var idSpouseDept = document.getElementById("idSpouseDept");
            var idSpouseOfcAdd = document.getElementById("GovEmp");
            if (ddlSpouseGovEmp.value === "Yes") {
                GovEmp.style.display = "table-row";

            } else if (ddlSpouseGovEmp.value === "No") {
                GovEmp.style.display = "none";

            }
        }
    </script>
    <script>
        function myFunction() {
         
            Verification.style.display = "block";
           
        }
       
    </script>
</asp:Content>

