<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ParivednaNevakarn.aspx.cs" Inherits="mis_Transaction_ParivednaNevakarn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="container-fluid">
        <span class="hidden-sm-up">
            <br />
            <br />
            <br />

        </span>

        <div class="row page-titles" style="margin-bottom: -30px">



            <div class="col-md-3 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Grievance%20Logo.png" style="height: 70px"><u><br />
                    </u>
                </p>
            </div>
            <div class="col-md-3  ">
            </div>
            <div class="col-md-6 align-self-center">

                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Grievance Management</li>
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

    <a class="nav-link  text-white " href="ParivednaNevakarn.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
    <li class="nav-item dropdown">

      <%--  <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong>शिकायत पंजीयन</></strong></a>--%>
         <%-- <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत पंजीयन </b></a>--%>


          <a class="nav-link dropdown-toggle font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i> शिकायत पंजीयन</b></strong></a>
        <ul class="dropdown-menu">

            <li><a class="dropdown-item" href="Trn_ParivadNivaran.aspx">शिकायत दर्ज करे</a></li>

            <li><a class="dropdown-item" href="ParivednaNevakarnStatus.aspx">शिकायत ट्रैकिंग स्थिति</a></li>
            <li><a class="dropdown-item" href="PrintComplaint.aspx">शिकायत प्रिंट करे</a></li>

        </ul>
       
    </li>
  <%--  <a class="nav-link  text-white " href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold">शिकायत प्रोसेसिंग </b></a>--%>


       <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत प्रोसेसिंग </b></a>
  <%--  <a class="nav-link  text-white " href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold">शिकायत निराकरण </b></a>--%>



     <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत निराकरण </b></a>



    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  रिपोर्ट</b> </a>
        
         <ul class="dropdown-menu">

       <li><a class="dropdown-item" href="DisposedGrievances.aspx">निराकृत शिकायतों की सूची</a></li>
       <li><a class="dropdown-item" href="RejectedGrievances.aspx">अस्वीकृत शिकायतों की सूची</a></li>

       <li><a class="dropdown-item" href="ForwardedGrievances .aspx">जिलेवार अग्रेषित शिकायतों का विवरण</a></li>
       <li><a class="dropdown-item" href="CPIGrievancesDetails.aspx">CPI से अग्रेषित शिकायतों का विवरण</a></li>
       <%-- <li><a class="dropdown-item" href="#">शिकायत प्रिंट करे</a></li>--%>
   </ul>
    </li>
