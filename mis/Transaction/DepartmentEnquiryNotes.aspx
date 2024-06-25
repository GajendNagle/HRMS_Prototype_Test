<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DepartmentEnquiryNotes.aspx.cs" Inherits="mis_Transaction_DepartmentEnquiryNotes" %>

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
                            <a href="#DepartmentalEnquiry" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Departmental Enquiry</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>About Departmental Enquiry</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
            <img src="../../img/Departmental%20Enquiry.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u>
            </u>
        </p>
    </div>

   
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">About Departmental Enquiry /
                                विभागीय पूछताछ के बारे में</h4>
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
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiryNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ
                                        </b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiryList.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ सूची
                                        </b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="Rpt_DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ रिपोर्ट
                                        </b></a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />
                    <br />
                    <br />--%>
                    <div class="row">
                        <div class="col-md-12">
                            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;विभाग पूछताछ :-</h4>
                        </div>
                    </div>
                    <div>
                        <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                            <b>1)</b>&nbsp; यदि किसी कर्मचारी के प्रति किसी भी प्रकार की शिकायत या दोष पाया जाता है तो विभाग के उच्च अधिकारियों द्वारा कर्मचारी के खिलाफ विभागीय जांच की जाती हैं |<br />
                            <b>2)</b>&nbsp; डिपार्टमेंट इंक्वायरी पेज के माध्यम से अधिकारी कर्मचारी की समस्त जानकारी दिए हुए फॉर्म में प्रविष्ट करते हैं और जानकारी को सेव करते हैं |<br />
                            <b>3)</b>&nbsp; अधिकारी द्वारा कार्यालय में कितने कर्मचारी पर डिपार्टमेंट इंक्वारी चल रही है उसकी रिपोर्ट भी डिपार्टमेंट इंक्वारी रिपोर्ट के माध्यम से देखी जा सकती है |<br />
                            <br />


                        </p>
                    </div>
                </div>
            </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

