<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_CancleTransferOrderApplication.aspx.cs" Inherits="mis_Transaction_Trn_CancleTransferOrderApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Cancel Transfer Order<br />
                स्थानांतरण आदेश रद्द करें</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Cancel Transfer Order</li>
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
                            <a class="nav-link  text-white " href="Trn_CancleTransferOrderApplication.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <a class="nav-link  text-white " href="Trn_CancelTransferOrder.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                Cancel Transfer Order</b></a>
                            <a class="nav-link  text-white " href="CanceledTransferOrderPrint.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Print Cancel Transfer Order</b></a>
                            <a class="nav-link  text-white " href="Rpt_CancelTransfer.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b></a>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 30%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;स्थानांतरण आदेश को निरस्त कराने हेतु आवश्यक बिन्दु :-</h4>
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

