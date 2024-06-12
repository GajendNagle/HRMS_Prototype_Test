<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DEOMutalTransferPrint.aspx.cs" Inherits="mis_HRMS_DEOMutalTransferPrint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
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
                zoom: 100%;
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
    <div class="row">
        <div class="col-md-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#DEOTransferApproval" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>DEO Transfer Approval</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>DEO Mutual Transfer Print</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Mutual Transfer Print / पारस्परिक ट्रांसफर प्रिंट</h4>
                        </div>
                    </div>
                </div>
                <%--<div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">जिला शिक्षा अधिकारी द्वारा पारस्परिक ट्रांसफर प्रिंट</p>
        </div>
        <div class="col-md-4 align-self-center">

            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item"><a href="../Transaction/DEO_TransferApproval.aspx">DEO Mutual Transfer Approval</a></li>
                    <li class="breadcrumb-item active">DEO Mutual Transfer Print</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>--%>
                <div class="card-body">
                    <fieldset>
                        <legend>Mutual Transfer Print / पारस्परिक ट्रांसफर प्रिंट
                        </legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Employee Unique-Id /
                               <br />
                                        कर्मचारी यूनिक आईडी</label>
                                    <input class="form-control" placeholder="Enter Employee Unique-Id " />
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()">Search</button>
                                    <a class="btn btn-outline-danger btn-border w-lg" href="DEOMutalTransferPrint.aspx">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="vacaniesDetail" style="display: none;">
                        <legend>Detail / विवरण</legend>
                        <div class="row justify-content-end">

                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered">
                                        <tr class="card-header">

                                            <th>Date /<br />
                                                दिनांक</th>
                                            <th>Unique /
                                       <br />
                                                युनिक आई.डी.</th>
                                            <th>Name And Designation /
                                       <br />
                                                नाम एवं पद</th>
                                            <th>Subject /<br />
                                                विषय</th>
                                            <th>Working Institute And UDISE Code /<br />
                                                कार्यरत संस्था एवं डाइस कोड</th>
                                            <th>Working District /<br />
                                                कार्यरत जिला</th>
                                            <th>New Organization And UDICE Code /<br />
                                                नवीन संस्था एवं डाइम कोड</th>
                                            <th>District Of New Posting /
                                       <br />
                                                नवीन पदस्थापना का जिला</th>
                                            <th>Order Print /<br />
                                                आदेश प्रिंट   </th>
                                        </tr>
                                        <tr>
                                            <td>09/03/2024</td>
                                            <td>BT921</td>
                                            <td>Arjun Talwar / Teacher (UDT) </td>
                                            <td>Hindi</td>
                                            <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                            <td>Bhapal</td>
                                            <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                            <td>Rajgarh</td>
                                            <td rowspan="2" class="text-center">
                                                <button type="button" class="btn btn-warning mt-4" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">Print</button></td>
                                        </tr>
                                        <tr>
                                            <td>09/03/2024</td>
                                            <td>BT899</td>
                                            <td>Ajay Verma / Teacher (UDT) </td>
                                            <td>Hindi</td>
                                            <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                            <td>Rajgarh</td>
                                            <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                            <td>Bhapal</td>

                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
            <%--adesg--%>
            <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                        <h3><strong><b>लोक शिक्षण संचालनालय मध्य प्रदेश</b></strong></h3>
                                        <h4><strong><b>गौतम नगर, भोपाल - 462021</b></strong></h4>

                                    </div>
                                    <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                                <hr />
                                <div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div>

                                                <div>
                                                    <table class="table">
                                                        <tr>
                                                            <th>क्र./स्थानांतरण</th>
                                                            <td>Ad_mutual/2023/20-01/140526</td>
                                                            <th>दिनाँक:-</th>
                                                            <td>09-03-2024</td>
                                                        </tr>
                                                    </table>
                                                    <h4 class="text-center mt-4 mb-4 font-bold"><u>:: आदेश ::</u></h4>

                                                    <p class="text-center">मध्यप्रदेश शासन स्कूल शिक्षा विभाग के परिपत्र 01-09/2022/20-1 दिनांक 08/09/2022 के द्वारा स्कूल शिक्षा विभाग अंतर्गत कार्यरत अमले के स्थानान्तरण हेतु निर्धारित नीति के तहत निस्रांकित लोक सेवक को उनके नाम के मम्मुख तालिका के कॉलम क्रमांक 7 एवं 8 में अंकित संस्था एवं जिले में समान सामर्थ्य एवं वेतनमान में स्थानान्तरित कर अस्थायी रूप से आगामी आदेश तक पदस्थ किया जाता है।</p>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="table-responsive">
                                                            <table class="table">
                                                                <tr>
                                                                    <th>सरल क्र.</th>
                                                                    <th>यूनिक आई.डी</th>
                                                                    <th>नाम एवं पद</th>
                                                                    <th>विषय </th>
                                                                    <th>कार्यरत संस्था एवं डाइम कोड</th>
                                                                    <th>कार्यरत जिला</th>
                                                                    <th>नवीन संस्था एवं डाइस कोड</th>
                                                                    <th>नवीन पदस्थापना का जिला</th>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>BT7956</td>
                                                                    <td>Arjun Talwar<br />
                                                                        Prathmik Shikshak</td>
                                                                    <td>Hindi</td>
                                                                    <td>(2327100059) Modal Public School BISTAN</td>
                                                                    <td>Bhopal</td>
                                                                    <td>(2327100059) B.HSS Ratlam </td>
                                                                    <td>Ratlam</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>BT1256</td>
                                                                    <td>Ajay Verma<br />
                                                                        Prathmik Shikshak</td>

                                                                    <td>Hindi</td>
                                                                    <td>(2327100059) B.HSS Ratlam</td>
                                                                    <td>Ratlam</td>
                                                                    <td>(2327100059) Modal Public School BISTAN</td>
                                                                    <td>Bhopal</td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <h3>उक्त स्थानांतरण निम्न शर्तों के अधीन रहेगाः-   </h3>
                                                        <p class="font-16 font-bold">
                                                            01. संबंधित लोक सेवकः का स्थानान्तरण आदेश जारी होने पर उनकी ई-मेबा पुस्तिका /सेवा पुस्तिका से स्थानान्तरण आदेश में उल्लेखित जानकारी का मिलान करने के उपरांत सही पाये जाने पर ही कार्य मुक्त किया जाए, इसका संपूर्ण उत्तरदायित्व संबंधित संकुल प्राचार्य<br />
                                                            02. स्थानान्तरित भोक मेवक, नवीन जिले के जिला शिक्षा अधिकारी कार्यालय में उपस्थित होने के उपरांत अगले कार्यदिवस पर स्थानान्तरित संग्धा में कार्यभार ग्रहण करेगा तथा इसकी लिखित सूचना संकुल केन्द्र के माध्यम से विकास खण्ड शिक्षा अधिकारी एवं जिला शिक्षा अधिकारी को देना सुनिश्चित करेगा।<br />
                                                            03. स्थानान्तरित लोक सेवक का संबर्ग यथा स्थिति (जिला एवं संभाग) परिवर्तन होने की स्थिति में, संबंधित की वरिष्ठता नवीन पदस्थापना बाले जिले /मंभाग में स्थानान्तरण उपरांत कार्यभार ग्रहण दिनांक से निर्धारित होगी। राज्य संवर्ग के लोकसेवकों की बरिष्ठता यथावत|<br />
                                                            04. स्थानान्तरित लोक सेवक अपना समस्त कार्यभार सौंपने के उपरांत ही कार्य मुक्त होंगे |<br />
                                                            05. यदि संबंधित लोक सेवक अध्यापक संवर्ग का है तथा स्कूल शिक्षा विभाग के अंतर्गत नवीन संवर्ग में नियुक्ति नहीं हुई है, ऐसी स्थिति में यह आदेश म्बनः ही निरस्त माना आयेगा |<br />
                                                            06. सम्बंधित लोक मेवक जनजातीय कार्य विभाग द्वारा संचालित शाला में कार्यरत हैं, तो उनका स्थानान्तरण स्कूल शिक्षा विभाग में मान्य नहीं होगा तथा यह आदेश स्वतः ही निरस्त माना जायेगा |<br />
                                                            07. कार्यमुक्त होने के पश्चात एवं नवीन पदस्थापना पर कार्यभार ग्रहण करने के मध्य की अवधि के किसी भी प्रकार का अवकाश प्रशासकीय विभाग के माध्यम से सामान्य प्रशासन विभाग का अभिमत प्राप्त करने के पश्चात ही स्वीकृत किया जा सकेगा |<br />
                                                        </p>
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td class="text-end font-16 ">(शिल्पा गुप्ता)<br />
                                                                    <span class="text-center ">आयुक्त<br />
                                                                    </span>
                                                                    लोक शिक्षण, मध्यप्रदेश
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-start font-16">Digitally Signed By 
                                                       <br />
                                                                    Shilpa Gupta<br />
                                                                    Date: 2024.04.5 +05:30<br />
                                                                    Reason :<br />
                                                                    Location:
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="modal-footer text-center">
                                <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="window.print()">Print</button>
                                <button type="button" class="btn btn-outline-warning w-lg btn-border" data-bs-dismiss="modal">Close</button>
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
            document.getElementById("generateorder").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

