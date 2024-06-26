<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AnnualPropertyDetails.aspx.cs" Inherits="mis_Transaction_AnnualPropertyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/ID%20CARD.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item active">Annual Property Details</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
            <h2>सम्पति विवरण सम्बन्धी दिशा निर्देश</h2>
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li>

                                <a class="nav-link  text-white " href="AnnualPropertyDetails.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="AnnualPropertyDetailsForm.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Fill Employee APR Form</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="AnnualPropertyDetailReport.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Print Employee APR Form</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="UploadAprForm.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Upload Employee APR Form</b></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />


            <div class="row">
                <div class="col-md-12">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;सम्पति विवरण सम्बन्धी दिशा निर्देश:-</h4>
                </div>
            </div>
            <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>
            <p style="font-weight: bold; background-color: #F0FFF0; border-radius: 10px;" class="font-16">
                <b>1)</b>&nbsp; कृपया अचल संपत्ति के विवरण को PDF Format में ही अपलोड करें |<br />
                <b>2)</b>&nbsp; कृपया अचल संपत्ति के विवरण पेज को अपलोड करने से पहले फाइल का साइज़ जांच ले ।<br />
                <b>3)</b>&nbsp; अचल संपत्ति के विवरण पेज का साइज़ 200 KB (Kilo Bytes) से अधिक का नहीं होना चाहिए |<br />
                <b>4)</b>&nbsp; सभी प्राप्त प्रपत्रों को black & white मे 75 DPI या 150 DPI Resolution मे स्कैन करा कर 150-200 KB तक की PDF फ़ारमैट फ़ाइल को Portal पर अपलोड करें |<br />
                <b>5)</b>&nbsp; स्कैन करते समय ध्यान दे की फ़ाइल को black and white मे ही स्कैन किया जा रहा है एवं RESOLUTION की सेटिंग 75DPI या 150 DPI ही है। इन सेटिंग्स से फ़ाइल 150 से 200 KB तक की है बनेगी। छोटी फ़ाइल को अपलोड करने मे भी कम समय लगेगा| |<br />
                <br />


            </p>
            <%-- <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b> मध्यप्रदेश शासकीय सेवक (आचरण) नियम, 1959 के नियम 18 (3) के अधीन प्रथम श्रेणी, द्वितीय श्रेणी तथा तृतीय श्रेणी सेवा के प्रत्येक सदस्य से यह अपेक्षित है कि यह सेवा में पहली नियुक्ति के समय और उसके बाद प्रत्येक बारह महीने की अवधि के पश्चात् यह घोषणा-पत्र भर कर प्रस्तुत करें और उसमें वह उनके स्वामित्व को तथा उसके  द्वारा अर्जित अथवा उसे विरासत में मिली या उसके अपने नाम पर उसके परिवार के किसी सदस्य के नाम पर या किसी अन्य व्यक्ति के नाम पर पट्टे या बंधक पर उसके द्वारा धारित समस्त अचल संपति का ब्यौरा दे |   </b>
                </p>
            </div>--%>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

