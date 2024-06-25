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
                        <li class="breadcrumb-item">Status On Profile Registration for Enrolled Students</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">Status On Profile Registration for Enrolled Students
                        <br />
                        नामांकित छात्रों के लिए प्रोफ़ाइल पंजीकरण की स्थिति
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>Status On Profile Registration for Enrolled Students</legend>
                <div class="row">

                    <div class="col-lg-12">
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label> Academic Year<br />
                                        शैक्षणिक वर्ष<span style="color: red">*</span></label>
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
                                    <label> DISE Code<br />
                                        डाइस कोड<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" value="23040302802" autocomplete="off" placeholder="DISE Code" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Class<br />
                                        कक्षा</label>
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
                                    <a href="SankulwisesamagrascholershipstudentStatusUsingDiseCode.aspx" class="btn btn-outline-danger btn-border btn w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_StudentSummary">
                <legend>School-wise Summary of Enrollment Details / नामांकन विवरण का स्कूल-वार सारांश</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th>S.No.<br />
                                        सरल क्र.</th>
                                    <th>School Type<br />
                                        स्कूल का प्रकार</th>
                                    <th>School Name<br />
                                        स्कूल का नाम</th>
                                    <th>Samagra ID<br />
                                        समग्र आईडी</th>
                                    <th>Student Name<br />
                                        छात्र का नाम</th>
                                    <th>Father Name<br />
                                        पिता का नाम</th>
                                    <th>Class<br />
                                        कक्षा</th>
                                    <th>Gender<br />जेंडर</th>
                                    <th>Status<br />स्थिति</th>
                                    <th>Last Updated On<br />अंतिम बार अपडेट किया गया</th>
                                    <th>Category<br />श्रेणी</th>
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



