<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_PrintTC.aspx.cs" Inherits="mis_Student_Rpt_PrintTC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <script type="text/javascript" src="http://cdn.nic.in/Samagra/Javascripts/minv1.8.2.js"></script>
    <script src="http://cdn.nic.in/SCSP/scripts/Barcode.js" type="text/javascript"></script>
    <style>
        .btn-check:focus + .btn-outline-info, .btn-outline-info:focus {
            box-shadow: none !important;
        }

        .btn-outline-success:focus, .btn-outline-success.focus {
            box-shadow: none;
        }
    </style>

    <style type="text/css">
        .lable {
            border-style: solid;
        }

        .style1 {
            width: 88px;
            height: 83px;
        }
    </style>
    <%--<style>
        @page {
            size: A4;
            margin: 0;
        }

        @media print {
            html, body {
                width: 210mm;
                height: 297mm;
            }
            /* ... the rest of the rules ... */
        }
    </style>--%>
    <style>
        td, th {
            padding: 0.8rem !important;
            vertical-align: middle;
        }

        @media print {
            @page {
                size: A4;
                margin: 5mm;
            }

            body {
                font-size: 16px;
                transform-origin: top left;
                transform: scale(calc(100% / var(--print-scale, 1)));
            }

            .page-break {
                page-break-after: always;
            }
        }

        textarea::-webkit-scrollbar {
            width: 0;
        }

        textarea {
            resize: vertical;
            min-height: 40px;
            /*Set a minimum height */
        }

        #ddlPosition {
            position: relative;
            bottom: 20px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">


    <%--modal start--%>

    <div class="modal fade" id="staticBackdrop" tabindex="-1" aria-labelledby="staticBackdropModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header d-print-none">
                    <h3 class="modal-title w-100 text-center" id="staticBackdropLabel"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-print-block" id="printSection mt-4">
                    <fieldset>
                        <br />

                        <div class="row text-center">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">

                                <h3><strong><b>GOVT. HSS GIRLS AMLA 1 TO 12</b></strong></h3>
                                <%--<span id="lblSchoolName" style="font-size: 20pt;">GOVT. HSS GIRLS AMLA 1 TO 12</span>--%>
                                <h4><strong><b>AMLABETUL</b></strong></h4>
                                <h4><strong><b>स्कूल डाइस कोड 23350101231</b></strong></h4>
                                <b><span style="font-size: 16pt; margin-top: -5pt;"><u>शाला स्थानांतरण प्रमाण पत्र </u>
                                </span></b>
                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">


                                    <table width="100%" cellspacing="0" cellpadding="10" style="padding: 10px; margin-top: -46px;">
                                        <tr>
                                            <td colspan="2">
                                                <div style="text-align: center; margin-bottom: 20px; margin-left: 103px; margin-top: -17pt;">
                                                </div>
                                            </td>
                                        </tr>

                                        <tr class="mt-6">

                                            <td style="width: 60%">
                                                <span class="ui-widget">क्रमांक:
                    <span id="lblTCNo" class="lable">117829326</span></span>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div>
                                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; प्रमाणित किया जाता हैं कि श्री/कुमारी
                    &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 68%; margin-left: 309px; margin-top: -24px; text-align: center">
                                                    &nbsp;<span id="lblStudentName" class="ui-widget" style="font-weight: bold;">Rupesh Barde</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 60%">
                                                <div>
                                                    पिता का नाम श्री &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 78%; margin-left: 120px; margin-top: -24px; text-align: center">
                                                    &nbsp;
                    <span id="lblFather" class="ui-widget" style="font-weight: bold;">Dipak Barde</span>
                                                </div>
                                            </td>
                                            <td style="width: 60%">
                                                <div>
                                                    जाति &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 86%; margin-left: 40px; margin-top: -24px; text-align: center">
                                                    <span id="lblCaste" class="ui-widget" style="font-weight: bold;">SC</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 60%">
                                                <div>
                                                    माता का नाम श्रीमती &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 80%; margin-left: 130px; margin-top: -24px; text-align: center">
                                                    <span id="lblMother" class="ui-widget" style="font-weight: bold;">Devki Barde</span>
                                                </div>
                                            </td>
                                            <td style="width: 40%">
                                                <div>
                                                    मातृभाषा &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 83%; margin-left: 60px; margin-top: -22px; text-align: center">
                                                    <span id="lblMotherLoungh" class="ui-widget" style="font-weight: bold;">Hindi</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="width: 100%;">
                                                <div>
                                                    शाला का नाम &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 90%; margin-left: 94px; margin-top: -24px; text-align: center">
                                                    <span id="lblSchool" class="ui-widget" style="font-weight: bold;">GOVT. HSS GIRLS AMLA 1 TO 12</span>
                                                </div>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 60%">
                                                <div>
                                                    विकास खण्ड का नाम &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 80%; margin-left: 136px; margin-top: -24px; text-align: center">
                                                    <span id="lblBlock" class="ui-widget" style="font-weight: bold;">AMLA</span>
                                                </div>
                                            </td>
                                            <td style="width: 40%">
                                                <div>
                                                    जिला का नाम &nbsp;
                                                </div>
                                                <div style="border-bottom-style: dashed; border-width: 1px; width: 77%; margin-left: 88px; margin-top: -24px; text-align: center">
                                                    <span id="lblDistrict" class="ui-widget" style="font-weight: bold;">BETUL</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td style="width: 60%">
                                                            <div>
                                                                मे तारीख &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 89%; margin-left: 62px; margin-top: -7px; text-align: center">
                                                                <span id="lblDOA" class="ui-widget" style="font-weight: bold;"></span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 25%">
                                                            <div>
                                                                से &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 139%; margin-left: 22px; margin-top: -22px; text-align: center">
                                                                <span id="lblTCIssueddate" class="ui-widget" style="font-weight: bold;">08/07/2024</span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 15%">
                                                            <div style="text-align: right;">
                                                                &nbsp;&nbsp;तक
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="1">
                                                    <tr>
                                                        <td style="width: 66%">
                                                            <div>
                                                                उपस्थित रहा/ रही ओर अब आज तारीख &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 92%; margin-left: 245px; margin-top: -22px; text-align: center">
                                                                <span id="lblCurrentDate" class="ui-widget" style="font-weight: bold;">08/07/2024</span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 34%">
                                                            <div style="text-align: right;">
                                                                को शाला छोड़ता/छोड़ती हैं|
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="1">
                                                    <tr>
                                                        <td style="width: 60%">
                                                            <div>
                                                                शाला मे प्रवेश पंजी क्रमांक &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 111%; margin-left: 164px; margin-top: -8px; text-align: center">
                                                                <span id="lblPanjikaramank" class="ui-widget" style="font-weight: bold;"></span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 40%">
                                                            <div style="text-align: right">
                                                                के अनुसार उसकी जन्म तारीख &nbsp;
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="1">
                                                    <tr>
                                                        <td style="width: 30%">
                                                            <div>
                                                                (अंको मे) &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 77%; margin-left: 62px; margin-top: -30px; text-align: center">
                                                                <span id="lblDOB" class="ui-widget" style="font-weight: bold;">13/02/2010</span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 60%">
                                                            <div>
                                                                शब्दो मे &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 103%; margin-left: 56px; margin-top: -10px; text-align: center">
                                                                <span id="lblWordDate" class="ui-widget" style="font-weight: bold;"></span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 10%">
                                                            <div style="text-align: right;">
                                                                हैं| &nbsp;
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div style="font-size: 16px; font-weight: bold;">
                                                    Note:-  उसको टीका लगाया जा चुका हैं या अन्यथा चेचक के प्रकोप से सुरक्षित हैं| उसके द्वारा
                    उत्तीर्ण वार्षिक कक्षौन्नति परीक्षा इस प्रकार हैं| &nbsp;
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="1">
                                                    <tr>
                                                        <td style="width: 30%">
                                                            <div>
                                                                कक्षा &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 78%; margin-left: 34px; margin-top: -23px; text-align: center">
                                                                <span id="lblClass" class="ui-widget" style="font-weight: bold;">8</span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 55%">
                                                            <div>
                                                                माध्यम &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 91%; margin-left: 45px; margin-top: -10px; text-align: center">
                                                                <span id="lblMidum" class="ui-widget" style="font-weight: bold;"></span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 15%">
                                                            <div>
                                                                वर्ष &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 68%; margin-left: 25px; margin-top: -7px; text-align: center">
                                                                <span id="lblYear" class="ui-widget" style="font-weight: bold;"></span>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="1">
                                                    <tr>
                                                        <td style="width: 75%">
                                                            <div>
                                                                छात्र को कक्षा &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 106%; margin-left: 88px; margin-top: -10px; text-align: center">
                                                                <span id="lblClassPravesh" class="ui-widget" style="font-weight: bold;"></span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 25%">
                                                            <div style="text-align: right;">
                                                                मे प्रवेश दिया गया था &nbsp;
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="1">
                                                    <tr>
                                                        <td style="width: 95%">
                                                            <div>
                                                                उसका आचरण &nbsp;
                                                            </div>
                                                            <div style="border-bottom-style: dashed; border-width: 1px; width: 92%; margin-left: 96px; margin-top: -10px; text-align: center">
                                                                <span id="lblNature" class="ui-widget" style="font-weight: bold;"></span>
                                                            </div>
                                                        </td>
                                                        <td style="width: 5%">
                                                            <div style="text-align: right;">
                                                                था &nbsp;
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                            <br />
                            <table width="100%" cellspacing="0" cellpadding="1" style="padding: 5px; margin-top: -28px;">
                                <tr>
                                    <td>
                                        <span class="ui-widget">कक्षाध्यापक</span>
                                    </td>
                                    <td style="text-align: right;">
                                        <span class="ui-widget">प्राचार्य/ प्रधानाध्यापक&nbsp;</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: -23px">
                                        <span class="ui-widget">दिनांक:---------------------</span>
                                    </td>
                                    <td style="text-align: right; padding-top: -9px">
                                        <span class="ui-widget"><b>
                                            <span id="lblSch" style="font-size: 12pt;">GOVT. HSS GIRLS AMLA 1 TO 12</span></b></span>
                                        <br />
                                        <span class="ui-widget"><b>
                                            <span id="lblBlockDistrict" style="font-size: 12pt;">AMLA ,BETUL</span></b></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: -23px">
                                        <span class="ui-widget">http://shikshaportal.mp.gov.in</span>
                                        <br />
                                        <span class="ui-widget">
                                            <samp style="font-size: 9pt;">
                                                प्रिंट दिनांक,</samp>
                                            <span id="lblSysDate" style="font-size: 12pt; font-weight: bold;">13/08/2024 10:36:45</span></span>
                                    </td>
                                    <td style="text-align: right; padding-top: -9px">
                                        <span style="font-size: 12pt;">प्रिंट IP</span>
                                        <span id="lblIpAddress" style="font-size: 12pt;">122.168.189.90</span>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </fieldset>



                </div>
                <div class="modal-footer justify-content-center d-print-none">
                    <button type="button" class="btn btn-primary" onclick=" printModalContent('staticBackdrop'); ">Print</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>


        </div>
    </div>


    <%--model end--%>
    <div class="row  d-print-block">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                    <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                        <span>ACR</span></a>
                </li>--%>
                        <li class="breadcrumb-item"><span>Generate TC </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary d-print-block">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">स्थानांतरण प्रमाणपत्र जनरेट </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();"
                                onmouseout="this.start();"
                                direction="left"
                                behavior="scroll"
                                scrollamount="7"
                                class="Marqueetext">
                                Generate TC  /स्थानांतरण प्रमाणपत्र जनरेट
                            </marquee>
                        </div>
                    </div>
                </div>
                <%--<div class="col-xxl-2 col-md-12 text-end"> <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>add new state</a> </div>--%>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Transfers /छात्र स्थानांतरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4">
                        <div class="form-group">
                            <label>
                                Academic Year 
                                        <br />
                                शैक्षणिक वर्ष <span style="color: red">*</span></label>
                            <select class="form-select select2">
                                <option value="0">--Select--</option>
                                <option selected value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>
                                <option value="2020">2020-21</option>
                                <option value="2019">2019-20</option>
                                <option value="2018">2018-19</option>
                                <option value="2016">2017-18</option>
                                <option value="2015">2016-17</option>
                                <option value="2015">2015-16</option>
                                <option value="2014">2014-15</option>
                                <option value="2013">2013-14</option>
                                <option value="2012">2012-13</option>
                                <option value="2011">2011-12</option>
                                <option value="2010">2010-11</option>
                                <option value="2009">2009-10</option>
                                <option value="2008">2008-09</option>
                                <option value="2007">2007-08</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="form-group">
                            <label>
                                Class
                                        <br />
                                कक्षा
                            </label>
                            <select class="form-select select2">
                                <option value="0">--Select--</option>
                                <option value="All">All</option>
                                <option value="1">1st</option>
                                <option value="2">2nd</option>
                                <option value="3">3rd</option>
                                <option value="4">4th</option>
                                <option value="5">5th</option>
                                <option value="6">6th</option>
                                <option value="7">7th</option>
                                <option value="8">8th</option>
                                <option value="9">9th</option>
                                <option value="10">10th</option>
                                <option value="11">11th</option>
                                <option value="12">12th</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="$('#fsStudentDtails').css('display','block')">Search</button>
                            <a href="Rpt_PrintTC.aspx" class="btn btn-outline-danger w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fsStudentDtails" style="display: none">
                <legend>Student Details/ छात्र का विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.
                                            <br />
                                            सरल क्र.</th>
                                        <th>Student Id
                                            <br />
                                            छात्र आई डी </th>
                                        <th>Student Name
                                            <br />
                                            छात्र का नाम</th>
                                        <th>Father Name
                                            <br />
                                            पिता का नाम</th>
                                        <th>Date of Birth
                                            <br />
                                            जन्म की तारीख</th>
                                        <th>Percentage  %
                                            <br />
                                            प्रतिशत % 

                                        </th>
                                        <th>Result Status
                                            <br />
                                            परिणाम स्थिति</th>
                                        <th>School
                                            <br />
                                            स्कूल</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2430440585</td>
                                        <td>Manoj Ahirwav</td>
                                        <td>Maakhan Ahirwar</td>
                                        <td>26/05/2001</td>
                                        <td>75%
                                        </td>
                                        <td>Pass
                                        </td>
                                        <td>
                                            <button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-outline-info btn-rounded w-lg">Print</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>2430440554</td>
                                        <td>Santosh Mishra</td>
                                        <td>Vishnu Mishra</td>
                                        <td>21/04/2001</td>
                                        <td>68%
                                        </td>
                                        <td>Pass
                                        </td>
                                        <td>
                                            <button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-outline-info btn-rounded w-lg">Print</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>2430440748</td>
                                        <td>Vishal Varma</td>
                                        <td>Dheeraj Varma</td>
                                        <td>02/06/2002</td>
                                        <td>48%
                                        </td>
                                        <td>Fail
                                        </td>
                                        <td>
                                            <button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-outline-info btn-rounded w-lg">Print</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
            </fieldset>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }

        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
            window.location.href = "Rpt_PrintTC.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                // Prevent default behavior of Ctrl+P (opening print dialog)
                event.preventDefault();
                // Print the content of the active modal
                var activeModal = document.querySelector('.modal.show');
                if (activeModal) {
                    var modalId = activeModal.getAttribute('id');
                    printModalContent(modalId);
                }
            }
        });

    </script>


</asp:Content>

