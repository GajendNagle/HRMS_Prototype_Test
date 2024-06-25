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
                        <li class="breadcrumb-item">SSDDO Scholarship</li>
                        <li class="breadcrumb-item">DDO-Wise Summary of Enrollment in Schools</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">DDO-Wise Summary of Enrollment in Schools <br /> स्कूलों में नामांकन का डीडीओ-वार सारांश
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>DDO-Wise Summary of Enrollment in Schools / स्कूलों में नामांकन का डीडीओ-वार सारांश</legend>
                <div class="row">

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
                                    <label>Select District<br />
                                        जिला का चयन करें<span style="color: red">*</span></label>
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
                                    <asp:Button runat="server" ID="btnShowSummary" CssClass="btn btn-success btn-border btn w-lg" Text="Show" OnClick="btnShowSummary_Click" />
                                    <a href="DDOWiseSummaryOfEnrollment.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_StudentSummary">
                <legend>DDO-wise Summary of Enrollment Details / नामांकन विवरण का डीडीओ-वार सारांश</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th>S.No.<br />
                                        सरल क्र.</th>
                                    <th>DDO Name<br />
                                        डीडीओ का नाम</th>
                                    <th>Phone No.<br />
                                        फोन नंबर</th>
                                    <th>Total Enrolled Students<br />
                                        कुल नामांकित छात्र</th>
                                    <th>Total Registered Profiles<br />
                                        कुल पंजीकृत प्रोफ़ाइल</th>
                                    <th>Total Not Registered Profiles<br />
                                        कुल पंजीकृत नहीं प्रोफाइल</th>
                                    <th>Total Sanctioned Profiles<br />
                                        कुल स्वीकृत प्रोफाइल</th>
                                    <th>Total No. of Profile sent back by DDO<br />
                                        डीडीओ द्वारा वापस भेजी गई प्रोफ़ाइल की कुल संख्या</th>
                                    <th>Student awarded a scholarship<br />
                                        छात्र को छात्रवृत्ति प्रदान की गई</th>
                                    <th>**Total Disbursal<br />
                                        कुल संवितरण</th>
                                    <th>**Total Disbursal Students (M1 Click)<br />
                                        कुल संवितरण छात्र (एम1 क्लिक)</th>
                                    <th>**Total Disbursal Amount (M1 Click)<br />
                                        कुल संवितरण राशि (एम1 क्लिक)</th>

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


