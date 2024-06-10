<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ApplicationForVoluntaryTransfer.aspx.cs" Inherits="mis_HRMS_ApplicationForVoluntaryTransfer" %>

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
                            <a href="#VoluntaryTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Voluntary Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">Application For Voluntary Transfer</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">Application For Voluntary Transfer / स्वैच्छिक स्थानांतरण हेतु आवेदन</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            
            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 20%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;स्वैच्छिक स्थानांतरण दिशानिर्देश:-</h4>

            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b>1):-</b> आवेदकों से अनुरोध है कि समस्त जानकारी सावधानी पूर्वक और सही-सही भरें |<br />
                    <b>2):-</b> आवेदकों से अनुरोध है कि वह विभाग द्वारा जारी स्थानांतरण नीति के प्रावधानों के अनुसार ही ऑनलाइन आवेदन पत्र दर्ज करें |<br />
                    <b>3):-</b> आवेदन पत्र भरने के बाद ड्राफ्ट आवेदन घोषणा पत्र प्रिंट कर उसे पर हस्ताक्षर कर PDF के रूप में अपलोड करने के उपरांत ही आवेदन स्वीकार किया जाएगा |<br />
                    <b>4):-</b> आवेदन पत्र में गलत जानकारी प्राप्त होने पर आवेदन को निरस्त कर दिया जाएगा |<br />
                    <b>5):-</b> फॉर्म को भरने के पूर्व फॉर्म संबंधी समस्त दस्तावेज साथ में लेकर बैठे ताकि असुविधा से बचा जा सके।<br />
                    <b>6):-</b> आवेदन पत्र में पीडीएफ फॉरमैट का साइज (500 KB) से अधिक न हो |<br />
                    <b>7):-</b> यदि आवेदक स्वच्छ स्थानांतरण होने के पश्चात आगामी तीन शैक्षणिक शास्त्र तक विशेष परिस्थितियों को छोड़कर ऐसे शिक्षकों के स्वैच्छिक स्थानांतरण आवेदन पर विचार नहीं किया जाएगा |<br />
                    <b>8):-</b> यदि आवेदक द्वारा अंतिम तिथि तक स्व-घोषणा पत्र अपलोड नहीं किया गया तो आवेदन स्वतः  ही रद्द हो जाएगा |<br />
                    <b>9):-</b> आवेदन पत्र में गलत जानकारी प्राप्त होने पर आवेदन को निरस्त कर दिया जाएगा |<br />

                </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

