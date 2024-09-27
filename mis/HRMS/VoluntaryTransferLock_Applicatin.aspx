<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoluntaryTransferLock_Applicatin.aspx.cs" Inherits="mis_HRMS_VoluntaryTransferLock_Applicatin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 86%;
            }

            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

  
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#VoluntaryTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')"><span>Transfer Request</span></a>
                        </li>
                        <li class="breadcrumb-item">Lock Application</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-10 col-md-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill d-flex align-items-center">
                            &#x90F;&#x92A;&#x94D;&#x932;&#x93F;&#x915;&#x947;&#x936;&#x928; &#x932;&#x949;&#x915; &#x915;&#x930;&#x947;&#x902; विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext mt-1 text-dark">
                                स्वतः हस्ताक्षरित आवेदन अपलोड कर प्रक्रिया पूर्ण करें |
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend class="border border-2 border-dark">Lock Application/एप्लिकेशन लॉक करें</legend>

                <div class="row">
                    <div class="table-responsive">
                        <table class="table text-center table-bordered">
                            <thead>
                                <tr>
                                    <th>Sr.No./<br /> सरल क्र.</th>
                                    <th>Transfer Request Number/<br /> स्थानांतरण अनुरोध संख्या</th>
                                    <th>Employee Name (Unique ID)/<br /> कर्मचारी का नाम (यूनिक आई.डी.)</th>
                                    <th>Current OIS (UDISE Code)/<br /> वर्तमान ओ.आई.एस.(यूडाइस कोड)</th>
                                    <th>Preferred Location/<br /> वरीयता का स्थान</th>
                                    <th>Upload Draft Application/<br /> ड्राफ्ट आवेदन अपलोड करें</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>TR2024089950</td>
                                    <td>Sajeda Hameed (AA1142)</td>
                                    <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                    <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                    <td>
                                        <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <p class="font-16 text-danger">नोट:- स्वतः हस्ताक्षर किये हुए आवेदन को अपलोड कर आवेदन को लॉक करें ।</p>
                    </div>
                </div>

                <hr />

                <div class="row">
                    <div class="col-md-12">
                        <input type="button" class="Alert-Save btn w-lg btn-outline-success btn-border" value="Save" />
                        <a href="VoluntaryTransferLock_Applicatin.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>

        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <div class="row mt-2">
                                <div class="col-sm-2">
                                    <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100px;" class="img-fluid" />
                                </div>
                                <div class="col-sm-8 text-center">
                                    <h4><strong><b>स्कूल शिक्षा विभाग <br /> मध्य प्रदेश शासन</b></strong></h4>
                                    <h4><strong><b>स्वैच्छिक स्थानांतरण के लिए आवेदन सह-घोषणा पत्र (DRAFT - Not Locked)</b></strong></h4>
                                </div>
                                <div class="col-sm-2">
                                    <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px;" class="img-fluid" />
                                </div>
                            </div>
                            <hr />
                            <div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table text-center table-bordered">
                                                <tr>
                                                    <th>वेरिफिकेशन कोड</th>
                                                    <td>757598</td>
                                                    <th>दिनाँक:-</th>
                                                    <td>09-03-2024</td>
                                                </tr>
                                            </table>
                                            <h4 class="text-center mt-4 mb-4 font-bold"><u>:: ई-सेवा पुस्तिका अनुसार व्यक्तिगत जानकारी ::</u></h4>
                                        </div>
                                        <table class="table">
                                            <tr>
                                                <th>आवेदन क्रमांक :</th>
                                                <td>132240</td>
                                                <th>आवेदन दिनाँक :</th>
                                                <td>09-03-2024</td>
                                            </tr>
                                            <tr>
                                                <th>कर्मचारी का नाम</th>
                                                <td>Sajeda Hameed</td>
                                                <th>यूनिक आई.डी</th>
                                                <td>AA1142</td>
                                            </tr>
                                            <tr>
                                                <th>पदनाम</th>
                                                <td>Teacher (UDT)</td>
                                                <th>ज़िला</th>
                                                <td>Bhopal</td>
                                            </tr>
                                            <tr>
                                                <th>ब्लॉक</th>
                                                <td>Bhopal</td>
                                                <th>क्षेत्र</th>
                                                <td>Urban</td>
                                            </tr>
                                            <tr>
                                                <th>संकुल कोड / नाम</th>
                                                <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                                <th>वर्तमान कार्यालय/संस्था/विद्यालय नाम</th>
                                                <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                            </tr>
                                            <tr>
                                                <th>जन्मतिथि</th>
                                                <td>17/07/1992</td>
                                                <th>आयु (वर्तमान की स्थिति में)</th>
                                                <td>32 years</td>
                                            </tr>
                                            <tr>
                                                <th>शैक्षणिक योग्यता</th>
                                                <td>B Tech</td>
                                                <th>शिक्षण पैनल जिस पर नियुक्ति की गई है</th>
                                                <td>SSS-1 Mathematics</td>
                                            </tr>
                                            <tr>
                                                <th>वर्तमान संस्था में पदस्थी दिनांक</th>
                                                <td>15/04/2002</td>
                                                <th>कुल अवधि वर्षो में</th>
                                                <td>4</td>
                                            </tr>
                                        </table>

                                        <h4 class="text-center mt-4 mb-4 font-bold"><u>:: विकल्प की जानकारी ::</u></h4>
                                        <div class="table-responsive">
                                            <table class="table text-center table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Sr.No./<br /> सरल क्र.</th>
                                                        <th>स्थानांतरण अनुरोध संख्या</th>
                                                        <th>कर्मचारी का नाम (यूनिक आई.डी)</th>
                                                        <th>वर्तमान ओ.आई.एस.(यूडाइस कोड)</th>
                                                        <th>वरीयता का स्थान</th>
                                                        <th>ड्राफ्ट आवेदन अपलोड करें</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>TR2024089950</td>
                                                        <td>Sajeda Hameed (AA1142)</td>
                                                        <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                                        <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                                        <td>
                                                            <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <input type="button" class="Alert-Save btn w-lg btn-outline-success btn-border" value="Save" />
                                                <a href="VoluntaryTransferLock_Applicatin.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
 


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };

            // Initialize SweetAlert
            SweetAlert.prototype.init = function () {
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Lock This Draft Application?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Application Lock Successfully!',
                                timer: 2000
                            }).then(() => {
                                // Hide or show table1 based on its current display state
                                var x = document.getElementById("table1");
                                x.style.display = x.style.display === "block" ? "none" : "block";
                            });
                        }
                    });
                });
            };

            // Initialize SweetAlert
            $.SweetAlert = new SweetAlert;
            $.SweetAlert.Constructor = SweetAlert;
        }(window.jQuery),

            // Initialize SweetAlert
            function ($) {
                "use strict";
                $.SweetAlert.init();
            }(window.jQuery);
    </script>
</asp:Content>

