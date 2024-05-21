<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SankulwisesamagrascholershipstudentStatusUsingDiseCode.aspx.cs" Inherits="mis_Scheme_Default" %>

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
            <h4 class="text-themecolor">Status On Profile Registration for Enrolled Students</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>--%>
                    <li class="breadcrumb-item active">Status On Profile Registration for Enrolled Students</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>Status On Profile Registration for Enrolled Students</legend>
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
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">DISE Code: <span style="color: red">*</span></label>
                                    <input type="text" class="form-control" value="23040302802" autocomplete="off" placeholder="DISE Code" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Class </label>
                                    <select class="form-control select2">
                                        <option>7th</option>
                                        <option>1st</option>
                                        <option>2nd</option>
                                        <option>3rd</option>
                                        <option>4th</option>
                                        <option>5th</option>
                                        <option>6th</option>
                                       
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

                                    <div class="col-lg-1 ">
                                        <div class="form-group">
                                            <input type="text" class="form-control text-center" />
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnShowSummary" CssClass="btn btn-success btn-rounded" Text="Show" OnClick="btnShowSummary_Click" />
                                    <a href="SankulwisesamagrascholershipstudentStatusUsingDiseCode.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_StudentSummary">
                <legend>School-wise Summary of Enrollment Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>School Type</th>
                                    <th>School Name</th>
                                    <th>Samagra ID</th>
                                    <th>Student Name</th>
                                    <th>Father Name</th>
                                    <th>Class</th>
                                    <th>Gender</th>
                                    <th>Status</th>
                                    <th>Last Updated On</th>
                                    <th>Category</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>State Govt.</td>
                                    <td>23040302802-MS Barotha (1 To 8)</td>
                                    <td>109936129</td>
                                    <td>Reena Pathak</td>
                                    <td>Jay Veer Pathak</td>
                                    <td>7 th</td>
                                    <td>G</td>
                                    <td>Sanctioned By DDO</td>
                                    <td>10-03-2021</td>
                                    <td>GEN</td>
                                    

                                </tr>

                                <tr>
                                    <td>2 </td>
                                    <td>State Govt.</td>
                                    <td>23040302802-MS Barotha (1 To 8)</td>
                                    <td>109937189</td>
                                   
                                    <td>Vikas Gurjar</td>
                                    <td>Omprakash Gurjar</td>
                                    <td>7 th</td>
                                    <td>B</td>
                                    <td>Sanctioned By DDO</td>
                                    <td>05-03-2021</td>
                                    <td>OBC</td>

                                </tr>
                                <tr>
                                    <td>3 </td>
                                    <td>State Govt.</td>
                                    <td>23040302802-MS Barotha (1 To 8)</td>
                                    <td>109938529</td>
                                    <td>Ajay Thakur</td>
                                    <td>Ram Prakash Thakur</td>
                                    <td>7 th</td>
                                    <td>B</td>
                                    <td>Sanctioned By DDO</td>
                                    <td>05-04-2021</td>
                                    <td>GEN</td>

                                </tr>
                                <tr>
                                    <td>4 </td>
                                    <td>State Govt.</td>
                                    <td>23040302802-MS Barotha (1 To 8)</td>
                                    <td>109933456</td>
                                    <td>Rishabh Pal</td>
                                    <td>Vijay Pal</td>
                                    <td>7 th</td>
                                    <td>B</td>
                                    <td>Sanctioned By DDO</td>
                                    <td>11-03-2021</td>
                                    <td>SC</td>

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



