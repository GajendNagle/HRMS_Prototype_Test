<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HeadOfficeTransferApproveAplication.aspx.cs" Inherits="mis_HRMS_HeadOfficeTransferApproveAplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center"> प्रधान कार्यालय द्वारा स्थानांतरण अनुमोदन</p>
        </div>
        <div class="col-md-4 align-self-center">   
  
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item"><a href="HeadOfficeTransferApproveAplication.aspx"></a> Transfer Approval by Head Office</li>

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
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Voluntary Transfer Approval</b></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="HeadOfficeTransferApproval.aspx">View Transfer Request & Approve</a></li>
                                    <li><a class="dropdown-item" href="HeadOfficFinalVoluntaryTransferApprove.aspx">Voluntary Transfer Final Approve</a></li>
                                    <li><a class="dropdown-item" href="HeadOfficeTransferPrint.aspx">Voluntary Transfer Print</a></li>

                                </ul>
                            </li>


                            <li class="nav-item dropdown ">
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Mutal Transfer Approval</b></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="HeadOfficeMutalTransferApprove.aspx">Mutal Transfer Approve</a></li>
                                    <li><a class="dropdown-item" href="HeadOfficeMutalTransferPrint.aspx">Mutal Transfer Print</a></li>

                                </ul>
                            </li>


                        </ul>
                 
                    </div>
                </div>
            </nav>
            <br />
            <br />
             <h4 style="color:brown; background-color:bisque;height:30px; font-weight:bold; width:30%; border-radius: 10px;padding-top:5px;margin-bottom:20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp; स्थानांतरण दिशानिर्देश:-</h4>
              

            <div>
                  <p style="font-weight:bold;background-color:#F0FFF0; padding:20px; border-radius: 10px;" class="font-16" >
                    <b>1):-</b>जिलों से आए हुए स्वैच्छिक और पारस्परिक स्थानांतरण आवेदन को अनुमोदित करने हेतु संबंधित पेज का उपयोग किया जाता है |<br />
                    <b>2):-</b> कर्मचारी की समस्त जानकारी देखने और पुष्टि होने के उपरांत ही कर्मचारी का स्थानांतरण प्रक्रिया करें |<br />
                    <b>3):-</b> किसी भी प्रकार की अधूरी जानकारी प्राप्त होने पर संबंधित कर्मचारियों को अवगत कराएँ |<br />                  

                </p>
            </div>
        </div>
    </div>
   




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

