<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="NewAdmission1B.aspx.cs" Inherits="mis_Scheme_NewAdmission1B" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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
                        <li class="breadcrumb-item">New Admission (Format - 1B)</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">New Admission (Format - 1B) /
              नया प्रवेश (प्रारूप - 1बी)</h4>
                </div>
            </div>
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Student Enrollment Details / छात्र नामांकन विवरण</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
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
                            <label>
                                Student Samagra Id<br />
                                विद्यार्थी समग्र आईडी<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" ID="txtStudentSamagraID" placeholder="102345670" AutoComplete="off" CssClass="form-control" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-lg-12">

                        <div class="row justify-content-center">
                            <div class="col-lg-3 text-center">
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
                            <asp:Button runat="server" ID="btnShowStudentDetails" CssClass="btn btn-success btn-border w-lg" OnClick="btnShowStudentDetails_Click" Text="Show Student Details" />
                            <a href="NewAdmission1B.aspx" class="btn btn-border btn-outline-danger btn w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="dvPersonalDetails">
                <legend>Personal Details / व्यक्तिगत विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>Name<br />
                                        नाम:</th>
                                    <td>
                                        <asp:Label runat="server">Rudra Sharma</asp:Label></td>
                                    <th>Father Name<br />
                                        पिता का नाम:</th>
                                    <td>
                                        <asp:Label runat="server">Narayan Sharma</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Mother Name<br />
                                        माता का नाम:</th>
                                    <td>
                                        <asp:Label runat="server">Maya Sharma</asp:Label></td>
                                    <th>Date of Birth<br />
                                        जन्म की तारीख:</th>
                                    <td>
                                        <asp:Label runat="server">01-04-2008</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Gender<br />
                                        जेंडर:</th>
                                    <td>
                                        <asp:Label runat="server">Boy</asp:Label></td>
                                    <th>Category<br />
                                        श्रेणी:</th>
                                    <td>
                                        <asp:Label runat="server">OBC</asp:Label></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="dvPreviousSchoolDetails">
                <legend>Previous School Details / पिछले का स्कूल विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>District<br />
                                        ज़िला :</th>
                                    <td>
                                        <asp:Label runat="server">TIKAMGARH</asp:Label></td>

                                    <th>Block<br />
                                        ब्लॉक :</th>
                                    <td>
                                        <asp:Label runat="server">PALERA</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Previous School Name<br />
                                        पिछले स्कूल का नाम :</th>
                                    <td>
                                        <asp:Label runat="server">EPES GMS HANOTA (1-8)</asp:Label></td>
                                    <th>Previous School UDISE Code :</th>
                                    <td>
                                        <asp:Label runat="server">23080412302</asp:Label></td>

                                </tr>
                                <tr>
                                    <th>Previous School Type :</th>
                                    <td>
                                        <asp:Label runat="server">Primary With Middle School (Class 1 to 8)</asp:Label></td>
                                    <th>Previous Class :</th>
                                    <td>
                                        <asp:Label runat="server">5 </asp:Label></td>
                                </tr>


                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="dvPreviousAcademicDetails">
                <legend>Enrolled School Details / नामांकित विद्यालय का विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>District<br />
                                        ज़िला :</th>
                                    <td>
                                        <asp:Label runat="server">Bhopal</asp:Label></td>

                                    <th>Block<br />
                                        ब्लॉक :</th>
                                    <td>
                                        <asp:Label runat="server">Barasia</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>School Name<br />
                                        स्कूल का नाम :</th>
                                    <td>
                                        <asp:Label runat="server">K.D. Memorial School</asp:Label></td>
                                    <th>UDISE Code<br />
                                        यू-डाइस कोड :</th>
                                    <td>
                                        <asp:Label runat="server">23304068112</asp:Label></td>
                                </tr>

                                <tr>
                                    <th>School Management Type<br />
                                        विद्यालय प्रबंधन प्रकार :</th>
                                    <td>
                                        <asp:Label runat="server">State Govt.</asp:Label></td>

                                    <th>School Type<br />
                                        स्कूल का प्रकार :</th>
                                    <td>
                                        <asp:Label runat="server">Primary With Middle School (1 to 8)</asp:Label></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="dvEnrollmentDetails">
                <legend>Enrollment Details / नामांकन विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Enroll Students in<br />
                                छात्रों को नामांकित करें <span style="color: red">*</span></label>
                            <input type="text" class="form-control" disabled="disabled" value="2024-25" />
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>
                               Enter UDISE Code<br />
                                यू-डाइस कोड दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" value="" />
                        </div>
                    </div>
                    </div>
                <hr />
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnEnroll" CssClass="btn btn-success btn-border w-lg" Text="Show School Details" OnClick="btnEnroll_Click" />
                            <a href="NewAdmission1B.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="dvNewSchoolDetails">
                <legend>New School Details / नये स्कूल का विवरण</legend>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>New School<br />नया स्कूल</label>
                            <select class="form-control select2">
                                <option>select</option>
                                <option>GHSS BHATANWARA (Class 1 to 12)</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>New Class<br />नई कक्षा</label>
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

                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Last Class Result<br />अंतिम कक्षा का परिणाम</label>
                            <select class="form-control select2">
                                <option>select</option>
                                <option>Pass</option>
                                <option>Fail</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Last Class Percentage<br />अंतिम कक्षा का प्रतिशत</label>
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Scholar No.<br />स्कॉलर नंबर</label>
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="row justify-content-center">
                            <div class="col-lg-3 text-center">
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
                    <div class="col-lg-12">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnAdmitStudent" CssClass="btn btn-success btn-border w-lg" Text="Admit Student in the School" OnClick="btnAdmitStudent_Click" />
                            <a href="NewAdmission1B.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

