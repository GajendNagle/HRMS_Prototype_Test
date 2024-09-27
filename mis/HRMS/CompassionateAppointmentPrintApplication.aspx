<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CompassionateAppointmentPrintApplication.aspx.cs" Inherits="mis_HRMS_CompassionateAppointmentPrintApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table, thead, th {
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
                zoom: 76%;
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

        .btn_print:hover {
            background-color: mediumpurple;
            color: white;
        }

        th {
            font-size: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--  <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <span>hrms</span>
                        </li>
                        <li class="breadcrumb-item">compassionate appointment</li>
                        <li class="breadcrumb-item">compassionate appointment print application</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>--%>

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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#EmployeeCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Compassion</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Application Print And Status</span></li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <div class="card" style="margin-bottom: 4px; padding-bottom: -5px; height: 74px;">
        <div class="col-md-12 align-self-center">
            <div class="row">
                <div class="col-md-4">
                    <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                        <img src="../../img/Anukampa Logo.png" style="height: 70px; background-color: white" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                        </u>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="card border card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-10 col-md-12">
                    <div class="marqueecontainer" style="border: none;">
                        <div class="headertext btn btn-primary rounded-pill ">
                            <h5 class="card-title" style="color: white; font-size: 15px; padding: 5px 5px 0 5px;">&#x906;&#x935;&#x947;&#x926;&#x928; &#x92A;&#x94D;&#x930;&#x93F;&#x902;&#x91F; &#x914;&#x930; &#x938;&#x94D;&#x925;&#x93F;&#x924;&#x93F;
						विवरण</h5>
                        </div>
                        <div>
                            <marquee style="width: 100%; padding-top: 5px; color: black;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                कर्मचारी इस पेज के माध्यम से आवेदन का प्रिंट ले सकते हैं तथा उसकी स्थिति की जांच कर सकते हैं।
                            </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 text-end">
                </div>
            </div>
        </div>


        <div class="card-body">
            <fieldset>
                <legend>Compassionate Appointment Print Application/
                    <br />
                    अनुकम्पा नियुक्ति प्रिंट आवेदन     
                </legend>

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








                <%--<div class="row">
                    <div class="col-md-12 text-end" >
                        <button type="button" style="background-color:none; border-color:purple; padding:10px;">ExportToExcel</button>
                    </div>
                </div>--%>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered align-content-start" style="margin-right: 0.5rem;">
                                <thead style="background-color: rgb(0, 0, 0)">
                                    <tr style="white-space: nowrap">
                                        <th style="font-weight: bold; vertical-align: inherit;">Sr.No./<br />
                                            क्रमांक</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Applicant No./<br />
                                            आवेदन क्रमांक</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Applicant Name/<br />
                                            आवेदक का नाम</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Gender/<br />
                                            लिंग</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Caste/<br />
                                            जाति</th>

                                        <th style="font-weight: bold; vertical-align: inherit">Date of Birth/<br />
                                            जन्म दिनांक</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Mobile No./<br />
                                            मोबाइल नंबर</th>
                                        <th style="font-weight: bold; vertical-align: inherit" >Relationship of the <br />
                                            with the decreased <br />public servant/teacher/<br />
                                            आवेदक का दिवंगत लोकसेवक /<br /> शिक्षक के साथ संबंध</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Marital Status/<br />
                                            वैवाहिक स्थिति</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Cadre For Appointment/<br />
                                            नियुक्ति हेतु संवर्ग</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Status of Passing TET Exam<br /> for Primary Teacher/<br />
                                            प्राथमिक शिक्षक हेतु प्राथमिक<br /> शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Year of Eligibility Test/<br />
                                            पात्रता परीक्षा का वर्ष</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Professional Qualification/<br />
                                            व्यावसायिक योग्यता</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Application Status/<br />
                                            आवेदन स्थिति</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Type of Objection<br />
                                            आपत्ति का प्रकार</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Remark/<br />
                                            टिपण्णी</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Reject/Return Reason/<br />
                                            अस्वीकार/वापसी का कारण</th>
                                        <th style="font-weight: bold; vertical-align: inherit">NOC Document/<br />
                                            एनओसी दस्तावेज</th>
                                        <th style="font-weight: bold; vertical-align: inherit">Note Sheet/<br />
                                            नोटशीट</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>CA/BO2784/2401</td>
                                    <td>ABC</td>
                                    <td>Male</td>
                                    <td>ST<br /> (Scheduled<br /> Tribe)</td>
                                    <td>19/06/1997</td>
                                    <td>9856153212</td>
                                    <td>Son</td>
                                    <td>Un-Married</td>
                                    <td>शैक्षणिक संवर्ग</td>
                                    <td>Yes</td>
                                    <td>2024</td>
                                    <td>Graduation</td>
                                    <td>Objection on application</td>
                                    <td>regular post not vacant</td>
                                    <td>cfd</td>
                                    <td>NA</td>
                                    <td></td>
                                   <td class="dx-command-edit dx-cell-focus-disabled" role="gridcell" aria-colindex="19" style="text-align: center; min-width: 110px; max-width: 110px; width: 110px;" tabindex="0"><span class="btn btn-outline-primary"><i class="print">Print</i></span>&nbsp;</td>




                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="modal-title w-100 text-center">अनुकंपा नियुक्ति के लिए किये गये आवेदन की पावती</h3>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100%; max-width: 140px; height: auto; background: none;" class="responsive" />
                                                </div>
                                                <div class="col-sm-8 text-center mt-4">
                                                    <h3><strong><b>Education Portal 3.0</b></strong></h3>
                                                    <h3><strong><b>अनुकंपा नियुक्ति के लिए किये गये आवेदन की पावती</b></strong></h3>
                                                </div>
                                                <div class="col-sm-2">
                                                    <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100%; max-width: 100px; height: auto;" class="responsive" />
                                                </div>
                                            </div>
                                            <div class="justify-content-end ">
                                                <table class="table-borderless ">
                                                    <tr style="position: absolute; right: 4rem;">
                                                        <th>
                                                            <span style="font-weight: bolder; font-size: large">दिनांक :
                                                            </span>
                                                        </th>
                                                        <td><span style="font-weight: bolder; font-size: large">04/05/2024</span></td>
                                                    </tr>
                                                </table>
                                                <hr style="height: 3px; border-width: 10px; color: black; background-color: black; margin-top: 30px;" />
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th colspan="4" class="text-center font-20">: : <u>अधिकारी/कर्मचारी का विवरण</u> : :</th>
                                                            </tr>
                                                            <tr>
                                                                <th>आवेदन आईडी</th>
                                                                <td>4032</td>
                                                                <th>अधिकारी कर्मचारी कोड</th>
                                                                <td>CA7933</td>
                                                            </tr>
                                                            <tr>
                                                                <th>दिवंगत अधिकारी/कर्मचारी का नाम</th>
                                                                <td>KRISHNAVATI PARTE</td>
                                                                <th>लिंग</th>
                                                                <td>Female</td>
                                                            </tr>
                                                            <tr>
                                                                <th>अंतिम पोस्टिंग जिला</th>
                                                                <td>Gwalior</td>
                                                                <th>दिवंगत अधिकारी/कर्मचारी कैडर</th>
                                                                <td>Regular Class- III</td>
                                                            </tr>
                                                            <tr>
                                                                <th>दिवंगत अधिकारी/कर्मचारी पदनाम</th>
                                                                <td>Teacher (UDT)</td>
                                                                <th>अंतिम स्कूल कार्यालय और कर्मचारी का पता</th>
                                                                <td>GOVT. HSS GARDHI</td>
                                                            </tr>
                                                            <tr>
                                                                <th>मृत्यु का कारण</th>
                                                                <td>अन्य</td>
                                                                <th>जाति</th>
                                                                <td>ST</td>
                                                            </tr>
                                                            <tr>
                                                                <th>मृत्यु दिनांक</th>
                                                                <td>01/01/2021</td>
                                                                <th>परिवार के जीवित सदस्यों की संख्या</th>
                                                                <td>2</td>
                                                            </tr>
                                                            <tr>
                                                                <th>विभाग का नाम</th>
                                                                <td>Education</td>
                                                                <th>आवेदन प्राप्त तिथि</th>
                                                                <td>01/01/1900</td>
                                                            </tr>
                                                            <tr>
                                                                <th colspan="4" class="text-center font-20">: : <u>आवेदक का विवरण</u> : :</th>
                                                            </tr>
                                                            <tr>
                                                                <th>आवेदक का नाम</th>
                                                                <td>Mohan</td>
                                                                <th>लिंग</th>
                                                                <td>Male</td>
                                                            </tr>
                                                            <tr>
                                                                <th>वैवाहिक स्थिति</th>
                                                                <td>Unmarried</td>
                                                                <th>जन्म दिनांक :</th>
                                                                <td>01/01/1992</td>
                                                            </tr>
                                                            <tr>
                                                                <th>प्राप्ति की तारीख</th>
                                                                <td>01/01/1900</td>
                                                                <th>दिवंगत के साथ संबंध</th>
                                                                <td>Son</td>
                                                            </tr>
                                                            <tr>
                                                                <th>आवेदक किस पद पर नियुक्ति चाहता है</th>
                                                                <td>शैक्षणिक संवर्ग</td>
                                                                <th>पदनाम </th>
                                                                <td>प्रयोगशाला शिक्षक</td>
                                                            </tr>
                                                            <tr>
                                                                <th>प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति</th>
                                                                <td>नही</td>
                                                                <th>मोबाइल नंबर:</th>
                                                                <td>9856365965</td>
                                                            </tr>
                                                            <tr>
                                                                <th>पात्रता परीक्षा का वर्ष</th>
                                                                <td>Not mentioned</td>
                                                                <th>व्यावसायिक योग्यता</th>
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th colspan="5" class="text-center font-20">: : <u>परिवार का विवरण</u> : :</th>
                                                            </tr>
                                                            <tr class="card-header">
                                                                <th>Sr. No.<br />
                                                                    सरल क्र.</th>
                                                                <th>Name of Member<br />
                                                                    सदस्य का नाम</th>
                                                                <th>Relationship With the Deceased<br />
                                                                    दिवंगत के साथ संबंध</th>
                                                                <th>Profession<br />
                                                                    व्यवसाय</th>
                                                                <th>Date of Birth<br />
                                                                    जन्म दिनांक</th>
                                                            </tr>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Mohan</td>
                                                                <td>Son</td>
                                                                <td>कोई व्यवसाय नही</td>
                                                                <td>18/03/1992</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2</td>
                                                                <td>Amar</td>
                                                                <td>Son</td>
                                                                <td>कोई व्यवसाय नही</td>
                                                                <td>01/01/1995</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <table class="table table-bordered" style="width: 100%;">
                                                <!-- Table content here -->
                                                <tbody>
                                                    <tr style="height: 70px">
                                                        <th class="text-center font-20">: : <u>घोषणा</u> : :</th>
                                                    </tr>
                                                    <tr>
                                                        <td class="font-18">1. में एतद् द्वारा घोषणा करता करती हूँ कि मेरे द्वारा दी गई उपरोक्त जानकारी मेरे ज्ञान एवं विश्वास के अनुसार सत्य हैं, यदि मेरे द्वारा दी गई जानकारी नियुक्ति के पूर्व या बाद में असत्य गलत पायी जाती है अथवा
नियुक्ति के पश्चात् अपात्रता पाई जाती है तो मैं पूर्ण रूप से जानता जानती हूँ कि मेरी नियुक्ति निरस्त कर दी जाएगी और इस संबंध में प्रावधानित विधि एवं नियमों के अधीन मेरे द्वारा की जाने वाली कार्यवाही के लिए मैं उत्तरदायी रहूंगा रहूंगी।<br />
                                                            <br />
                                                            2. में यह भी वचन देता हूँ देती हूँ कि में स्व. श्री KRISHNAVATI PARTE के आश्रित परिवार के अन्य सदस्यों का समुचित भरण पोषण करूंगा करूंगी. बाद में किसी भी समय यदि यह प्रमाणित हो जाए कि मेरे द्वारा परिवार के सदस्यों को 
अनदेखा किया जा रहा है, अथवा उनका सही ढंग से भरण पोषण नहीं किया जा रहा है तो मेरी अनुकंपा नियुक्ति
समाप्त की जा सकेगी।
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="float-end font-16 text-end">
                                                            <br />
                                                            <br />
                                                            <br />
                                                            आवेदक का हस्ताक्षर...................</td>

                                                    </tr>
                                                    <tr style="height: 70px">
                                                        <th class="text-center font-20">: : <u>कार्यालय प्रमुख का प्रमाणीकरण</u> : :</th>
                                                    </tr>
                                                    <tr>
                                                        <td class="font-18">1. आवेदक/आवेदिका द्वारा आवेदन पत्र में दिए गए सम्पूर्ण तथ्यों/विवरण की सूक्ष्मता से जांच कर ली गयी है।<br />
                                                            2. आवेदक/आवेदिका ने आश्रित परिवार तथा उनके रोजगार, आय एवं संपत्ति को जो विवरण दिया है उसका प्रमाणीकरण कर लिया गया है।<br />
                                                            3. मैं पूर्ण जांचोपरांत इस बात से संतुष्ट हूँ कि आवेदक आवेदिका को अनुकंपा नियुक्ति की पात्रता आती है, साथ ही, दिवंगत शासकीय सेवक के आश्रित परिवार की आर्थिक स्थिति को देखते हुए आवेदक को अनुकंपा नियुक्ति दी जाना उचित होगा।
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="float-end font-16 text-end">
                                                            <br />
                                                            <br />
                                                            <br />
                                                            कार्यालय प्रमुख के हस्ताक्षर...................<br />
                                                            (जहाँ दिवंगत शासकीय सेवक कार्यरत था) नाम...................<br />
                                                            कार्यालय का नाम...................
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </fieldset>
                                    </div>
                                    <div class="modal-footer justify-content-center">
                                        <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--my code--%>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

