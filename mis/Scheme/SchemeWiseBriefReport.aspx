<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchemeWiseBriefReport.aspx.cs" Inherits="mis_Scheme_SchemeWiseBriefReport" %>

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
            <h4 class="text-themecolor">Scheme Wise Brief Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Scheme Wise Brief Report</li>
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
                            <label>Academic Year<span class="text-danger">*</span></label>
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

                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Department  <span class="text-danger">*</span></label>
                            <select class="form-control select2">
                                <option value="0">-Select-</option>
                                <option selected="selected" value="2">अनुसूचित जाति कल्याण विभाग</option>
                                <option value="3">आदिमजाति जाति कल्याण विभाग</option>
                                <option value="7">कृषि विभाग/मण्ड़ी बोर्ड</option>
                                <option value="5">पिछड़ा वर्ग एवं अल्पसंख्यक कल्याण विभाग</option>
                                <option value="4">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्याण विभाग</option>
                                <option value="6">श्रम विभाग</option>
                                <option value="1">स्कूल शिक्षा विभाग</option>
                                <option value="8">सामाजिक न्याय विभाग</option>


                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Report Date <span class="text-danger">*</span></label>
                            <input class="form-control" type="date" />
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

                                    <table class="table table-hover table-bordered table-condensed ">
                                        <thead>
                                            <tr>
                                                <th class="SN" scope="col">
                                                    <div style="text-align: center">
                                                        S. No.
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Department
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Scheme
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Total Sanctioned Applications
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Total Sanctioned Amount
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Total Paid Applications (M1Click)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Total Paid Amount (M1Click)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        View District Wise Report
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr class="Scheme1" >
                                                <td class="SN">1
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_LabelS" class="ui-widget" style="font-weight: bold;">1.1 - सामान्य निर्धन वर्ग छात्रवृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme1" >
                                                <td class="SN">2
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_LabelS" class="ui-widget" style="font-weight: bold;">1.2 - सुदामा प्री मैट्रिक योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme1" >
                                                <td class="SN">3
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_LabelS" class="ui-widget" style="font-weight: bold;">1.3 - स्वामी विवेकानन्द पोस्ट मैट्रिक छात्रवृतित योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme1" >
                                                <td class="SN">4
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_LabelS" class="ui-widget" style="font-weight: bold;">1.4 - सुदामा शिष्यावृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme1" >
                                                <td class="SN">5
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_LabelS" class="ui-widget" style="font-weight: bold;">1.6 - मृत/ अपंग सेवानिवृत शास.कर्मचारियों के बच्चों हेतु छात्रवृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme1" >
                                                <td class="SN">6
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_LabelS" class="ui-widget" style="font-weight: bold;">1.7 - पितृहीन कन्याओं को छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme1" >
                                                <td class="SN">7
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_LabelS" class="ui-widget" style="font-weight: bold;">1.8 - इकलोती  बेटी को शिक्षा विकास छात्रव्रत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme2" >
                                                <td class="SN">8
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_LabelD" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_LabelS" class="ui-widget" style="font-weight: bold;">13.1 - सैनिटरी पैड</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme2" >
                                                <td class="SN">9
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_LabelD" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_LabelS" class="ui-widget" style="font-weight: bold;">2.1 - राज्य शासन अनुसूचित जाति छात्रव्रत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme2" >
                                                <td class="SN">10
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_LabelD" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_LabelS" class="ui-widget" style="font-weight: bold;">2.1.1 - राज्य शासन अनुसूचित जाति छात्रव्रत्ति (6-8)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme2" >
                                                <td class="SN">11
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_LabelD" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_LabelS" class="ui-widget" style="font-weight: bold;">2.1.2 - राज्य शासन अनुसूचित जाति छात्रव्रत्ति (9-10)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme2" >
                                                <td class="SN">12
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_LabelD" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_LabelS" class="ui-widget" style="font-weight: bold;">2.2 - प्री मेट्रिक SC	</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme2" >
                                                <td class="SN">13
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_LabelD" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_LabelS" class="ui-widget" style="font-weight: bold;">2.3 - पोस्ट मेट्रिक SC</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme3">
                                                <td class="SN">14
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_LabelD" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_LabelS" class="ui-widget" style="font-weight: bold;">2.5 - सफाई एवं जोखिम पूर्ण कार्य छात्रवृत्ति (अस्वच्छ धंधा छात्रवृत्ति)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme3">
                                                <td class="SN">15
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_LabelD" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_LabelS" class="ui-widget" style="font-weight: bold;">2.6 - अनु.जाति कन्या साक्षरता प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme3">
                                                <td class="SN">16
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_LabelD" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_LabelS" class="ui-widget" style="font-weight: bold;">3.1 - राज्य शासन अनु. जनजाति छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme3">
                                                <td class="SN">17
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_LabelD" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_LabelS" class="ui-widget" style="font-weight: bold;">3.1.1 - राज्य शासन अनु. जनजाति छात्रवृत्ति (6-8)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme3">
                                                <td class="SN">18
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_LabelD" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_LabelS" class="ui-widget" style="font-weight: bold;">3.1.2 - राज्य शासन अनु. जनजाति छात्रवृत्ति (9-10)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme3">
                                                <td class="SN">19
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_LabelD" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_LabelS" class="ui-widget" style="font-weight: bold;">3.2 - प्री मेट्रिक ST</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme3">
                                                <td class="SN">20
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_LabelD" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_LabelS" class="ui-widget" style="font-weight: bold;">3.3 - पोस्ट मेट्रिक ST</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme4" >
                                                <td class="SN">21
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_LabelD" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_LabelS" class="ui-widget" style="font-weight: bold;">3.3.1 - पोस्ट मेट्रिक ST</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme4" >
                                                <td class="SN">22
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_LabelD" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_LabelS" class="ui-widget" style="font-weight: bold;">3.5 - अनु. जन जाति कन्या साक्षरता प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme4" >
                                                <td class="SN">23
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_LabelD" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_LabelS" class="ui-widget" style="font-weight: bold;">4.1 - राज्य छात्रवृत्ति विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति वर्ग</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme4" >
                                                <td class="SN">24
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_LabelD" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_LabelS" class="ui-widget" style="font-weight: bold;">4.1.1 - राज्य छात्रवृत्ति विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति वर्ग (6-10)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme5" >
                                                <td class="SN">25
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_LabelD" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_LabelS" class="ui-widget" style="font-weight: bold;">4.2 - पोस्ट मेट्रिक विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति वर्ग</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme5" >
                                                <td class="SN">26
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_LabelD" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_LabelS" class="ui-widget" style="font-weight: bold;">4.4 - विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति कन्या साक्षरता प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme6" >
                                                <td class="SN">27
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_LabelD" class="ui-widget" style="font-weight: bold;">पिछड़ा वर्ग एवं अल्पसंख्यक कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_LabelS" class="ui-widget" style="font-weight: bold;">5.1 - राज्य शासन पिछड़ा वर्ग छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme6" >
                                                <td class="SN">28
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_LabelD" class="ui-widget" style="font-weight: bold;">पिछड़ा वर्ग एवं अल्पसंख्यक कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_LabelS" class="ui-widget" style="font-weight: bold;">5.2 - पोस्ट मेट्रिक पिछड़ा वर्ग छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme7" >
                                                <td class="SN">29
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_LabelD" class="ui-widget" style="font-weight: bold;">श्रम विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_LabelS" class="ui-widget" style="font-weight: bold;">6.1 - छात्रवृत्ति योजना - म.प्र.भवन एवं निर्माण श्रमिक के दो बच्चों को शिक्षा प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="Scheme8" >
                                                <td class="SN">30
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_LabelD" class="ui-widget" style="font-weight: bold;">श्रम विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_LabelS" class="ui-widget" style="font-weight: bold;">6.2 - म.प्र.भवन एवं अन्य निर्माण श्रमिक मेधावी छात्र छात्राओं को नगद पुरस्कार योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">31
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_LabelD" class="ui-widget" style="font-weight: bold;">कृषि विभाग/मण्ड़ी बोर्ड</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_LabelS" class="ui-widget" style="font-weight: bold;">7.1 - मुख्यमंत्री मण्डी हम्माल एवं तुलावटी सहायता योजना अंतर्गत छात्रवृत्ति मेघावी  पुरस्कार योजन</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">32
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_LabelD" class="ui-widget" style="font-weight: bold;">सामाजिक न्याय विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_LabelS" class="ui-widget" style="font-weight: bold;">8.1 - निःशक्तजन छात्रवृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblSanctioned" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblTotalPaidApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblPaid" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <a class="btn btn-info btn-small __tooltipsTop" href="DistrictWiseSchemeDetails.aspx" data-original-title="View District Wise Report" style="color: white; font-size: 12px; font-family: &quot; lucida grande&quot; , &quot; lucida sans&quot; , arial, sans-serif;"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-warning" align="right">
                                                <td class="SN">&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl34_lblTotal" class="ui-widget" style="font-weight: bold;">Total</span>
                                                    </div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center"></div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center"></div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center"></div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center"></div>
                                                </td>
                                                <td>&nbsp;</td>
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



