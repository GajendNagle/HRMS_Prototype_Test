<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ExpClaimPrint.aspx.cs" Inherits="mis_GuestFacultyManagement_Rpt_ExpClaimPrint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .bottom-dotted-border {
            border-bottom: var(--vz-dark) dotted calc(var(--vz-border-width) + 1px);
            margin-bottom: 0.7rem;
        }
    </style>
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
                        <li class="breadcrumb-item">
                            <a href="#GuestFaculty" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Guest Faculty Login</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Print Experience Claim</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-9">
                    <h4 class="card-title">Print Experience Claim /
                     अनुभव दावा प्रपत्र प्रिंट करें </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <fieldset>

                        <legend>Print Experience Claim  Form  / अनुभव दावा प्रपत्र प्रिंट करें</legend>
                        <div class="row">
                            <div class="col-md-12 text-center">

                                <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('PrintClaimForm').style.display='block'">View All Registered Claims </button>

                            </div>
                        </div>

                        <div id="PrintClaimForm" style="display: none">
                            <%--                <legend>Details / विवरण</legend>--%>
                            <div class="row justify-content-end">

                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table">

                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.
                                                <br>
                                                सरल क्र. </th>
                                            <th>Claim Form Id
                                                <br>
                                                दावा प्रपत्र आईडी
                                            </th>
                                            <th>Academic Year
                                                <br>
                                                शैक्षणिक वर्ष
                                            </th>
                                            <th>School
                                                <br>
                                                स्कूल

                                            </th>
                                            <th>Status
                                                <br>
                                                स्थिति
                                            </th>
                                            <th>Experience Claim Form
                                                <br>
                                                अनुभव दावा प्रपत्र
                                            </th>

                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>100489</td>
                                        <td>2023-24</td>
                                        <td>23350804904 - GOVT. HSS GOULA</td>
                                        <td>पोर्टल के माध्यम से अतिथि शिक्षक 146542-रमेश लाल का अनुभव के लिए दावा  प्रक्रिया की जा चुकी है |  प्रिंट डाउनलोड कर संकुल प्राचार्य को सत्यापन के लिए संकुल  ऑफिस  में प्रस्तुत करे   </td>
                                        <td>
                                            <button type="button" class="btn btn-outline-success btn-border w-lg" data-bs-toggle="modal" data-bs-target="#staticBackdrop">View/Download</button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </fieldset>
                </div>
            </div>
        </div>
    </div>




    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel"></h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="border border-dark rounded-3 mt-2">
                            <div class="p-2">
                                <div class="row text-center align-items-center">
                                    <div class="col-2">
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-8 text-center">

                                        <h3><strong><b>उपस्थिति सत्यापन पत्रक</b></strong></h3>
                                        <h4><strong><b>(भरे हुये सत्यापन प्रपत्र को अभिलेख के रूप में नस्ती में संधारित करें)</b></strong></h4>
                                        <h6><strong><b>सत्र:	2023-24</b></strong></h6>
                                        <div class="row mx-5 mb-0 justify-content-between">
                                            <div class="col text-left">
                                                विद्यालय का DISE Code: 23350804904  
                                            </div>
                                            <div class="col text-right">
                                                विद्यालय का नाम: GOVT. HSS GOULA
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-2">
                            <div class="row ">
                                <div class="col">
                                    <b>अतिथि शिक्षक की जानकारी (पोर्टल में उपलब्ध विवरण के अनुसार)</b>
                                </div>
                                <div class="col text-end">
                                    <b>Code FBIWRG</b>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <h3>नोट:-</h3>
                                    <ol>
                                        <li>यह अनुभव प्रमाणपत्र नहीं है।</li>
                                        <li>अनुभव प्रमाणपत्र जारी करने के पूर्व की सत्यापन प्रक्रिया है।</li>
                                        <li>माह में प्रदर्शित कार्य दिवसों की संख्या को एजूकेशन पोर्टल के मानदेय देयक से लिया गया है </li>
                                        <li>संबंधित संस्था प्रमुख तथा संकृत प्राचार्य द्वारा अभिलेखों से सत्यापन करने के उपरांत ही कार्य दिवस मान्य किये जायेंगे।</li>
                                    </ol>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">


                                    <div class="bottom-dotted-border">
                                        <b>अतिथि शिक्षक का Guest ID / Mobile Number :-</b> <span>9854545454</span>
                                    </div>
                                </div>
                                <div class="col-md-12 ">
                                    <div class="bottom-dotted-border">
                                        <b>अतिथि शिक्षक का नाम :-</b> <span>रमेश लाल </span>
                                    </div>
                                </div>
                                <div class="col-md-12 ">
                                    <div class="bottom-dotted-border">
                                        <b>अतिथि शिक्षक की जानकारी (आधार के अनुसार) :-</b> <span></span>
                                    </div>
                                </div>
                                <div class="col-md-12 ">
                                    <div class="bottom-dotted-border">
                                        <b>नाम  :-</b> <span>रमेश लाल </span>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th colspan="6">
                                                        <h5>सत्र में एडुकेशन पोर्टल में लॉक किये गये मानदेय देयक का विवरण </h5>
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <th>सरल क्र.
                                                    </th>
                                                    <th>पद जिसके विरुद्ध कार्य किया</th>
                                                    <th>माह</th>
                                                    <th>पोर्टत के अनुसार कुत दिवस</th>
                                                    <th>संस्था प्रमुख के अनुसार कुल दिवस</th>
                                                    <th>संकुल प्राचार्य के अनुसार कुल दिवस</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1
                                                    </td>
                                                    <td>वर्ग 2</td>
                                                    <td>August</td>
                                                    <td>23</td>
                                                    <td>Not Yet Verified by Sankul Principal</td>
                                                    <td>Not Yet Verified by Sankul Principal</td>
                                                </tr>
                                                <tr>
                                                    <td>2
                                                    </td>
                                                    <td>वर्ग 2</td>
                                                    <td>September</td>
                                                    <td>24</td>
                                                    <td>Not Yet Verified by Sankul Principal</td>
                                                    <td>Not Yet Verified by Sankul Principal</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12 mb-3">
                                    <h4 class="text-center">संस्था प्रमुख का सत्यापन</h4>
                                </div>


                                <div class="col-12 my-3">
                                    <p>प्रमाणित किया जाता है कि अतिथि शिक्षक की शाला में उपस्थिति दिवस का सत्यापन शाला अभिलेख (उपस्थिति पंजी) से कर लिया गया है |</p>
                                </div>

                            </div>
                        </div>
                        <%-- End by sagar--%>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="printModalContent('staticBackdrop')">Print</button>
                    <button type="button" class="btn btn-outline-danger  btn-border w-lg" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
            window.location.href = "Rpt_ExpClaimPrint.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                // Prevent default behavior of Ctrl+P (opening print dialog)
                event.preventDefault();
                // Print the content of the active modal
                var activeModal = document.querySelector('.modal.show');
                if (activeModal) {
                    var modalId = activeModal.getAttribute('id');
                    printModalContent(modalId);
                }
            }
        });
    </script>
</asp:Content>

