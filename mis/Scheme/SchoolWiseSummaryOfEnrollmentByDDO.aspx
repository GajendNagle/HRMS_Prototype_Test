<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolWiseSummaryOfEnrollmentByDDO.aspx.cs" Inherits="mis_Scheme_SchoolWiseSummaryOfEnrollmentByDDO" %>

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
            <h4 class="text-themecolor">School-Wise Summary of Enrollment</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>--%>
                    <li class="breadcrumb-item active">School-Wise Summary of Enrollment</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>School-wise Summary of Enrollment</legend>
                <div class="row">

                    <div class="col-lg-12">
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Academic Year <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                       <option value="2023-24">2023-24</option>
                                        <option value="2024-25">2024-25</option>
                                       
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
                                    <label class="font-bold">District <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                       <%-- <option>--Select--</option>--%>
                                        <option>Gwalior</option>
                                        <option>Bhopal</option>
                                        <option>Indore</option>
                                        <option>Jabalpur</option>

                                        <option>Sagar</option>
                                        <option>Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">DDO <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                       <%-- <option value="--Select--">--Select--</option>--%>
                                        <option>DABRA.BEO DABRA</option>
                                        <option>BEO BHITERWAR</option>
                                        <option>PRINCIPAL Govt. H S S CHINORE BHITERWAR</option>
                                        <option>PRINCIPAL Govt. H S S BHITERWAR</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School </label>
                                    <select class="form-control select2">
                                        <option>--Select--</option>
                                        <option>MS Barotha</option>
                                        <option>PS Maharajpura</option>
                                        <option>GGPS SIMARIYATAL</option>
                                        <option>GPS PATHAPANIHAR</option>
                                        <option>GPS SAMUDHAN</option>
                                        <option>GPS SANKARA</option>

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
                                    <a href="SchoolWiseSummaryOfEnrollmentByDDO.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_SchoolSummary">
                <legend>School-wise Summary of Enrollment Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>School Name</th>
                                    <th>School Type</th>
                                    <th>HM/Principal/OIC</th>
                                    <th>Mobile No.</th>
                                    <th>Enrolled Students</th>
                                    <th>Students with Registered/ Updated Profiles</th>
                                    <th>Pending Profile Registration/Updation</th>
                                    <th>Profiles Proccessed for Scholerships</th>
                                    <th>Total No. of Profile sent by back DDO</th>
                                    <th>Students awarded a Scholarship</th>


                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>MS Barotha [23999999999]</td>
                                    <td></td>
                                    <td>8546784769 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>

                                <tr>
                                    <td>2 </td>
                                    <td>PS Maharajpura [23999999999]</td>

                                    <td></td>
                                    <td>8546784690 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>
                                <tr>
                                    <td>3 </td>
                                    <td>GGPS SIMARIYATAL [23999999999]</td>
                                    <td></td>
                                    <td>8546784690 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>
                                <tr>
                                    <td>4 </td>
                                    <td>GPS PATHAPANIHAR [23999999999]</td>
                                    <td></td>
                                    <td>8546784690 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

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

