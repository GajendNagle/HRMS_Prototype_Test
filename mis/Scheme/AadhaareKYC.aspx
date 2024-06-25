<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AadhaareKYC.aspx.cs" Inherits="mis_Scheme_AadhaareKYC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        ody {
            padding: 0;
            margin: 0;
            /*font-family: 'Lato', sans-serif;*/
            color: #000;
        }

        .student-profile .card {
            border-radius: 10px;
        }

            .student-profile .card .card-header .profile_img {
                width: 150px;
                height: 150px;
                object-fit: cover;
                margin: 10px auto;
                border: 10px solid #ccc;
                border-radius: 50%;
            }

            .student-profile .card h3 {
                font-size: 20px;
                font-weight: 700;
            }

            .student-profile .card p {
                font-size: 16px;
                color: #000;
            }

        .student-profile .table th,
        .student-profile .table td {
            font-size: 14px;
            padding: 5px 10px;
            color: #000;
        }
    </style>
    <style>
        body {
            margin: 0;
            padding: 0;
            /*font-family: 'Roboto Condensed', sans-serif;*/
        }

        /* Overlay Styles */
        .overlay {
            background: rgba(0,0,0,0.8);
            opacity: 0.8;
            filter: alpha(opacity=80);
            position: absolute;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            z-index: 100;
        }

        /* Popup */
        .popup {
            background: white;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            z-index: 101;
            width: 580px; /*Change your width here*/
            height: 330px; /*Change your height here*/
            margin: auto;

            @media(max-width:768px) {
                width:90%;
                margin:auto 5%;
            }
            /* Popup Inner */
            .popup-inner

        {
            position: relative;
            padding: 1em;
            input .s3-btn-close

        {
            position: absolute;
            top: -0.5em;
            right: -0.5em;
            background: black;
            border: solid 2px white;
            color: white;
            cursor: pointer;
            border-radius: 15px;
            outline: none;
        }

        // s3-btn-close
        }
        // popup-inner
        }

        // popup
        /*************
  S3 Button
*************/
        input.s3-btn {
            background: #f1f1f1;
            border: none;
            width: 200px;
            height: 50px;
            cursor: pointer;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            margin: auto;
        }

        .s3-center {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Aadhaar e-KYC</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                          <li class="breadcrumb-item"><a href="StudentDetailseKYC.aspx" title="click to go on">Student Detailse KYC</a></li>
                        <li class="breadcrumb-item active">Aadhaar e-KYC</li>
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
                            <a href="#CycleDistribution" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>E-KYC </span></a>
                        </li>
                        <li class="breadcrumb-item">Student Details kyc</li>
                        <li class="breadcrumb-item">Aadhaar e-KYC</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">Aadhaar e-KYC /
  आधार ई-केवाईसी</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Aadhaar e-KYC / आधार ई-केवाईसी</legend>
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="font-weight-bold">
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                एतद्वारा कह‌ता कहती हूं कि मुझे आधार आधारित प्रमाणीकरण प्रणाली के साथ खुद को प्रमाणित करने में कोई आपत्ति नहीं है और शिक्षा संबंधी सेवाएँ प्राप्त करने के प्रयोजनों के लिए आधार आधारित प्रमाणीकरण के लिए अपना आधार नंबर, बायोमेट्रिक और/या वन-टाइम पासवर्ड (ओटीपी) डेटा प्रदान करने की सहमति है। मुझे शात है कि प्रमाणीकरण के लिए में जो आधार संतमा बापोमेट्रिक्स और पा. ओटीपी प्रदान करता करती हूं. है. उसका उपयोग शिक्षा संबंधी सेवाओं के लिए किया जाएगा। । में समझता समझती हूँ कि स्कूत शिक्षा विभाग म. प्र. सासन, आधार आधारित प्रमाणीकरण के उद्देश्य से प्रदान किए गए मेरे व्यक्तिगत पहचान डेटा की सुरक्षा और गोपनीयता सुनिश्चित करेंगे।
                             <span style="color: red">*</span></label>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">आवेदक का 12 अंको का आधार नंबर :-<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="12 अंकों का आधार नंबर" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">पुनः प्रविष्ट करें आवेदक का 12 अंकों का आधार नंबर :-<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="12 अंकों का आधार नंबर" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <asp:Button runat="server" Text="ОТР के माध्यम से ईकेवाईसी" ID="sendotp" OnClick="sendotp_Click" class="btn btn-success btn-rounded s3-btn" />
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <a href="#" class="btn btn-block btn-danger btn-rounded">बायोमेट्रिक के माध्यम से ईकेवाईसी</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <!-- Overlay -->
    <div class="overlay" id="overlay" style="display: none;"></div>
    <!-- Popup -->
    <div class="popup" id="popup" style="display: none;">
        <div class="popup-inner">
            <input type="button" name="Close" class="s3-btn-close" onclick="popupClose();" value="&times;">
            <fieldset>
                <legend>Aadhaar e-KYC / आधार ई-केवाईसी</legend>
                <div class="row justify-content-center">
                    <div class="col-md-3">

                        <label>6 Digit OTP: </label><span style="color: red">*</span>  
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" maxlength="6" class="form-control" autocomplete="off" placeholder="6 Digit OTP" />
                        </div>
                    </div>
                </div>
                <h6>An OTP (One time password) has been sent to your registered mobile number *******3637 with your Aadhaar Number</h6><br />
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <asp:Button Text="Validate OTP" OnClick="Button3_Click" type="button" runat="server" ID="Button3" class="btn btn-success"></asp:Button>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <!-- Student Profile -->
    <div class="card mt-3 shadow" runat="server" id="Studendetails" visible="false">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student details / छात्र विवरण</legend>
                <div class="student-profile ">
                    <div>
                        <div class="row justify-content-center">
                            <div class="col-lg-2">
                                <div class="card shadow-sm">
                                    <div class="card-header bg-transparent text-center">

                                        <img class="profile_img" src="../dist/images/avatar-13.png" alt="">
                                    </div>
                                    <h4 style="font-weight: bold; text-align: center; color: maroon !important;" class="text-uppercase text-gray-silver">ANIKET AHIRWAR</h4>

                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="card shadow-sm">

                                    <div style="min-height: 12rem;" class="card-body">
                                        <div class="col-lg-12">
                                            <div class="card shadow-sm">
                                                <div class="card-header bg-transparent border-0">
                                                    <h3 style="color: black;"><i class="far fa-clone pr-1"></i>Basic details of student from Aadhaar eKYC</h3>
                                                </div>
                                                <div style="min-height: 0rem;" class="card-body pt-0">
                                                    <table class="table table-bordered table-responsive">
                                                        <tr>
                                                            <th width="30%">Aadhaar number : </th>
                                                            <td width="2%">:</td>
                                                            <td>553366336699</td>
                                                            <th width="30%" class="text-gray-lighter">Name	</th>
                                                            <td width="2%">:</td>
                                                            <td>ANIKET AHIRWAR</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">guardian Name </th>
                                                            <td width="2%">:</td>
                                                            <td>Bhagvan Singh</td>
                                                            <th width="30%">guardian Relation</th>
                                                            <td width="2%">:</td>
                                                            <td>Brother</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">Date of birth </th>
                                                            <td width="2%">:</td>
                                                            <td>03/03/1998</td>
                                                            <th width="30%">gender</th>
                                                            <td width="2%">:</td>
                                                            <td>Male</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">Address </th>
                                                            <td width="2%">:</td>
                                                            <td>ग्राम / वार्ड -Birha Shym Khedi  जिला -Bhopal</td>
                                                            <th width="30%">Pin Code</th>
                                                            <td width="2%">:</td>
                                                            <td>460557</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">District </th>
                                                            <td width="2%">:</td>
                                                            <td>Bhopal</td>
                                                            <th width="30%">local body</th>
                                                            <td width="2%">:</td>
                                                            <td>Nagar Nigam</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">landmark </th>
                                                            <td width="2%">:</td>
                                                            <td>Bhopal</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="card shadow-sm">
                                    <div style="min-height: 12rem;" class="card-body">
                                        <div class="col-lg-12">
                                            <div class="card shadow-sm">
                                                <div class="card-header bg-transparent border-0">
                                                    <h3 style="color: black;"><i class="far fa-clone pr-1"></i>Student basic information from Madhya Pradesh Education Portal</h3>
                                                </div>
                                                <div style="min-height: 0rem;" class="card-body pt-0">
                                                    <table class="table table-bordered table-responsive">
                                                        <tr>
                                                            <th width="30%">SSSMID : </th>
                                                            <td width="2%">:</td>
                                                            <td>553366334</td>
                                                            <th width="30%" class="text-gray-lighter">Name	</th>
                                                            <td width="2%">:</td>
                                                            <td>ANIKET AHIRWAR</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">guardian Name </th>
                                                            <td width="2%">:</td>
                                                            <td>Bhagvan Singh</td>
                                                            <th width="30%">guardian Relation</th>
                                                            <td width="2%">:</td>
                                                            <td>Brother</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">Date of birth </th>
                                                            <td width="2%">:</td>
                                                            <td>03/03/1998</td>
                                                            <th width="30%">gender</th>
                                                            <td width="2%">:</td>
                                                            <td>Male</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">Address </th>
                                                            <td width="2%">:</td>
                                                            <td>ग्राम / वार्ड -Birha Shym Khedi  जिला -Bhopal</td>
                                                            <th width="30%">Pin Code</th>
                                                            <td width="2%">:</td>
                                                            <td>460557</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">District </th>
                                                            <td width="2%">:</td>
                                                            <td>Bhopal</td>
                                                            <th width="30%">local body</th>
                                                            <td width="2%">:</td>
                                                            <td>Nagar Nigam</td>
                                                        </tr>
                                                        <tr>
                                                            <th width="30%">landmark </th>
                                                            <td width="2%">:</td>
                                                            <td>Bhopal</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="Alert-Confirmation btn btn-success btn-border w-lg">Final Submit</button>
                                <a href="AadhaareKYC.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        // Popup Open
        function popupOpen() {
            document.getElementById("popup").style.display = "block";
            document.getElementById("overlay").style.display = "block";
        }
        // Popup Close
        function popupClose() {
            document.getElementById("popup").style.display = "none";
            document.getElementById("overlay").style.display = "none";
        }
    </script>
</asp:Content>


