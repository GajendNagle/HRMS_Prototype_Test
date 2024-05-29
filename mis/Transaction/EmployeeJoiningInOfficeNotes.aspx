<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeJoiningInOfficeNotes.aspx.cs" Inherits="mis_Transaction_EmployeeJoiningInOfficeNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Employee Joining In Office</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Employee Joining In Office</li>
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

                                <a class="nav-link  text-white " href="EmployeeJoiningInOfficeNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                            <li>

                                <a class="nav-link  text-white " href="EmployeeJoiningInOffice.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee Joining In Office
                                </b></a>
                            </li>

                            <li>

                                <a class="nav-link  text-white " href="Rpt_EmployeeJoining.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                    Report
                                </b></a>

                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-12">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;कार्यालय में शामिल होने वाला कर्मचारी आवश्यक बिन्दु :-</h4>
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

