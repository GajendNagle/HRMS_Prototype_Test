<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_MutualTransferApplication.aspx.cs" Inherits="mis_HRMS_Trn_MutualTransferApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">पारस्परिक स्थानांतरण आवेदन</p>
        </div>
        <div class="col-md-4 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Mutual Transfer Application</li>
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
                            <li class="nav-item dropdown ">
                                <a class="nav-link  text-white " href="Trn_MutualTransferApplication.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle  font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i>
                                        Mutual Transfer Application</b></strong></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                        <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Update Application</a></li>
                                        <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                    </ul>
                                </li>
                                <a class="nav-link  text-white " href="MutualTransferApplicationStatus.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Mutual Transfer Application Status</b></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>




            <br />
            <br />
            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 20%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;पारस्परिक स्थानान्तरण दिशा निर्देश:</h4>

            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b>1) :-</b> आवेदक सभी जानकारियाँ सही-सही और सावधानीपूर्वक प्रविष्ट करें।
                    <br />
                    <b>2) :-</b> आवेदन पत्र का ड्राफ्ट प्रिंट निकालकर उस पर हस्ताक्षर कर अपलोड करना होगा तदुपरान्त आवेदन स्वतः लॉक हो जाएगा।
                    <br />
                    <b>3) :-</b> आवेदन को लॉक करने / स्व-घोषणा पत्र अपलोड करने के उपरांत किसी भी प्रकार का संशोधन स्वीकार नहीं किया जाएगा यदि आपके द्वारा अंतिम तिधि तक स्व-घोषणा पत्र अपलोड नहीं किया जाता है तो आवेदन रद्द किया जा सकेगा।
                    <br />
                    <b>4) :-</b> पारस्परिक आवेदन में पद और विषय समान होना आवश्यक है।
                </p>
            </div>


        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

