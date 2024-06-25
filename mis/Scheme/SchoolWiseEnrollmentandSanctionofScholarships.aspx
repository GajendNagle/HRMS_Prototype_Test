<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolWiseEnrollmentandSanctionofScholarships.aspx.cs" Inherits="mis_Scheme_SchoolWiseEnrollmentandSanctionofScholarships" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .rblResult td, .rblResult tr {
            border-color: transparent !important;
            background-color: transparent !important;
            padding: 5px !important;
        }

        .rblResult label {
            margin: 0px 3px !important;
        }

        .table-custom th {
            text-align: right !important;
            width: 20% !important;
        }

        .table-custom td {
            width: 30% !important;
        }

        td {
            white-space: nowrap;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">School-Wise Enrollment and Sanction of Scholarships</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active"><a href="DistrictWiseEnrollmentandSanctionofScholarships.aspx" title="click to go on">District-Wise Enrollment and Sanction of Scholarships</a></li>
                    <li class="breadcrumb-item active"><a href="BlockWiseEnrollmentandSanctionofScholarships.aspx" title="click to go on">Block-Wise Enrollment and Sanction of Scholarships</a></li>
                    <li class="breadcrumb-item active">School-Wise Enrollment and Sanction of Scholarships</li>
                </ol>
            </div>
        </div>
    </div>--%>

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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#ControlReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')"><span>Control Report</span></a>
                        </li>
                        <li class="breadcrumb-item">District-Wise Enrollment and Sanction of Scholarships</li>
                        <li class="breadcrumb-item">Block-Wise Enrollment</li>
                        <li class="breadcrumb-item">School-Wise </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-10">
                    <h4 class="card-title">School-Wise Enrollment and Sanction of Scholarships
                <br />
                        विद्यालयवार नामांकन एवं छात्रवृत्ति की स्वीकृति
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Details / विवरण</legend>
                <%--<div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>शैक्षणिक वर्ष <span class="text-danger">*</span></label>
                            <select class="form-control select2">
                                <option value="0">-Select-</option>
                                <option value="37">2024-25</option>
                                <option selected="selected" value="36">2023-24</option>
                                <option value="35">2022-23</option>
                                <option value="34">2021-22</option>
                                <option value="33">2020-21</option>
                                <option value="32">2019-20</option>

                            </select>
                        </div>
                    </div>
                </div>--%>
                <%-- <div class="row">
                    <div class="col-lg-12">
                        <div class="row justify-content-center">
                            <div class="col-lg-3 text-center ">
                                <img src="../../img/captcha.png" width="150" />
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4 text-center">
                                <label class="font-bold">Please enter the code shown above</label>
                            </div>
                            <div class="col-lg-12"></div>

                            <div class="col-lg-1 ">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="col-md-12 text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnRegisterStudents" Text="छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला-वार स्वीकृती की संक्षिप्त रिपोर्ट देखें " CssClass="btn btn-success btn-rounded" />
                        </div>
                    </div>
                </div>--%>
                <div class="row">

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th>Total Enrollment Reported [Admissions/Promotions to Higher Class]<br />रिपोर्ट किया गया कुल नामांकन [उच्च कक्षा में प्रवेश/पदोन्नति]</th>
                                                <th>Students whose Profile [Income,% of marks obtained in previous class, occupation of parents] has been Updated/Reported<br />वे छात्र जिनकी प्रोफ़ाइल [आय, पिछली कक्षा में प्राप्त अंकों का%, माता-पिता का व्यवसाय] अद्यतन/रिपोर्ट की गई है</th>
                                                <th>Students [Out of B], who are eligible end entitled for one or more Scholarships<br />छात्र [बी में से], जो पात्र हैं, एक या अधिक छात्रवृत्ति के लिए पात्र होंगे</th>
                                                <th>Amount [Scholarships/financial assitance] entitled to the eligible Students<br />पात्र छात्रों के लिए हकदार राशि [छात्रवृत्ति/वित्तीय सहायता]</th>
                                                <th>Students [Out of C] who have been sanctioned one or more Scholarship/financial assitance<br />छात्र [सी में से] जिन्हें एक या अधिक छात्रवृत्ति/वित्तीय सहायता स्वीकृत की गई है</th>
                                                <th>Amount [Scholarships/financial assitance] sanctioned to students<br />छात्रों को स्वीकृत राशि [छात्रवृत्ति/वित्तीय सहायता]</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        S.No.<br />सरल क्र.
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        School<br />स्कूल
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (A)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (B)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (C)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (D)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (E)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (F)
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>1
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl04$lnkDistrict','')" style="color: Blue;">PSLALA P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblEnrollment">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblNoneZeroApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblAmount">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblSanction">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblSanctionAmount">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert">
                                                <td>2
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl05$lnkDistrict','')" style="color: Blue;">PSKULDMADI P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblEnrollment">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblNoneZeroApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblAmount">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblSanction">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblSanctionAmount">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl06$lnkDistrict','')" style="color: Blue;">GPS UMARPUR</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblEnrollment">33</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblApplication">33</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblNoneZeroApplication">17</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblAmount">4250</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblSanction">17</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblSanctionAmount">4250</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert">
                                                <td>4
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl07$lnkDistrict','')" style="color: Blue;">PSBHADWASA P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblEnrollment">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblNoneZeroApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblAmount">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblSanction">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblSanctionAmount">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSAMBA BAROD P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblEnrollment">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblNoneZeroApplication">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblAmount">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblSanction">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblSanctionAmount">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSAMBA BAROD P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>7
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSKACHALIYA P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>8
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS RAPDI</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">60</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">60</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">11</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3250</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">11</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3250</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>8
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS CHIPIYA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">69</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">69</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">20</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">5000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">20</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">5000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>9
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS KHANDAVAS</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">24</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">24</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">7</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1750</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">7</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1750</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>10
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS PIPLIYA CHACHA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">64</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">64</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">4</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3750</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3500</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>11
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">NEW GPS (KHEDA JHA) JHALARA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">34</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">34</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>12
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS SINGLIYA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">44</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">44</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">2</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">500</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">2</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">500</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>13
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS AASANDHYA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">30</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">30</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">750</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">750</span>
                                                    </div>
                                                </td>
                                            </tr>


                                            <tr>
                                                <td>14
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSKANKRAIL P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>15
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSFARASPURA P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>16
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS ALSIYA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">25</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">25</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>17
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS DEVLI (AGAR)</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">25</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">25</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>18
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">P.S. UMARIYA LALA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">32</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">32</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>19
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS GURADIYA (PEER)</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">31</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">31</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>20
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSBINNAYAGA (AGAR) P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>21
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSSUWA GAON P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <tr>
                                                    <td>22
                                                    </td>
                                                    <td>
                                                        <div style="text-align: left">
                                                            <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS AAKADI</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div style="text-align: center">
                                                            <span id="">19</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div style="text-align: center">
                                                            <span id="">19</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div style="text-align: center">
                                                            <span id="">0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div style="text-align: center">
                                                            <span id="">0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div style="text-align: center">
                                                            <span id="">0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div style="text-align: center">
                                                            <span id="">0</span>
                                                        </div>
                                                    </td>
                                                    <tr>
                                                        <td>23
                                                        </td>
                                                        <td>
                                                            <div style="text-align: left">
                                                                <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS BHAGVANPURA JHALARA</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div style="text-align: center">
                                                                <span id="">37</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div style="text-align: center">
                                                                <span id="">37</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div style="text-align: center">
                                                                <span id="">3</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div style="text-align: center">
                                                                <span id="">750</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div style="text-align: center">
                                                                <span id="">3</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div style="text-align: center">
                                                                <span id="">750</span>
                                                            </div>
                                                        </td>
                                                    </tr>
                                            <tr>
                                                <td>24
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS RAMAKHEDI</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">19</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">19</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">4</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">4</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>25
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSRAMNAGAR P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>26
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSGUDBHELI (AGAR) P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>27
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS PIPLIYA GHATA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">56</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">56</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">6</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1500</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">6</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1500</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>28
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS JOGI BARDIYA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">49</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">49</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">22</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">5500</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">22</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">5500</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>29
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">PSJAMLI P. S.</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>30
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS DHODRI</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">21</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">21</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>31
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS DHODHAR KA KHEDA BARGADI</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">22</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">22</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">0</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>32
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS GURDIYA PIPLON</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">44</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">44</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">8</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">2000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">8</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">2000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>33
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS SEVAKHEDI KA KHEDA KANGNIKHEDA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">24</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">24</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">11</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">2750</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">11</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">2750</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>34
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS BARKHEDI KA KHEDA UNCHWAS</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">20</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">20</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">5</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1250</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">5</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1250</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>35
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS KALIYARI DHABLA (ANJNA)</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">19</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">19</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">7</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1750</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">7</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">1750</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>36
                                                </td>
                                                <td>
                                                    <div style="text-align: left">
                                                        <a id="" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">GPS MALLAPURA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">55</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">55</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">12</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">12</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="">3000</span>
                                                    </div>
                                                </td>
                                            </tr>














                                            <tr>
                                                <td>&nbsp;</td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">Total</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">1,37,88,727</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">1,36,64,067</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">68,94,077</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">3,71,89,26,825</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">68,10,493</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">3,683,468,350</div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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

