<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DEO_TransferApproval.aspx.cs" Inherits="mis_Transaction_DEO_TransferApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#DEOTransferApproval" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>DEO Transfer Approval</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>About DEO Transfer Approval</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
             





                <%--<div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"/><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">जिला शिक्षा अधिकारी द्वारा स्थानांतरण अनुमोदन</p>
        </div>
        <div class="col-md-4 align-self-center">

            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="HeadOfficeTransferApproveAplication.aspx"></a>DEO Transfer Approval</li>

                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>--%>
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
                                        <a class="nav-link  text-white " href="DEO_TransferApproval.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                        <li class="nav-item dropdown ">
                                            <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Mutal Transfer Approval</b></a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="../HRMS/DEOMutalTransferApprove.aspx">Mutual Transfer Approve</a></li>

                                                <li><a class="dropdown-item" href="../HRMS/DEOMutalTransferPrint.aspx">Mutual Transfer Print</a></li>


                                            </ul>
                                        </li>

                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />
                    <br />

                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: 30%; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp; स्थानांतरण दिशानिर्देश:-</h4>

                    <div>
                        <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                            <b>1):-</b>जिलों से आए हुए स्वैच्छिक और पारस्परिक स्थानांतरण आवेदन को अनुमोदित करने हेतु संबंधित पेज का उपयोग किया जाता है |<br />
                            <b>2):-</b> कर्मचारी की समस्त जानकारी देखने और पुष्टि होने के उपरांत ही कर्मचारी का स्थानांतरण प्रक्रिया करें |<br />
                            <b>3):-</b> किसी भी प्रकार की अधूरी जानकारी प्राप्त होने पर संबंधित कर्मचारियों को अवगत कराएँ |<br />


                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
