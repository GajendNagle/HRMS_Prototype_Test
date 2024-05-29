<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CanceledTransferOrderPrint.aspx.cs" Inherits="mis_Transaction_CanceledTransferOrderPrint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        #ShowOrders {
            display: none;
        }

        th, td {
            padding: 15px;
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
                zoom: 105%;
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
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Print Cancel Order<br />
                प्रिंट रद्द आदेश </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item"><a href="Trn_CancleTransferOrderApplication.aspx" title="click to go on">Cancel Transfer Order</a></li>
                    <li class="breadcrumb-item active">Canceled Transfer Order Print</li>
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
                            <a class="nav-link  text-white " href="Trn_CancleTransferOrderApplication.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <a class="nav-link  text-white " href="Trn_CancelTransferOrder.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                Cancel Transfer Order</b></a>
                            <a class="nav-link  text-white " href="CanceledTransferOrderPrint.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Print Cancel Transfer Order</b></a>
                            <a class="nav-link  text-white " href="Rpt_CancelTransfer.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b></a>
                        </ul>

                    </div>
                </div>
            </nav>


            <fieldset>
                <legend>Cancel Order Detail / रद्द स्थानांतरण आदेश</legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Choose an option / एक विकल्प चुनें<span style="color: red">*</span></label>
                            <select id="dropdown" onchange="showTextBox()" class="form-control">
                                <option value="Select">Select</option>
                                <option value="Order No">Order No.</option>
                                <option value="Employee ID">Employee-ID </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="orderNoInput" style="display: none;">
                        <div class="form-group">
                            <label>Order No. / आदेश संख्या<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Order No.">
                        </div>
                    </div>
                    <div class="col-md-3" id="employeeIDInput" style="display: none;">
                        <div class="form-group">
                            <label>Employee-ID / कर्मचारी आई <span style="color: red">*</span> </label>
                            <input type="text" class="form-control" placeholder="Enter Employee-ID">
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="form-group ">
                            <button type="button" onclick="HideShow()" class=" btn btn-success btn-rounded ">Search</button>
                            <a href="CanceledTransferOrderPrint.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                        <%--</div>--%>
                    </div>
                    <div class="row">
                    </div>
            </fieldset>

            <fieldset id="ShowOrders">
                <legend>Detail</legend>
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
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <tr class="card-header">
                                <th>Sr.No.<br />
                                    सरल क्र.</th>
                                <th>Cancel Order No.<br />
                                    आदेश संख्या </th>
                                <th>Date Of Cancellation<br />
                                    रद्दीकरण का दिनांक </th>
                                <th>Generate Cancel Order<br />
                                    रद्द आदेश जनरेट करें</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>546545</td>
                                <td>04/04/2024</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                </td>
                            </tr>

                        </table>
                    </div>
                </div>

            </fieldset>

            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">

                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <div class="row mt-3">
                                    <div class="col-sm-2">
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-sm-8 text-center">
                                        <h3><strong><b>लोक शिक्षण संचालनालय मध्यप्रदेश
                                        </b></strong></h3>

                                        <h4><strong><b>गौतम नगर भोपाल- 462021
                                        </b></strong></h4>
                                        <br />
                                        <h4><strong>http://educationportal.mp.gov.in</strong></h4>

                                    </div>
                                    <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                                <hr />
                                <div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="">

                                                <%--<div class="table-responsive">
                                                    <table class="table table-bordered text-center ">
                                                        <tr class="card-header">
                                                            <th>क्र./एन.सी/ए/92(3)/स्था. निरस्त/2022/2024/10673</th>
                                                            <td></td>
                                                            <th>दिनाँक:-</th>
                                                            <td>15/03/2024</td>
                                                        </tr>
                                                    </table>
                                                    <h4 class="text-center mt-4 mb-4 font-bold"><u>- आदेश -</u></h4>

                                                </div>--%>
                                                <div>

                                                    <p class="font-18">
                                                        &nbsp;&nbsp; मध्यप्रदेश शासन, स्कूल शिक्षा विभाग के निम्नांकित शिक्षक का निम्नानुसार किया गया स्थानांतरण आदेश तत्काल प्रभाव से निरस्त किया जाता है :-
                                                    </p>

                                                </div>
                                                <div class="table-responsive">
                                                    <table class="table table-bordered text-center ">
                                                        <tr class="card-header">
                                                            <th>Unique Code<br />
                                                                यूनिक कोड</th>
                                                            <th>Name of Public Servant<br />
                                                                लोक सेवक का नाम</th>
                                                            <th>Designation and Subject<br />
                                                                पदनाम एवं विषय</th>
                                                            <th>Working Organization and DICE Code<br />
                                                                कार्यरत संस्था एवं डाइस कोड</th>
                                                            <th>Working District<br />
                                                                कार्यरत जिला</th>
                                                            <th>Transferred Organization/DICE Code
                                                            <br />
                                                                स्थानांतरित संस्था/ डाइस कोड</th>
                                                            <th>District of New Posting
 <br />
                                                                नवीन पदस्थापन का जिला</th>
                                                        </tr>
                                                        <tr>
                                                            <td>BB1530</td>
                                                            <td>Arvindra Varma Prathmik Shikshak</td>
                                                            <th>-- </th>
                                                            <td>GMS NO.1 KHANJYADHANA (1 To 8)[23060530301]</td>
                                                            <td>Shivpuri</td>
                                                            <td>GPS AGARRA (1 TO 5)  [23060600901]</td>
                                                            <td>Shivpuri</td>

                                                        </tr>

                                                    </table>
                                                </div>
                                                <div>
                                                    <p class="font-18" style="text-align: justify;">
                                                        2/&nbsp;&nbsp;जो लोक सेवक स्थानांतरण आदेश के पालन मे कार्यमुक्त हो चुके हैं किन्तु उनके द्वारा स्थानांतरित संस्था में कार्यभार ग्रहण नहीं
                                                            किया गया है,उनकी इस अवधि का निराकरण संबन्धित द्वारा प्रस्तुत अवकाश आवेदन के आधार पर सक्षम अधिकारी द्वारा किया जायेगा|
                                                    </p>
                                                </div>

                                                <div>
                                                    <p class="font-18" style="text-align: justify;">
                                                        3/&nbsp;&nbsp; जो लोक सेवक स्थानांतरण आदेश के परिपालन में स्थानांतरित संस्था में कार्यभार ग्रहण कर चुके है उन लोक सेवकों के लिए यह 
                                                            स्थानांतरण निरस्तीकरण आदेश प्रभावशाली नहीं होगा ।
                                                    </p>
                                                </div>

                                                <div class="row">

                                                    <p class=" mr-4  text-end font-16 ">
                                                        <b>(शिल्पा गुप्ता)</b>
                                                        <br />
                                                        आयुक्त,<br />
                                                        लोक शिक्षण म. प्र.<br />
                                                    </p>

                                                    <div class="row">
                                                        <div class="col-sm-6 font-16">
                                                            क्रमांक स्थानांतरण मेल /2022/2024/10673
                                                        </div>
                                                        <div class="col-sm-3"></div>
                                                        <div class="col-sm-3 font-16 text-end pr-0">भोपाल, दिनांक : <b>15/03/2024</b> </div>
                                                    </div>


                                                    <div class="font-16 mt-3">
                                                        प्रतिलिपिः               
                                                        <br />
                                                        1. निज सचिव मान. मंत्री जी, मध्यप्रदेश शासन, स्कूल शिक्षा विभाग मंत्रालय भोपाल |
                                                        <br />
                                                        2. प्रमुख सचिव, म.प्र. शासन, स्कूल शिक्षा विभाग मंत्रालय भोपाल |<br />
                                                        3. प्रमुख सचिव, म.प्र.शासन, जनजातीय कार्य विभाग मंत्रालय भोपाल |<br />
                                                        4. आयुक्त जनजातीय कार्य विभाग सतपुड़ा भवन भोपाल |<br />
                                                        5. संबंधित कलेक्टर जिला. म.प्र ।<br />
                                                        6. संबंधित संभागीय संयुक्त संचालक, लोक शिक्षण म.प्र |<br />
                                                        7. संबंधित जिला शिक्षा अधिकारी, म.प्र |<br />
                                                        8. संबंधित सहायक आयुक्त, जनजातीय कार्य विभाग |<br />
                                                        9. संबंधित जिला कोषालय अधिकारी, म.प्र. |<br />
                                                        10. संबंधित संकुल केंद्र, प्राचार्य.......<br />
                                                        11. संबंधित आहरण संवितरण अधिकारी / विकास खंड शिक्षा अधिकारी म.प्र. ।<br />
                                                        12. संबंधित लोक सेवक Arvindra Varma, Prathmik Shikshak<br />
                                                    </div>

                                                    <p class=" mr-4 text-end font-16 ">
                                                        आयुक्त,<br />
                                                        लोक शिक्षण म. प्र.<br />
                                                    </p>


                                                    <p class="text-start font-16 ml-5 " style="margin-top: 5px; color: black; font-weight: 400;">
                                                        <b>Digitally signed by SHILPA GUPTA           </b>
                                                        <br />
                                                        <b>Date: 2024.03.15 13:29:19 +05:30</b><br />
                                                        <b>Reason:</b><br />
                                                        <b>Location:</b><br />

                                                    </p>







                                                </div>




                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </fieldset>
                            <div class="modal-footer text-center">

                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>

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
        function showTextBox() {
            var selectBox = document.getElementById("dropdown");
            var selectedValue = selectBox.options[selectBox.selectedIndex].value;

            if (selectedValue === "Order No") {
                document.getElementById("orderNoInput").style.display = "block";
                document.getElementById("employeeIDInput").style.display = "none";
            } else if (selectedValue === "Employee ID") {
                document.getElementById("employeeIDInput").style.display = "block";
                document.getElementById("orderNoInput").style.display = "none";
            }
        }
    </script>
    <script>
        function HideShow() {

            var x = document.getElementById("ShowOrders");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</asp:Content>

