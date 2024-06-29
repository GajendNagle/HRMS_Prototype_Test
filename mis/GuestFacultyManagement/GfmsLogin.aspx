<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GfmsLogin.aspx.cs" Inherits="mis_GuestFacultyManagement_GfmsLogin" %>

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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Applicant's Login</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
    <fieldset>
        <legend>अनुभव प्रमाण पत्र प्राप्त करने की प्रक्रिया</legend>
        <div class="row">
            <div class="col-md-12">
                <div class="fs-5" style="font-family:'Aparajita'; font-weight:bold">
                    <ol class="ul">
                        <li>सर्व प्रथम अपना अनुभव प्रमाण पत्र का दावा बनाए|</li>
                        <li>अनुभव प्रमाण पत्र का दावा बनाने हेतु पूर्व मैंने संचालित सिस्टम की Guest Id, जन्म तिथि, कार्यरत शाला का UDISE Code और कार्यरत र्शैक्षणिक सत्र की जानकारी होना आवश्यक है|</li>
                        <li>शाला का UDISE Code यहा से पता
                    करे |</li>
                        <li>पूर्व मैंने संचालित सिस्टम की Guest Id, जन्म तिथि और कार्यरत र्शैक्षणिक सत्र की जानकारी यहा से पता करे |</li>
                        <li>अनुभव प्रमाण पत्र का दावा यहा से करे |</li>
                        <li>
जानकारी को अपडेट करने के लिए <a href="/mis/GuestFacultyManagement/ProfileViewGFMS.aspx" class="text-primary">Update Information</a>पर क्लिक करे</li>
                    </ol>
                </div>
            </div>
        </div>
    </fieldset>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

