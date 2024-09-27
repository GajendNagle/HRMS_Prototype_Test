<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TeacherAttendance.aspx.cs" Inherits="mis_AcademicManagement_TeacherAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

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
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Teacher Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Teacher Attendance</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill " style="padding-top: 11px;">
                            शिक्षक प्रबंधन
			
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                 शिक्षको की उपस्थिति की जानकारी
				
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Teacher Attendence/
                
                शिक्षक उपस्थिति
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic year<br />
                                शैक्षणिक वर्ष का चयन करें <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>2024-25</option>
                                <option>2023-24</option>
                                <option>2022-23</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date
                                <br />
                                दिनांक <span style="color: red">*</span></label>
                            <input type="text" class="form-control datepicker" value="27-09-2024" disabled />

                        </div>
                    </div>
                </div>

                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <button type="button" class="btn btn-success w-lg btn-border" onclick="document.getElementById('tbl_class').style.display ='block'">Search</button>
                        <a href="TeacherAttendance.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="tbl_class" style="display: none">
                <legend>Teacher Attendance Details /
       
       शिक्षक की उपस्थिति विवरण</legend>
                <div class="row">
                    <div class=" col-md-12">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.<br />
                                                सरल क्र.</th>
                                            <th>Teacher Name
                                                <br />
                                                शिक्षक का नाम</th>
                                            <th>Teacher Unique Id
                                                <br />
                                                शिक्षक यूनिक आईडी</th>
                                            <th>Designation<br />
                                                पद का नाम</th>
                                            <th>Panel<br />
                                                पैनल</th>
                                            <th>Attendance<br />
                                                उपस्थिति</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Rohan Mishra</td>
                                            <td>TWR2345</td>
                                            <td>उच्च माध्यमिक शिक्षक</td>
                                            <td>HS-1 Hindi</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option1" checked value="Present">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option1" value="Absent">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>2</td>
                                            <td>Sonali Singh</td>
                                            <td>TWR6789</td>
                                            <td>उच्च माध्यमिक शिक्षक</td>
                                            <td>HS-2 English</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option2" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option2"  value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>3</td>
                                            <td>Nirmala Yadav</td>
                                            <td>TWR0978</td>
                                            <td>माध्यमिक शिक्षक</td>
                                            <td>HS-3 Mathematics</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option3" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option3"  value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Suresh Singh</td>
                                            <td>TWR2345</td>
                                            <td>उच्च माध्यमिक शिक्षक</td>
                                            <td>HS-4 Science</td>
                                            <td scope="col">

                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option4" checked value="yes">
                                                    Present
   
                                                </label>
                                                <label style="margin-right: 30px;">
                                                    <input type="radio" name="option4"  value="no">
                                                    Absent
   
                                                </label>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr />
                                <div class="col-md-3">
                                    <div class="form-group" style="margin-top: 1rem !important">
                                        <button id="btnSave" type="button" class="Alert-Confirmation fw-bold btn w-lg btn-outline-success btn-border">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

