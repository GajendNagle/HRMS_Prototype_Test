<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentsProfile.aspx.cs" Inherits="mis_Scheme_StudentsProfile" %>

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
            <h4 class="text-themecolor">Update Student Profile for Scholarships</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>
                    <li class="breadcrumb-item active">Update Student Profile for Scholarships</li>
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
                            <a href="#StudentProfileMgmt" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Student Profile Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Update Student Profile for Scholarships</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Update Student Profile for Scholarships
                        <br />
                        छात्रवृत्ति के लिए छात्र प्रोफ़ाइल अपडेट करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>Academics Details / शैक्षणिक विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>

                                <tr>
                                    <th>School Name :</th>
                                    <td>
                                        <asp:Label runat="server">EPES GMS HANOTA (1-8)</asp:Label></td>
                                    <th>School UDISE Code :</th>
                                    <td>
                                        <asp:Label runat="server">23080412302</asp:Label></td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-12">
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select Academic Year<br />
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
                                    <label>Select Class<br />
                                        कक्षा का चयन करें</label>
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
                                    <asp:Button runat="server" ID="btnShowStudentDetails" CssClass="btn btn-success btn-border w-lg" Text="Show Student Details" OnClick="btnShowStudentDetails_Click" />
                                    <a href="StudentsProfile.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_StudentDetails">
                <legend>Students Details / छात्रों का विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th>S.No.<br />
                                        सरल क्र.</th>
                                    <th>Student Samagra Id<br />
                                        विद्यार्थी समग्र आईडी</th>
                                    <th>Student Name<br />
                                        छात्र का नाम</th>
                                    <th>Father's Name<br />
                                        पिता का नाम</th>
                                    <th>DOB<br />
                                        जन्म तिथि</th>
                                    <th>Gender<br />
                                        जेंडर</th>
                                    <th>Category<br />
                                        श्रेणी</th>
                                    <th>Class<br />
                                        कक्षा</th>
                                    <th>Last Class Percentage<br />
                                        अंतिम कक्षा का प्रतिशत </th>
                                    <th>Action</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>125654555 </td>
                                    <td>Rajendra</td>
                                    <td>Ramesh</td>
                                    <td>02/04/2019</td>
                                    <td>M</td>
                                    <td>General</td>
                                    <td>2</td>
                                    <td>69.78%</td>
                                    <td><a class="fa fa-pencil-alt" href="UpdateStudentProfile.aspx"></a></td>
                                </tr>
                                <tr>
                                    <td>2 </td>
                                    <td>133654466 </td>
                                    <td>Ankur</td>
                                    <td>Ajay</td>
                                    <td>09/11/2018</td>
                                    <td>M</td>
                                    <td>General</td>
                                    <td>2</td>
                                    <td>68.00</td>
                                    <td><a class="fa fa-pencil-alt" href="UpdateStudentProfile.aspx"></a></td>
                                </tr>
                                <tbody>
                        </table>
                    </div>
                </div>
            </fieldset>







        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
