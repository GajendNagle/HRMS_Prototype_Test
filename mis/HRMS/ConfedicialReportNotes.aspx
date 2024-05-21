<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ConfedicialReportNotes.aspx.cs" Inherits="mis_HRMS_ConfedicialReportNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>

        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item active">Annual Confidential Report (ACR)</li>
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
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li><a class="nav-link  text-white " href="ConfedicialReportNotes.aspx" role="button"><b class="font-16 font-bold "><i class="fa fa-home "></i></b></a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee ACR </b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ConfedicialReport.aspx">Employee Apply ACR</a></li>
                                    <li><a class="dropdown-item" href="EmployeeDetails.aspx">Print Application </a></li>
                                </ul>
                            </li>
                            <li><a class="nav-link text-white" href="ReportingOfficerFill.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Fill By Reporting  Officer</b></a></li>
                            <li><a class="nav-link text-white" href="AcceptingAuthorityFilled.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Reviewing Fill Accepting Authority </b></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-12">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;वार्षिक गोपनीय रिपोर्ट (एसीआर) :-</h4>
                </div>
            </div>
            <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>

            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b>1)</b>&nbsp; एनुअल कॉन्फिडेंशियल रिपोर्ट के माध्यम से कर्मचारी द्वारा वित्तीय वर्ष में किए गए कार्यों का विवरण Employee Apply ACR फार्म के माध्यम से अपने अधिकारी को प्रस्तुत करता है |<br />
                    <b>2)</b>&nbsp; एनुअल कॉन्फिडेंशियल रिपोर्ट कर्मचारी द्वारा अपने अधिकारी को भेजी जाती है उस रिपोर्ट को देखने के उपरांत अधिकारी कर्मचारी के कार्यों का मूल्यांकन अंकों द्वारा ACR Report Fill By Reporting Officer फार्म के माध्यम से करता है।<br />
                    <b>3)</b>&nbsp; संबंधित अधिकारी कर्मचारी की रिपोर्ट को भरकर अपने उच्च अधिकारी को ट्रांसफर कर देता है |<br />
                    <b>4)</b>&nbsp; उच्च अधिकारी द्वारा ACR Report Reviewing Fill Accepting Authority फार्म के माध्यम से यह देखा है कि अधिकारी द्वारा संबंधित कर्मचारियों को उचित प्रकार से उसके कार्यों का मूल्यांकन किया है या नहीं|<br />
                    <b>5)</b>&nbsp; उच्च अधिकारी अपने रिपोर्ट को फार्म के माध्यम से बनकर तैयार करता है |<br />
                    <br />


                </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

