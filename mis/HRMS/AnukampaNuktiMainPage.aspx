<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AnukampaNuktiMainPage.aspx.cs" Inherits="mis_HRMS_AnukampaNuktiMainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />
    <style>
        #ACR_Details_Graph .highcharts-data-label text {
            color: white !important;
            font-size: 0.65rem !important;
            font-weight: bold !important;
            text-align: center !important;
            fill: white !important;
            text-decoration: none !important;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">


    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Anukampa Logo.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center">

            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=CompassionateAppointment" title="click to go on">Compassionate Appointment</a></li>
                    <li class="breadcrumb-item active">Employee Compassionate Application</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link text-warning  font-16 text-white" href="AnukampaNuktiMainPage.aspx" role="button" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link font-16 text-white" href="Trn_CompassionateAppointment.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति के लिए आवेदन पंजीकृत करें</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link font-16 text-white" href="CompassionateAppointmentPrintApplication.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति आवेदन प्रिंट /स्टेटस</b></strong></a>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <div class="row justify-content-center">
                <div class="col-lg-12 col-sm-12 col-md-12">

                    <div class="single_element">
                        <div class="quick_activity">
                            <div class="row justify-content-center">
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 one">
                                            <h4 class="">प्राप्त आवेदन संख्या</h4>

                                        </div>
                                        <div class="card-content">
                                            <button class="card-btn one">1250</button>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 five">
                                            <h4 class="">अनुमोदित आवेदन संख्या</h4>

                                        </div>
                                        <div class="card-content">

                                            <button class="card-btn five">500</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 two">
                                            <h4 class="">प्रतीक्षारत आवेदन संख्या</h4>

                                        </div>
                                        <div class="card-content">

                                            <button class="card-btn two">750</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <fieldset>
                <legend>Compassionate Appointment / अनुकंपा नियुक्ति
                </legend>

                <%-- <h1>अनुकंपा नियुक्ति और निगरानी</h1>--%>
                <div class="row">


                    <div class="col-md-8">
                        <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 38%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px"><i class="far fa-hand-point-right"></i>&emsp; अनुकंपा नियुक्ति आवेदन के लिए आवश्यक दस्तावेज़:</h4>
                    </div>
                    <div class="col-md-4 text-center">
                        <a style="background-color: DarkKhaki; height: 30px; color: white; font-weight: bold; width: 45%; border-radius: 6px; padding: 10px" href="../Document/anukampa%20adesh.pdf" target="_blank">अनुकंपा नियुक्ति संबंधित आदेश</a>
                    </div>
                </div>
                <ol style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;">
                    <li>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</li>
                    <li>आवेदक का जन्म तिथि का प्रमाण पत्र</li>
                    <li>आवेदक का मध्यप्रदेश के स्थानीय निवास/मूल निवासी होने का प्रमाण पत्र</li>
                    <li>आवेदक के अनुसूचित जाति, जनजाति अथवा अन्य पिछड़े वर्ग का होने पर जाती प्रमाण पत्र</li>
                    <li>मध्यप्रदेश स्थित विद्यालय / महाविद्यालय से हायर सेकेण्डरी / स्नातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र</li>
                    <li>परिवार के मुखिया द्वारा सहमति प्रमाण पत्र</li>
                    <li>आवेदक का फोटो</li>
                    <li>राशन कार्ड<span style="color: blue;"> आवेदन करने से पूर्व उपरोक्त दस्तावेज तैयार करलें और 500 kb तक के साइज़ मे pdf प्रारूप में अपलोड किए जाएंगे</span></li>
                </ol>

                <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 25%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px"><i class="far fa-hand-point-right"></i>&emsp; अनुकंपा नियुक्ति ओर निगरानी प्रणाली के बारे मे :</h4>
                <p style="font-weight: bold; background-color: #F0FFFF; padding: 10px; border-radius: 10px;">
                    मध्यप्रदेश शासन स्कूल शिक्षा विभाग के अंतर्गत प्रदेश भर में 3.5 लाख से अधिक अधिकारी/कर्मचारी कार्यरत है। शासकीय कर्मचारी के असामयिक मृत्यु होने पर उनके आश्रितों को नियम अनुसार अनुकंपा नियुक्ति दिये जाने का प्रावधान है।  
                अधिकारी/कर्मचारी की असामायिक मृत्यु होने पर उनके आश्रितों द्वारा अनुकंपा नियुक्ति हेतु आवेदन पत्र प्रस्तुत किये जाते है, जिनका निराकरण विभिन्न स्तरों पर संबंधित कार्यालयों द्वारा शासन नियमानुसार तथा आवेदक की पात्रता के अनुसार किया जाता है।
                    अनुकंपा नियुक्ति संबंधी सभी प्रकरणों के पारदर्शी एवं समय सीमा में निराकरण सुनिश्चित करने तथा सभी प्रकरणों की अद्तन स्थिति तथा राज्य व अन्य स्तरों पर मोनिटरिंग करने के उद्देश से विभाग ने एजूकेशन पोर्टल पर अनुकंपा नियुक्ति संबंधी ऑनलाइन 
                    प्रणाली का क्रियान्वयन करने का निर्णय लिया है ।
                </p>

                <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 25%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px"><i class="far fa-hand-point-right"></i>&emsp; अनुकंपा नियुक्ति बिंदु विशिष्ट :</h4>
                <ul style="font: bold; list-style-type: none; margin-left: -30px">
                    <li style="background-color: #F0F8FF; padding: 10px 10px; border-radius: 10px; font-weight: bold;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;अध्यापक संवर्ग के लिए अनुकम्पा नियुक्ति के सम्बन्ध में पूर्व प्रावधान के अनुसार आवेदक का D.Ed. / B.Ed. के साथ 'शिक्षक पात्रता परीक्षा उत्तीर्ण' होना आवश्यक है, अब अध्यापक संवर्ग से नवीन कैडर में नियुक्ति के बाद अनुकम्पा नियुक्ति के 
                        लिए नियम भर्ती" 2018 के प्रावधानों के अधीन नियुक्त किये गये शिक्षकों की शासकीय सेवा में रहते हुए निधन होने पर तत्समय सामान्य प्रशासन विभाग द्वारा प्रभावशील अनुकंपा नियुक्ति की नीति के अनुसार पात्रता होगी । </li>
                    <li style="background-color: #F8F8FF; padding: 10px; border-radius: 10px; font-weight: bold;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;उक्त प्रणाली के माध्यम से समस्त संबंधित कार्यालयों द्वारा अनुकंपा नियुक्ति के आवेदन पत्रों को पंजीकृत करना होगा। पंजीकृत आवेदन पत्र में कमी होने या नियमानुसार पात्रता न होने के कारण कार्यालय द्वारा प्रकरण के लंबितपोर्टल विवरण विस्तृत उसका
                        में स्थिति की होने निरस्त / पर दर्ज किया जावेगा। जिससे कि प्रकरण लंबितनिरस्त / होने के कारणों की जानकारी आवेदक एवं वरिष्ट कार्यालय को मिल सकेंगी तथा प्रकरण के निराकरण में सुगमता आवेगी। समस्त कार्यालयों द्वारा नियमानुसार पात्रता रखने
                        वाले सभी प्रकरणों के विरूद्व जारी किये गये समस्त अनुकंपा नियुक्ति आदेशों का विवरण तथा आदेश की स्केण्ड प्रति भी पोर्टल पर अपलोड की जावेगी जिससे कि सभी स्तरों पर प्रकरण की अद्यतन स्थिति प्राप्त हो सकेंगी। </li>
                    <li style="background-color: #FFFAF0; padding: 10px; border-radius: 10px; font-weight: bold;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;अनुकंपा नियुक्ति से संबंधित समस्त प्रकरणों की सूची, निरस्तकारण का होने लंबित /, वर्तमान स्थिति, नियुक्ति आदेश पोर्टल पर आवेदक एवं जन सामान्य के लिए सहज रूप से उपलब्ध रहेगें। प्रणाली के सफल क्रियान्वयन से प्रकरणों का तय समय सीमा
                        में त्वरित निराकरण किया जाकर दिवंगत कर्मचारी के आश्रितों को लाभ सुनिश्चित हो सकेगा। अनुकंपा नियुक्ति के संबंध में समयमध्यप जारी समय-प्रदेश शासन के नियम है। उपलब्ध पर पोर्टल भी निर्देश-</li>
                    <li style="background-color: #F0FFF0; padding: 10px; border-radius: 10px; font-weight: bold;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;इस प्रणाली के प्रारंभ होने के पश्चात शिक्षकोंआवेदन अपना को कर्मचारियों/ संबंधित कार्यालयों को मैन्युअल रूप से प्रस्तुत न करते हुये इस प्रणाली के तहत ऑनलाइन प्रस्तुत करनी होगी।</li>
                    <li style="background-color: #FFF0F5; padding: 10px; border-radius: 10px; font-weight: bold;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;आवेदक के लिए ट्रेकिंग हेतु ऑनलाइन सुविधा उपलब्ध रहेगी जिसका प्रिंट आउट संबंधितों द्वारा लिया जा सकेगा।</li>

                </ul>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../dist/DashboardNew/js/jquery1-3.4.1.min.js"></script>
    <script src="../dist/DashboardNew/js/jquery.waypoints.min.js"></script>

    <script src="../dist/DashboardNew/js/jquery.counterup.min.js"></script>
    <script src="../dist/DashboardNew/js/custom.js"></script>
    <script src="../dist/dashboard/raphael-min.js"></script>
    <script src="../dist/dashboard/morris.js"></script>
    <script src="../dist/js/highcharts/highcharts.js"></script>


    <script src="../js/highcharts-3d.js"></script>
    <script src="../js/drilldown.js"></script>
    <script src="../js/exporting.js"></script>
    <script src="../js/export-data.js"></script>
    <script src="../js/accessibility.js"></script>

</asp:Content>

