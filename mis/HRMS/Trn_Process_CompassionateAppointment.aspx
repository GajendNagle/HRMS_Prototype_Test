<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_Process_CompassionateAppointment.aspx.cs" Inherits="mis_HRMS_Rpt_CompassionateAppointment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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
                zoom: 95%;
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
    <div id="dv_Masters_LocationMasters" runat="server">


        <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Anukampa Logo.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <%--<div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">अनुकंपा नियुक्ति प्रबंधन प्रणाली</p>
        </div>--%>
        <div class="col-md-7 align-self-center"> 
       
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="AnukampaNuktiMainPage.aspx" title="click to go on">Compassionate Appointment</a></li>
                        <li class="breadcrumb-item active">Compassionate Appointment Process</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                        <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <%--                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b>Mutual Transfer Application</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Delete Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferPrintApplication.aspx">Print Application</a></li>
                                </ul>
                            </li> --%>
                            <li class="nav-item">
                                 <a class="nav-link text-warning  font-16 text-white" href="AnukampaNuktiMainPage.aspx" role="button"  aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-warning  font-16 text-white" href="Trn_CompassionateAppointment.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति के लिए आवेदन पंजीकृत करें</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-warning font-16 text-white" href="Trn_Process_CompassionateAppointment.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति प्रक्रिया</b></strong></a>
                            </li>
                             <li class="nav-item">
                                    <a class="nav-link text-warning font-16 text-white" href="CompassionateAppointmentPrintApplication.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति प्रिंट आवेदन</b></strong></a>
                                </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
                <fieldset>
                    <legend>अनुकंपा नियुक्ति आवेदन पंजीयन को प्रोसेस करे</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>जिला का चयन करे<span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlDistrict" onchange="showddlSapthpatr();">
                                    <option value="0">--Select--</option>
                                    <option value="1">Bhopal</option>
                                    <option value="1">Raisen</option>
                                    <option value="1">Rajgarh</option>
                                    <option value="1">Sehore</option>
                                    <option value="1">Vidisha</option>
                                    <option value="1">Ashoknagar</option>
                                    <option value="1">Shivpuri</option>
                                    <option value="1">Datia</option>
                                    <option value="1">Guna</option>
                                    <option value="1">Gwalior</option>
                                    <option value="1">Harda</option>
                                    <option value="1">Hoshangabad</option>
                                    <option value="1">Betul</option>
                                    <option value="1">Morena</option>
                                    <option value="1">Sheopur</option>
                                    <option value="1">Bhind</option>
                                    <option value="1">Barwani</option>
                                    <option value="1">Burhanpur</option>
                                    <option value="1">Dhar</option>
                                    <option value="1">Indore</option>
                                    <option value="1">Jhabua</option>
                                    <option value="1">Khandwa</option>
                                    <option value="1">Khargone</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>अनुकंपा नियुक्ति आवेदन</legend>
                    <div class="row" id="table" style="display: none;">
                        <div class="row justify-content-end">
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center">
                                        <tr>
                                            <th>क्र.</th>
                                            <th>दिवंगत कर्मचारी/ अधिकारी</th>
                                            <th>पद</th>
                                            <th>मृत्यु दिनांक</th>
                                            <th>आवेदक का नाम</th>
                                            <th>जेंडर</th>
                                            <th>आवेदक की जन्म तिथि</th>
                                            <th>मोबाइल नंबर</th>
                                            <th>आवेदक का दिवंगत  शिक्षक के साथ सम्बन्ध</th>
                                            <th>आवेदक की वैवाहिक स्थिति</th>
                                            <th>नियुक्ति हेतु पद का चयनित विकल्प</th>
                                            <th>आवेदक की शेक्षणिक योग्यता</th>
                                            <th style="width: 20%;">प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति  </th>
                                            <th>नोटशीत प्रिंट करे </th>
                                            <th>कार्यवाही करे</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Phul Singh Kushawah</td>
                                            <td>Asstt Teacher (LDT)</td>
                                            <td>28/12/2021</td>
                                            <td>BRAJESH KUSHWAH</td>
                                            <td>M</td>
                                            <td>10/08/1997</td>
                                            <td>9926354455</td>
                                            <td>Son</td>
                                            <td>Unmarried</td>
                                            <td>Madhymik Shikshak</td>
                                            <td>GRADUATE</td>
                                            <td>नहीं</td>
                                            <td>
                                                <button type="button" class="btn btn-block" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print"></i></button>
                                            </td>
                                            <td>
                                                <button type="button" class="Alert-SaveOrder btn btn-block"><i class="fa fa-arrow-alt-circle-right"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Rameshwar Verma</td>
                                            <td>Asstt Teacher (LDT)</td>
                                            <td>28/12/2021</td>
                                            <td>Ajay Verma</td>
                                            <td>M</td>
                                            <td>10/08/1999</td>
                                            <td>9926354455</td>
                                            <td>Son</td>
                                            <td>Married</td>
                                            <td>Madhymik Shikshak</td>
                                            <td>GRADUATE</td>
                                            <td>हाँ</td>
                                            <td>
                                                <button type="button" class="btn btn-block" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print"></i></button>
                                            </td>
                                            <td>
                                                <button type="button" class="Alert-SaveOrder btn btn-block"><i class="fa fa-arrow-alt-circle-right"></i></button>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title w-100 text-center">अनुकंपा नियुक्ति आवेदन</h3>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <div class="row ">
                                        <div class="col-sm-3">
                                            <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="" />
                                        </div>
                                        <div class="col-sm-6 text-center">
                                            <h4><strong><b>Education Portal 3.0</b></strong></h4>
                                            <h4><strong><b>कार्यालय : जिला शिक्षा अधिकारी भोपाल</b></strong></h4>
                                            <h4><strong><b>नोट शीट</b></strong></h4>
                                        </div>
                                        <div class="col-sm-3 ">
                                            <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="float-end" />
                                        </div>
                                    </div>
                                    <div class="row mt-5">
                                        <div class="col-sm-6">
                                            <h6><b>प्रकरण क्र. 5252/AK7328/21/03/2024</b></h6>
                                        </div>
                                        <div class="col-sm-6">
                                            <h6 class="float-end"><b>दिनांक : 21/03/2024</b></h6>
                                        </div>
                                    </div>
                                    <hr style="height: 5px; color: black; background-color: black" />
                                    <div class="row">
                                        <h6><b>विषय : श्री BRIJESH KUSHWAH की अनुकम्पा नियुक्ति हेतु आवेदन पत्र के संबंध मे</b></h6>
                                    </div>
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th colspan="4" class="text-center font-20">: : <u>अधिकारी/कर्मचारी का विवरण</u> : :</th>
                                            </tr>
                                            <tr>
                                                <th>अधिकारी/कर्मचारी कोड :</th>
                                                <td>AK7328</td>
                                                <th>आवेदन आईडी :</th>
                                                <td>4572</td>
                                            </tr>
                                            <tr>
                                                <th>दिवंगत अधिकारी/कर्मचारी का नाम :</th>
                                                <td>Arjun Talwar</td>
                                                <th>लिंग :</th>
                                                <td>Male</td>
                                            </tr>
                                            <tr>
                                                <th>अंतिम पोस्टिंग जिला :</th>
                                                <td>Bhopal </td>
                                                <th>दिवंगत अधिकारी/कर्मचारी कैडर :</th>
                                                <td>Regular Class - V</td>
                                            </tr>
                                            <tr>
                                                <th>दिवंगत अधिकारी/कर्मचारी पदनाम :</th>
                                                <td>Asstt Teacher(LTD)</td>
                                                <th>अंतिम स्कूल/कार्यालय और कर्मचारी का पता :</th>
                                                <td>23040306405</td>
                                            </tr>
                                            <tr>
                                                <th>म्रत्यु का कारण :</th>
                                                <td>Other</td>
                                                <th>म्रत्यु दिनांक :</th>
                                                <td>28/12/2021</td>
                                            </tr>
                                            <tr>
                                                <th>परिवार मे जीवित सदस्यों की संख्या :</th>
                                                <td>5</td>
                                                <th>विभाग का नाम :</th>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>आवेदन प्राप्त तिथि :</th>
                                                <td>21/04/2023</td>
                                                <th>जाति :</th>
                                                <td>OBC</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th colspan="4" class="text-center font-20">: : <u>आवेदक का विवरण</u> : :</th>
                                            </tr>
                                            <tr>
                                                <th>आवेदक का नाम :</th>
                                                <td>BRIJESH KUSHWAH</td>
                                                <th>लिंग :</th>
                                                <td>Male</td>
                                            </tr>
                                            <tr>
                                                <th>वैवाहिक स्थिथि :</th>
                                                <td>UnMarries</td>
                                                <th>जन्म दिनांक :</th>
                                                <td>10/04/1997</td>
                                            </tr>
                                            <tr>
                                                <th>प्राप्ति की तारीख :</th>
                                                <td>21/04/2023</td>
                                                <th>दिवंगत के साथ संबंध :</th>
                                                <td>Son</td>
                                            </tr>
                                            <tr>
                                                <th>आवेदक किस पद पर नियुक्ति चाहता है :</th>
                                                <td>शैक्षणिक संवर्ग </td>
                                                <th>पदनाम :</th>
                                                <td>प्रयोगशाला शिक्षक </td>
                                            </tr>
                                            <tr>
                                                <th>क्या शिक्षक पात्रता परीक्षा(TET) उत्तीर्ण है :</th>
                                                <td>नहीं</td>
                                                <th>मोबाइल नंबर :</th>
                                                <td>963256895</td>
                                            </tr>
                                            <tr>
                                                <th>पात्रता परीक्षा का वर्ष :</th>
                                                <td></td>
                                                <th>व्यवसायिक योग्यता</th>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th colspan="5" class="text-center font-20">: : <u>परिवार का विवरण</u> : :</th>
                                            </tr>
                                            <tr>
                                                <th>क्र.</th>
                                                <th>सदस्य का नाम </th>
                                                <th>दिवंगत के साथ संबंध </th>
                                                <th>व्यवसाय </th>
                                                <th>जन्म दिनांक</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>KHILONI KUSHWAHA</td>
                                                <td>Wife/Husband</td>
                                                <td>कोई व्यवसाय नहीं</td>
                                                <td>01/01/1973</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>RAHUL KUSHWAHA</td>
                                                <td>Son</td>
                                                <td>कोई व्यवसाय नहीं</td>
                                                <td>17/07/1995</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>BRAJESH KUSHWAHA</td>
                                                <td>Son</td>
                                                <td>कोई व्यवसाय नहीं</td>
                                                <td>10/08/1997</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>CHHAYA KUSHWAHA</td>
                                                <td>Daughter</td>
                                                <td>कोई व्यवसाय नहीं</td>
                                                <td>02/08/2002</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>CHOTU KUSHWAHA</td>
                                                <td>Son</td>
                                                <td>कोई व्यवसाय नहीं</td>
                                                <td>30/07/2003</td>
                                            </tr>
                                        </tbody>
                                    </table>                               
                                </fieldset>
                            </div>
                            <div class="modal-footer justify-content-center">
                                <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function showddlSapthpatr() {
            var ddlDistrict = document.getElementById("ddlDistrict");
            var table = document.getElementById("table");

            if (ddlDistrict.value === "1") {

                table.style.display = "block";

                ddlDistrict.style.display = "block";
            } else if (ddlDistrict.value === "0") {
                table.style.display = "none";
                handipaceType.style.display = "none";
            }
            else {
                HandicapePercentage.style.display = "none";
                handipaceType.style.display = "none";

            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {



                $('.Alert-SaveOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this order?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Order Approve Successfully!',
                                timer: 2000
                            }
                            )
                            var x = document.getElementById('ShowOrders');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
              
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>

