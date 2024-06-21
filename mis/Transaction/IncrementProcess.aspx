<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="IncrementProcess.aspx.cs" Inherits="mis_Transaction_IncrementProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Increment Process</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Increment" title="click to go on">Increment</a></li>
                        <li class="breadcrumb-item active">Increment Process</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>

            <div class="card-body">--%>
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
                        <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#Increment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                            <span>Increment</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Increment Process</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="card card-border-primary">
    <div class="card-header">
        <div class="row">
            <div class="col-lg-12">
                <h5 class="card-title">Increment Process/वेतन मे वृद्धि प्रक्रिया
                </h5>
            </div>
        </div>
    </div>
    <div class="card-body">
                <fieldset>
                    <legend>Employee Increment/वेतन मे वृद्धि प्रक्रिया
                    </legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Division <br /> संभाग <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                            <label>District<br />
ज़िला<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Type<br />पदनाम का प्रकार <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Indore">Ministry (मंत्रालय)</option>
                                    <option value="Gwalior">Executive (कार्यकारी)</option>
                                    <option value="Jabalpur">Teaching (शिक्षण)</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Name<br />पदनाम<span style="color: red">*</span></label>
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
                                    Employee Name-Code 
                                    <br />
                                    कर्मचारी का नाम-कोड<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">Rohan-20562</option>
                                    <option value="No">Aalok-03265</option>
                                    <option value="No">Sahil-95865</option>
                                </select>
                            </div>
                        </div>
                     <%--   <div class="col-md-5 mt-5 ">--%>
                     <%--       <div class="form-group ">
                                <button onclick="Hideshow()" type="button" class=" btn btn-success btn-rounded">Search</button>
                                <a id="A1" href="IncrementProcess.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>--%>
                             <hr />
 <div class="col-md-12">
     <div class="form-group">
         <!-- Search button triggers search and toggles divs -->
         <button type="button" onclick="Hideshow()" class="btn btn-success w-lg btn-border ">Search</button>
         <!-- Clear button (link) -->
         <a id="A1" href="IncrementProcess.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
     </div>
 </div>
                    </div>
                </fieldset>
                <div id="divb">
                    <fieldset>
                        <legend>CURRENT PAYSCALE/वर्तमान वेतनमान</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Class <br /> श्रेणी<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Class IV" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Type of Post <br /> पद प्रकार<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Regular Permanent " />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>पद <br /> Designation<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Attendant" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>विभाग <br /> Department<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Administration" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Commission <br /> वेतन आयोग<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Seventh Pay Commission" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Scale <br /> वेतनमान<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="5200-20200" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>स्तर <br /> Level<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Level-7" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>कार्यालय <br /> Office<span style="color: red">*</span> </label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Head Office" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>मूल वेतन <br /> Basic Salary<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="43500.00" />
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>NEW INCREMENT DETAIL/नई वृद्धि विवरण</legend>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Class <br /> श्रेणी<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Class IV</option>
                                        <option value="--Select--">Class V</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Type of Post <br /> पद प्रकार<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
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
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Designation <br /> पद<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Attendant</option>
                                        <option value="--Select--">Teacher</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Department <br /> विभाग<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Administration</option>
                                        <option value="--Select--">Management</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Increment Percent<br />वृद्धि प्रतिशत<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="30%" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Commission <br /> वेतन आयोग<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Administration</option>
                                        <option value="--Select--">Management</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Scale <br /> वेतनमान<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Administration</option>
                                        <option value="--Select--">Management</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Level <br /> स्तर<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Level-6</option>
                                        <option value="--Select--">Level-7</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office <br /> कार्यालय <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Head Office</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Basic Salary <br /> मूल वेतन<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>File No. <br /> फाइल नंबर<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                </div>
                            </div>
                        </div>
                      <%--  <div class="row">
                            <div class="col-md-12 text-center">
                                <button type="button" class="btn btn-success btn-rounded" onclick="btnAddClick()">Add</button>
                                <a id="clearfirst" href="IncrementProcess.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>--%>
                                                    <hr />
<div class="col-md-12">
    <div class="form-group">
        <!-- Search button triggers search and toggles divs -->
        <button type="button" onclick="btnAddClick()" class="btn btn-success w-lg btn-border ">Add</button>
        <!-- Clear button (link) -->
        <a id="clearfirst" href="IncrementProcess.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
    </div>
