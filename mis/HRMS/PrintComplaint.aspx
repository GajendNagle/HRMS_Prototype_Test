<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PrintComplaint.aspx.cs" Inherits="mis_Transaction_PrintComplaint" %>

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
    <div class="container-fluid">
        <span class="hidden-sm-up">
            <br />
            <br />
            <br />

        </span>

        <div class="row page-titles" style="margin-bottom: -30px">



            <div class="col-md-3 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Grievance%20Logo.png" style="height: 70px"><u><br />
                    </u>
                </p>
            </div>
            <div class="col-md-3  ">
            </div>
            <div class="col-md-6 align-self-center">

                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Grievance Management</li>
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

    <a class="nav-link  text-white " href="ParivednaNevakarn.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
    <li class="nav-item dropdown">

      <%--  <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong>शिकायत पंजीयन</></strong></a>--%>
         <%-- <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत पंजीयन </b></a>--%>


          <a class="nav-link dropdown-toggle font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i> शिकायत पंजीयन</b></strong></a>
        <ul class="dropdown-menu">

            <li><a class="dropdown-item" href="Trn_ParivadNivaran.aspx">शिकायत दर्ज करे</a></li>

            <li><a class="dropdown-item" href="ParivednaNevakarnStatus.aspx">शिकायत ट्रैकिंग स्थिति</a></li>
            <li><a class="dropdown-item" href="PrintComplaint.aspx">शिकायत प्रिंट करे</a></li>

        </ul>
       
    </li>
  <%--  <a class="nav-link  text-white " href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold">शिकायत प्रोसेसिंग </b></a>--%>


       <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत प्रोसेसिंग </b></a>
  <%--  <a class="nav-link  text-white " href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold">शिकायत निराकरण </b></a>--%>



     <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत निराकरण </b></a>



    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  रिपोर्ट</b> </a>
        
         <ul class="dropdown-menu">

       <li><a class="dropdown-item" href="DisposedGrievances.aspx">निराकृत शिकायतों की सूची</a></li>
       <li><a class="dropdown-item" href="RejectedGrievances.aspx">अस्वीकृत शिकायतों की सूची</a></li>

       <li><a class="dropdown-item" href="ForwardedGrievances .aspx">जिलेवार अग्रेषित शिकायतों का विवरण</a></li>
       <li><a class="dropdown-item" href="CPIGrievancesDetails.aspx">CPI से अग्रेषित शिकायतों का विवरण</a></li>
       <%-- <li><a class="dropdown-item" href="#">शिकायत प्रिंट करे</a></li>--%>
   </ul>
    </li>
</ul>



                        </div>
                    </div>
                </nav>
                <br />
                <br />
                <fieldset>
                    <legend>शिकायत स्थिति
                    </legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="">
                                <table class="table text-center table-bordered">
                                    <thead>
                                        <tr>
                                            <th>सरल क्र.</th>
                                            <th>कर्मचारी / शिक्षक का नाम</th>
                                            <th>शिकायत क्र.</th>
                                            <th>दिनांक</th>
                                            <th>विभाग </th>
                                            <th>शिकायत का प्रकार</th>
                                            <th>शिकायत का विषय</th>
                                            <th>देखें</th>
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
                                                <th>क्र.</th>
                                                <th>शिकायत क्र.</th>
                                                <th>शिकायत दिनाँक </th>
                                                <th>जिला  </th>
                                                <th>विभाग </th>
                                                <th>लोकसेवक का नाम </th>
                                                <th>पदनाम </th>
                                                <th>ईमेल </th>
                                                <th>मोबाइल</th>
                                                <th>शिकायत का विषय</th>

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
                                <div class="col-md-2 text-center">
                                    <h5 class="font-bold">शिकायत का विवरण</h5>
                                    <hr />
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-12">
                                    <label class="font-16 font-bold">विषय :-  संकुल प्रचार्य विवेक जैन द्वारा मेरी वर्ष 2023 की जनवरी फरवारी मार्च अप्रैल की सैलारी नहीं दी जा रही है।</label>
                                </div>
                            </div>
                            <div class="row mt-4">
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

