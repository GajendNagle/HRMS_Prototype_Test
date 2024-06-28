<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PrintComplaint.aspx.cs" Inherits="mis_Transaction_PrintComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                zoom: 90%;
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
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Grievance" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Print Complaint</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                <img src="../../img/Grievance%20Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Print Complaint /
             शिकायत प्रिंट करें
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Print Details / विवरण प्रिंट करें
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
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
                        <table class="table text-center table-bordered">
                            <thead>
                                <tr>
                                    <th>Sr.No.<br />
                                        सरल क्र.</th>
                                    <th>Name of Employee or Teacher<br />
                                        कर्मचारी या शिक्षक का नाम</th>
                                    <th>Grievance No.<br />
                                        शिकायत क्र.</th>
                                    <th>Date<br />
                                        दिनांक</th>
                                    <th>Department<br />
                                        विभाग </th>
                                    <th>Type of Grievance<br />
                                        शिकायत का प्रकार</th>
                                    <th>Subject of Grievance<br />
                                        शिकायत का विषय</th>
                                    <th>View<br />
                                        देखें</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>1</td>
                                <td>Ashok Verma</td>
                                <td>74060</td>
                                <td>09-04-2024</td>
                                <td>Education</td>
                                <td>स्थापना से संबंधित </td>
                                <td>वेतन निर्धारण</td>
                                <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" id="myDIV">
                    <h4 class="modal-title" id="myLargeModalLabel1"></h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12 text-center">
                            <h3 class="font-bold">जिला शिक्षा अधिकारी</h3>
                            <h4 class="font-bold">जिला : टीकमगढ़</h4>
                            <h4 class="font-bold">लोकसेवक का विवरण</h4>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table text-center table-bordered table-responsive">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.<br />
                                                सरल क्र.</th>
                                            <th>Complaint no.<br />
                                                शिकायत क्र.</th>
                                            <th>Complaint Date<br />
                                                शिकायत दिनाँक </th>
                                            <th>District<br />
                                                जिला  </th>
                                            <th>Department<br />
                                                विभाग </th>
                                            <th>Name of Public Servant<br />
                                                लोकसेवक का नाम </th>
                                            <th>Designation<br />
                                                पदनाम </th>
                                            <th>E-mail<br />
                                                ईमेल </th>
                                            <th>Mobile<br />
                                                मोबाइल</th>
                                            <th>Subject of Complaint<br />
                                                शिकायत का विषय</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>74060</td>
                                        <td>02/05/2024</td>
                                        <td>टीकमगढ़</td>
                                        <td>Education</td>
                                        <td>Nidhi Mishra [BO8511]</td>
                                        <td>Prathmik Shikshak</td>
                                        <td>Gaurishankartkg@Gmail.Com</td>
                                        <td>7974333143</td>
                                        <td>बकाया लंबित</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-3 text-center">
                                <h5 class="font-bold">शिकायत का विवरण</h5>
                                <hr />
                            </div>
                        </div>
                        <div class="row mb-2 text-center">
                            <div class="col-md-12">
                                <label class="font-16 font-bold">विषय :-  संकुल प्रचार्य विवेक जैन द्वारा मेरी वर्ष 2023 की जनवरी फरवारी मार्च अप्रैल की सैलारी नहीं दी जा रही है।</label>
                            </div>
                        </div>
                        <div class="row mt-4 text-end">
                            <div class="col-md-12 mt-2" style="margin-top: 3.5rem !important;">
                                <h6>अधिकारी/ कर्मचारी के हस्ताक्षर</h6>
                            </div>
                        </div>
                    </fieldset>


                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
</asp:Content>

