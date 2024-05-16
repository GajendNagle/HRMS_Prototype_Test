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
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">District Wise Scheme Details</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>--%>
                    <li class="breadcrumb-item active">District Wise Scheme Details</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>District Wise Scheme Details</legend>
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
                                    <label class="font-bold">Scheme </label>
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
                                    <label class="font-bold">Report Date: <span style="color: red">*</span></label>
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

                                    <div class="col-lg-1 ">
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
                <legend>District Wise Scheme Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>जिला</th>

                                    <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना के कुल स्वीकृत आवेदन</th>
                                    <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना अंतर्गत भुगतान (M1Click)</th>
                                    <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना की कुल स्वीकृत राशि</th>
                                    <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना अंतर्गत राशि का भुगतान (M1Click)</th>


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
