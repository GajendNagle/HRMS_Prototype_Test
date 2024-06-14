<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DeoPrintApplicationReport.aspx.cs" Inherits="mis_HRMS_DeoPrintApplicationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        @media print {
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
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <span>HRMS</span>
                        </li>
                        <li class="breadcrumb-item">Compassionate Appointment</li>
                        <li class="breadcrumb-item">Compassionate Appointment Print Application DEO</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

     <div class="col-md-5" style="position: relative; bottom: 20px;">
     <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
         <img src="../../img/Anukampa Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
         </u>
     </p>
 </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Compassionate Appointment On D.E.O. Level Print Apply<br />
                        डी.ई.ओ. स्तर पर अनुकंपा नियुक्ति प्रिंट आवेदन करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Compassionate Appointment Print Application /
                        अनुकम्पा नियुक्ति प्रिंट आवेदन 
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District Name/<br />
                                जिला का नाम<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control" Enabled="false" ID="ddlDistrict">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">Bhopal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details/विवरण
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Applicant's Name<br />
                                            आवेदक का नाम</th>
                                        <th>Gender<br />
                                            लिंग</th>
                                        <th>Date Of Birth
                                                <br />
                                            जन्म की तारीख</th>
                                        <th>MObile No.<br />
                                            मोबाइल नंबर</th>
                                        <th style="white-space: nowrap">Applicant's Relationship with
                                                <br />
                                            the Deceased Teacher<br />
                                            आवेदक का दिवंगत शिक्षक<br />
                                            के साथ संबंध</th>
                                        <th>Marital Status<br />
                                            वैवाहिक स्थिति</th>
                                        <th>Cadre for Appointment<br />
                                            नियुक्ति हेतु संवर्ग</th>
                                        <th>Designation for Appointment<br />
                                            नियुक्ति हेतु पदनाम</th>
                                        <th style="white-space: nowrap">Status of passing Primary Teacher Eligibility
                                                <br />
                                            Test for Primary Teacher<br />
                                            प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता<br />
                                            परीक्षा उत्तीर्ण की स्थिति</th>
                                        <th style="white-space: nowrap">Year of Eligibility Test<br />
                                            पात्रता परीक्षा का वर्ष</th>
                                        <th>Professional Qualification<br />
                                            व्यावसायिक योग्यता</th>
                                        <th>Print<br />
                                            प्रिंट</th>
                                        <th>Status<br />
                                            स्टेटस</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Aniket Kumar</td>
                                    <td>Male</td>
                                    <td>15/10/1995</td>
                                    <td>9856325685</td>
                                    <td>Son</td>
                                    <td>Unmarried</td>
                                    <td>शैक्षणिक संवर्ग</td>
                                    <td>प्रयोगशाला शिक्षक</td>
                                    <td>हाँ</td>
                                    <td>2015</td>
                                    <td>B.Ed</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                    </td>
                                    <td>Panding </td>
                                </tr>
                                <%-- my code Increase grid --%>

                                <tr>
                                    <td>2</td>
                                    <td>Raj Kumar</td>
                                    <td>Male</td>
                                    <td>15/10/1999</td>
                                    <td>9856425685</td>
                                    <td>Son</td>
                                    <td>Unmarried</td>
                                    <td>शैक्षणिक संवर्ग</td>
                                    <td>प्रयोगशाला शिक्षक</td>
                                    <td>हाँ</td>
                                    <td>2016</td>
                                    <td>B.Sc</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                    </td>
                                    <td>Panding  </td>
                                </tr>
                                <%-- my code Increase grid --%>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-sm-8 text-center mt-4">
                                        <h3><strong><b>Education Protal 3.0 
                        <br />
                                            अनुकंपा नियुक्ति के लिए किये गये आवेदन की पावती</b></strong></h3>
                                    </div>
                                    <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
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
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tbody>

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
                                        </tbody>
                                    </table>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th colspan="5" class="text-center font-20">: : <u>परिवार का विवरण</u> : :</th>
                                        </tr>
                                        <tr class="card-header">
                                            <th>Sr. No.<br />
                                                सरल क्र.</th>
                                            <th>Member Name<br />
                                                सदस्य का नाम</th>
                                            <th>Relation With Deceased<br />
                                                दिवंगत के साथ संबंध</th>
                                            <th>Business<br />
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
                                <div class="table-responsive">
                                    <table style="width: 100%;">
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
                                </div>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

