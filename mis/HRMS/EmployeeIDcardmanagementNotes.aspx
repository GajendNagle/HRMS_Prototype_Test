<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeIDcardmanagementNotes.aspx.cs" Inherits="mis_EmployeeIDcardmanagementNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/IDCARD.png" style="height: 60px" title="Employee ID Card Management System"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item active">Employee ID Card Management System</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">

        <div class="card-body">
             <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li class="nav-item dropdown ">
                                <a class="nav-link  text-white " href="EmployeeIDcardmanagementSystem.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>

                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                        Employee ID Card Management</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="EmployeeIDcardmanagementSystem.aspx">Employee ID Card Management System</a></li>
                                        <li><a class="dropdown-item" href="GenerateIDCard.aspx">Print Employee ID Card</a></li>
                                        <li><a class="dropdown-item" href="EmployeeIDcardMissingDetails.aspx">Employee Missing Details</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="DistrictwiseIDCardProgress.aspx">District Wise ID Card Progress Report</a></li>
                                        <li><a class="dropdown-item" href="BlockwiseIDCardProgress.aspx">Block Wise ID Card Progress Report</a></li>
                                         <li><a class="dropdown-item" href="SchoolwiseIDCardProgress.aspx">School Wise ID Card Progress Report</a></li>
                                    </ul>
                                </li>
                        </ul>
                    </div>
                </div>
            </nav><br />
            <div class="row">
                <div class="col-md-12">
                    <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;Note</h4>
                </div>
            </div>
            <div>
                <p style="background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                    <b class="fs-4">1. </b>निम्नानुसार लोकसेवकों की जानकारी का परीक्षण कर लें यदि किसी प्रकार की त्रुटि परिलक्षित होती है। तो उस लोकसेवक का कार्ड जारी न करें |<br />
                    <b class="fs-4">2.</b>कर्मचारी की जानकरी अपूर्ण होने पर नाम के सम्मुख दिए गये चेक बॉक्स हटा दें, व विशेष रूप से ध्यान दे की  अपूर्ण जानकारी के आभाव में आई.डी जनरेट न करें |<br />
                    <b class="fs-4">3.</b> ID Card  पर मेनुअली हस्ताक्षर भी प्रिंट होगे इसलिए यहाँ एक पेपर पर हस्ताक्षर करके स्कैन करे तदुपरांत "Upload Signature" आप्शन से अपलोड करे JPEG में या PNG साइज़ (60px*30px)<br />
                    <b class="fs-4">4.</b> जिन कर्मचारियों की जानकारी पूर्ण नहीं है उन कर्मचारियों की जानकारी पूर्ण रूप से अपडेट करवा कर आईडी जेनरेट करें |<br />
                    <b class="fs-4">5.</b> चेक बॉक्स लगाने के उपरांत Approve बटन पर क्लिक करें पर  डिजिटल हस्ताक्षर करने के लिए यूटिलिटी का उपयोग करें।<br />
                </p>
            </div>
          




        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

