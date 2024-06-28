
<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ConfedicialReportNotes.aspx.cs" Inherits="mis_HRMS_ConfedicialReportNotes" %>

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
                            <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>About ACR </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <%--  <div class="row page-titles mb-4">--%>
  <%--  <div class="row page-titles mb-4">--%>
  <div class="row">
      <div class="col-md-5 ">
          <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
      </div>
  </div>    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4>
                         Annual Confidential Report /वार्षिक गोपनीय रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
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

