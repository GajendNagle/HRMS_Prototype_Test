<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_MutualTransferApplication.aspx.cs" Inherits="mis_HRMS_Trn_MutualTransferApplication" %>

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
                            <a href="#EmployeeMutualTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Mutual Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">About Mutual Transfer</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -2rem;">
            <img src="../../img/OTTMS.png" style="height: 88px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">About Mutual Transfer / पारस्परिक स्थानांतरण के बारे में</h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 20%; border-radius: 10px; padding-top: 5px; margin-bottom: 18px" class="font-18"><i class="far fa-hand-point-right"></i>&emsp;पारस्परिक स्थानान्तरण दिशा निर्देश:</h4>

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

