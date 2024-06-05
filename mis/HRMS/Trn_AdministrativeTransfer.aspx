<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_AdministrativeTransfer.aspx.cs" Inherits="mis_HRMS_Trn_AdministrativeTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">प्रशासनिक स्थानांतरण</p>
        </div>
        <div class="col-md-4 align-self-center">   
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                      <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Administrative Level Transfer</li>
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
                    <div class="collapse navbar-collapse " id="navbarSupportedContent" >
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                            <li class="nav-item dropdown ">
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Transfer Process</b></a>
                                <ul class="dropdown-menu">                                   
                                   
                                    <li><a class="dropdown-item" href="Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                    <li><a class="dropdown-item" href="AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                    <li><a class="dropdown-item" href="AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order</a></li>
                                    <li><a class="dropdown-item" href="AdministrativePrintTransferOrder.aspx">Print Transfer Order</a></li>
                                </ul>
                            </li>
                              <li class="nav-item">
                                  <a class="nav-link text-white " href="Trn_AdministrativePostCodeWithVacancies.aspx" role="button" ><b class="font-16 font-bold">View Post Code With Vacancies</b></a>
                                  </li>
                                 <li class="nav-item dropdown ">
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Report</b></a>
                                <ul class="dropdown-menu">                                   
                                    <li><a class="dropdown-item" href="../Transaction/Rpt_DistWiseCounting.aspx">District Wise Counting</a></li>
                                    <li><a class="dropdown-item" href="../Transaction/Rpt_BlockWiseCounting.aspx">Block Wise Counting</a></li>
                                    <li><a class="dropdown-item" href="Rpt_AdministrativeTransferReport.aspx">Transfer Report</a></li>
                                </ul>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
          <h4 style="color:brown; background-color:bisque;height:30px; font-weight:bold; width:30%; border-radius: 10px;padding-top:5px;margin-bottom:20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;प्रशासनिक स्थानांतरण दिशानिर्देश:-</h4>

            <div>
                <p style="font-weight:bold;background-color:#F0FFF0; padding:20px; border-radius: 10px;" class="font-16" >
                    <b>1) :-</b> आवेदकों से अनुरोध है कि समस्त जानकारी सावधानी पूर्वक और सही-सही भरें |<br />
                    <b>2) :-</b> आवेदकों से अनुरोध है कि वह विभाग द्वारा जारी स्थानांतरण नीति के प्रावधानों के अनुसार ही ऑनलाइन आवेदन पत्र दर्ज करें |<br />
                    <b>3) :-</b> आवेदन पत्र भरने के बाद ड्राफ्ट आवेदन घोषणा पत्र प्रिंट कर उसे पर हस्ताक्षर कर PDF के रूप में अपलोड करने के उपरांत ही आवेदन स्वीकार किया जाएगा |<br />                
                    <b>4) :-</b> फॉर्म को भरने के पूर्व फॉर्म संबंधी समस्त दस्तावेज साथ में लेकर बैठे ताकि असुविधा से बचा जा सके।<br />
                    <b>5) :-</b> आवेदन पत्र में पीडीएफ फॉरमैट का साइज (500 KB) से अधिक न हो |<br />
                </p>
            </div>
        </div>
       
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

