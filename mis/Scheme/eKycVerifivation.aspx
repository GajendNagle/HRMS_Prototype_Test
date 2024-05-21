<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="eKycVerifivation.aspx.cs" Inherits="mis_Scheme_eKycVerifivation" %>

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
            width: 580px; /*Change your width here*/
            height: 250px; /*Change your height here*/
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
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">eKyc-Verifivation</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">eKyc-Verifivation</li>
                    </ol>
                </div>
            </div>
        </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>eKyc-Verifivation</legend>
                    <div class="card">
                        <h5 class="card-header">मोबाइल नंबर सत्यापित करे</h5>
                        <div class="card-body">
                            <div class="row justify-content-center">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>मोबाइल नंबर :-</label>
                                        <input class="form-control" placeholder="मोबाइल नंबर दर्ज करे " />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label>मोबाइल नंबर पुनः प्रविष्ट करे  :-</label>
                                    <input class="form-control" placeholder="मोबाइल नंबर पुनः प्रविष्ट करे " />
                                </div>
                            </div>
                            <br />
                            <br />
                            <div style="text-align: -webkit-center;" class="row">
                                <div action="?" method="POST">
                                    <div id="html_element"></div>
                                </div>
                            </div>
                            <br /> 
                            <div class="row justify-content-center">
                                <div class="col-md-3">
                                    <input type="button" class="s3-btn btn btn-primary" name="Open" onclick="popupOpen();" value="मोबाइल नंबर पर OTP प्राप्त करने के लिए यहाँ क्लीक करे">
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
                    <h5 class="card-header">मोबाइल नंबर सत्यापित करे</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <label>कृप्या OTP दर्ज करे</label><span style="color: red">*</span> 
                            </div>
                            <div class="col-md-3">
                                <input class="form-control" placeholder="OTP दर्ज करे " />
                            </div>

                            <div class="col-md-3"> 
                                <asp:Button Text="Submit OTP" OnClick="Button3_Click"  type="button" runat="server" ID="Button3" class="btn btn-success"></asp:Button>
                            </div>
                            <div class="col-md-3">
                                <asp:Button Text="OTP पुनः भेजे " type="button" runat="server" ID="Button1" class="btn btn-warning"></asp:Button>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <asp:Button Text=" दर्ज मोबाइल नंबर पर OTP भेजा गया है ! remaining attempts-1"   runat="server"   CssClass="btn btn-dribbble"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <div class="card mt-3 shadow" runat="server" id="Studendetails" visible="false">
     <div class="card-header card-border-info">
     </div>
     <div class="card-body">
         <fieldset>
             <legend>Student details</legend>
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
                                                 <table class="table table-bordered">
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
                                                 <table class="table table-bordered">
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
                      <div class="row justify-content-center"> 
                         <div class="col-md-2">
                      <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Final Submit</button>
                              <a href="eKycVerifivation.aspx" class="btn btn-danger btn-rounded">Clear</a>
                         </div>
                     </div> 
                 </div>
             </div> 
         </fieldset>
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

