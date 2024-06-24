<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PromoteStudents1A.aspx.cs" Inherits="mis_Scheme_PromoteStudents1A" %>

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
                            <a href="#SchemeManagement_AdmissionMgmt" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Admission Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Promote Students to Higher Class (Format - 1A)</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Promote Students to Higher Class (Format - 1A)
                <br />
                       विद्यार्थियों को उच्च कक्षा में पदोन्नत करें (प्रारूप - 1ए)</h4>
                </div>
            </div>
        </div>
        <div class="card-body ">

            <div class="row">
                <div class="col-lg-12 text-center">
                    <h4 class="text-themecolor" style="font-weight: 600">Class Wise List of Students who have joined your School for the Academic Year : 2024-25.
                    </h4>
                </div>
            </div>
            <fieldset>
                <legend>School Details / स्कूल का विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom ">
                            <tbody>
                                <tr>
                                    <th>District<br />जिला :</th>
                                    <td>Bhopal</td>
                                    <th>Block <br />ब्लॉक:</th>
                                    <td>Barasia</td>
                                </tr>
                                <tr>
                                    <th>School Name<br />स्कूल का नाम :</th>
                                    <td>K.D. Memorial School</td>
                                    <th>UDISE Code <br />यू-डाइस कोड:</th>
                                    <td>23304068112</td>
                                </tr>
                                <tr>
                                    <th>School Type<br />स्कूल का प्रकार :</th>
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
                <legend>Class Wise List of Students who have joined your School<br /> आपके स्कूल में शामिल होने वाले छात्रों की कक्षावार सूची </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label >Select Academic Year<br />शैक्षणिक वर्ष का चयन करें <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="2024-25">2024-25</option>
                                <option value="2023-24">2023-24</option>
                                <option value="2022-23">2022-23</option>
                                <option value="2021-22">2021-22</option>
                                <option value="2020-21">2020-21</option>
                                <option value="2019-20">2019-20</option>
                                <option value="2018-19">2018-19</option>
                                <option value="2017-18">2017-18</option>
                                <option value="2016-17">2016-17</option>
                                <option value="2015-16">2015-16</option>
                                <option value="2014-15">2014-15</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label >Select Previous Class<br />पिछली कक्षा का चयन करें<span style="color: red">*</span></label>
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
                            <label >Gender<br />जेंडर<span style="color: red">*</span> </label>
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
                            <label>Category<br />श्रेणी<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>SC</option>
                                <option>ST</option>
                                <option>OBC</option>
                                <option>Gen</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-lg-12 text-center">
                        <div class="form-group">

                            <asp:Button Text="Show Student" ID="btnShowStudent" runat="server" CssClass="btn btn-outline-info btn-rounded" OnClick="btnShowStudent_Click" />
                            <asp:Button Text="Generate Format - 1A" ID="btnGenerateFormat1A" runat="server" CssClass="btn btn-outline-info btn-rounded" />
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
                                                <th>S.No.<br />सरल क्र.</th>
                                                <th>Samagra Member ID<br />समग्र सदस्य आईडी</th>
                                                <th>Student Name/ Father Name<br />छात्र का नाम/पिता का नाम</th>
                                                <th>Gender<br />जेंडर</th>
                                                <th>DOB<br />
जन्म तिथि</th>
                                                <th>Category<br />श्रेणी</th>
                                                <th>Result<br />परिणाम</th>
                                                <th>Percentage(%)<br />प्रतिशत(%)</th>
                                                <th>School Status<br />स्कूल की स्थिति</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>122456454</td>
                                                <td>AAKASH AHIRWAR /ASHOK </td>
                                                <td>BOY</td>
                                                <td>01-04-2008</td>
                                                <td>SC</td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Pass</asp:ListItem>
                                                        <asp:ListItem>Fail</asp:ListItem>
                                                        <asp:ListItem>N.A.</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                                <td style="max-width: 10px;">
                                                    <input type="text" class="form-control" />
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Same</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>122452593</td>
                                                <td>BHAWNA PATRIKAR / SURENDRA PATRIKAR</td>
                                                <td>GIRL</td>
                                                <td>15-09-2008</td>
                                                <td>SC</td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Pass</asp:ListItem>
                                                        <asp:ListItem>Fail</asp:ListItem>
                                                        <asp:ListItem>N.A.</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                                <td style="max-width: 10px;">
                                                    <input type="text" class="form-control" />
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Same</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>155354456</td>
                                                <td>CHETNA KHUSHWAHA / ALOK KHUSHWAHA</td>
                                                <td>GIRL</td>
                                                <td>05-03-2009</td>
                                                <td>OBC</td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Pass</asp:ListItem>
                                                        <asp:ListItem>Fail</asp:ListItem>
                                                        <asp:ListItem>N.A.</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                                <td style="max-width: 10px;">
                                                    <input type="text" class="form-control" />
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Same</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>335545455</td>
                                                <td>CHANDNI / MANOHAR GAYAKWAR</td>
                                                <td>GIRL</td>
                                                <td>13-06-2008</td>
                                                <td>SC</td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Pass</asp:ListItem>
                                                        <asp:ListItem>Fail</asp:ListItem>
                                                        <asp:ListItem>N.A.</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                                <td style="max-width: 10px;">
                                                    <input type="text" class="form-control" />
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Same</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>123445565</td>
                                                <td>RUDRA SHARMA / AYUSHMAN SHARMA</td>
                                                <td>BOY</td>
                                                <td>19-02-2009</td>
                                                <td>OBC</td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Pass</asp:ListItem>
                                                        <asp:ListItem>Fail</asp:ListItem>
                                                        <asp:ListItem>N.A.</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                                <td style="max-width: 10px;">
                                                    <input type="text" class="form-control" />
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rblResult">
                                                        <asp:ListItem>Same</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                        </tbody>
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
                                    <asp:Button runat="server" ID="btnRegisterStudents" Text="Register Students" CssClass="btn btn-success btn-rounded" OnClick="btnRegisterStudents_Click" />
                                    <a href="PromoteStudents1A.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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

