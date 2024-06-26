<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AnnualPropertyDetailReport.aspx.cs" Inherits="mis_Transaction_AnnualPropertyDetailReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
   <style>
       @media (max-width: 768px) {
            .d-none.d-md-table-cell {
                display: none !important;
            }

             .modal-backdrop {
        display: none;
    }

            .modal {
        position: static;
        overflow: visible;
        background:white;
    }
            .modal-dialog {
        max-width: none;
        width: auto;
        background:white;
    }
    
    .modal-content {
        border: none;
        box-shadow: none;
        background:white;
    }

    #btnPrint{
        display:none;   
    }

        }
       #imgLogoP1{
           display:none;
       }

   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
     <div class="row page-titles mb-4">
         <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/PropertyReturnNew.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
     
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                 <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=APRMS" title="click to go on">APRMS</a></li>
                    <li class="breadcrumb-item active">Print Employee APR Form</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow" id="cardmain1">
        <%-- <div class="card-header card-border-info">
            <h2>कर्मचारी की वार्षिक संपत्ति विवरण रिपोर्ट(Annual Property Detail Report)</h2>
        </div>--%>
        <div class="card-body" data-bs-spy="scroll" data-bs-target="#">
              <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li>

                                <a class="nav-link  text-white " href="AnnualPropertyDetails.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link text-white " href="AnnualPropertyDetailsForm.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Fill Employee APR Form</b></a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link text-white " href="AnnualPropertyDetailReport.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Print Employee APR Form</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="UploadAprForm.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Upload Employee APR Form</b></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />
                 <fieldset id="show2" runat="server">
                <legend>Employee Annual Property Detail Report/कर्मचारी की अचल संपत्ति का विवरण रिपोर्ट </legend>
                <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="Table1" class="table table-bordered text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No./क्र.सं</th>
                                        <th>Financial Year/वित्तीय वर्ष</th>
                                        <th class="d-none d-md-table-cell">Employee Name/कर्मचारी का नाम</th>
                                        <th class="d-none d-md-table-cell">Designation/पद </th>
                                        <th>Employee Code/कर्मचारी कोड</th>
                                        <th>Current Salary/वर्तमान वेतन</th>
                                        <th>Increment Date/वेतन वृद्धि तिथि </th>
                                        <th>Division/संभाग </th>
                                        <th>District/जिला </th>
                                        <th>Block/ब्लॉक </th>
                                        <th>Gram Panchayat/ग्राम पंचायत</th>
                                        <th>Gram/Village/ग्राम/गांव</th>
                                        <th>Property Detail/संपत्ति विवरण</th>
                                        <th>Total Area/कुल क्षेत्रफल</th>
                                        <th>Current Value/वर्तमान मूल्य</th>
                                        <th>Property Owner/संपत्ति का मालिक </th>
                                        <th>Property Source/संपत्ति का स्रोत</th>
                                        <th>Purchase Date/खरीद की तारीख</th>
                                        <th>Seller Mobile No/विक्रेता का मोबाइल नंबर</th>
                                        <th>Seller Address/विक्रेता का पता</th>
                                        <th>Property Annual Income/संपत्ति से वार्षिक आय</th>
                                        <th>Accusation/अभियुक्ति</th>
                                        <th>View Employee Application/कर्मचारी आवेदन देखें</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>2022-2023</td>
                                        <td>Rajesh Agrawal</td>
                                        <td>प्राथमिक अध्यापक(PRT)</td>
                                        <td>AB4545</td>
                                        <td>25000</td>
                                        <td>10/10/2022</td>
                                        <td>Bhopal(भोपाल)</td>
                                        <td>बैरसिया</td>
                                       <td>बैरसिया</td>
                                        <td>बरोडी</td>
                                        <td>बरोडी</td>
                                        <td>Residential Property</td>
                                        <td>900 sq ft</td>
                                        <td>2500000</td>
                                        <td>self</td>
                                        <td>संपत्ति रसीद</td>
                                        <td>10/10/2022</td>
                                        <td>8798789878</td>
                                        <td>Sehore</td>
                                        <td>5000</td>
                                        <td>Nil</td>
                                        <td>
                                            
                                             <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                            
                                        </td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            


               <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">

                    <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">EMPLOYEE  ACR FORM</h3>
                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div runat="server" id="show">
                      <fieldset id="fs1">

                <div class="row text-center">
                    <div class="col-sm-2">
                        <img id="imgLogoP2" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                    </div>
                    <div class="col-sm-8 text-center">
                        <br />
                        <h3><strong><b>कर्मचारी की अचल संपत्ति का विवरण रिपोर्ट </b></strong></h3>
                        <h4><strong><b>Employee Annual Property Detail Report</b></strong></h4>
                        <h4><strong><b>जिला:- भोपल</b></strong></h4>
                    </div>
                    <div class="col-sm-2">
                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                    </div>
                </div>
                <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                <div class="row">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="">
                                <div class="">
                                    <table class="table">
                                        <tr class="fs-4">
                                            <th>Financial Year/वित्तीय वर्ष:-</th>
                                            <td>2022-2023</td>
                                            <th>Date of Submission/जमा करने की तिथि:-</th>
                                            <td>02/01/2024</td>
                                        </tr>
                                    </table>
                                    <h3 class="text-center mt-4 mb-4 font-bold" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"><u>::  कर्मचारी की अचल संपत्ति का विवरण ::</u></h3>
                                </div>
                                <table class="table table-hover table-bordered fs-4">
                                    <tr class="mt-3">
                                        <th>Application Number/आवेदन क्रमांक :</th>
                                        <td>132240</td>
                                        <th>Unique Id/यूनिक आई.डी</th>
                                        <td>AR4781</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Employee Name/कर्मचारी का नाम</th>
                                        <td>Rajesh Agrawal</td>
                                        <th>Designation (पद)</th>
                                        <td>प्राथमिक अध्यापक(PRT)</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Current Salary/वर्तमान वेतन</th>
                                        <td>25000</td>
                                        <th>Increment Date/वेतन वृद्धि तिथि</th>
                                        <td>26/05/2023</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Division/संभाग का नाम</th>
                                        <td>Bhopal(भोपाल)</td>
                                        <th>District/जिले का नाम</th>
                                        <td>Raisen(रायसेन)</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Block/विकासखंड का नाम</th>
                                        <td>Agar(आगर)</td>
                                        <th>Gram Panchayat/ग्राम पंचायत का नाम</th>
                                        <td>Benibahra(बेनीबहरा)</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Gram(ग्राम का नाम) </th>
                                        <td>Belgaon(बेलगांव)</td>
                                        <th>Property Detail/ संपत्ति विवरण </th>
                                        <td>Commercial Property(व्यावसायिक संपत्ति)</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Total Area/कुल क्षेत्रफल</th>
                                        <td>20000 hectares</td>
                                        <th>Current Value/वर्तमान मूल्य</th>
                                        <td>5 crore</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Property Owner/संपत्ति मालिक</th>
                                        <td>Self</td>
                                        <th>Owner Name/संपत्ति मालिक का नाम
                                        </th>
                                        <td>Rajesh Agrawal</td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Property Source/संपत्ति स्रोत</th>
                                        <td>उपहार</td>
                                        <th>Purchase Date/खरीद की तारीख</th>
                                        <td>15/04/2022  </td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Seller  Mobile No/विक्रेता का मोबाइल नंबर</th>
                                        <td>9898989898</td>
                                        <th>Seller  Address/विक्रेता का पता
                                        </th>
                                        <td>Sector-2, Pithampur, Dhar, M.P. </td>
                                    </tr>
                                    <tr class="mt-3">
                                        <th>Property Annual Income/संपत्ति से वार्षिक आय
                                        </th>
                                        <td>150000</td>
                                        <th>Accusation/अभियुक्ति
                                        </th>
                                        <td>Nil </td>
                                    </tr>
                                    <br />
                                    <%-- <tr>
                                    <td class="text-right font-18 fw-bold" style="position: relative; left:700px;">हस्ताक्षर....................................</td></tr>
                                 <tr> 
                                    <td class="text-right font-18 fw-bold" style="position: relative; left:700px;">नाम........................................
                                    </td><tr> 
                                    <td class="text-right font-18 fw-bold" style="position: relative; left:700px;">पद........................................
                                    </td></tr>--%>
                                </table>
                                <div class="text-end d-flex flex-column gap-3">
                                    <h4><b>हस्ताक्षर....................................</b></h4>
                                    <h4><b>नाम....................................</b></h4>
                                    <h4><b>पद....................................</b></h4>
                                </div>
                                <%--<table style="width: 100%;">
                                    <tbody>
                                        <tr>
                                            <th class="font-18" style="position: relative; left: 320px; top: 35px;">: : <u>जाचं करने वाले अधिकारी की टीप्पणी</u> : :</th>
                                        </tr>
                                        <%--<tr>
                                            <td class="font-18 text-center text-danger" style="position: relative; top: 50px; bottom: 20px;">अर्जुन तलवार  ने इस वर्ष अपने विकास में काफी प्रगति की है। वह अधिक आत्मविश्वासी  और शैक्षणिक रूप से अच्छा प्रदर्शन कर रहा है।
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-sm-left font-14 text-info" style="position: relative; top: 160px;">यह स्वयं की लॉगिन आईडी से जेनरेट गोपनीय चरित्रावली है,  हस्ताक्षर की आवश्यकता नहीं है।
                                            </td>
                                        </tr>
                                
                                  </tbody>
                                </table>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <br />

            </fieldset>
                         <div class="modal-footer justify-content-center">
                
                                  <button type="button" class="btn btn-success w-lg btn-border" id="btnPrint" onclick="printModalContent('exampleModal')">Print</button>
               
            </div>

                    </div>


                </div>
            </div>

        </div>
    </div>

           
        </div>
    </div>
   
    <script>
        function printModal() {
            window.print();
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
      <script>  function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
      window.location.href = "AnnualPropertyDetailReport.aspx";
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
        });</script> 
</asp:Content>

