<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="KnowEnrollment_ScholarshipStatusOfSchoolWiseChildren.aspx.cs" Inherits="mis_Scheme_KnowEnrollment_ScholarshipStatusOfSchoolWiseChildren" %>

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
            <h4 class="text-themecolor">Enrollment/Scholarship Status Of School-Wise Children</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Enrollment/Scholarship Status Of School-Wise Children</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Details</legend>
                <div class="row">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>शाला का डाइस कोड<span class="text-danger">*</span></label>
                            <input class="form-control" type="text" placeholder="11 अंक वाला शाला डाइस कोड दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>कक्षा<span class="text-danger">*</span></label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="1">1 st</option>
                                <option value="2">2 nd</option>
                                <option value="3">3 rd</option>
                                <option selected="selected" value="4">4 th</option>
                                <option value="5">5 th</option>
                                <option value="6">6 th</option>
                                <option value="7">7 th</option>
                                <option value="8">8 th</option>
                                <option value="9">9 th</option>
                                <option value="10">10 th</option>
                                <option value="11">11 th</option>
                                <option value="12">12 th</option>
                                <option value="20">Nursery</option>
                                <option value="21">KG-I</option>
                                <option value="22">KG-II</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>छात्रवृत्ति की स्थिति<span class="text-danger">*</span></label>
                            <select class="form-control select2">
                                <option value="0">-- छात्रवृत्ति की स्थिति चुने--</option>
                                <option selected="selected" value="5">Application Not Registered</option>
                                <option value="10">Pending With SSDPO</option>
                                <option value="33">Rejected By SSDDO</option>
                                <option value="60">Pending With SSDM</option>
                                <option value="70">Processed By SSDM</option>
                                <option value="120">Sanctioned By SSDDO</option>

                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
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
                            <asp:Button runat="server" ID="btnRegisterStudents" Text="View" CssClass="btn btn-success btn-rounded" />
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                    <table class=" table table-striped table-bordered default footable-loaded" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList" style="width: 100%; border-collapse: collapse;">
                                        <thead>
                                            <tr>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        S. No.
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Samagra ID
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Student Name
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Father Name
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Class
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Gender
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Status
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Last Updated On
                                                    </div>
                                                </th>
                                                <th scope="col">View Application Details for Scholarships</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <td colspan="9">No Record(s) Found</td>
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

