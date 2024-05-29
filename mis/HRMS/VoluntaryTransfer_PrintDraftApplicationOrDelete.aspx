<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoluntaryTransfer_PrintDraftApplicationOrDelete.aspx.cs" Inherits="mis_HRMS_PrintDraftApplicationOrDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th, td {
            padding: 15px;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 86%;
            }

            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">प्रिंट ड्राफ्ट आवेदन और अपडेट</p>
        </div>
        <div class="col-md-4 align-self-center">   


   
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>
                    <li class="breadcrumb-item active">Print Draft Application Or Update</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">

            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                            <li class="nav-item dropdown ">
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Voluntary Transfer Application</b></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_ApplyVoluntaryTransfer.aspx">Apply Voluntary Transfer</a></li>
                                   <%-- <li><a class="dropdown-item" href="Trn_ViewPostCodeWithVacancies.aspx">View Post Code With Vacancies</a></li>--%>
                                    <li><a class="dropdown-item" href="VoluntaryTransfer_PrintDraftApplicationOrDelete.aspx">Print Draft Application or Update

                                        </a></li>
                                    <li><a class="dropdown-item" href="VoluntaryTransferLock_Applicatin.aspx">Lock Application</a></li>
                                  <%--  <li><a class="dropdown-item" href="VoluntaryTransferPrintApplication.aspx">Print Application</a></li>--%>
                                </ul>
                            </li>

                            <a class="nav-link  text-white " href="VoluntaryTransferStatus.aspx" role="button"><b class="font-16 font-bold">Voluntary Transfer Application Status</b></a>
                              <a class="nav-link  text-white " href="Trn_ViewPostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold">View Post Code With Vacancie</b></a>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>Print Draft Application Or Update
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <tr>
                                    <th>Sr.No<br />
                                        सरल क्र.</th>
                                    <th>Application No.<br />
                                        आवेदन नंबार</th>
                                    <th>Employee Name<br />
                                        कर्मचारी का नाम</th>
                                    <th>Unique Id
    <br />
                                        यूनिक आईडी</th>
                                    <th>Print<br />
                                        प्रिंट</th>
                                    <th>Update<br />
                                        अपडेट</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>12546</td>
                                    <td>Arjun Talwar</td>
                                    <td>BT9430</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                    </td>
                                    <td><a class="btn-md" href="Trn_ApplyVoluntaryTransfer.aspx" target="_blank" ><i class="fa fa-edit"></i></a></td>
                                    <th>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div  class="row">

                    <div class="col-md-12">
                        <p class="font-16"> <span style="color:blue">नोट:- स्वैच्छिक स्थानांतरण ड्राफ्ट आवेदन का प्रिंट लेकर स्वतः हस्ताक्षर करें ।</span></p>


                    </div>

                </div>


            </fieldset>

            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">

                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <div class="row mt-2">
                                    <div class="col-sm-2">
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-sm-8 text-center">
                                        <h4><strong><b>स्कूल शिक्षा विभाग
                  <br />
                                            मध्य प्रदेश शासन</b></strong></h4>
                                        <h4><strong><b>स्वैच्छिक स्थानांतरण के लिए आवेदन सह-घोषणा पत्र (DRAFT - Not Locked)</b></strong></h4>

                                    </div>
                                    <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                                <hr />
                                <div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="">

                                                <div class="">
                                                    <table class="table">
                                                        <tr>
                                                            <th>वेरिफिकेशन कोड</th>
                                                            <td>757598</td>
                                                            <th>दिनाँक:-</th>
                                                            <td>09-03-2024</td>
                                                        </tr>
                                                    </table>
                                                    <h4 class="text-center mt-4 mb-4 font-bold"><u>:: ई-सेवा पुस्तिका अनुसार व्यक्तिगत जानकारी ::</u></h4>

                                                </div>
                                                <table class="table">
                                                    <tr>
                                                        <th>आवेदन क्रमांक :</th>
                                                        <td>132240</td>
                                                        <th>आवेदन दिनाँक :</th>
                                                        <td>09-03-2024</td>
                                                    </tr>
                                                    <tr>
                                                        <th>कर्मचारी का नाम</th>
                                                        <td>Arjun Talwar</td>
                                                        <th>यूनिक आई.डी</th>
                                                        <td>AR4781</td>

                                                    </tr>
                                                    <tr>
                                                        <th>पदनाम</th>
                                                        <td>Teacher (UDT)</td>

                                                        <th>ज़िला</th>
                                                        <td>Bhopal</td>
                                                    </tr>
                                                    <tr>
                                                        <th>ब्लॉक</th>
                                                        <td>Bhopal</td>

                                                        <th>क्षेत्र</th>
                                                        <td>Urban</td>
                                                    </tr>
                                                    <tr>
                                                        <th>संकुल कोड / नाम</th>
                                                        <td>15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD</td>

                                                        <th>वर्तमान कार्यालय/संस्था/विद्यालय नाम</th>
                                                        <td>52125212542-Naveen HHS school Bhopal</td>
                                                    </tr>
                                                    <tr>
                                                        <th>जन्मतिथि</th>
                                                        <td>17/07/1992</td>

                                                        <th>आयु (वर्तमान की स्थिति में)</th>
                                                        <td>32 years</td>
                                                    </tr>
                                                    <tr>
                                                        <th>शैक्षणिक योग्यता</th>
                                                        <td>B Tech</td>

                                                        <th>शिक्षण पैनल जिस पर नियुक्ति की गई है</th>
                                                        <td>SSS-1 Mathematics</td>
                                                    </tr>
                                                    <tr>
                                                        <th>वर्तमान संस्था में पदस्थी दिनांक</th>
                                                        <td>15/04/2002</td>

                                                        <th>कुल अवधि वर्षो में</th>
                                                        <td>4</td>
                                                    </tr>

                                                    <tr>
                                                        <td class="text-center mt-4 mb-4 font-bold" colspan="6">
                                                            <span class="font-bold" style="font-size: large;"><u>:: निःशक्तता वैवाहिक स्थिति रोग ग्रस्त (गंभीर बीमारी) से संवन्धित जानकारी ::</u></span>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <th>क्या आप गंभीर बीमारी से पीड़ित हैं</th>
                                                        <td>हाँ </td>

                                                        <th>गंभीर बीमारी का प्रकार</th>
                                                        <td>कैंसर</td>

                                                    </tr>
                                                    <tr>
                                                        <th>विकलांगता की स्थिति</th>
                                                        <td>नहीं</td>
                                                        <th>क्या स्पाउस सेवा में है</th>
                                                        <td>हाँ</td>
                                                    </tr>
                                                    <tr>
                                                        <th>स्पाउस का नाम </th>
                                                        <td>अंकिता </td>
                                                        <th>स्पाउस का मूल पद</th>
                                                        <td>अध्यापिका</td>

                                                    </tr>
                                                    <tr>
                                                        <th>स्पाउस विभाग</th>
                                                        <td>मप्र स्कूल शिक्षा विभाग</td>
                                                        <th>स्पाउस कार्यालय का पता</th>
                                                        <td>भोपाल</td>

                                                    </tr>
                                                    <tr>
                                                        <th>स्थानांतरण चाहने का कारण</th>
                                                        <td>गंभीर बीमारी से पीड़ित होने के कारण देखभाल के लिए अपने गृह निवास पर ट्रांसफर चाहता हूं</td>
                                                    </tr>

                                                    <tr>

                                                        <td class="text-center mt-4 mb-4 font-bold" colspan="6">
                                                            <span class="font-bold" style="font-size: large;"><u>:: विकल्प की जानकारी ::</u></span>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="row">

                                                    <div class="col-md-12">
                                                        <div class="">
                                                            <table class="table">

                                                                <tr>
                                                                    <th>Sr.No/सरल क्र.</th>
                                                                    <th>District/ज़िला</th>
                                                                    <th>Block/विकासखण्ड </th>
                                                                    <th>Shankul/संकुल</th>
                                                                    <th>Office/Institute/School (UDISE Code)/कार्यालय/संस्था/विद्यालय</th>
                                                                    <th>Post Code/पद कोड</th>
                                                                    <th>Panal/पैनल</th>
                                                                    <th>Vacant Post/रिक्त पद </th>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Bhopal</td>
                                                                    <td>Govindpura</td>
                                                                    <td>(2327100059) B.HSS BISTAN</td>
                                                                    <td>GPS NEEMI (Class 1 To 5)</td>
                                                                    <td>2345</td>
                                                                    <td>SSS-1 Mathematics</td>
                                                                    <td>01</td>
                                                                </tr>
                                                            </table>

                                                        </div>

                                                    </div>


                                                    <table style="width: 100%;">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center font-20">: : <u>घोषणा</u> : :</th>
                                                            </tr>
                                                            <tr>
                                                                <td class="font-18">मैं प्रमाणित करता करती हूँ कि उपरोक्त जान‌कारी मेरे ज्ञान व विश्वास से एवं दस्तावेजों के अनुसार सत्य है, किसी भी प्रकार की असत्य
                                                              एवं त्रुटिपूर्ण जानकारी पर मेरा आवेदन स्थानांतरण रद्द कर दिया जावेगा। और मेरे विरुध्द अनुशासनात्मक कार्यवाही के लिए सक्षम अधिकारी स्वतंत्र होंगे।
                                                                </td>
                                                            </tr>
                                                            <tr>

                                                                <td class="text-end font-16 ">हस्ताक्षर<br />
                                                                    Arjun Talwar<br />
                                                                </td>
                                                            </tr>
                                                            <%--  <tr> 
                                                                <td class="text-start font-bold" style="color:red;">नोट :- यह स्वयं की लॉगिन आईडी से जेनरेट एप्लीकेशन है हस्ताक्षर की आवश्यकता नहीं है।</td>
                                                            </tr>--%>
                                                        </tbody>
                                                    </table>

                                                </div>


                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <%--   <div class="modal-footer text-center d-grid justify-content-center">
                                    <div class="row">
                                        <div class="col-md-4">
                                    <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                                  
                                            </div>
                                        </div>
                                </div>--%>
                            </fieldset>
                            <div class="modal-footer text-center">

                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>




    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

