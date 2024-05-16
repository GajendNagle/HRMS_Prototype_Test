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
    <div class="row page-titles mb-4">
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
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">


            <fieldset>
                <legend>School Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom ">
                            <tbody>
                                <tr>
                                    <th>District :</th>
                                    <td>Bhopal</td>
                                    <th>Block :</th>
                                    <td>Barasia</td>
                                </tr>
                                <tr>
                                    <th>School Name :</th>
                                    <td>K.D. Memorial School</td>
                                    <th>UDISE Code :</th>
                                    <td>23304068112</td>
                                </tr>
                                <tr>
                                    <th>School Type :</th>
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
                <legend>Class Wise Attendance</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Academic Year <span style="color: red">*</span></label>
                            <select class="form-control select2" disabled="disabled">
              
                                <option value="2023-24">2023-24</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Class <span style="color: red">*</span></label>
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
                            <label class="font-bold">Gender </label>
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
                            <label class="font-bold">Date</label>
                          <input class="form-control" type="date"/>
                        </div>
                    </div>

                    <div class="col-lg-12 text-center">
                        <div class="form-group">

                            <asp:Button Text="Show Student" ID="btnShowStudent" runat="server" CssClass="btn btn-info btn-rounded" OnClick="btnShowStudent_Click" />
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
                                                <th>S.No.</th>
                                                <th>Samagra Member ID</th>
                                                <th>Student Name/ Father Name</th>
                                                <th>Gender</th>

                                                <th>Attendance</th>

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

                                    <div class="col-lg-1 ">
                                        <div class="form-group">
                                            <input type="text" class="form-control text-center" />
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnRegisterStudents" Text="Submit" CssClass="btn btn-success btn-rounded" OnClick="btnRegisterStudents_Click" />
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

