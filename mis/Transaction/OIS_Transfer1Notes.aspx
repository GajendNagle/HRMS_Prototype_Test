<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="OIS_Transfer1Notes.aspx.cs" Inherits="mis_Transaction_OIS_Transfer1Notes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Automatic Transfer System <br />स्वचालित स्थानांतरण प्रणाली
</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Automatic Transfer System</li>
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
                            <li>

                                <a class="nav-link  text-white " href="OIS_Transfer1Notes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                            <li>

                                <a class="nav-link  text-white " href="OIS_Transfer1.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>OIS Generate Transfer
                                </b></a>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-12">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;ऑटोमेटिक ट्रांसफर प्रणाली आवश्यक बिन्दु :-</h4>
                </div>
            </div>
            <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>

            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b>1)</b>&nbsp; इस प्रक्रिया में कंप्यूटर द्वारा ऑनलाइन ऑटोमेटिक ट्रांसफर प्रणाली से ट्रांसफर किया जाता है |<br />
                    <b>2)</b>&nbsp; मुख्य कार्यालय द्वारा समय-समय पर जिस कर्मचारी/ अधिकारी को एक ही स्थान पर  3 साल से अधिक हो जाता है तो शासन के निर्देशानुसार उन समस्त कर्मचारियों का ट्रांसफर करने हेतु Automatic Transfer System पेज का प्रयोग किया जाता है |<br />
                    <b>3)</b>&nbsp; संबंधित पेज के अंतर्गत यदि डेजिग्नेशन, जिले और ब्लॉक अनुसार कर्मचारियों का चयन हेतु सर्च  किया जाता हैं |<br />
                    <b>4)</b>&nbsp; सर्च करने पर समस्त कर्मचारी को कंप्यूटर द्वारा स्वतः ही स्थानांतरण स्थान प्रदान किए जाते हैं , और लिस्ट में दिखाई देने लग जाता हैं |
                            <br />
                    <b>5)</b>&nbsp; यदि मुख्य कार्यालय द्वारा ट्रांसफर किया जाना है तो चेक बॉक्स पर क्लिक कर जिनके कर्मचारियों का ट्रांसफर करना है उन कर्मचारियों के सामने चेक बॉक्स पर क्लिक कर ऑर्डर डेट, इफेक्टिव डेट, रिलीविंग डेट और रिमार्क को प्रविष्ट कर ट्रांसफर प्रक्रिया को संपन्न किया जा सकता हैं |
                    <br />


                </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

