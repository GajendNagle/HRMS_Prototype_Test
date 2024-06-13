<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeDetails.aspx.cs" Inherits="mis_HRMS_Rpt_EmployeeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .deschide {
            display: none;
        }
    </style>
    <style>
        #showAll {
            display: none;
        }

        #showpersonaldetail {
            display: none;
        }

        #showofficialdetail {
            display: none;
        }

        #shownameandid {
            display: none;
        }
    </style>
    <style>
        .profileimage {
            height: 6.2rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#Curriculum" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Other Curriculum Activities</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee Details Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -4rem;">
            <img src="../../img/Employee.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Employee Details Report<br />
                                कर्मचारी विवरण रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Search Employee / कर्मचारी खोजें</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        OIS Type /
                                        <br />
                                        ओ.आई.एस का प्रकार<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Office</option>
                                        <option value="Bhopal">School</option>
                                        <option value="Bhopal">Institute</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Office Type /<br />
                                        कार्यालय का प्रकार<span style="color: red">*</span></label>
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
                                    <label>
                                        Designation /<br />
                                        पद<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Additional Director">Additional Director</option>
                                        <option value="Joint Director">Joint Director</option>
                                        <option value="Deputy Director">Deputy Director</option>
                                        <option value="Asstt Director">Asstt Director</option>
                                        <option value="Regional Librarian">Regional Librarian</option>
                                        <option value="Planning Officer">Planning Officer</option>
                                        <option value="Director (ELTI)">Director (ELTI)</option>
                                        <option value="Director(SISE)">Director(SISE)</option>
                                        <option value="Principal (PGBT)">Principal (PGBT)</option>
                                        <option value="Principal (DIET)">Principal (DIET)</option>
                                        <option value="Principal HSS">Principal HSS</option>
                                        <option value="Principal HS">Principal HS</option>
                                        <option value="Lecturer">Lecturer</option>
                                        <option value="HM(MS)">HM(MS)</option>
                                        <option value="Teacher (UDT)">Teacher (UDT)</option>
                                        <option value="Music Teacher">Music Teacher</option>
                                        <option value="Tabla Teacher">Tabla Teacher</option>
                                        <option value="Craft Teacher">Craft Teacher</option>
                                        <option value="HM(PS)">HM(PS)</option>
                                        <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                        <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                        <option value="Adhyapak">Adhyapak</option>
                                        <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Type of Post /<br />
                                        पद का प्रकार<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">All</option>
                                        <option value="Regular/Permanent">Regular/Permanent</option>
                                        <option value="Fixed Employee">Fixed Employee</option>
                                        <option value="Contigent Employee">Contigent Employee</option>
                                        <option value="Samvida Employee">Samvida Employee</option>
                                        <option value="Theka Shramik">Theka Shramik</option>
                                        <option value="Outsource Employee">Outsource Employee</option>
                                        <option value="Deputation Employee">Deputation Employee</option>
                                        <option value="Contractual Employee">Contractual Employee</option>
                                        <option value="Daily Wage's Employee">Daily Wage's Employee</option>
                                        <option value="Dally Wages Federation">Dally Wages Federation</option>
                                        <option value="Job Rate Employee">Job Rate Employee</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row">
                        <div class="col-md-12">
                            <fieldset>
                                <legend>PERSONAL DETAILS / व्यक्तिगत जानकारी
                    <input id="Checkbox1" checked onclick="Checkedbox1()" type="checkbox" /></legend>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input disabled checked type="checkbox" name="Chk" />
                                            <label>Name of Employee</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="Chk" />
                                            <label>Gender</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Date of Birth</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="Chk" />
                                            <label>Blood group</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="Chk" />
                                            <label>Father's/Husband's name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="Chk" />
                                            <label>Marital Status</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Husband/Wife's Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="Chk" />
                                            <label>Profile Image</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Mobile No.</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Aadhaar No.</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Pan card no.</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Email id</label>
                                        </div>
                                    </div>

                                    <%--<div class="col-md-4">
                                <div class="form-group">
                                    <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                    <label>Job/Business</label>
                                </div>
                            </div>--%>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Post/Department</label>
                                        </div>
                                    </div>
                                    <%--<div class="col-md-4">
                                <div class="form-group">
                                    <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                    <label>Social Class</label>
                                </div>
                            </div>--%>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Caste</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Physical Disability</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Type of Disability</label>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <fieldset>
                                            <legend>ADDRESS / पता</legend>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                                        <label>State</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                                        <label>City</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                                        <label>Pin Code</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <input class="controlledCheckboxes1" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                                        <label>Address</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <fieldset>
                                <legend>OFFICIAL DETAILS / आधिकारिक विवरण<input id="Checkbox2" checked onclick="Checkedbox2()" type="checkbox" /></legend>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input disabled="disabled" checked="checked" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Employee ID</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Office Type</label>
                                        </div>
                                    </div>
                                    <%--<div class="col-md-4">
                                <div class="form-group">
                                    <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                    <label>Office</label>
                                </div>
                            </div>--%>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Level</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Category</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Post</label>
                                        </div>
                                    </div>
                                    <%-- <div class="col-md-4">
                                <div class="form-group">
                                    <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                    <label>Department</label>
                                </div>
                            </div>--%>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Pay Scale</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Grade Pay</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Basic Salary</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Joining Date</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Posting Date  </label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Recruitment Date </label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Retirement Date</label>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Sankul/DDO Code</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Panel Name</label>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <%--<div class="row ">
                        <div class="col-md-12 mt-4">
                            <div class="form-group">
                                <button type="button" onclick="toggleDivs()" class="btn btn-success btn-rounded">Search</button>
                                <a href="Rpt_EmployeeDetails.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <fieldset>
                                <legend>ACCOUNT INFORMATION / खाता संबंधी जानकारी<input id="Checkbox7" checked onclick="Checkedbox2()" type="checkbox" /></legend>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input checked="checked" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Account No.</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>IFSC Code</label>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>GPF No.</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>DPF No.</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input class="controlledCheckboxes2" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                            <label>Treasury  No.</label>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <hr />
                            <div class="col-md-12 form-group">
                                <button type="button" onclick="toggleDivs()" class="btn btn-outline-success btn-border w-lg">Search</button>
                                <a href="Rpt_EmployeeDetails.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
                            </div>
                        </div>
                    </div>
                    <%-- when i click then show Table  start  --%>
                    <div id="showAll" class="row">
                        <div class="form-group">
                            <fieldset>
                                <legend>Details</legend>
                                <div class="row justify-content-end">
                                    <div class="col-md-1">
                                        <div class="form-group">
                                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <div class="form-group">
                                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">

                                        <tr style="background: #416a59; color: white">
                                            <th>Sr.No.</th>
                                            <th>Profile Image</th>
                                            <th>Employee ID/Name</th>
                                            <%--<th>Name of Employee</th>--%>
                                            <th>Gender</th>
                                            <th>Date of Birth</th>
                                            <th>Blood group	</th>
                                            <th>Father's / Husband's Name</th>
                                            <th>Marital Status</th>
                                            <th>Mobile No.</th>
                                            <th>Aadhaar No.</th>
                                            <th>Pan card no.</th>
                                            <th>Email ID</th>
                                            <th>Husband / Wife's Name</th>
                                            <%--<th>Job/Business</th>--%>
                                            <th>Post/Department</th>
                                            <%--<th>Social class</th>--%>
                                            <th>Caste</th>
                                            <th>Physical Disability	</th>
                                            <th>Type of Disability</th>
                                            <th>Current State</th>
                                            <th>Current City	</th>
                                            <th>Current Pin Code</th>
                                            <th>Current Address</th>
                                            <th>Permanent State</th>
                                            <th>Permanent City</th>
                                            <th>Permanent PinCode	</th>
                                            <th>Permanent Address</th>
                                            <th>Office Type</th>
                                            <%--<th>Office</th>--%>
                                            <th>Level</th>
                                            <th>Category</th>
                                            <th>Post</th>
                                            <th>Pay Scale</th>
                                            <th>Grade Pay</th>
                                            <th>Basic salary</th>
                                            <th>Joining Date	</th>
                                            <th>Posting Date</th>
                                            <th>Retirement Date	</th>
                                            <th>Recruitment Type </th>

                                            <th>Account No.</th>
                                            <th>IFSC Code</th>
                                            <th>GPF No.</th>
                                            <th>DPF No.</th>
                                            <th>Treasury No.</th>
                                            <th>Sankul Code</th>
                                            <th>Panel</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage2" alt="Image Not Available"></td>
                                            <td>E0561-Dindori User2</td>

                                            <td>Male</td>
                                            <td>20/08/2019</td>
                                            <td>A+</td>
                                            <td>Rajesh</td>
                                            <td>Married</td>
                                            <td>9893055295</td>
                                            <td>xxxx-xxxx-1236	</td>
                                            <td>xxx-xxx-ALLP</td>
                                            <td>abc@crispindia.com</td>
                                            <td>rina</td>

                                            <td>Developer</td>

                                            <td>OBC</td>
                                            <td>Yes</td>
                                            <td>Vision Impaired </td>
                                            <td>Madhya Pradesh - Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>462020</td>
                                            <td>bhopal</td>
                                            <td>Madhya Pradesh - Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>462020</td>
                                            <td>bhopal</td>

                                            <td>Dindori</td>
                                            <td>Level 1</td>
                                            <td>Class I</td>
                                            <td>Manager</td>

                                            <td>4440-7440</td>
                                            <td>1300</td>
                                            <td>20000.00</td>
                                            <td>01/10/2020 	</td>
                                            <td>01/05/2022	 </td>
                                            <td>31/07/2081  	</td>
                                            <td>Direct Recruitment	  </td>

                                            <td>xxxx-xxxx-2356 </td>
                                            <td>ESFB0014022 </td>
                                            <td>123</td>
                                            <td>456 </td>
                                            <td>458 </td>
                                            <td>14548455 </td>
                                            <td>SSS-1 Hindi </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>
                                                <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage3" alt="Image Not Available"></td>
                                            <td>E0565-Raj User</td>

                                            <td>Male</td>
                                            <td>26/05/2019</td>
                                            <td>B+</td>
                                            <td>Girish Kumar</td>
                                            <td>Married</td>
                                            <td>9893055289</td>
                                            <td>xxxx-xxxx-3434	</td>
                                            <td>xxx-xxx-QPOK</td>
                                            <td>raj@crispindia.com</td>
                                            <td>Meena</td>

                                            <td>Desiner</td>

                                            <td>SC</td>
                                            <td>Yes</td>
                                            <td>Vision Impaired </td>
                                            <td>Madhya Pradesh - Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>462038</td>
                                            <td>bhopal</td>
                                            <td>Madhya Pradesh - Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>462038</td>
                                            <td>bhopal</td>
                                            <td>Dindori</td>
                                            <td>Level 2</td>
                                            <td>Class 2</td>
                                            <td>Manager</td>
                                            <td>4440-7440</td>
                                            <td>1300</td>
                                            <td>30000.00</td>
                                            <td>01/10/2020 	</td>
                                            <td>01/05/2021	 </td>
                                            <td>31/08/2081  	</td>
                                            <td>Direct Recruitment	  </td>

                                            <td>xxxx-xxxx-7895 </td>
                                            <td>ESFB0014022 </td>
                                            <td>456 </td>
                                            <td>789</td>
                                            <td>852</td>
                                            <td>14632121 </td>
                                            <td>SSS-1 English </td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div id="showpersonaldetail" class="row">
                        <div class="form-group">
                            <fieldset>
                                <legend>Details</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Employee ID	</th>
                                            <th>Name of Employee</th>
                                            <th>Gender</th>
                                            <th>Date of Birth</th>
                                            <th>Blood group	</th>
                                            <th>Father's / Husband's name</th>
                                            <th>Marital status</th>
                                            <th>Profile Image</th>
                                            <th>Mobile No.</th>
                                            <th>Aadhaar No.</th>
                                            <th>Pan card no.</th>
                                            <th>Email id</th>
                                            <th>Husband / Wife's Name</th>
                                            <th>पति / पत्नी का job/business</th>
                                            <th>पति / पत्नी का Post/Department</th>
                                            <th>Caste</th>
                                            <th>Religion</th>
                                            <th>Physical disability	</th>
                                            <th>Type of disability</th>
                                            <th>Current State</th>
                                            <th>Current City	</th>
                                            <th>Current Pin Code</th>
                                            <th>Current Address</th>
                                            <th>Permanent State</th>
                                            <th>Permanent City</th>
                                            <th>Permanent PinCode	</th>
                                            <th>Permanent Address</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>E0561</td>
                                            <td>Dindori User</td>
                                            <td>Male</td>
                                            <td>20/08/2019</td>
                                            <td>A+</td>
                                            <td>(Fatder) test</td>
                                            <td>Married</td>
                                            <td>
                                                <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available"></td>
                                            <td>9893055295</td>
                                            <td>xxxx-xxxx-1236	</td>
                                            <td>xxx-xxx-ALLP</td>
                                            <td>abc@crispindia.com</td>
                                            <td>test</td>
                                            <td>test</td>
                                            <td>test</td>
                                            <td>अन्य पिछड़ा</td>
                                            <td>HINDU</td>
                                            <td>Yes</td>
                                            <td>Vision Impaired </td>
                                            <td>Madhya Pradesh - Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>462020</td>
                                            <td>bhopal</td>
                                            <td>Madhya Pradesh - Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>462020</td>
                                            <td>bhopal</td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div id="showofficialdetail" class="row">
                        <div class="form-group">
                            <fieldset>
                                <legend>Details</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Employee ID	</th>
                                            <th>Name of Employee</th>
                                            <th>Office Type</th>
                                            <th>Office</th>
                                            <th>Level</th>
                                            <th>Category</th>
                                            <th>Post</th>
                                            <th>विभाग</th>
                                            <th>Pay scale</th>
                                            <th>Grade pay</th>
                                            <th>Basic salary</th>
                                            <th>Joining date	</th>
                                            <th>Posting date</th>
                                            <th>Retirement date	</th>
                                            <th>Recruitment Type </th>
                                            <th>Post प्रकार</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>E0561</td>
                                            <td>Dindori User</td>
                                            <td>Head Office</td>
                                            <td>Dindori</td>
                                            <td>Level 1</td>
                                            <td>Class I</td>
                                            <td>Manager (General)</td>
                                            <td>Accounts</td>
                                            <td>4440-7440</td>
                                            <td>1300</td>
                                            <td>20000.00</td>
                                            <td>01/10/2020 	</td>
                                            <td>01/10/2020	 </td>
                                            <td>31/07/2081  	</td>
                                            <td>Direct Recruitment	  </td>
                                            <td>Permanent </td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div id="shownameandid" class="row">
                        <div class="form-group">
                            <fieldset>
                                <legend>Details</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Employee ID	</th>
                                            <th>Name of Employee</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>E0561</td>
                                            <td>Dindori User</td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <%-- when i click then show Table  End  --%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        $(document).ready(function () {
            Checkedbox1();
            Checkedbox2();
        });
        function Checkedbox1() {
            var controlledCheckboxes1 = document.getElementsByClassName('controlledCheckboxes1');
            var Checkbox1 = document.getElementById('Checkbox1');

            for (var i = 0; i < controlledCheckboxes1.length; i++) {
                controlledCheckboxes1[i].checked = Checkbox1.checked;
            }
        };
        function Checkedbox2() {
            var controlledCheckboxes2 = document.getElementsByClassName('controlledCheckboxes2');
            var Checkbox2 = document.getElementById('Checkbox2');

            for (var i = 0; i < controlledCheckboxes2.length; i++) {
                controlledCheckboxes2[i].checked = Checkbox2.checked;
            }
        };
    </script>
    <script>
        function toggleDivs() {
            var showAll = document.getElementById("showAll");
            var showpersonaldetail = document.getElementById("showpersonaldetail");
            var showofficialdetail = document.getElementById("showofficialdetail");
            var shownameandid = document.getElementById("shownameandid");
            var Checkbox1 = document.getElementById('Checkbox1');
            var Checkbox2 = document.getElementById('Checkbox2');

            if (Checkbox1.checked && Checkbox2.checked) {
                showAll.style.display = "block"
                showpersonaldetail.style.display = "none"
                showofficialdetail.style.display = "none"
                shownameandid.style.display = "none"
            }
            else if (Checkbox1.checked) {
                showAll.style.display = "none"
                showpersonaldetail.style.display = "block"
                showofficialdetail.style.display = "none"
                shownameandid.style.display = "none"
            }
            else if (Checkbox2.checked) {
                showAll.style.display = "none"
                showpersonaldetail.style.display = "none"
                showofficialdetail.style.display = "block"
                shownameandid.style.display = "none"
            }
            else {
                showAll.style.display = "none"
                showpersonaldetail.style.display = "none"
                showofficialdetail.style.display = "none"
                shownameandid.style.display = "block"
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Saved Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }

                        var x = document.getElementById("show");
                        if (x.style.display === "none") {
                            x.style.display = "block";
                        } else {
                            x.style.display = "block";
                        }
                    })
                });

                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Deleted Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )


                        }
                    })
                });
                $('.Alert-Edit').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Update Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        //if (result.value) {
                        //    Swal.fire({
                        //        type: 'success',
                        //        title: 'Success!',
                        //        text: 'Salary Generated Successfully!',
                        //        timer: 2000
                        //        // animation: false,
                        //        // customClass: {
                        //        //     popup: 'animated tada'
                        //        // }
                        //    }
                        //    )
                        //}
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

