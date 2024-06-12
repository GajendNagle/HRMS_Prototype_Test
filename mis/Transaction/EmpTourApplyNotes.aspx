<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpTourApplyNotes.aspx.cs" Inherits="mis_Transaction_EmpTourApplyNotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style> #workdescription1 {
     resize: vertical;
     min-height: 40px; /* Set a minimum height */
 }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="content-wrapper">
        <!-- Main content -->
        <div class="container-fluid">
            <div class="row page-titles mb-4">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">Tour Apply</h4>
                </div>
                <div class="col-md-7 align-self-center text-end">
                    <div class="d-flex justify-content-end align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                            <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Tour" title="click to go on">Tour</a></li>
                            <li class="breadcrumb-item active">Tour Apply</li>
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
                                    <li>
                                        <a class="nav-link  text-white " href="EmpTourApplyNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                    </li>
                                    <li>
                                        <a class="nav-link  text-white " href="EmpTourApply.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i><%--Tour Applyयात्रा के लिए आवेदन करें</b></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <br />--%>

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
                        <a href="#Tour" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>Tour</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Tour Apply</span></li>
                </ol>
            </div>
        </div>
    </div>
<div class="content-wrapper">
    <div class="container-fluid">
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="card-title">Tour Apply/यात्रा के लिए आवेदन करें</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;Tour Apply दिशानिर्देश :-</h4>
                        </div>
                    </div>
                    <div>
                        <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                            <b>1)</b>&nbsp; कर्मचारी द्वारा विभाग के कार्य के लिए एक स्थान से दूसरे स्थान पर जाने के लिए अपने विभाग प्रमुख से परमिशन के लिए टूर अप्लाई संबंधी फॉर्म को भरता है ।<br />
                            <b>2)</b>&nbsp; संबंधित फार्म को भरने के उपरांत वह फॉर्म को अपने अधिकारी को फॉरवर्ड कर देता है |<br />
                            <b>3)</b>&nbsp; कर्मचारी द्वारा भरे हुए फॉर्म को अधिकारी अपने पैनल लॉगिन आईडी से देख सकता है, और टूर पर जाने के लिए कर्मचारी को परमिशन दे सकता है |<br />
                            <b>4)</b>&nbsp; यदि किसी कारणवश अधिकारी कर्मचारी को टूर पर नहीं भेजना चाहता तो संबंधित अधिकारी उसकी रिक्वेस्ट को रिजेक्ट भी कर सकता है,  रिक्वेस्ट को रिजेक्ट करते समय अधिकारी उसमें रिमार्क डालकर सेफ करता है। 
                            <br />
                            <b>5)</b>&nbsp; अधिकारी द्वारा टूर को अप्रूव या रिजेक्ट करने की स्थिति में संबंधित कर्मचारी टूर का स्टेटस को टूर स्टेटस रिपोर्ट से देख सकता है। 
                            <br />
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

