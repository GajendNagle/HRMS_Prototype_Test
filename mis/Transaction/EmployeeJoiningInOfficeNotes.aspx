<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeJoiningInOfficeNotes.aspx.cs" Inherits="mis_Transaction_EmployeeJoiningInOfficeNotes" %>

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
                            <a href="#EmployeeJoiningInOffice" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Joining In Office</span></a>
                        </li>
                        <li class="breadcrumb-item">About Employee Joining</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">About Employee Joining /
कर्मचारी ज्वाइनिंग के बारे में</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom:0px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;कार्यालय में शामिल होने वाला कर्मचारी आवश्यक बिन्दु :-</h4>
                </div>
            </div>
            <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>

            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b>1)</b>&nbsp; एक स्थान से दूसरे स्थान पर हुए कर्मचारियों के स्थानांतरण के बाद सम्बंधित ऑफिस या स्कूल में कर्मचारियों अपने रिपोर्टिंग ऑफिसर को ज्वाइनिंग देता है |<br />
                    <b>2)</b>&nbsp; एम्पलाई जॉइनिंगइन ऑफिस पेज के माध्यम से रिपोर्टिंग ऑफिसर ट्रांसफर द्वारा आए हुए कर्मचारी को अपनी रिपोर्ट में सर्च करेगा |<br />
                    <b>3)</b>&nbsp; सर्च करने के उपरांत कर्मचारी की जानकारी दिखने लग जाएगी |<br />
                    <b>4)</b>&nbsp; संबंधित अधिकारी एंप्लॉय के सामने प्रदर्शित जॉइनिंग बटन पर क्लिक करके एंप्लॉय की जॉइनिंग डेट को रिमार्क डालकर अप्रूव करेगा |
                           <br />
                    <b>5)</b>&nbsp; जॉइनिंग अप्रूव होने के उपरांत कर्मचारी की सर्विस बुक व कर्मचारी की प्रोफाइल में  करंट लोकेशन ऑटोमेटिक अपडेट हो जाए |
                   <br />


                </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

