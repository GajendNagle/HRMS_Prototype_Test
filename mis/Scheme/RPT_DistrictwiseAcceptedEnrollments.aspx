<%@ Page Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RPT_DistrictwiseAcceptedEnrollments.aspx.cs" Inherits="mis_Scheme_DistrictwiseAcceptedEnrollments" %>

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
            <h4 class="text-themecolor">छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संछिप्त रिपोर्ट </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>--%>
                    <li class="breadcrumb-item active">छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संछिप्त रिपोर्ट </li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संछिप्त रिपोर्ट </legend>
                <div class="row">

                    <div class="col-lg-12">
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Academic Year <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <%-- <option value="--Select--">--Select--</option>--%>
                                        <option value="2021-22">2021-22</option>
                                        <option value="2024-25">2024-25</option>
                                        <option value="2023-24">2023-24</option>
                                        <option value="2022-23">2022-23</option>

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
                                    <asp:Button runat="server" ID="btnShowSummary" CssClass="btn btn-success btn-rounded" Text="छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संछिप्त रिपोर्ट देखें" OnClick="btnShowSummary_Click" />
                                    <a href="RPT_DistrictwiseAcceptedEnrollments.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_StudentSummary">
                <legend>छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संछिप्त रिपोर्ट</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>Total Enrollment Reported [Admissions/Promotions to Higher Class]</th>
                                    <th>Student whose Profile [Income,% of marks obtained in previousclass, occupation of parents] has been Updated/Reported</th>
                                    <th>Student [Out of B], who are eligible and entiteled for one or more Scholarships</th>
                                    <th>Amount [ Scholarships/Financial assistance] entiteled to the eligible Students</th>
                                    <th>Student [Out of C], who has been sanctioned one or more Scholarship//Financial assistance</th>
                                    <th>Amount [ Scholarships/Financial assistance] sanctioned to students</th>

                                </tr>
                                <tr>
                                    <th>S.No.</th>
                                    <th>District</th>
                                    <th>(A)</th>
                                    <th>(B)</th>
                                    <th>(C)</th>
                                    <th>(D)</th>
                                    <th>(E)</th>
                                    <th>(F)</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>AGAR MALWA</td>
                                    <td>12976</td>
                                    <td>87654</td>
                                    <td>1253464</td>
                                    <td>3746375</td>
                                    <td>3576487</td>
                                    <td>3543656</td>
                                </tr>
                                <tr>
                                    <td>2 </td>
                                    <td>ALIRAJPUR</td>
                                    <td>12970</td>
                                    <td>87650</td>
                                    <td>1253460</td>
                                    <td>3746370</td>
                                    <td>3576480</td>
                                    <td>3543650</td>
                                </tr>
                                <tr>
                                    <td>3 </td>
                                    <td>ANUPPUR</td>
                                    <td>12971</td>
                                    <td>87651</td>
                                    <td>1253461</td>
                                    <td>3746371</td>
                                    <td>3576481</td>
                                    <td>3543651</td>
                                </tr>
                                <tr>
                                    <td>4 </td>
                                    <td>ASHOKNAGAR</td>
                                    <td>12972</td>
                                    <td>87652</td>
                                    <td>1253462</td>
                                    <td>3746372</td>
                                    <td>3576482</td>
                                    <td>3543652</td>

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



