<%@ Page Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_DistrictWiseSchemeDetails.aspx.cs" Inherits="mis_Scheme_Rpt_DistrictWiseSchemeDetails" %>

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
                        <li class="breadcrumb-item">District Wise Scheme Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">District Wise Scheme Details / जिलावार योजना विवरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>District Wise Scheme Details / जिलावार योजना विवरण</legend>
                <div class="row">

                    <div class="col-lg-12">
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label> Academic Year<br />
                                        शैक्षणिक वर्ष <span style="color: red">*</span></label>
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
                                    <label>
                                         Scheme<br />
                                        योजना </label>
                                    <select class="form-control select2">
                                        <%-- <option>--Select--</option>--%>
                                        <option>सामान्य निर्धन वर्ग छात्रवृत्ति योजना (1.1)</option>
                                        <option>सफाई एवं जोखिम पूर्ण कार्य छात्रवृत्ति (अस्वच्छ धंधा छात्रवृत्ति) (2.5)</option>
                                        <option>राज्य शासन पिछड़ा वर्ग छात्रवृत्ति (5.1)</option>
                                        <option>7.1 - मुख्यमंत्री मण्डी हम्माल एवं तुलावटी सहायता योजना अंतर्गत छात्रवृत्ति मेघावी पुरस्कार योजन</option>
                                        <option>8.1 - निःशक्तजन छात्रवृत्ति योजना</option>


                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Report Date<br /> रिपोर्ट दिनांक<span style="color: red">*</span></label>
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

                            <%--<div class="col-md-4 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnShowSummary" CssClass="btn btn-success btn-rounded" Text="Show" OnClick="btnShowSummary_Click" />
                                    <a href="Rpt_DepartMentSchemewiseApplication.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_ApplicationsSummary">
                <legend>District Wise Scheme Details / जिलेवार योजना विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th>S.No.<br />सरल क्र.</th>
                                    <th>District<br />जिला</th>

                                    <th>Total accepted applications of General Poor Category Scholarship Scheme<br />सामान्य निर्धन वर्ग छात्रवृत्ति योजना के कुल स्वीकृत आवेदन</th>
                                    <th>Payment under General Poor Category Scholarship Scheme<br />सामान्य निर्धन वर्ग छात्रवृत्ति योजना अंतर्गत भुगतान (M1Click)</th>
                                    <th>Total sanctioned amount of General Poor Category Scholarship Scheme<br />सामान्य निर्धन वर्ग छात्रवृत्ति योजना की कुल स्वीकृत राशि</th>
                                    <th>Payment of amount under General Poor Category Scholarship Scheme (M1Click)<br />सामान्य निर्धन वर्ग छात्रवृत्ति योजना अंतर्गत राशि का भुगतान (M1Click)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>AGAR MALWA	
                                    </td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>5.0</td>

                                </tr>
                                <tr>
                                    <td>2 </td>
                                    <td>ALIRAJPUR</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>5.0</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>ANUPPUR</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>5.0</td>
                                </tr>
                                <tr>
                                    <td>4 </td>
                                    <td>ASHOKNAGAR</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>5.0</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>BALAGHAT</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>5.0</td>
                                </tr>
                                <tr>
                                    <td></td>

                                    <td>Total</td>
                                    <td style="background-color: darkgray">0</td>
                                    <td style="background-color: darkgray">0</td>
                                    <td style="background-color: darkgray">0</td>
                                    <td style="background-color: darkgray">25.0</td>



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
