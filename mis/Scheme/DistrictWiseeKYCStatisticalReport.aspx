<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistrictWiseeKYCStatisticalReport.aspx.cs" Inherits="mis_Scheme_DistrictWiseeKYCStatisticalReport" %>

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
                        <li class="breadcrumb-item">
                            <a href="#ControlReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')"><span>Control Report</span></a>
                        </li>
                        <li class="breadcrumb-item">District Wise eKYC Statistical Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">District Wise eKYC Statistical Report / जिलावार ई.के.वाई.सी. सांख्यिकीय रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row">
                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr role="row" class="text-center">
                                                <th scope="col" aria-label="स. क्र.: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Sr.No.<br />सरल. क्र.</th>
                                                <th scope="col" aria-label="जिला: activate to sort column ascending" style="width: 111px;">District<br />जिला</th>
                                                <th scope="col" aria-label="कुल छात्र: activate to sort column ascending" style="width: 113px;">Total Students<br />कुल छात्र</th>
                                                <th scope="col" aria-label="कुल छात्र जिनकी ई.के.वाई.सी.आवेदन प्राप्त हुआ : activate to sort column ascending" style="width: 320px;">Total Students whose eKYC Applications were Received<br />कुल छात्र जिनकी ई.के.वाई.सी.आवेदन प्राप्त हुआ </th>
                                                <th scope="col" aria-label="कुल छात्र जिनकी ई.के.वाई.सी. अनुमोदित की गई: activate to sort column ascending" style="width: 321px;">Total Students whose eKYC Approved<br />कुल छात्र जिनकी ई.के.वाई.सी. अनुमोदित की गई</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">1
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#51">AGAR MALWA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblTotalStudents">108134</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblekycRequested">11806</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblekycapproved">8680</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">2
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#49">ALIRAJPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblTotalStudents">162586</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblekycRequested">14128</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblekycapproved">10727</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">3
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#47">ANUPPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblTotalStudents">128551</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblekycRequested">14643</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblekycapproved">9984</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">4
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#46">ASHOKNAGAR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblTotalStudents">163196</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblekycRequested">15570</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblekycapproved">8808</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">5
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#45">BALAGHAT</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblTotalStudents">301953</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblekycRequested">46383</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblekycapproved">33384</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">6
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#28">BARWANI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblTotalStudents">257488</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblekycRequested">21717</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblekycapproved">16223</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">7
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#35">BETUL</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblTotalStudents">278394</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblekycRequested">45160</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblekycapproved">35875</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">8
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#3">BHIND</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblTotalStudents">264474</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblekycRequested">24556</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblekycapproved">10677</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">9
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#32">BHOPAL</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblTotalStudents">411012</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblekycRequested">41626</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblekycapproved">23165</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">10
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#48">BURHANPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblTotalStudents">141062</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblekycRequested">18392</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblekycapproved">10628</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">11
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#9">CHHATARPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblTotalStudents">413047</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblekycRequested">51851</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblekycapproved">35080</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">12
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#43">CHHINDWARA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblTotalStudents">373977</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblekycRequested">58612</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblekycapproved">34087</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">13
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#12">DAMOH</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblTotalStudents">266384</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblekycRequested">32968</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblekycapproved">21293</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">14
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#5">DATIA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblTotalStudents">140720</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblekycRequested">16170</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblekycapproved">8912</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">15
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#23">DEWAS</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblTotalStudents">288298</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblekycRequested">35428</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblekycapproved">25099</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">16
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#25">DHAR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblTotalStudents">442143</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblekycRequested">44157</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblekycapproved">30649</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">17
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#41">DINDORI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblTotalStudents">144921</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblekycRequested">23049</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblekycapproved">18738</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">18
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#7">GUNA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblTotalStudents">260182</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblekycRequested">23250</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblekycapproved">14218</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">19
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#4">GWALIOR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblTotalStudents">363656</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblekycRequested">42495</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblekycapproved">29133</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">20
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#36">HARDA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblTotalStudents">102225</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblekycRequested">11224</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblekycapproved">7512</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">21
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#26">INDORE</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblTotalStudents">553068</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblekycRequested">44307</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblekycapproved">32797</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">22
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#39">JABALPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl23_lblTotalStudents">392198</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl23_lblekycRequested">47146</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl23_lblekycapproved">33185</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">23
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#24">JHABUA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl24_lblTotalStudents">278647</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl24_lblekycRequested">20080</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl24_lblekycapproved">13772</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">24
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#38">KATNI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl25_lblTotalStudents">245437</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl25_lblekycRequested">32840</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl25_lblekycapproved">24442</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">25
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#29">KHANDWA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl26_lblTotalStudents">249813</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl26_lblekycRequested">25464</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl26_lblekycapproved">15994</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">26
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#27">KHARGONE</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl27_lblTotalStudents">346714</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl27_lblekycRequested">30166</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl27_lblekycapproved">18348</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">27
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#42">MANDLA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl28_lblTotalStudents">197034</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl28_lblekycRequested">26830</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl28_lblekycapproved">14560</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">28
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#19">MANDSAUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl29_lblTotalStudents">227130</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl29_lblekycRequested">29833</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl29_lblekycapproved">24184</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">29
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#2">MORENA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl30_lblTotalStudents">385446</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl30_lblekycRequested">35028</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl30_lblekycapproved">22690</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">30
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#37">Narmadapuram</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl31_lblTotalStudents">219715</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl31_lblekycRequested">27596</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl31_lblekycapproved">17531</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">31
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#40">NARSINGHPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl32_lblTotalStudents">199320</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl32_lblekycRequested">27626</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl32_lblekycapproved">16789</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">32
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#18">NEEMUCH</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl33_lblTotalStudents">131295</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl33_lblekycRequested">13681</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl33_lblekycapproved">10090</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">33
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#52">NIWARI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl34_lblTotalStudents">76752</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl34_lblekycRequested">8413</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl34_lblekycapproved">5818</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">34
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#10">PANNA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl35_lblTotalStudents">219302</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl35_lblekycRequested">27236</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl35_lblekycapproved">18810</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">35
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#34">RAISEN</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl36_lblTotalStudents">253704</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl36_lblekycRequested">23525</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl36_lblekycapproved">14226</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">36
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#30">RAJGARH</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl37_lblTotalStudents">302719</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl37_lblekycRequested">29880</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl37_lblekycapproved">17588</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">37
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#20">RATLAM</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl38_lblTotalStudents">274056</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl38_lblekycRequested">31506</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl38_lblekycapproved">22709</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">38
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#14">REWA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl39_lblTotalStudents">456172</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl39_lblekycRequested">49307</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl39_lblekycapproved">26344</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">39
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#11">SAGAR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl40_lblTotalStudents">467498</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl40_lblekycRequested">67915</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl40_lblekycapproved">39185</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">40
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#13">SATNA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl41_lblTotalStudents">411117</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl41_lblekycRequested">47897</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl41_lblekycapproved">27733</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">41
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#33">SEHORE</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl42_lblTotalStudents">273019</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl42_lblekycRequested">35086</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl42_lblekycapproved">18971</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">42
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#44">SEONI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl43_lblTotalStudents">246810</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl43_lblekycRequested">33146</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl43_lblekycapproved">19085</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">43
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#16">SHAHDOL</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl44_lblTotalStudents">207848</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl44_lblekycRequested">24577</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl44_lblekycapproved">11684</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">44
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#22">SHAJAPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl45_lblTotalStudents">177116</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl45_lblekycRequested">25086</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl45_lblekycapproved">18819</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">45
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#1">SHEOPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl46_lblTotalStudents">147967</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl46_lblekycRequested">11078</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl46_lblekycapproved">8464</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">46
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#6">SHIVPURI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl47_lblTotalStudents">347712</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl47_lblekycRequested">35665</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl47_lblekycapproved">27433</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">47
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#17">SIDHI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl48_lblTotalStudents">267379</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl48_lblekycRequested">29535</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl48_lblekycapproved">18978</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">48
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#50">SINGRAULI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl49_lblTotalStudents">276230</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl49_lblekycRequested">19669</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl49_lblekycapproved">10895</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">49
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#8">TIKAMGARH</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl50_lblTotalStudents">216586</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl50_lblekycRequested">27113</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl50_lblekycapproved">23051</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">50
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#21">UJJAIN</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl51_lblTotalStudents">337208</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl51_lblekycRequested">37954</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl51_lblekycapproved">26403</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;">51
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#15">UMARIA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl52_lblTotalStudents">127208</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl52_lblekycRequested">15384</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl52_lblekycapproved">9364</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;">52
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a href="#31">VIDISHA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl53_lblTotalStudents">282072</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl53_lblekycRequested">32910</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl53_lblekycapproved">19673</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td rowspan="1" colspan="1">&nbsp;</td>
                                                <td rowspan="1" colspan="1">&nbsp;</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">13806695</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1566664</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1022487</td>
                                            </tr>
                                        </tfoot>
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