</div>
                    </fieldset>

                    <div id="divEnteredDetails" style="display: none;">
                        <fieldset>
                            <legend>Details/विवरण</legend>
                             <div class="row justify-content-end">
       <div class="col-md-4 text-end">
           <div class="form-group">
               <button class="btn btn-info btn-rounded w-55">Excel</button>
               <button class="btn btn-info btn-rounded w-55">PDF</button>
           </div>
       </div>
       <div class="col-md-3">
           <div class="form-group">
               <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
           </div>
       </div>
   </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr style="white-space:nowrap !important;">
                                                <th>Sr.No.<br />सं.क्र.</th>
                                                <th>Action<br />कार्रवाई</th>
                                                <th>Employee Name<br />कर्मचारी का नाम</th>
                                                <th>File No.<br />दस्तावेज संख्या</th>
                                                <th>Existing Level<br />
मौजूदा स्तर</th>
                                                <th>Existing Basic Salary<br />
मौजूदा मूल वेतन</th>
                                                <th>New Level<br />नया स्तर</th>
                                                <th>New Basic Salary<br />नया मूल वेतन</th>
                                                <th>View<br />देखना</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>
                                                    <input type="checkbox" id="chckTransfer" onclick="checkClick();" /></td>
                                                <td>Shri Rajesh Tiwari</td>
                                                <td>58965</td>
                                                <td>Level-1</td>
                                                <td>9650</td>
                                                <td>Level-2</td>
                                                <td>15000</td>
                                                <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                      
                        <hr />  
                        <div class="row">
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <input type="button" value="Increment Process" class="Alert-Save btn btn-success btn-rounded" />
                                </div>
                            </div>
                        </div>
  </fieldset>


                    </div>
                    <!--This -->
                    <fieldset>
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">

                                    <li><strong>Division Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>District Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Designation Type</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Designation Type </strong>from the dropdown and the data will be populated from the <strong>Designation Type Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Designation Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Employee Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Verification Status</strong>
                                        <ul>
                                            <li>The user will be able to select the <strong>verification status</strong>  by choosing 'Yes' or 'No' from the dropdown.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Search </strong>
                                        <ul>
                                            <li>User should be able to click on Search button.</li>
                                            <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                        </ul>

                                    </li>
                                    <li><strong>CURRENT PAYSCALE</strong>
                                        <ul>
                                            <li>All the fields of the <strong>Current Payscale </strong>will fill automatically according to the employee.</li>
                                        </ul>
                                    </li>

                                    <li class="subHeader"><b>NEW INCREMENT DETAIL</b>
                                    </li>
                                    <li><strong>Class </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Class</strong>from the dropdown and the data will be populated from the <strong>Class Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Type of Post  </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Type of Post </strong>from the dropdown and the data will be populated from the <strong>Type of Post  Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Designation </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Designation </strong>from the dropdown and the data will be populated from the <strong>Designation Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Department </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Department </strong>from the dropdown and the data will be populated from the <strong>Department Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Increment Percent</strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>Increment Percent </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Pay Commission </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Pay Commission </strong>from the dropdown and the data will be populated from the <strong>Pay Commission Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Pay Scale </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Pay Scale </strong>from the dropdown and the data will be populated from the <strong>Pay Scale Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Level </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Level </strong>from the dropdown and the data will be populated from the <strong>Level Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Office  </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Office </strong>from the dropdown and the data will be populated from the <strong>Office Master</strong>.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Basic Salary</strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>Basic Salary </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Order No.</strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>Order No. </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Order Date</strong>
                                        <ul>
                                            <li>User should be able to enter or select the <strong>Order Date </strong>and the calendar field should accept only date format.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Effective Date</strong>
                                        <ul>
                                            <li>User should be able to enter or select the <strong>Effective Date </strong>and the calendar field should accept only date format.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Save</strong>
                                        <ul>
                                            <li>User Can Click Save Button.</li>
                                            <li>On save button click form field should be validated.</li>
                                            <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?"). </li>
                                            <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!") </li>
                                            <li>If click on NO the data will not be saved and will return to the same page.</li>
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
                    <!--This -->


                </div>
            </div>

        </div>
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">


    <script>
        function Hideshow() {

            var x = document.getElementById("divb");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }

        function btnAddClick() {
            var x = document.getElementById("divEnteredDetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }

        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
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
                                text: 'Record Saved Successfully!',
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

    <style>
        #divb {
            display: none;
        }
    </style>
</asp:Content>

