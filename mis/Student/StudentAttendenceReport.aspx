<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentAttendenceReport.aspx.cs" Inherits="mis_StudentManagement_StudentAttendenceReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
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
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student Attendence Report</span></li>
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
                            विद्यार्थी प्रबंधन
			
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();"
                                onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                विद्यार्थियों की उपस्थिति की जानकारी 
				
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Attendance Report /
            विद्यार्थी उपस्थिति रिपोर्ट
        </legend>
                <div class="row">
                    <%--  <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Academic year /<br />
                        शैक्षणिक वर्ष <span style="color: red">*</span></label>
                  <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25">
                    <span id="academicYearError" class="error text-danger"></span>
                </div>
            </div>--%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select From Date /<br />
                                प्रारंभ तिथि का चयन करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control datepicker" id="fromDate" placeholder="dd/mm/yyyy">
                            <span id="fromDateError" class="error text-danger"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select To Date /<br />
                                समाप्ति तिथि का चयन करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control datepicker" id="toDate" placeholder="dd/mm/yyyy" />
                            <span id="toDateError" class="error text-danger"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Class /<br />
                                कक्षा का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddl_class" onchange="hideshow()">
                                <option value="0">-Select-</option>
                                <option value="1">1st Class</option>
                                <option value="2">2nd Class</option>
                                <option value="3">3rd Class</option>
                                <option value="4">4th Class</option>
                                <option value="5">5th Class</option>
                                <option value="6">6th Class</option>
                                <option value="7">7th Class</option>
                                <option value="8">8th Class</option>
                                <option value="9">9th Class</option>
                                <option value="10">10th Class</option>
                                <option value="11">11th Class</option>
                                <option value="12">12th Class</option>
                            </select>
                            <span id="ddl_classError" class="error text-danger"></span>
                        </div>
                    </div>
                    <div class="col-md-3" id="ddl_subject" style="display: none;">
                        <div class="form-group">
                            <label>
                                Select Subject /<br />
                                विषय का चयन करें <span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddl_subjects">
                                <option value="0">-Select-</option>
                                <option value="1">PCM</option>
                                <option value="2">PCB</option>
                                <option value="3">Arts</option>
                                <option value="4">Commerce</option>
                                <option value="5">Agriculture</option>
                            </select>
                            <span id="ddl_subjectsError" class="error text-danger"></span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group" style="margin-top: 3.3rem !important">
                            <button id="btnSearch" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <div class="row form-group" id="tbl_class" style="display: none">
                <fieldset>
                    <legend>Class 1st Attendence /
                        कक्षा 1 की उपस्थिति</legend>
                    <div class="mt-5">
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
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                                                    कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>
                                            <th>Attendance Percentage /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody id="tableBody">

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class2" style="display: none">
                <fieldset>
                    <legend>Class 2nd Attendence /
                        कक्षा 2 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class3" style="display: none">
                <fieldset>
                    <legend>Class 3rd Attendence /
                        कक्षा 3 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class4" style="display: none">
                <fieldset>
                    <legend>Class 4th Attendence /
                        कक्षा 4 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput4" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class5" style="display: none">
                <fieldset>
                    <legend>Class 5th Attendence /
                        कक्षा 5 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class6" style="display: none">
                <fieldset>
                    <legend>Class 6th Attendence /
                        कक्षा 6 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput6" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class7" style="display: none">
                <fieldset>
                    <legend>Class 7th Attendence /
                        कक्षा 7 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput7" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class8" style="display: none">
                <fieldset>
                    <legend>Class 8th Attendence /
                        कक्षा 8 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput8" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class9" style="display: none">
                <fieldset>
                    <legend>Class 9th Attendence /
                        कक्षा 9 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput9" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class10" style="display: none">
                <fieldset>
                    <legend>Class 10th Attendence /
                        कक्षा 10 की उपस्थिति</legend>
                    <div class="mt-5">
                        <div class="row justify-content-end">
                            <div class="col-md-3 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded ">Excel</button>
                                    <button class="btn btn-info btn-rounded ">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput10" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्र.</th>
                                            <%-- <th>Class No. /<br />
                        कक्षा क्र.</th>--%>

                                            <th>Student Name /<br />
                                                विद्यार्थी का नाम</th>
                                            <th>Samagra ID /<br />
                                                समग्र आईडी</th>
                                            <th>Total Month Days /<br />
                                                कुल मासिक दिन</th>
                                            <th>Total Present Days /<br />
                                                कुल उपस्थित दिन</th>

                                            <th>Total Absent Days /<br />
                                                कुल अनुपस्थित दिन</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr data-class="1">
                                            <td>1</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Alice Johnson</td>
                                            <td>115987600</td>
                                            <td>30</td>
                                            <td>28</td>
                                            <td>2</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <%--  <td>1st Class</td>--%>

                                            <td>Bob Smith</td>
                                            <td>115987601</td>
                                            <td>30</td>
                                            <td>26</td>
                                            <td>4</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Charlie Brown</td>
                                            <td>115987602</td>
                                            <td>30</td>
                                            <td>27</td>
                                            <td>3</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <%-- <td>1st Class</td>--%>

                                            <td>Daisy Miller</td>
                                            <td>115987603</td>
                                            <td>30</td>
                                            <td>29</td>
                                            <td>1</td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <%--<td>1st Class</td>--%>

                                            <td>Emily Davis</td>
                                            <td>115987604</td>
                                            <td>30</td>
                                            <td>30</td>
                                            <td>0</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <hr />

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="row form-group" id="tbl_class11" style="display: none">
                <fieldset>
                    <legend>Class 11th Attendence /
                        कक्षा 11 की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%-- <th>Class No. /<br />
                                            कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCM </td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class11pcb" style="display: none">
                <fieldset>
                    <legend>Class 11th Attendence /
                        कक्षा 12 की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%-- <th>Class No. /<br />
                                कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCB </td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class11arts" style="display: none">
                <fieldset>
                    <legend>Class 11th Attendence /
                        कक्षा ग्यारवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%--  <th>Class No. /<br />
                                कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts </td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class11comm" style="display: none">
                <fieldset>
                    <legend>Class 11th Attendence /
                        कक्षा ग्यारवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%--<th>Class No. /<br />
                                कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class11agri" style="display: none">
                <fieldset>
                    <legend>Class 11th Attendence /
                        कक्षा ग्यारवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%-- <th>Class No. /<br />
                                कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class12" style="display: none">
                <fieldset>
                    <legend>Class 12th Attendence /
                        कक्षा ग्यारवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%-- <th>Class No. /<br />
                                            कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCM </td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCM</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class12pcb" style="display: none">
                <fieldset>
                    <legend>Class 12th Attendence /
                        कक्षा बारहवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%-- <th>Class No. /<br />
                                            कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCB </td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>PCB</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class12arts" style="display: none">
                <fieldset>
                    <legend>Class 12th Attendence /
                        कक्षा बारहवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%--  <th>Class No. /<br />
                                            कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts </td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Arts</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class12comm" style="display: none">
                <fieldset>
                    <legend>Class 12th Attendence /<br />
                        कक्षा बारहवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%--<th>Class No. /<br />
                                            कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%-- <td>12th Class</td>--%>
                                        <td>Commerce</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>
            <div class="row form-group" id="tbl_class12agri" style="display: none">
                <fieldset>
                    <legend>Class 12th Attendence /<br />
                        कक्षा बारहवीं की उपस्थिति</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <%-- <th>Class No. /<br />
                                            कक्षा क्र.</th>--%>
                                        <th>Subject /<br />
                                            विषय</th>
                                        <th>Student Name /<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Samagra ID /<br />
                                            समग्र आईडी</th>
                                        <th>Total Month Days /<br />
                                            कुल मासिक दिन</th>
                                        <th>Total Present Days /<br />
                                            कुल उपस्थित दिन</th>
                                        <th>Total Absent Days /<br />
                                            कुल अनुपस्थित दिन</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Ankush Hingve</td>
                                        <td>115987605</td>
                                        <td>30</td>
                                        <td>25</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Ravi Hajare</td>
                                        <td>115987606</td>
                                        <td>30</td>
                                        <td>28</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Himanshu Barmase</td>
                                        <td>115987607</td>
                                        <td>30</td>
                                        <td>27</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>Sachin Pawar</td>
                                        <td>115987608</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <%--<td>12th Class</td>--%>
                                        <td>Agriculture</td>
                                        <td>ajit Malaiya</td>
                                        <td>115987609</td>
                                        <td>30</td>
                                        <td>26</td>
                                        <td>4</td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </fieldset>

            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- Class wise Attendence Report --%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        function showClassData(classId) {
            const rows = document.querySelectorAll('#tableBody tr');
            rows.forEach(row => {
                row.style.display = (row.getAttribute('data-class') === classId) ? '' : 'none';
            });
        }

        function hideAllTables(tables) {
            tables.forEach(table => {
                table.style.display = 'none';
            });
        }

        function handleTableDisplay(classId, subjectId) {
            const tables = [
                document.getElementById('tbl_class'),
                document.getElementById('tbl_class2'),
                document.getElementById('tbl_class3'),
                document.getElementById('tbl_class4'),
                document.getElementById('tbl_class5'),
                document.getElementById('tbl_class6'),
                document.getElementById('tbl_class7'),
                document.getElementById('tbl_class8'),
                document.getElementById('tbl_class9'),
                document.getElementById('tbl_class10'),
                document.getElementById('tbl_class11'),
                document.getElementById('tbl_class11pcb'),
                document.getElementById('tbl_class11arts'),
                document.getElementById('tbl_class11comm'),
                document.getElementById('tbl_class11agri'),
                document.getElementById('tbl_class12'),
                document.getElementById('tbl_class12pcb'),
                document.getElementById('tbl_class12arts'),
                document.getElementById('tbl_class12comm'),
                document.getElementById('tbl_class12agri')
            ];

            hideAllTables(tables);

            if (classId <= 10) {
                tables[classId - 1].style.display = 'block';
            } else if (classId === '11' || classId === '12') {
                let indexOffset = 10; // Offset for class 11 and 12 tables
                let subjectTables = {
                    '1': 'tbl_class' + classId,
                    '2': 'tbl_class' + classId + 'pcb',
                    '3': 'tbl_class' + classId + 'arts',
                    '4': 'tbl_class' + classId + 'comm',
                    '5': 'tbl_class' + classId + 'agri'
                };

                if (subjectTables[subjectId]) {
                    document.getElementById(subjectTables[subjectId]).style.display = 'block';
                } else {
                    Swal.fire({
                        title: 'Data Not Found',
                        icon: "warning",
                        confirmButtonText: 'OK'
                    });
                }
            } else {
                Swal.fire({
                    title: 'Data Not Found',
                    icon: "warning",
                    confirmButtonText: 'OK'
                });
            }
        }

        document.getElementById('btnSearch').addEventListener('click', function () {
            const selectedValue = document.getElementById('ddl_class').value;
            const selectedsub = document.getElementById('ddl_subjects').value;
            showClassData(selectedValue);
            handleTableDisplay(selectedValue, selectedsub);
        });
    </script>

    <%-- 11th and 12th select to Subject Dropdown Open --%>
    <script>
        function hideshow() {
            var ddl_class = document.getElementById("ddl_class");
            var ddl_subject = document.getElementById("ddl_subject");

            if (ddl_class.value === "0") {
                ddl_subject.style.display = "none";
            } else if (ddl_class.value === "11" || ddl_class.value === "12") {
                ddl_subject.style.display = "block";
            } else {
                ddl_subject.style.display = "none";
            }
        }
</script>

    < <%-- Acedamic Year --%>

    <!-- Bootstrap Datepicker JS -->

    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100);
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') {
                setDefaultFinancialYear();
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
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });
  </script>

    <%-- Calender --%>
    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true,

            });
        });
    </script>
</asp:Content>

