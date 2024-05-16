<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistrictWiseScholarshipBriefReport.aspx.cs" Inherits="mis_Scheme_DistrictWiseScholarshipBriefReport" %>

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
            <h4 class="text-themecolor">District Wise Scholarship Brief Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">District Wise Scholarship Brief Report</li>
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
                            <label>District <span class="text-danger">*</span></label>
                            <select class="form-control select2">
                                <option value="0">- Select -</option>
                                <option value="51">AGAR MALWA आगर मालवा</option>
                                <option selected="selected" value="49">ALIRAJPUR अलीराजपुर </option>
                                <option value="47">ANUPPUR अनूपपुर </option>
                                <option value="46">ASHOKNAGAR अशोकनगर</option>
                                <option value="45">BALAGHAT बालाघाट </option>
                                <option value="28">BARWANI बड़वानी </option>
                                <option value="35">BETUL बैतूल </option>
                                <option value="3">BHIND भिण्ड </option>
                                <option value="32">BHOPAL भोपाल </option>
                                <option value="48">BURHANPUR बुरहानपुर </option>
                                <option value="9">CHHATARPUR छतरपुर </option>
                                <option value="43">CHHINDWARA छिंदवाडा </option>
                                <option value="12">DAMOH दमोह </option>
                                <option value="5">DATIA दतिया </option>
                                <option value="23">DEWAS देवास </option>
                                <option value="25">DHAR धार </option>
                                <option value="41">DINDORI डिण्डौरी </option>
                                <option value="7">GUNA गुना </option>
                                <option value="4">GWALIOR ग्वालियर </option>
                                <option value="36">HARDA हरदा </option>
                                <option value="26">INDORE इन्दौर </option>
                                <option value="39">JABALPUR जबलपुर </option>
                                <option value="24">JHABUA झाबुआ </option>
                                <option value="38">KATNI कटनी </option>
                                <option value="29">KHANDWA खण्डवा </option>
                                <option value="27">KHARGONE खरगोन </option>
                                <option value="42">MANDLA मण्डला </option>
                                <option value="19">MANDSAUR मन्दसौर </option>
                                <option value="2">MORENA मुरैना </option>
                                <option value="37">Narmadapuram नर्मदापुरम</option>
                                <option value="40">NARSINGHPUR नरसिंहपुर </option>
                                <option value="18">NEEMUCH नीमच </option>
                                <option value="52">NIWARI निवाड़ी</option>
                                <option value="10">PANNA पन्ना </option>
                                <option value="34">RAISEN रायसेन </option>
                                <option value="30">RAJGARH राजगढ़ </option>
                                <option value="20">RATLAM रतलाम </option>
                                <option value="14">REWA रीवा </option>
                                <option value="11">SAGAR सागर </option>
                                <option value="13">SATNA सतना </option>
                                <option value="33">SEHORE सीहोर </option>
                                <option value="44">SEONI सिवनी </option>
                                <option value="16">SHAHDOL शहडोल </option>
                                <option value="22">SHAJAPUR शाजापुर </option>
                                <option value="1">SHEOPUR श्योपुर </option>
                                <option value="6">SHIVPURI शिवपुरी </option>
                                <option value="17">SIDHI सीधी </option>
                                <option value="50">SINGRAULI सिंगरौली </option>
                                <option value="8">TIKAMGARH टीकमगढ़ </option>
                                <option value="21">UJJAIN उज्जैन </option>
                                <option value="15">UMARIA उमरिया </option>
                                <option value="31">VIDISHA विदिशा </option>

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
                                            <tr >
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
                                                        Total Registered Applications
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Total Scholarship Amount sought in Registered Applications
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
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr class="alert-grid">
                                                <td class="SN">1
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_Label12" class="ui-widget" style="font-weight: bold;">1.1 - सामान्य निर्धन वर्ग छात्रवृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblTotalApp" class="ui-widget" style="font-weight: bold;">81</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblTotalAmt" class="ui-widget" style="font-weight: bold;">20,600</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">81</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl02_lblSanctioned" class="ui-widget" style="font-weight: bold;">20,600</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">2
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_Label12" class="ui-widget" style="font-weight: bold;">1.2 - सुदामा प्री मैट्रिक योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblTotalApp" class="ui-widget" style="font-weight: bold;">78</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblTotalAmt" class="ui-widget" style="font-weight: bold;">27,400</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">77</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl03_lblSanctioned" class="ui-widget" style="font-weight: bold;">27,100</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">3
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_Label12" class="ui-widget" style="font-weight: bold;">1.3 - स्वामी विवेकानन्द पोस्ट मैट्रिक छात्रवृतित योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblTotalApp" class="ui-widget" style="font-weight: bold;">28</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblTotalAmt" class="ui-widget" style="font-weight: bold;">14,900</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">28</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl04_lblSanctioned" class="ui-widget" style="font-weight: bold;">14,900</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">4
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_Label12" class="ui-widget" style="font-weight: bold;">1.4 - सुदामा शिष्यावृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl05_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">5
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_Label12" class="ui-widget" style="font-weight: bold;">1.6 - मृत/ अपंग सेवानिवृत शास.कर्मचारियों के बच्चों हेतु छात्रवृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblTotalApp" class="ui-widget" style="font-weight: bold;">90</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblTotalAmt" class="ui-widget" style="font-weight: bold;">12,300</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">90</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl06_lblSanctioned" class="ui-widget" style="font-weight: bold;">12,300</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">6
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_Label12" class="ui-widget" style="font-weight: bold;">1.7 - पितृहीन कन्याओं को छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblTotalApp" class="ui-widget" style="font-weight: bold;">133</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblTotalAmt" class="ui-widget" style="font-weight: bold;">49,350</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">129</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl07_lblSanctioned" class="ui-widget" style="font-weight: bold;">47,950</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">7
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_Label12" class="ui-widget" style="font-weight: bold;">1.8 - इकलोती  बेटी को शिक्षा विकास छात्रव्रत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl08_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">8
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_Label1" class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_Label12" class="ui-widget" style="font-weight: bold;">13.1 - सैनिटरी पैड</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblTotalApp" class="ui-widget" style="font-weight: bold;">9,368</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblTotalAmt" class="ui-widget" style="font-weight: bold;">28,10,400</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">9,368</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl09_lblSanctioned" class="ui-widget" style="font-weight: bold;">28,10,400</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">9
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_Label1" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_Label12" class="ui-widget" style="font-weight: bold;">2.1 - राज्य शासन अनुसूचित जाति छात्रव्रत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblTotalApp" class="ui-widget" style="font-weight: bold;">1,283</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblTotalAmt" class="ui-widget" style="font-weight: bold;">3,20,750</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">1,238</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl10_lblSanctioned" class="ui-widget" style="font-weight: bold;">3,09,500</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">10
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_Label1" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_Label12" class="ui-widget" style="font-weight: bold;">2.1.1 - राज्य शासन अनुसूचित जाति छात्रव्रत्ति (6-8)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblTotalApp" class="ui-widget" style="font-weight: bold;">1,130</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblTotalAmt" class="ui-widget" style="font-weight: bold;">4,48,000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">1,120</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl11_lblSanctioned" class="ui-widget" style="font-weight: bold;">4,43,200</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">11
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_Label1" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_Label12" class="ui-widget" style="font-weight: bold;">2.1.2 - राज्य शासन अनुसूचित जाति छात्रव्रत्ति (9-10)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl12_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">12
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_Label1" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_Label12" class="ui-widget" style="font-weight: bold;">2.2 - प्री मेट्रिक SC	</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl13_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">13
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_Label1" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_Label12" class="ui-widget" style="font-weight: bold;">2.3 - पोस्ट मेट्रिक SC</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl14_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">14
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_Label1" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_Label12" class="ui-widget" style="font-weight: bold;">2.5 - सफाई एवं जोखिम पूर्ण कार्य छात्रवृत्ति (अस्वच्छ धंधा छात्रवृत्ति)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblTotalApp" class="ui-widget" style="font-weight: bold;">568</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblTotalAmt" class="ui-widget" style="font-weight: bold;">19,88,000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">530</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl15_lblSanctioned" class="ui-widget" style="font-weight: bold;">18,55,000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">15
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_Label1" class="ui-widget" style="font-weight: bold;">अनुसूचित जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_Label12" class="ui-widget" style="font-weight: bold;">2.6 - अनु.जाति कन्या साक्षरता प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblTotalApp" class="ui-widget" style="font-weight: bold;">75</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblTotalAmt" class="ui-widget" style="font-weight: bold;">2,25,000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">75</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl16_lblSanctioned" class="ui-widget" style="font-weight: bold;">2,25,000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">16
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_Label1" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_Label12" class="ui-widget" style="font-weight: bold;">3.1 - राज्य शासन अनु. जनजाति छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblTotalApp" class="ui-widget" style="font-weight: bold;">45,253</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblTotalAmt" class="ui-widget" style="font-weight: bold;">1,13,13,250</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">43,446</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl17_lblSanctioned" class="ui-widget" style="font-weight: bold;">1,08,61,500</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">17
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_Label1" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_Label12" class="ui-widget" style="font-weight: bold;">3.1.1 - राज्य शासन अनु. जनजाति छात्रवृत्ति (6-8)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblTotalApp" class="ui-widget" style="font-weight: bold;">35,275</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblTotalAmt" class="ui-widget" style="font-weight: bold;">1,32,68,600</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">34,640</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl18_lblSanctioned" class="ui-widget" style="font-weight: bold;">1,30,24,400</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">18
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_Label1" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_Label12" class="ui-widget" style="font-weight: bold;">3.1.2 - राज्य शासन अनु. जनजाति छात्रवृत्ति (9-10)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl19_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">19
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_Label1" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_Label12" class="ui-widget" style="font-weight: bold;">3.2 - प्री मेट्रिक ST</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl20_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">20
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_Label1" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_Label12" class="ui-widget" style="font-weight: bold;">3.3 - पोस्ट मेट्रिक ST</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl21_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">21
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_Label1" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_Label12" class="ui-widget" style="font-weight: bold;">3.3.1 - पोस्ट मेट्रिक ST</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl22_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">22
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_Label1" class="ui-widget" style="font-weight: bold;">आदिमजाति जाति कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_Label12" class="ui-widget" style="font-weight: bold;">3.5 - अनु. जन जाति कन्या साक्षरता प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblTotalApp" class="ui-widget" style="font-weight: bold;">1,926</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblTotalAmt" class="ui-widget" style="font-weight: bold;">57,78,000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">1,919</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl23_lblSanctioned" class="ui-widget" style="font-weight: bold;">57,57,000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">23
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_Label1" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_Label12" class="ui-widget" style="font-weight: bold;">4.1 - राज्य छात्रवृत्ति विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति वर्ग</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblTotalApp" class="ui-widget" style="font-weight: bold;">309</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblTotalAmt" class="ui-widget" style="font-weight: bold;">46,350</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">283</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl24_lblSanctioned" class="ui-widget" style="font-weight: bold;">42,450</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">24
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_Label1" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_Label12" class="ui-widget" style="font-weight: bold;">4.1.1 - राज्य छात्रवृत्ति विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति वर्ग (6-10)</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblTotalApp" class="ui-widget" style="font-weight: bold;">396</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblTotalAmt" class="ui-widget" style="font-weight: bold;">1,84,800</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">292</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl25_lblSanctioned" class="ui-widget" style="font-weight: bold;">1,26,000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">25
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_Label1" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_Label12" class="ui-widget" style="font-weight: bold;">4.2 - पोस्ट मेट्रिक विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति वर्ग</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblTotalApp" class="ui-widget" style="font-weight: bold;">15</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblTotalAmt" class="ui-widget" style="font-weight: bold;">39,375</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">15</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl26_lblSanctioned" class="ui-widget" style="font-weight: bold;">39,375</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">26
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_Label1" class="ui-widget" style="font-weight: bold;">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्या</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_Label12" class="ui-widget" style="font-weight: bold;">4.4 - विमुक्त, घुमक्कड़ एवं अर्धघुमक्कड़ जनजाति कन्या साक्षरता प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblTotalApp" class="ui-widget" style="font-weight: bold;">6</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblTotalAmt" class="ui-widget" style="font-weight: bold;">18,000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">6</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl27_lblSanctioned" class="ui-widget" style="font-weight: bold;">18,000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">27
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_Label1" class="ui-widget" style="font-weight: bold;">पिछड़ा वर्ग एवं अल्पसंख्यक कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_Label12" class="ui-widget" style="font-weight: bold;">5.1 - राज्य शासन पिछड़ा वर्ग छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblTotalApp" class="ui-widget" style="font-weight: bold;">2,181</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblTotalAmt" class="ui-widget" style="font-weight: bold;">6,17,900</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">2,141</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl28_lblSanctioned" class="ui-widget" style="font-weight: bold;">6,06,900</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">28
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_Label1" class="ui-widget" style="font-weight: bold;">पिछड़ा वर्ग एवं अल्पसंख्यक कल्याण विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_Label12" class="ui-widget" style="font-weight: bold;">5.2 - पोस्ट मेट्रिक पिछड़ा वर्ग छात्रवृत्ति</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblTotalApp" class="ui-widget" style="font-weight: bold;">411</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblTotalAmt" class="ui-widget" style="font-weight: bold;">9,48,700</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">409</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl29_lblSanctioned" class="ui-widget" style="font-weight: bold;">9,44,100</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">29
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_Label1" class="ui-widget" style="font-weight: bold;">श्रम विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_Label12" class="ui-widget" style="font-weight: bold;">6.1 - छात्रवृत्ति योजना - म.प्र.भवन एवं निर्माण श्रमिक के दो बच्चों को शिक्षा प्रोत्साहन योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl30_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">30
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_Label1" class="ui-widget" style="font-weight: bold;">श्रम विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_Label12" class="ui-widget" style="font-weight: bold;">6.2 - म.प्र.भवन एवं अन्य निर्माण श्रमिक मेधावी छात्र छात्राओं को नगद पुरस्कार योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl31_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">31
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_Label1" class="ui-widget" style="font-weight: bold;">कृषि विभाग/मण्ड़ी बोर्ड</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_Label12" class="ui-widget" style="font-weight: bold;">7.1 - मुख्यमंत्री मण्डी हम्माल एवं तुलावटी सहायता योजना अंतर्गत छात्रवृत्ति मेघावी  पुरस्कार योजन</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_lblTotalApp" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl32_lblTotalAmt" class="ui-widget" style="font-weight: bold;">0</span>
                                                    </div>
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
                                            </tr>
                                            <tr class="alert-grid">
                                                <td class="SN">32
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_Label1" class="ui-widget" style="font-weight: bold;">सामाजिक न्याय विभाग</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_Label12" class="ui-widget" style="font-weight: bold;">8.1 - निःशक्तजन छात्रवृत्ति योजना</span>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblTotalApp" class="ui-widget" style="font-weight: bold;">266</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblTotalAmt" class="ui-widget" style="font-weight: bold;">2,14,000</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblTotalSanApp" class="ui-widget" style="font-weight: bold;">263</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails_ctl33_lblSanctioned" class="ui-widget" style="font-weight: bold;">2,11,000</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-warning" align="right">
                                                <td class="SN">&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>Total</td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">98,872</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">3,83,45,675</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">96,150</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">3,73,96,675</div>
                                                </td>
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


