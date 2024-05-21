<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BriefReportofDistrictClassWiseeKYC.aspx.cs" Inherits="mis_Scheme_BriefReportofDistrictClassWiseeKYC" %>

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
            <h4 class="text-themecolor">Brief Report of District-Class Wise eKYC</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Brief Report of District-Class Wise eKYC</li>
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

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr role="row">
                                                <th scope="col" class="sorting_asc" tabindex="0" aria-controls="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies" rowspan="1" colspan="1" aria-sort="ascending" aria-label="स. क्र.: activate to sort column descending" style="width: 15px;">स. क्र.</th>
                                                <th  aria-label="जिला: activate to sort column ascending" style="width: 79px;">जिला</th>
                                                <th  aria-label="कुल छात्र: activate to sort column ascending" style="width: 45px;">कुल छात्र</th>
                                                <th  aria-label="कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="कुल अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">कुल अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="1st कक्षा के कुल छात्र: activate to sort column ascending" style="width: 25px;">1st कक्षा के कुल छात्र</th>
                                                <th  aria-label="1st कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">1st कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="1st कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">1st कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="2nd कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">2nd कक्षा कुल छात्र</th>
                                                <th  aria-label="2nd कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">2nd कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="2nd कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">2nd कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="3rd कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">3rd कक्षा कुल छात्र</th>
                                                <th  aria-label="3rd कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">3rd कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="3rd कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">3rd कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="4th कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">4th कक्षा कुल छात्र</th>
                                                <th  aria-label="4th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">4th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="4th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">4th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="5th कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">5th कक्षा कुल छात्र</th>
                                                <th  aria-label="5th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">5th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="5th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">5th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="6th कक्षा कुल छात्र: activate to sort column ascending" style="width: 25px;">6th कक्षा कुल छात्र</th>
                                                <th  aria-label="6th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">6th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="6th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">6th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="7th कक्षा कुल छात्र: activate to sort column ascending" style="width: 25px;">7th कक्षा कुल छात्र</th>
                                                <th  aria-label="7th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">7th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="7th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">7th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="8th कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">8th कक्षा कुल छात्र</th>
                                                <th  aria-label="8th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">8th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="8th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">8th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="9th कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">9th कक्षा कुल छात्र</th>
                                                <th  aria-label="9th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">9th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="9th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">9th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="10th कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">10th कक्षा कुल छात्र</th>
                                                <th  aria-label="10th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">10th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="10th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">10th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="11th कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">11th कक्षा कुल छात्र</th>
                                                <th  aria-label="11th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">11th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="11th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">11th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                                <th  aria-label="12th कक्षा कुल छात्र: activate to sort column ascending" style="width: 33px;">12th कक्षा कुल छात्र</th>
                                                <th  aria-label="12th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया: activate to sort column ascending" style="width: 51px;">12th कक्षा के कुल छात्र जिनके द्वारा ईकेवाईसी किया गया</th>
                                                <th  aria-label="12th कक्षा अनुमोदित ई.के.वाई.सी. संख्या: activate to sort column ascending" style="width: 64px;">12th कक्षा अनुमोदित ई.के.वाई.सी. संख्या</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">1
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#51" >AGAR MALWA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblTotalStudents">229</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblTotalRequestedeKYC">33</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblTotalApprovedeKYC">18</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfirst_Total">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblsecond_Total">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblthird_Total">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfourth_Total">37</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfifth_Total">35</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblsixth_Total">38</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblseventh_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbleighth_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblninth_Total">26</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbltenth_Total">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbltenth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbltenth_Approved">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblelewenth_Total">35</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblelewenth_Requested">26</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblelewenth_Approved">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbltwelfth_Total">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbltwelfth_Requested">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lbltwelfth_Approved">4</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">2
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#49" >ALIRAJPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblTotalStudents">125</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblTotalRequestedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblTotalApprovedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfirst_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblsecond_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblthird_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfourth_Total">54</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfifth_Total">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblsixth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblseventh_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbleighth_Total">11</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblninth_Total">20</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbltenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblelewenth_Total">17</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbltwelfth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl03_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">3
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#47" >ANUPPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblTotalStudents">318</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblTotalRequestedeKYC">17</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblTotalApprovedeKYC">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfirst_Total">34</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblsecond_Total">42</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblthird_Total">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfourth_Total">34</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfifth_Total">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblsixth_Total">31</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblseventh_Total">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbleighth_Total">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblninth_Total">100</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbltenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblelewenth_Total">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblelewenth_Requested">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbltwelfth_Total">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbltwelfth_Requested">10</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl04_lbltwelfth_Approved">1</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">4
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#46" >ASHOKNAGAR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblTotalStudents">216</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblTotalRequestedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblTotalApprovedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfirst_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblsecond_Total">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblthird_Total">26</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfourth_Total">36</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfifth_Total">35</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblsixth_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblseventh_Total">10</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbleighth_Total">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblninth_Total">49</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbltenth_Total">11</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblelewenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbltwelfth_Total">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl05_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">5
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#45" >BALAGHAT</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblTotalStudents">250</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblTotalRequestedeKYC">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblTotalApprovedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfirst_Total">11</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblsecond_Total">14</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblthird_Total">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfourth_Total">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfourth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfifth_Total">17</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblsixth_Total">29</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblsixth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblseventh_Total">36</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbleighth_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblninth_Total">115</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbltenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblelewenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbltwelfth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl06_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">6
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#28" >BARWANI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblTotalStudents">561</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblTotalRequestedeKYC">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblTotalApprovedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfirst_Total">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblsecond_Total">105</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblthird_Total">60</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfourth_Total">121</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfifth_Total">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblsixth_Total">33</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblseventh_Total">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbleighth_Total">39</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblninth_Total">89</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbltenth_Total">42</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblelewenth_Total">24</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblelewenth_Requested">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbltwelfth_Total">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl07_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">7
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#35" >BETUL</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblTotalStudents">201</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblTotalRequestedeKYC">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblTotalApprovedeKYC">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfirst_Total">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblsecond_Total">29</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblthird_Total">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfourth_Total">35</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfifth_Total">22</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblsixth_Total">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblseventh_Total">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbleighth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblninth_Total">53</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblninth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbltenth_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblelewenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbltwelfth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbltwelfth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl08_lbltwelfth_Approved">1</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">8
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#3" >BHIND</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblTotalStudents">403</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblTotalRequestedeKYC">36</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblTotalApprovedeKYC">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfirst_Total">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblsecond_Total">31</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblthird_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfourth_Total">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfifth_Total">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblsixth_Total">16</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblseventh_Total">10</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbleighth_Total">16</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblninth_Total">225</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblninth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbltenth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblelewenth_Total">21</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblelewenth_Requested">21</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lblelewenth_Approved">21</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbltwelfth_Total">39</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbltwelfth_Requested">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl09_lbltwelfth_Approved">2</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">9
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#32" >BHOPAL</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblTotalStudents">1008</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblTotalRequestedeKYC">70</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblTotalApprovedeKYC">29</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfirst_Total">40</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblsecond_Total">62</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblthird_Total">89</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfourth_Total">110</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfifth_Total">58</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblsixth_Total">55</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblseventh_Total">32</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbleighth_Total">76</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblninth_Total">386</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblninth_Requested">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblninth_Approved">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbltenth_Total">17</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblelewenth_Total">49</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblelewenth_Requested">37</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lblelewenth_Approved">21</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbltwelfth_Total">34</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbltwelfth_Requested">10</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl10_lbltwelfth_Approved">5</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">10
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#48" >BURHANPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblTotalStudents">260</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblTotalRequestedeKYC">39</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblTotalApprovedeKYC">21</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfirst_Total">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblsecond_Total">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblsecond_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblthird_Total">50</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblthird_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfourth_Total">10</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfifth_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblsixth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblseventh_Total">41</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbleighth_Total">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbleighth_Requested">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbleighth_Approved">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblninth_Total">28</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblninth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbltenth_Total">62</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbltenth_Requested">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbltenth_Approved">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblelewenth_Total">22</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblelewenth_Requested">20</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lblelewenth_Approved">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbltwelfth_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbltwelfth_Requested">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl11_lbltwelfth_Approved">2</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">11
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#9" >CHHATARPUR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblTotalStudents">400</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblTotalRequestedeKYC">64</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblTotalApprovedeKYC">39</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfirst_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblsecond_Total">18</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblthird_Total">28</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfourth_Total">27</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfifth_Total">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblsixth_Total">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblseventh_Total">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbleighth_Total">62</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblninth_Total">45</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbltenth_Total">127</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbltenth_Requested">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbltenth_Approved">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblelewenth_Total">66</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblelewenth_Requested">51</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lblelewenth_Approved">27</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbltwelfth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl12_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">12
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#43" >CHHINDWARA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblTotalStudents">372</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblTotalRequestedeKYC">57</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblTotalApprovedeKYC">46</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfirst_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblsecond_Total">32</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblthird_Total">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblthird_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfourth_Total">32</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfifth_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblsixth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblseventh_Total">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbleighth_Total">42</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbleighth_Requested">18</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbleighth_Approved">14</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblninth_Total">151</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblninth_Requested">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblninth_Approved">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbltenth_Total">55</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblelewenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbltwelfth_Total">40</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbltwelfth_Requested">34</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl13_lbltwelfth_Approved">31</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">13
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#12" >DAMOH</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblTotalStudents">219</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblTotalRequestedeKYC">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblTotalApprovedeKYC">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfirst_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblsecond_Total">18</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblthird_Total">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfourth_Total">29</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfifth_Total">29</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfifth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblsixth_Total">25</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblseventh_Total">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbleighth_Total">44</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbleighth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblninth_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbltenth_Total">52</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbltenth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbltenth_Approved">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblelewenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbltwelfth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl14_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">14
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#5" >DATIA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblTotalStudents">229</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblTotalRequestedeKYC">24</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblTotalApprovedeKYC">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfirst_Total">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblsecond_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblthird_Total">10</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfourth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfifth_Total">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblsixth_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblseventh_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbleighth_Total">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblninth_Total">37</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblninth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbltenth_Total">40</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbltenth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblelewenth_Total">21</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbltwelfth_Total">76</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbltwelfth_Requested">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl15_lbltwelfth_Approved">13</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">15
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#23" >DEWAS</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblTotalStudents">310</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblTotalRequestedeKYC">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblTotalApprovedeKYC">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfirst_Total">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblsecond_Total">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblthird_Total">14</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfourth_Total">30</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfifth_Total">61</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblsixth_Total">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblseventh_Total">9</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbleighth_Total">31</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblninth_Total">26</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblninth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbltenth_Total">79</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbltenth_Requested">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblelewenth_Total">8</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblelewenth_Requested">7</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbltwelfth_Total">29</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbltwelfth_Requested">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl16_lbltwelfth_Approved">7</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">16
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#25" >DHAR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblTotalStudents">752</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblTotalRequestedeKYC">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblTotalApprovedeKYC">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfirst_Total">11</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblsecond_Total">33</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblthird_Total">56</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfourth_Total">79</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfifth_Total">77</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblsixth_Total">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblseventh_Total">103</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblseventh_Requested">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblseventh_Approved">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbleighth_Total">92</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbleighth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblninth_Total">238</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblninth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbltenth_Total">38</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblelewenth_Total">22</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblelewenth_Requested">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lblelewenth_Approved">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbltwelfth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl17_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">17
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#41" >DINDORI</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblTotalStudents">213</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblTotalRequestedeKYC">16</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblTotalApprovedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfirst_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblsecond_Total">25</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblthird_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfourth_Total">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfifth_Total">34</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfifth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblsixth_Total">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblseventh_Total">15</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbleighth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblninth_Total">100</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblninth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbltenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblelewenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbltwelfth_Total">16</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbltwelfth_Requested">12</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl18_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">18
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#7" >GUNA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblTotalStudents">132</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblTotalRequestedeKYC">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblTotalApprovedeKYC">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfirst_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblsecond_Total">6</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblsecond_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblthird_Total">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfourth_Total">14</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfourth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfourth_Approved">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfifth_Total">14</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfifth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblfifth_Approved">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblsixth_Total">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblseventh_Total">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbleighth_Total">34</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblninth_Total">52</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblninth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbltenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblelewenth_Total">3</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblelewenth_Requested">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lblelewenth_Approved">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbltwelfth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl19_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">19
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#4" >GWALIOR</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblTotalStudents">864</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblTotalRequestedeKYC">77</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblTotalApprovedeKYC">53</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfirst_Total">13</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblsecond_Total">50</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblthird_Total">47</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfourth_Total">91</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfifth_Total">78</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfifth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblsixth_Total">79</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblseventh_Total">36</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbleighth_Total">24</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblninth_Total">257</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblninth_Requested">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbltenth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblelewenth_Total">84</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblelewenth_Requested">19</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lblelewenth_Approved">8</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbltwelfth_Total">103</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbltwelfth_Requested">52</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl20_lbltwelfth_Approved">45</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">20
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#36" >HARDA</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblTotalStudents">97</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblTotalRequestedeKYC">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblTotalApprovedeKYC">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfirst_Total">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblsecond_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblthird_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfourth_Total">29</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfourth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfifth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblsixth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblseventh_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblseventh_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbleighth_Total">2</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbleighth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbleighth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblninth_Total">30</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblninth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblninth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbltenth_Total">33</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbltenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblelewenth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbltwelfth_Total">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbltwelfth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl21_lbltwelfth_Approved">0</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" style="font-size: 15px;" class="sorting_1">21
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <a id="hlinkredirect" href="#26" >INDORE</a>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblTotalStudents">1073</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblTotalRequestedeKYC">42</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblTotalApprovedeKYC">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfirst_Total">70</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfirst_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfirst_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblsecond_Total">47</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblsecond_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblsecond_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblthird_Total">75</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblthird_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblthird_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfourth_Total">40</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfourth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfourth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfifth_Total">37</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfifth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblfifth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblsixth_Total">26</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblsixth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblsixth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblseventh_Total">94</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblseventh_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblseventh_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbleighth_Total">78</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbleighth_Requested">23</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbleighth_Approved">11</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblninth_Total">398</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblninth_Requested">5</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblninth_Approved">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbltenth_Total">172</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbltenth_Requested">1</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbltenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblelewenth_Total">4</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblelewenth_Requested">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lblelewenth_Approved">0</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbltwelfth_Total">32</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbltwelfth_Requested">11</span>
                                                </td>
                                                <td align="center" valign="middle" style="font-size: 15px;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl22_lbltwelfth_Approved">8</span>
                                                </td>
                                            </tr>
                             
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td rowspan="1" colspan="1">&nbsp;</td>
                                                <td rowspan="1" colspan="1">&nbsp;</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">21280</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1695</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">856</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">535</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">0</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">0</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1321</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">2</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">0</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1191</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">6</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">0</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1960</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">4</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1425</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">7</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">959</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">3</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">0</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">897</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">5</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">2</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1519</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">101</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">74</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">6966</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">75</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">9</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1930</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">71</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">41</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1448</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">817</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">388</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">1129</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">604</td>
                                                <td align="center" style="font-family: Cambria; font-size: 15pt; font-weight: bold;" rowspan="1" colspan="1">340</td>
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


