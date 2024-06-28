<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ParivednaNevakarn.aspx.cs" Inherits="mis_Transaction_ParivednaNevakarn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />
    <style>
        .radius-defalt {
            border-radius: var(--vz-card-border-radius) !important;
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Grievance" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Grievance Management System Home</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                <img src="../../img/Grievance%20Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card   card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Grievance Management System About Information / शिकायत प्रबंधन प्रणाली के बारे में सूचना 
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="row justify-content-center">
                <div class="col-lg-12 col-sm-12 col-md-12">
                    <div class="single_element">
                        <div class="quick_activity">
                            <div class="row justify-content-center">
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 one">
                                            <h4 style="color:white">पंजीकृत शिकायतें </h4>

                                        </div>
                                        <div class="card-content">
                                            <button class="card-btn one">5893</button>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 five">
                                            <h4 style="color:white">लोक्ड शिकायतें</h4>

                                        </div>
                                        <div class="card-content">

                                            <button class="card-btn five">8348</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 two">
                                            <h4 style="color:white">अग्रेषित शिकायतें</h4>

                                        </div>
                                        <div class="card-content">

                                            <button class="card-btn two">6604</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 three">
                                            <h4 style="color:white">पूर्ण शिकायतें</h4>

                                        </div>
                                        <div class="card-content">

                                            <button class="card-btn three">2648</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 four">
                                            <h4 style="color:white">अस्वीकृत शिकायतें</h4>

                                        </div>
                                        <div class="card-content">

                                            <button class="card-btn four">137</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">

                                    <div class="card-wrap">
                                        <div class="card-header card-header1 five">
                                            <h4 style="color:white">पेंडिंग शिकायतें</h4>

                                        </div>
                                        <div class="card-content">
                                            <button class="card-btn five">5808</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <fieldset>
                <legend>परिवेदना निवारण / Grievance Redressal
                </legend>
                <div class="row mb-1">
                <h4 class="parivedan-heading" style="color: brown; background-color: bisque; font-weight: bold; border-radius: 10px;">
                            <i class="far fa-hand-point-right"></i>&emsp;
                            परिवेदना निवारण के बारे में:
                          
                        </h4>
                </div>
                <p style="font-weight: bold; background-color: #F0FFFF; padding: 10px; border-radius: 10px;">
                    स्कूल शिक्षा विभाग अंतर्गत कार्यरत् तथा सेवानिवृत्त शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के निराकरण हेतु समय-समय पर विभाग स्तर से आवश्यक निर्देश जारी किये गये है । निःशुल्क और अनिवार्य बाल शिक्षा का अधिकार अधिनियम 2009 की धारा 24 की उपधारा (3) के प्रावधान अनुसार शिक्षकों की शिकायतों के निराकरण हेतु समुचित व्यवस्था स्थापित किये जाने की अनिवार्यता है। उक्त अनुक्रम में इन समस्याओं के निराकरण हेतु अधिक बेहतर व्यवस्था जो समयबद्ध तथा पारदर्शी हो, स्थापित किए जाने का निर्णय लिया गया है ताकि संबंधित शासकीय सेवकों की समस्याओं का समय-सीमा में निराकरण किया जा सके। 2/ इस निर्णय के अनुक्रम में कार्यरत एवं सेवानिवृत्त शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के निराकरण हेतु ‘‘परिवेदना निवारण प्रबंधन प्रणाली’’ का विकास किया गया है ताकि सबंधितों को उनकी समस्याओं के निराकरण के लिए संबंधित कार्यालयों में आने-जाने में समय एवं धन का अपव्यय न करना पड़े।
   ।
                </p>
                <div class="row mb-1">
                        <h4 class="parivedan-heading" style="color: brown; background-color: bisque; font-weight: bold; border-radius: 10px;">
                            <i class="far fa-hand-point-right"></i>&emsp;परिवेदना निवारण के विशिष्ट बिंदु :</h4>
                    </div>
                <ul style="font: bold; list-style-type: none; margin-left: -30px">
                    <li style="background-color: #F0F8FF; padding: 10px 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;स्कूल शिक्षा विभाग अंतर्गत कार्यरत एवं सेवानिवृत्त ऐसे शिक्षक/कर्मचारी जिनका एजुकेशन पोर्टल का यूनिक आई डी जनरेटेड है, विभाग से संबंधित स्वयं की समस्याओं के बारे में शिकायत ऑनलाईन रूप से एजुकेशन पोर्टल अथवा एम शिक्षा मित्र एप पर दर्ज करा सकेगें। । </li>
                    <li style="background-color: #F8F8FF; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;शिकायत का पंजीयन क्रमांक एवं शिकायत दर्ज होने संबंधी जानकारी शिकायतकर्ता के मोबाइल पर एसएमएस के माध्यम से प्राप्त होगी।</li>
                    <li style="background-color: #FFFAF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;जिला, संभागीय, समस्त विभागाध्यक्ष कार्यालयों तथा शासन स्तर पर शिकायतों के निराकरण संबंधी कार्यवाही के समन्वय हेतु कार्यालय प्रमुख स्वयं अथवा कार्यालय अथवा विभाग के द्वारा किन्हीं वरिष्ठ अधिकारी को नोडल अधिकारी के रूप में नामांकित किया जायेगा।</li>
                    <li style="background-color: #F0FFF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;इस प्रणाली के प्रारंभ होने के पश्चात शिक्षकों/कर्मचारियों को अपनी शिकायतें संबंधित कार्यालयों को मैन्युअल रूप से प्रस्तुत न करते हुये इस प्रणाली के तहत ऑनलाइन प्रस्तुत करनी होगी ।।</li>
                    <li style="background-color: #FFF0F5; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;आवेदक के लिए ट्रेकिंग हेतु ऑनलाइन सुविधा उपलब्ध रहेगी जिसका प्रिंट आउट संबंधितों द्वारा लिया जा सकेगा।</li>
                    <li style="background-color: #FFF0F5; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;किन्ही भी कार्यरत् तथा सेवानिवृत्त शिक्षकों/कर्मचारियों के लिए यह आवश्यक होगा कि अपनी समस्याओं के सम्बन्ध में न्यायालय में जाने से पूर्व उनके द्वारा ऑनलाइन ‘‘परिवेदना निवारण प्रबंधन प्रणाली’’ पर शिकायत को दर्ज करना होगा |</li>
                </ul>
                <div class="row mb-1">
                        <h4 class="parivedan-heading" style="color: brown; background-color: bisque; font-weight: bold; border-radius: 10px;">
                            <i class="far fa-hand-point-right"></i>&emsp;उद्देश्य :</h4>
                    </div>
                <ul style="font: bold; list-style-type: none; margin-left: -30px">
                    <li style="background-color: #F0F8FF; padding: 10px 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के निराकरण हेतु ‘‘परिवेदना निवारण प्रबंधन प्रणाली’’ का विकास किया गया है । </li>
                    <li style="background-color: #F8F8FF; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;बच्चों की शैक्षणिक उपलब्धियों के प्रति शासन की प्रतिबद्धता एवं प्राथमिकता दर्शाना एवं समाज को संवेदित करना ।</li>
                    <li style="background-color: #FFFAF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;सभी की समस्याओं के निराकरण के लिए संबंधित कार्यालयों में आने-जाने में समय एवं धन का अपव्यय न करना पड़े।</li>
                    <li style="background-color: #F0FFF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;सेवानिवृत्त शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के समय-सीमा में निराकरण किए जाने से यह अपेक्षित है कि उक्त शासकीय सेवकों को अपने कार्य करने हेतु प्रोत्साहन प्राप्त होगा तथा विभागीय न्यायालयीन प्रकरणों में कमी आएगी।</li>
                </ul>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

