<%@ Page Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_DepartMentSchemewiseApplication.aspx.cs" Inherits="mis_Scheme_Rpt_DepartMentSchemewiseApplication" %>

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
                        <li class="breadcrumb-item">Summary of Scholership Aplications for all schemes of  a Department</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Summary of Scholership Aplications for all schemes of  a Department
                        <br />
                        किसी विभाग की सभी योजनाओं के लिए छात्रवृत्ति आवेदनों का सारांश 
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>Summary of Scholership Aplications for all schemes of  a Department<br />
                    किसी विभाग की सभी योजनाओं के लिए छात्रवृत्ति आवेदनों का सारांश</legend>
                <div class="row">

                    <div class="col-lg-12">
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
                                        Select Department<br />
                                        विभाग का चयन करें</label>
                                    <select class="form-control select2">
                                        <option>--Select--</option>
                                        <option>स्कूल शिक्षा विभाग </option>
                                        <option>कृषि विभाग/  मण्डी बोर्ड </option>
                                        <option>सामाजिक न्याय विभाग </option>


                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Report Date<br />
                                        रिपोर्ट दिनांक<span style="color: red">*</span></label>
                                    <input type="datetime" class="form-control" value="05/04/2024" autocomplete="off" placeholder="Report Date" />
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

                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnShowSummary" CssClass="btn btn-success btn-border w-lg" Text="Show" OnClick="btnShowSummary_Click" />
                                    <a href="Rpt_DepartMentSchemewiseApplication.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_ApplicationsSummary">
                <legend>Summary of Scholership Aplications for all schemes of a Department<br />
                    किसी विभाग की सभी योजनाओं के लिए छात्रवृत्ति आवेदनों का सारांश</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th>S.No.<br />
                                        सरल क्र.</th>
                                    <th>Department<br />
                                        विभाग</th>
                                    <th>Scheme<br />
                                        योजना</th>
                                    <th>Total Sanctioned Applications<br />
                                        कुल स्वीकृत आवेदन</th>
                                    <th>Total Sanctioned Amount<br />
                                        कुल स्वीकृत राशि</th>
                                    <th>Total Paid Applications (M1 Click)<br />
                                        कुल भुगतान आवेदन (एम1 क्लिक)</th>
                                    <th>Total Paid Amount (M1 Click)<br />
                                        कुल भुगतान राशि (एम1 क्लिक)</th>
                                    <th>View District Wise Report<br />
                                        जिलावार रिपोर्ट देखें</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>स्कूल शिक्षा विभाग</td>
                                    <td>सामान्य निर्धन वर्ग छात्रवृत्ति योजना (1.1)</td>
                                    <td>15012</td>
                                    <td>123000 </td>
                                    <td>14045 </td>
                                    <td>121345</td>
                                    <td><a href="Rpt_DistrictWiseSchemeDetails.aspx"><i class="fa fa-eye"></i></a></td>


                                </tr>
                                <tr>
                                    <td>2 </td>
                                    <td>स्कूल शिक्षा विभाग</td>
                                    <td>सफाई एवं जोखिम पूर्ण कार्य छात्रवृत्ति (अस्वच्छ धंधा छात्रवृत्ति) (2.5)</td>
                                    <td>152639</td>
                                    <td>87714570 </td>
                                    <td>87714570 </td>
                                    <td>121345</td>
                                    <td><span><i class="fa fa-eye"></i></span></td>

                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>स्कूल शिक्षा विभाग</td>
                                    <td>राज्य शासन पिछड़ा वर्ग छात्रवृत्ति (5.1)</td>
                                    <td>152639</td>
                                    <td>2352534</td>
                                    <td>345345435</td>
                                    <td>121345</td>
                                    <td><span><i class="fa fa-eye"></i></span></td>


                                </tr>
                                <tr>
                                    <td>4 </td>
                                    <td>कृषि विभाग/मण्ड़ी बोर्ड</td>
                                    <td>7.1 - मुख्यमंत्री मण्डी हम्माल एवं तुलावटी सहायता योजना अंतर्गत छात्रवृत्ति मेघावी पुरस्कार योजन</td>
                                    <td>152639</td>
                                    <td>83535 </td>
                                    <td>53555</td>
                                    <td>43546</td>
                                    <td><span><i class="fa fa-eye"></i></span></td>


                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>सामाजिक न्याय विभाग</td>
                                    <td>8.1 - निःशक्तजन छात्रवृत्ति योजना</td>
                                    <td>67786</td>
                                    <td>789799 </td>
                                    <td>21312</td>
                                    <td>543123 </td>
                                    <td><span><i class="fa fa-eye"></i></span></td>


                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>Total</td>
                                    <td style="background-color: darkgray">5,40,715</td>
                                    <td style="background-color: darkgray">9,18,53,237</td>
                                    <td style="background-color: darkgray">433148917 </td>
                                    <td style="background-color: darkgray">9,50,704</td>
                                    <td></td>


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

