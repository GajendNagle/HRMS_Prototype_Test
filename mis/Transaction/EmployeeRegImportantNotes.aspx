<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeRegImportantNotes.aspx.cs" Inherits="mis_Transaction_EmployeeRegImportantNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#Employee" id="employeeBreadcrumb" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Registration</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>About Employee Registration</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">About Employee Registration
                        <br />
                        कर्मचारी पंजीकरण के बारे में
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <%--<nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">


                            <a class="nav-link  text-white " href="EmployeeRegImportantNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <a class="nav-link  text-white " href="EmployeeRegistration.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>&nbsp;कर्मचारी पंजीकरण</b></a>
                         
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />--%>
            <div class="row">
                <div class="col-md-12">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>
                </div>
            </div>
            <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>

            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b>1)</b> &nbsp;समस्त जानकारी सावधानीपूर्वक और सही-सही भरें |<br />
                    <b>2)</b> &nbsp;आवेदन पत्र में गलत जानकारी प्राप्त होने पर आवेदन को निरस्त कर दिया जाएगा |<br />
                    <b>3)</b> &nbsp;फॉर्म को भरने के पूर्व फॉर्म संबंधी समस्त दस्तावेज साथ में लेकर बैठे ताकि असुविधा से बचा जा सके।<br />
                    <b>4)</b> &nbsp;फोटोग्राफ (JPG format) 700kb और सभी प्रकार के प्रमाण पत्र  (PDF Format) 700kb  में होना चाहिए
                    <br />


                </p>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

