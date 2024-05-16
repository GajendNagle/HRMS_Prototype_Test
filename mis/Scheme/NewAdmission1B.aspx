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
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">New Admission (Format - 1B)</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=AdmissionMgmt" title="click to go on">Admission Management</a></li>
                    <li class="breadcrumb-item active">New Admission (Format - 1B)</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Student Enrollment Details</legend>

                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Academic Year <span style="color: red">*</span></label>
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
                            <label class="font-bold">Student Samagra Id <span style="color: red">*</span></label>
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

                            <div class="col-lg-1 ">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="col-md-4 text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnShowStudentDetails" CssClass="btn btn-success btn-rounded" OnClick="btnShowStudentDetails_Click" Text="Show Student Details" />
                            <a href="NewAdmission1B.aspx" class="btn btn-rounded btn-danger">Clear</a>
                        </div>
                    </div>
                </div>


            </fieldset>
            <fieldset runat="server" id="dvPersonalDetails">
                <legend>Personal Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>Name:</th>
                                    <td>
                                        <asp:Label runat="server">Rudra Sharma</asp:Label></td>
                                    <th>Father Name:</th>
                                    <td>
                                        <asp:Label runat="server">Narayan Sharma</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Mother Name:</th>
                                    <td>
                                        <asp:Label runat="server">Maya Sharma</asp:Label></td>
                                    <th>Date of Birth:</th>
                                    <td>
                                        <asp:Label runat="server">01-04-2008</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Gender:</th>
                                    <td>
                                        <asp:Label runat="server">Boy</asp:Label></td>
                                    <th>Category:</th>
                                    <td>
                                        <asp:Label runat="server">OBC</asp:Label></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="dvPreviousSchoolDetails">
                <legend>Previous School Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>District :</th>
                                    <td><asp:Label runat="server">TIKAMGARH</asp:Label></td>

                                    <th>Block :</th>
                                    <td><asp:Label runat="server">PALERA</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Previous School Name :</th>
                                    <td><asp:Label runat="server">EPES GMS HANOTA (1-8)</asp:Label></td>
                                    <th>Previous School UDISE Code :</th>
                                    <td><asp:Label runat="server">23080412302</asp:Label></td>
                                    
                                </tr>
                                <tr> 
                                    <th>Previous School Type :</th>
                                    <td><asp:Label runat="server">Primary With Middle School (Class 1 to 8)</asp:Label></td>
                                    <th>Previous Class :</th>
                                    <td><asp:Label runat="server">5 </asp:Label></td>
                                </tr>
                                

                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="dvPreviousAcademicDetails">
                <legend>Enrolled School Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>District :</th>
                                    <td><asp:Label runat="server">Bhopal</asp:Label></td>

                                    <th>Block :</th>
                                    <td><asp:Label runat="server">Barasia</asp:Label></td>
                                </tr>
                                <tr>
                                    <th>School Name :</th>
                                    <td><asp:Label runat="server">K.D. Memorial School</asp:Label></td>
                                    <th>UDISE Code :</th>
                                    <td><asp:Label runat="server">23304068112</asp:Label></td>
                                </tr>
                                
                                <tr>
                                    <th>School Management Type :</th>
                                    <td><asp:Label runat="server">State Govt.</asp:Label></td>

                                    <th>School Type :</th>
                                    <td><asp:Label runat="server">Primary With Middle School (1 to 8)</asp:Label></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="dvEnrollmentDetails">
                <legend>Enrollment Details</legend>
                <div class="row justify-content-center">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="font-bold">Enroll Students in <span style="color: red">*</span></label>
                            <input type="text" class="form-control" disabled="disabled" value="2024-25" />
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="font-bold">UDISE Code <span style="color: red">*</span></label>
                            <input type="text" class="form-control" value="" />
                        </div>
                    </div>

                    <div class="col-lg-12  text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnEnroll" CssClass="btn btn-success btn-rounded" Text="Show School Details" OnClick="btnEnroll_Click" />
                            <a href="NewAdmission1B.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="dvNewSchoolDetails">
                <legend>New School Details</legend>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="font-bold">New School</label>
                            <select class="form-control">
                                <option>select</option>
                                <option>GHSS BHATANWARA (Class 1 to 12)</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="font-bold">New Class</label>
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
                            <label class="font-bold">Last Class Result</label>
                            <select class="form-control">
                                <option>select</option>
                                <option>Pass</option>
                                <option>Fail</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="font-bold">Last Class Percentage</label>
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="font-bold">Scholar No.</label>
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

                            <div class="col-lg-1 ">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="col-lg-12  text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnAdmitStudent" CssClass="btn btn-success btn-rounded" Text="Admit Student in the School" OnClick="btnAdmitStudent_Click" />
                        </div>
                    </div>
                </div>
            </fieldset>






        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

