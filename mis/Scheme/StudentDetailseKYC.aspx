<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentDetailseKYC.aspx.cs" Inherits="mis_Scheme_StudentDetailseKYC" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto Condensed', sans-serif;
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
            width: 1500px; /*Change your width here*/
            height: 524px; /*Change your height here*/
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

        .card-body {
            min-height: 9rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Student Details kyc</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <%--<li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=AdmissionMgmt" title="click to go on">Admission Management</a></li>--%>
                    <li class="breadcrumb-item active">Student Details kyc</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Details kyc</legend>
                <div class="row">
                    <div class="card">
                        <h5 class="card-header">विद्यार्थी की जानकारी</h5>
                        <div class="card-body">
                            <div class="row justify-content-center">
                                <div class="col-md-1">
                                    <label>समग्र आईडी :- </label>
                                    <span style="color: red">*</span>
                                </div>
                                <div class="col-md-3">
                                    <input class="form-control" placeholder=" 9 अंक की समग्र आईडी दर्ज करे " />
                                </div>
                            </div>
                            <br />
                                <div class="row justify-content-center">
                            <div style="text-align: -webkit-center;" class="row">
                                <div action="?" method="POST">
                                    <div id="html_element"></div>
                                </div>
                            </div>
                                    </div>
                              <br />
                            <div class="row justify-content-center">
                                <div class="col-md-3">
                                    <input type="button" class="s3-btn btn btn-primary" name="Open" onclick="popupOpen();" value="विद्यार्थी की जानकारी देखे">
                                    <%--   <a href="#" onclick="popupOpen();" class="btn btn-primary">मोबाइल नंबर पर OTP प्राप्त करने के लिए यहाँ क्लीक करे </a>--%>
                                </div>
                            </div>
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
            <div class="card">
                <h5 class="card-header">समग्र के अनुसार विद्यार्थी की जानकारी</h5>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th width="30%">District : </th>
                            <td width="2%">:</td>
                            <td>BHOPAl</td>
                            <th width="30%" class="text-gray-lighter">Block</th>
                            <td width="2%">:</td>
                            <td>Berasia</td>

                        </tr>
                        <tr>
                            <th width="30%">Samagra ID </th>
                            <td width="2%">:</td>
                            <td>3310509898</td>
                            <th width="30%">Name</th>
                            <td width="2%">:</td>
                            <td>Rahul Pawar</td>
                        </tr>
                        <tr>
                            <th width="30%">Father Name : </th>
                            <td width="2%">:</td>
                            <td>Banti</td>
                            <th width="30%" class="text-gray-lighter">Mother Name</th>
                            <td width="2%">:</td>
                            <td>Babita</td>

                        </tr>
                        <tr>
                            <th width="30%">DOB </th>
                            <td width="2%">:</td>
                            <td>03/03/1998</td>
                            <th width="30%">Gender</th>
                            <td width="2%">:</td>
                            <td>Male</td>
                        </tr>
                        <tr>
                            <th width="30%">School </th>
                            <td width="2%">:</td>
                            <td>सागर पब्लिक स्कूल</td>
                            <th width="30%">Class</th>
                            <td width="2%">:</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <th width="30%">Academic year </th>
                            <td width="2%">:</td>
                            <td>2023-24</td>

                        </tr>
                    </table>
                    <br />
                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-3">
                            <a href="AadhaareKYC.aspx" class="btn btn-success btn-rounded">e-Kyc करे</a>

                            <%--<asp:Button Text="e-Kyc करे" type="button"  href="#6a" runat="server" ID="Button2" BackColor="#2e9749" CssClass="btn btn-success" ></asp:Button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script type="text/javascript">
        var onloadCallback = function () {
            grecaptcha.render('html_element', {
                'sitekey': ' 6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI'
            });
        };
    </script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
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

