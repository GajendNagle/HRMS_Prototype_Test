<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TransferCertificate_View.aspx.cs" Inherits="mis_Scheme_TransferCertificate_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Transfer Certificate View</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item"><a href="TransferCertificate.aspx" title="click to go on">Transfer Certificate</a></li>
                        <li class="breadcrumb-item active">Transfer Certificate Print </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>--%>

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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#StudentManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Student Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Transfer Certificate</li>
                        <li class="breadcrumb-item">Transfer Certificate Print</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Transfer Certificate Print /
        
स्थानांतरण प्रमाणपत्र प्रिंट</h4>
                </div>
            </div>
        </div>
        <div class="card-body" id="printableArea">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Transfer Certificate / स्थानांतरण प्रमाणपत्र</legend>
                <div style="text-align: center;" class="card">
                    <div style="text-align: end;" class="row justify-content-center">
                        <div class="col-md-4">
                            <img src="../dist/images/icon/MP_LOGO.svg" width="100" height="100" alt="homepage" class="light-logo">
                        </div>
                        <div style="text-align: center;" class="col-md-4 justify-content-center">

                            <h3>GMS Patniya (Class 1 to 8)</h3>
                            <p>AMARWADACHHINDWARA </p>
                            <p>स्कूल डाइस कोड 23430909703</p>
                            <h5>शाला स्थानांतरण प्रमाण पत्र</h5>
                            <p>--------------</p>
                        </div>
                        <div style="text-align: left;" class="col-md-4">
                            <img style="height: 93px;" src="../dist/images/login/qr_code.png" />
                        </div>
                    </div>
                    <hr />
                    <p>क्रमांक: ---------------------------------------- </p>
                    <div class="row">
                        <div class="col-md-12">
                            <p>प्रमाणित किया जाता हैं कि श्री कुमारी -------------------------------------------------------------------  </p>
                            <p>पिता का नाम श्री ------------------------ जाति -----------  माता का नाम------------------------------  </p>
                            <p>मातृभाषा -------------------- शाला का नाम --------------------------------------------------------  </p>
                            <p>विकास खण्ड का नाम: --------------------------  जिला का नाम --------------------------------------- </p>
                            <p>मे तारीख   ------------------- से ------------- तक उपस्थित रहा रही ओर अब आज तारीख  ---------------- </p>
                            <p>को शाला छोड़ता छोड़ती हैं| </p>
                            <p>शाला मे प्रवेश पंजी क्रमांक -------------------  के अनुसार उसकी जन्म तारीख -------------------------------  </p>
                            <p>(अंको मे) -------------------  शब्दो मे ------------------------------------------------------------ </p>
                            <p style="font-weight: 400">उसको टीका लगाया जा चुका है या अन्यथा चेचक के प्रकोप से सुरक्षित है। उसके द्वारा उत्तीर्ण वार्षिक कक्षोन्नति परीक्षा इस प्रकार है। </p>
                            <p>कक्षा 1 --------------------  माध्यम ------------------  वर्ष ---------------------------------------  </p>
                            <p>मे प्रवेश दिया गया था। उसका आचरण-  ----------------------------------------------------------------था </p>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div style="text-align: left;" class="col-md-3">
                            <h3>कक्षाध्यापक</h3>
                            <p>दिनांक:- 05/04/2024  </p>

                        </div>
                        <div style="text-align: end;" class="col-md-3">
                            <h3>प्राचार्य/ प्रधानाध्यापक</h3>
                            <p>
                                GMS Patniya (Class 1 to S) 
                            </p>
                            <p>AMARWADA,CHHINDWARA </p>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-3">
                <a class="Alert-ApproveT btn btn-success btn-border" href="#" title="External Link" onclick="printDiv('printableArea')" target="_blank">Print Transfer Certificate  </a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }
    </script>
</asp:Content>

