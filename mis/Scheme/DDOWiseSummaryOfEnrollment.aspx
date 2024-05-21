<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DDOWiseSummaryOfEnrollment.aspx.cs" Inherits="mis_Scheme_DDOWiseSummaryOfEnrollment" %>

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
            <h4 class="text-themecolor">DDO-Wise Summary of Enrollment in Schools</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>--%>
                    <li class="breadcrumb-item active">DDO-Wise Summary of Enrollment in Schools</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>DDO-Wise Summary of Enrollment in Schools </legend>
                <div class="row">

                    <div class="col-lg-12">
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
                                    <label class="font-bold">District <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option>--Select--</option>
                                        <option>Gwalior</option>
                                        <option>Bhopal</option>
                                        <option>Indore</option>
                                        <option>Jabalpur</option>
                                        <option>Sagar</option>
                                        <option>Ujjain</option>

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
                                    <a href="DDOWiseSummaryOfEnrollment.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_StudentSummary">
                <legend>DDO-wise Summary of Enrollment Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>DDO Name</th>
                                    <th>Phone No.</th>
                                    <th>Total Enrolled Students</th>
                                    <th>Total Registered Profiles</th>
                                    <th>Total Not Registered Profiles</th>
                                    <th>Total Sanctioned Profiles</th>
                                    <th>Total No. of Profile sent back by DDO</th>
                                    <th>Student awarded a scholarship</th>
                                    <th>**Total Disbursal</th>
                                    <th>**Total Disbursal Students (M1 Click)</th>
                                    <th>**Total Disbursal Amount (M1 Click)</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td><a href="SchoolWiseSummaryOfEnrollmentByDDO.aspx">1422003029-DABRA.BEO DABRA</a></td>
                                    <td>8546784769 </td>
                                    <td>28493 </td>
                                    <td>27660 </td>
                                    <td>833 </td>
                                    <td>27372 </td>
                                    <td>0</td>
                                    <td>14043 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>
                               
                                <tr>
                                    <td>2 </td>
                                    <td>1422003028-BEO BHITERWAR</td>
                                    <td>8546784690 </td>
                                    <td>28445 </td>
                                    <td>27610 </td>
                                    <td>822 </td>
                                    <td>27100 </td>
                                    <td>0</td>
                                    <td>14001 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                </tr>
                                <tr>
                                    <td>3 </td>
                                    <td>1422003024-PRINCIPAL Govt. H S S CHINORE BHITERWAR</td>
                                    <td>9867548767 </td>
                                    <td>3000</td>
                                    <td>2761 </td>
                                    <td>822 </td>
                                    <td>2710</td>
                                    <td>0</td>
                                    <td>14001 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                </tr>
                                <tr>
                                    <td>3 </td>
                                    <td>1422003023-PRINCIPAL Govt. H S S BHITERWAR</td>
                                    <td>9865434690 </td>
                                    <td>6000 </td>
                                    <td>27610 </td>
                                    <td>822 </td>
                                    <td>2710 </td>
                                    <td>0</td>
                                    <td>14001 </td>
                                    <td>0 </td>
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


