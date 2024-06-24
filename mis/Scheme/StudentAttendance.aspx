<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentAttendance.aspx.cs" Inherits="mis_Transaction_StudentAttendance" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Student Attendance</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=AdmissionMgmt" title="click to go on">Student Attendance</a></li>
                    <li class="breadcrumb-item active">Student Attendance</li>
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
                            <a href="#StudentManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Student Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Student Attendance</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Student Attendance /
        छात्र उपस्थिति</h4>
                </div>
            </div>
        </div>
        <div class="card-body ">


            <fieldset>
                <legend>School Details / स्कूल विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom ">
                            <tbody>
                                <tr>
                                    <th>District<br />
                                        ज़िला :</th>
                                    <td>Bhopal</td>
                                    <th>Block<br />
                                        ब्लॉक :</th>
                                    <td>Barasia</td>
                                </tr>
                                <tr>
                                    <th>School Name<br />
                                        स्कूल का नाम :</th>
                                    <td>K.D. Memorial School</td>
                                    <th>UDISE Code<br />
                                        यू डाइस कोड :</th>
                                    <td>23304068112</td>
                                </tr>
                                <tr>
                                    <th>School Type<br />
                                        स्कूल का प्रकार :</th>
                                    <td>Primary With Middle School (1 to 8)</td>
                                    <th></th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Class Wise Attendance / कक्षावार उपस्थिति</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2" disabled="disabled">

                                <option value="2023-24">2023-24</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Class
                                <br />
                                कक्षा <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>1st</option>
                                <option>2nd</option>
                                <option>3rd</option>
                                <option>4th</option>
                                <option>5th</option>
                                <option>6th</option>
                                <option>7th</option>
                                <option>8th</option>
                                <option>9th</option>
                                <option>10th</option>
                                <option>11th</option>
                                <option>12th</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Gender<br />
                                जेंडर </label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>Boy</option>
                                <option>Girl</option>
                                <option>Transgender</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Date<br />
                                दिनांक</label>
                            <input class="form-control" type="date" />
                        </div>
                    </div>

                    <div class="col-lg-12 text-center">
                        <div class="form-group">

                            <asp:Button Text="Show Student" ID="btnShowStudent" runat="server" CssClass="btn btn-success btn-border w-lg" OnClick="btnShowStudent_Click" />
                            <%--<asp:Button Text="Generate Format - 1A" ID="btnGenerateFormat1A" runat="server" CssClass="btn btn-info btn-rounded" />--%>
                        </div>
                    </div>
                    <hr />
                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>S.No. <br />सरल क्र.</th>
                                                <th>Samagra Member ID<br />
                                                    समग्र सदस्य आईडी</th>
                                                <th>Student Name/ Father Name<br />
                                                    छात्र का नाम/पिता का नाम</th>
                                                <th>Gender<br />
                                                    जेंडर</th>

                                                <th>Attendance<br />
                                                    उपस्थिति</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>122456454</td>
                                                <td>AAKASH AHIRWAR /ASHOK </td>
                                                <td>BOY</td>

                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Present</asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>122452593</td>
                                                <td>BHAWNA PATRIKAR / SURENDRA PATRIKAR</td>
                                                <td>GIRL</td>

                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Present</asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>155354456</td>
                                                <td>CHETNA KHUSHWAHA / ALOK KHUSHWAHA</td>
                                                <td>GIRL</td>

                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Present</asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>335545455</td>
                                                <td>CHANDNI / MANOHAR GAYAKWAR</td>
                                                <td>GIRL</td>

                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Present</asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>123445565</td>
                                                <td>RUDRA SHARMA / AYUSHMAN SHARMA</td>
                                                <td>BOY</td>

                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Present</asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </td>

                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="3"></td>
                                                <td>Total Present Students</td>
                                                <td>0</td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
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

                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <input type="text" class="form-control text-center" />
                                        </div>
                                    </div>


                                </div>
                            </div>
                            </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnRegisterStudents" Text="Submit" CssClass="btn btn-success btn-rounded" OnClick="btnRegisterStudents_Click" />
                                    <a href="StudentAttendance.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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