</ul>


                        </div>
                    </div>
                </nav>
                <br />
                <br />

                <fieldset>
                    <legend>परिवेदना निवारण
                    </legend>



                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 20%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px"><i class="far fa-hand-point-right"></i>&emsp; परिवेदना निवारण के बारे मे :</h4>
                    <p style="font-weight: bold; background-color: #F0FFFF; padding: 10px; border-radius: 10px;">
                        स्कूल शिक्षा विभाग अंतर्गत कार्यरत् तथा सेवानिवृत्त शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के निराकरण हेतु समय-समय पर विभाग स्तर से आवश्यक निर्देश जारी किये गये है । निःशुल्क और अनिवार्य बाल शिक्षा का अधिकार अधिनियम 2009 की धारा 24 की उपधारा (3) के प्रावधान अनुसार शिक्षकों की शिकायतों के निराकरण हेतु समुचित व्यवस्था स्थापित किये जाने की अनिवार्यता है। उक्त अनुक्रम में इन समस्याओं के निराकरण हेतु अधिक बेहतर व्यवस्था जो समयबद्ध तथा पारदर्शी हो, स्थापित किए जाने का निर्णय लिया गया है ताकि संबंधित शासकीय सेवकों की समस्याओं का समय-सीमा में निराकरण किया जा सके। 2/ इस निर्णय के अनुक्रम में कार्यरत एवं सेवानिवृत्त शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के निराकरण हेतु ‘‘परिवेदना निवारण प्रबंधन प्रणाली’’ का विकास किया गया है ताकि सबंधितों को उनकी समस्याओं के निराकरण के लिए संबंधित कार्यालयों में आने-जाने में समय एवं धन का अपव्यय न करना पड़े।
   ।
                    </p>
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 25%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px"><i class="far fa-hand-point-right"></i>&emsp;परिवेदना निवारण के विशिष्ट बिंदु :</h4>
                    <ul style="font: bold; list-style-type: none; margin-left: -30px">
                        <li style="background-color: #F0F8FF; padding: 10px 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;स्कूल शिक्षा विभाग अंतर्गत कार्यरत एवं सेवानिवृत्त ऐसे शिक्षक/कर्मचारी जिनका एजुकेशन पोर्टल का यूनिक आई डी जनरेटेड है, विभाग से संबंधित स्वयं की समस्याओं के बारे में शिकायत ऑनलाईन रूप से एजुकेशन पोर्टल अथवा एम शिक्षा मित्र एप पर दर्ज करा सकेगें। । </li>
                        <li style="background-color: #F8F8FF; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;शिकायत का पंजीयन क्रमांक एवं शिकायत दर्ज होने संबंधी जानकारी शिकायतकर्ता के मोबाइल पर एसएमएस के माध्यम से प्राप्त होगी।</li>
                        <li style="background-color: #FFFAF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;जिला, संभागीय, समस्त विभागाध्यक्ष कार्यालयों तथा शासन स्तर पर शिकायतों के निराकरण संबंधी कार्यवाही के समन्वय हेतु कार्यालय प्रमुख स्वयं अथवा कार्यालय अथवा विभाग के द्वारा किन्हीं वरिष्ठ अधिकारी को नोडल अधिकारी के रूप में नामांकित किया जायेगा।</li>
                        <li style="background-color: #F0FFF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;इस प्रणाली के प्रारंभ होने के पश्चात शिक्षकों/कर्मचारियों को अपनी शिकायतें संबंधित कार्यालयों को मैन्युअल रूप से प्रस्तुत न करते हुये इस प्रणाली के तहत ऑनलाइन प्रस्तुत करनी होगी ।।</li>
                        <li style="background-color: #FFF0F5; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;आवेदक के लिए ट्रेकिंग हेतु ऑनलाइन सुविधा उपलब्ध रहेगी जिसका प्रिंट आउट संबंधितों द्वारा लिया जा सकेगा।</li>
                        <li style="background-color: #FFF0F5; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;किन्ही भी कार्यरत् तथा सेवानिवृत्त शिक्षकों/कर्मचारियों के लिए यह आवश्यक होगा कि अपनी समस्याओं के सम्बन्ध में न्यायालय में जाने से पूर्व उनके द्वारा ऑनलाइन ‘‘परिवेदना निवारण प्रबंधन प्रणाली’’ पर शिकायत को दर्ज करना होगा |</li>

                    </ul>


                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 10%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px"><i class="far fa-hand-point-right"></i>&emsp;उद्देश्य :</h4>
                    <ul style="font: bold; list-style-type: none; margin-left: -30px">
                        <li style="background-color: #F0F8FF; padding: 10px 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के निराकरण हेतु ‘‘परिवेदना निवारण प्रबंधन प्रणाली’’ का विकास किया गया है । </li>
                        <li style="background-color: #F8F8FF; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;बच्चों की शैक्षणिक उपलब्धियों के प्रति शासन की प्रतिबद्धता एवं प्राथमिकता दर्शाना एवं समाज को संवेदित करना ।</li>
                        <li style="background-color: #FFFAF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;सभी की समस्याओं के निराकरण के लिए संबंधित कार्यालयों में आने-जाने में समय एवं धन का अपव्यय न करना पड़े।</li>
                        <li style="background-color: #F0FFF0; padding: 10px; border-radius: 10px;"><i class="fa fa-star" aria-hidden="true" style="font-size: 10px"></i>&emsp;सेवानिवृत्त शिक्षकों/कर्मचारियों की सेवा संबंधी समस्याओं के समय-सीमा में निराकरण किए जाने से यह अपेक्षित है कि उक्त शासकीय सेवकों को अपने कार्य करने हेतु प्रोत्साहन प्राप्त होगा तथा विभागीय न्यायालयीन प्रकरणों में कमी आएगी।</li>


                    </ul>



                </fieldset>
            </div>
        </div>




    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

