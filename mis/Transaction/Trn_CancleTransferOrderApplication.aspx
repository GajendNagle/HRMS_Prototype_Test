<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_CancleTransferOrderApplication.aspx.cs" Inherits="mis_Transaction_Trn_CancleTransferOrderApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#CancelTransferOrder" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Cancel Transfer Order</span></a>
                        </li>
                        <li class="breadcrumb-item">About Cancel Transfer Order</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">About Cancel Transfer Order /
                स्थानांतरण आदेश निरस्त करने के बारे में</h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 30%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-18"><i class="far fa-hand-point-right" style="font-size:22px"></i>&emsp;स्थानांतरण आदेश को निरस्त कराने हेतु आवश्यक बिन्दु :-</h4>
            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b>1):-</b>यदि किसी शिक्षक का बरीयता के आधार पर ट्रान्सफर हुआ है ओर आधार हेतु उपलब्ध जानकारी गलत है तो संकुल प्राचार्य द्वारा होल्ड लगाने के उपरांत राज्य स्तर से ट्रान्सफर निरस्त किया जाएगा | पृथक से आवेदन की आवश्यकता नहीं है |<br />
                    <b>2):-</b> यदि कोई वरीयता के आधार पर ट्रान्सफर नहीं हुआ है ओर वह रिलीव भी नहीं हुआ है तो शिक्षक अपने लॉगिन आई डी पासवर्ड का उपयोग करते हुए सीधे पोर्टल पर आवेदन कर सकेगा |<br />
                    <b>3):-</b>यदि शिक्षक को रिलीव कर दिया गया है ओर वह अब तक नवीन पदांकित स्थल पर जॉइन नहीं हुआ है वह अपने लॉगिन आई डी पासवर्ड का उपयोग करते हुए सीधे पोर्टल पर आवेदन कर सकेगा |<br />
                    <b>4):-</b>यदि शिक्षक को रिलीव कर दिया गया है ओर नवीन पदांकित स्थल पर जॉइन मे होल्ड लगा दिया गया है तो वह अपने लॉगिन आई डी पासवर्ड का उपयोग करते हुए सीधे पोर्टल पर आवेदन कर सकेगा |<br />
                </p>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

