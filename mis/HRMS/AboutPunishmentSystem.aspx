<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AboutPunishmentSystem.aspx.cs" Inherits="mis_HRMS_AboutPunishmentSystem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
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
                            <a href="#Punishment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>PUNSIHMENT SYSTEM </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>ABOUT PUNSIHMENT SYSTEM</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
     <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">About Punishment System /
                     निलम्बन व्यवस्था के बारे में
                    </h5>
                </div>
            </div>
        </div>

        <div class="card-body">

            <div class="row">
                <div class="col-md-6">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;Note</h4>
                </div>
            </div>
            <div>
                <p style="background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b class="fs-4">1. </b>निम्नानुसार लोकसेवकों की जानकारी का परीक्षण कर लें यदि किसी प्रकार की त्रुटि परिलक्षित होती है। तो उस लोकसेवक का कार्ड जारी न करें |<br />
                    <b class="fs-4">2.</b>कर्मचारी की जानकरी अपूर्ण होने पर नाम के सम्मुख दिए गये चेक बॉक्स हटा दें, व विशेष रूप से ध्यान दे की  अपूर्ण जानकारी के आभाव में आई.डी जनरेट न करें |<br />
                    <b class="fs-4">3.</b> ID Card  पर मेनुअली हस्ताक्षर भी प्रिंट होगे इसलिए यहाँ एक पेपर पर हस्ताक्षर करके स्कैन करे तदुपरांत "Upload Signature" आप्शन से अपलोड करे JPEG में या PNG साइज़ (60px*30px)<br />
                    <b class="fs-4">4.</b> जिन कर्मचारियों की जानकारी पूर्ण नहीं है उन कर्मचारियों की जानकारी पूर्ण रूप से अपडेट करवा कर आईडी जेनरेट करें |<br />
                    <b class="fs-4">5.</b> चेक बॉक्स लगाने के उपरांत Approve बटन पर क्लिक करें पर  डिजिटल हस्ताक्षर करने के लिए यूटिलिटी का उपयोग करें।<br />
                </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

