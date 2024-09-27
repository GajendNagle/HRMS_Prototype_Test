<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_TeacherAttendance.aspx.cs" Inherits="mis_AcademicManagement_Rpt_TeacherAttendance" %>

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
                        <li class="breadcrumb-item">Teacher Attendance Report</li>
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
                            <marquee style="width: 100%;" onmouseover="this.stop();"
                                onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                शिक्षको की उपस्थिति की जानकारी 
	
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Teacher Attendance Report /
     शिक्षक उपस्थिति रिपोर्ट
                </legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select From Date
                                <br />
                                प्रारंभ तिथि का चयन करें<span style="color: red">*</span></label>
                            <input type="date" class="form-control datepicker" id="fromDate" placeholder="dd/mm/yyyy">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select To Date<br />
                                समाप्ति तिथि का चयन करें<span style="color: red">*</span></label>
                            <input type="date" class="form-control datepicker" id="toDate" placeholder="dd/mm/yyyy" />
                        </div>
                    </div>
                </div>

                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <button type="button" class="btn btn-success w-lg btn-border" onclick="document.getElementById('tbl_class').style.display ='block'">Search</button>
                        <a href="Rpt_TeacherAttendance.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
                                        <tr class="nowrap">
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
                                            <th>Total Month Days <br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days <br />
                                                कुल उपस्थित दिन</th>
                                            <th>Total Absent Days <br />
                                                कुल अनुपस्थित दिन</th>
                                            <th>Attendance Percent
                                                <br />
                                                उपस्थिति प्रतिशत
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Rohan Mishra</td>
                                            <td>TWR2345</td>
                                            <td>उच्च माध्यमिक शिक्षक</td>
                                            <td>HS-1 Hindi</td>
                                            <td>Present</td>
                                            <td>30</td>
                                            <td>25</td>
                                            <td>5</td>
                                            <td>83.33%</td>
                                        </tr>

                                        <tr>
                                            <td>2</td>
                                            <td>Sonali Singh</td>
                                            <td>TWR6789</td>
                                            <td>उच्च माध्यमिक शिक्षक</td>
                                            <td>HS-2 English</td>
                                            <td>Present</td>
                                            <td>30</td>
                                            <td>25</td>
                                            <td>5</td>
                                            <td>83.33%</td>
                                        </tr>

                                        <tr>
                                            <td>3</td>
                                            <td>Nirmala Yadav</td>
                                            <td>TWR0978</td>
                                            <td>माध्यमिक शिक्षक</td>
                                            <td>HS-3 Mathematics</td>
                                            <td>Present</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                            <td>90%</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Suresh Singh</td>
                                            <td>TWR2345</td>
                                            <td>उच्च माध्यमिक शिक्षक</td>
                                            <td>HS-4 Science</td>
                                            <td>Present</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                            <td>90%</td>
                                        </tr>
                                    </tbody>
                                </table>
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

