<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AnnualPropertyDetailReport.aspx.cs" Inherits="mis_Transaction_AnnualPropertyDetailReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
       @media print {


    @page {
      

    }

    body {
        font-size: 12px;
        transform-origin: top left;
        transform: scale(calc(100% / var(--print-scale, 1)));
    }

    .page-break {
        page-break-after: always;
    }
    #btnPrint{
         display:none;
    }
    .modal-header {
    display: none;
}

        #imgLogoP1 {
            display: none;
        }

        .
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--   <div class="row page-titles mb-4">
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
        </div>
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
            <br />--%>
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
                            <a href="#EmpAPRMS" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee APRMS</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee APR Form Report Print</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row align-content-end">
        <div class="col-md-5 ">
            <img src="https://dpihrms.tserver.co.in/img/PropertyReturnNew.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
        </div>
    </div>
    <div class="card card-border-primary">
    <div class="card-header">
        <div class="row align-items-end">
            <div class="col-lg-12">
                <h5 class="card-title">Employee APR Form Report Print/
                
कर्मचारी एपीआर फॉर्म रिपोर्ट प्रिंट
                </h5>
            </div>
        </div>
    </div>
    <div class="card-body">

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
                            <tr valign="middle" style="white-space: nowrap;">
                                <th>S.No.<br />
                                    क्र.सं</th>
                                <th>View Employee Application<br />
                                    कर्मचारी आवेदन देखें</th>
                                <th>Financial Year<br />
                                    वित्तीय वर्ष</th>
                                <th>Employee Name<br />
                                    कर्मचारी का नाम</th>
                                <th>Designation<br />
                                    पद </th>
                                <th>Employee Code<br />
                                    कर्मचारी कोड</th>
                                <th>Current Salary<br />
                                    वर्तमान वेतन</th>
                                <th>Increment Date<br />
                                    वेतन वृद्धि तिथि </th>
                                <th>Division<br />
                                    संभाग </th>
                                <th>District<br />
                                    जिला </th>
                                <th>Block<br />
                                    ब्लॉक </th>
                                <th>Gram Panchayat<br />
                                    ग्राम पंचायत</th>
                                <th>Village<br />
                                    ग्राम</th>
                                <th>Property Detail<br />
                                    संपत्ति विवरण</th>
                                <th>Total Area<br />
                                    कुल क्षेत्रफल</th>
                                <th>Current Value<br />
                                    वर्तमान मूल्य</th>
                                <th>Property Owner<br />
                                    संपत्ति का मालिक </th>
                                <th>Property Source<br />
                                    संपत्ति का स्रोत</th>
                                <th>Purchase Date<br />
                                    खरीद की तारीख</th>
                                <th>Seller Mobile No<br />
                                    विक्रेता का मोबाइल नंबर</th>
                                <th>Seller Address<br />
                                    विक्रेता का पता</th>
                                <th>Property Annual Income<br />
                                    संपत्ति से वार्षिक आय</th>
                                <th>Accusation<br />
                                    अभियुक्ति</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr valign="middle">
                                <td>1</td>
                                <td>

                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                    </button>

                                </td>
                                <td>2022-2023</td>
                                <td>Rajesh Agrawal</td>
                                <td>प्राथमिक अध्यापक(PRT)</td>
                                <td>AB4545</td>
                                <td>25000</td>
                                <td>10/10/2022</td>
                                <td>भोपाल</td>
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
                <div class="modal-header">

               
                    <%--<h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">EMPLOYEE  ACR FORM</h3>--%>
                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div runat="server" id="show">
                        <div>
                            <fieldset class="">
                                <div class="row text-center">
                                    <div class="col-sm-2">
                                        <img id="imgLogoP2" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-sm-8 text-center">
                                        <br />
                                        <h3><strong>अचल संपत्ति का विवरण का वित्तीय वर्ष  2024</strong></h3>
                                        <h4><strong>Annual Property Detail Report For Financial Year 2024</strong></h4>
                                        <h4><strong>जिला:- भोपल</strong></h4>
                                    </div>
                                  <%--  <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>--%>
                                </div>
                                <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                                <div class="row">

                                    <div class="col-md-12">

                                        <table class="table table-borderless">
                                            <tr class="fs-5">
                                                <th>कर्मचारी का (पूरा) नाम तथा उस सेवा का नाम जिसमें वह हो </th>
                                                <td>Rajesh Agrawal</td>
                                                <th>कर्मचारी यूनिक कोड</th>
                                                <td>AB4545</td>
                                            </tr>
                                            <tr class="fs-5">
                                                <th>वर्तमान धारित पद</th>
                                                <td>प्राथमिक अध्यापक(PRT)</td>
                                                <th>वर्तमान वेतन</th>
                                                <td>25000</td>
                                            </tr>
                                            <tr class="fs-5">

                                                <th>वर्तमान वेतन</th>
                                                <td>25000</td>
                                                <th>अगली वेतन वृद्धि की तारीख</th>
                                                <td>24/12/2024</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>


                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table id="Table2" class="table table-bordered  text-center " runat="server">
                                                <thead>
                                                    <tr>
                                                        <th rowspan="2">S.No.<br />
                                                            सरल.क्र </th>
                                                        <th rowspan="2">उस जिले, उप
संभाग, तालुका<br />
                                                            तथा ग्राम का
नाम, जिसमें<br />
                                                            संपत्ति स्थित हो
                       
                                                        </th>
                                                        <th colspan="2">संपत्ति  का नाम तथा ब्यौर
                                                        </th>
                                                        <th rowspan="2">वर्तमान मूल्य
                                                        </th>
                                                        <th rowspan="2">यदि स्वयं के नाम पर न हो
                                                            <br />
                                                            तो बतलाइये कि वह किसके
                                                            <br />
                                                            नाम पर धारित है और उसका
                                                            <br />
                                                            शासकीय कर्मचारी से क्या संबंध है</th>
                                                        <th rowspan="2">उसे किस प्रकार अर्जित किया गया<br />
                                                            रसीद पट्टा ,बंधक विरासत, भेंट या अन्य  किसी प्रकार से तथा
                                                            <br />
                                                            अर्जन की तारीख  और जिससे अर्जित की गई हो उसका नाम तथा ब्यौर
                       
                                                        </th>
                                                        <th rowspan="2">संपत्ति से वार्षिक आय</th>
                                                        <th rowspan="2">अभियुक्ति</th>


                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr valign="middle">
                                                        <td>गहृ तथा अन्य भवन</td>
                                                        <td>भूमि (आवासीय)
प्लाट एवं कृषि भूमि</td>
                                                    </tr>
                                                <%--    <tr>
                                                        <td></td>
                                                        <th>1</th>
                                                        <th>2</th>
                                                        <th>3</th>
                                                        <th>4</th>
                                                        <th>5</th>
                                                        <th>6</th>
                                                        <th>7</th>
                                                        <th>8</th>



                                                    </tr>--%>
                                                    <tr valign="middle">
                                                        <td>1</td>
                                                        <th class="w-xl">जिले :-भोपाल,<br />
                                                            संभाग :-भोपाल,<br />
                                                            विकासखंड :-आगर,<br />
                                                            ग्राम पंचायत :-बगियाटोला,<br />
                                                            ग्राम :-गराटोला</th>
                                                        <th>आवासीय संपत्ति</th>
                                                        <th>कृषि भूमि</th>
                                                        <th>5000000-/</th>
                                                        <th>राजेश अग्रवाल</th>
                                                        <th>संपत्ति स्रोत :-संपत्ति रसीद<br />
                                                            खरीद की तारीख :- 07/11/1999<br />
                                                            विक्रेता का मोबाइल नंबर :-9876486473<br />
                                                            विक्रेता का पता :-भोपाल </th>
                                                        <th>45674</th>
                                                        <th>Nil</th>


                                                    </tr>
                                                    <%--<tr valign="middle">
                    <td>1
                    </td>
                    <td>
                        <select cssclass="form-control select2" id="ddlClass" class="form-control select2" style="width: 190px;" onchange="myaddbtn()">
                            <option value="0">--Select--</option>
                            <option>1st class/कक्षा पहली</option>
                            <option>2nd class/कक्षा दूसरी</option>
                            <option>3rd class/कक्षा तीसरी</option>
                            <option>4th class/कक्षा चौथी</option>
                            <option>5th class/कक्षा पाचंवी</option>
                            <option>6th class/कक्षा छटवी</option>
                            <option>7th class/कक्षा सातवी</option>
                            <option>8th class/कक्षा आठवी</option>
                            <option>9th class/कक्षा नव्वी</option>
                            <option>10th class/कक्षा दसवी</option>
                            <option>11th class/कक्षा ग्यारवी</option>
                            <option>12th class/कक्षा बरवी</option>
                        </select></td>
                    <td>
                        <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="a1" class="form-control datepickerYear" type="text" data-val="true" required="required" />
                    </td>
                    <td>
                        <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="a2" class="form-control datepickerYear2" type="text" data-val="true" required="required" />
                    </td>
                    <td class="text-center">
                        <input type="email" id="a3" class="form-control" style="width: 160px;"></td>
                    <td>
                        <textarea class="form-control mt-1" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                    <td style="display: none;" id="btnaction">
                        <button type="button" onclick="addData()" class="btn btn-success">Add</button>
                    </td>


                </tr>--%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
    <div class="col-md-8">
                                <ul>
                                    <li class="fw-bold "> जहां लागू न हो काट दीजिए |</li>

                                    <li class="fw-bold ">  ऐसे
                मामले में जहां मूल्य का सही-सही निर्धारण करना सांभव न हो
                                 <br />
                                        वहां वर्तमान स्थिति  के सांदर्भ र्में लगभग मूल्य बतलाया जाए |</li>
                                    <li class="fw-bold "> इसमेंअल्पकालीन पट्टे भी सम्मिलित है |</li>
                                </ul>
        </div>
                                    <div class="col-md-4">
        <div class="text-end d-flex flex-column gap-3 justify-content-end">
            <h6><b>हस्ताक्षर.................................................</b></h6>
            <h6><b>नाम......................................................</b></h6>
           <h6><b>कर्मचारी आई.डी......................................</b></h6>
            <h6><b>पद........................................................</b></h6>
        </div>
    </div>
</div>
                                <br />
                                

                                        <p>
                                            <h6><span class="text-danger">टिप्पणी:-</span>मध्यप्रदशे शासकीय सवेक (आचरण) नियम, 1959 के नियम 18(3) के अधीन प्रथम श्रेणी, द्वितीय श्रेणी  तथा
                                  
                                                तृतीय  श्रेणी  के प्रत्येक सदस्य से यह अपेक्षित है कि वह सेवा  में पहली नियुक्ति के 
समय और उसके बाद प्रत्यके बारह
                                  
                                                महीने की अवधि के पश्चात् यह  घोषणा-पत्र भर कर प्रस्तुत करें और उसमें वह उनके स्वामित्व की तथा उसके द्वारा
                                    
                                                अर्जित अथवा उसे विरासत में मिली  या
उसके अपने नाम पर उसके परिवार के किसी सदस्य के नाम पर या किसी
                                   
                                                अन्य व्यक्ति के नाम पर पट्टटे या बंधक पर उसके द्वारा  धारित समस्त अचल सम्पत्ती के ब्यौरे दें।</h6>
                                        </p>
                                 
                                  
                            </fieldset>
                            </div>
                      
                        <div class="modal-footer justify-content-center">

                            <button type="button" class="btn btn-success w-lg btn-border" id="btnPrint" onclick="printModalContent('exampleModal')">Print</button>

                        </div>
                    </div>


                </div>


            </div>
        </div>

    </div>


    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                </div>
            </div>
        </div>
    </div>
        </div></div>
    <script>
        function printModal() {
            window.print();
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
 
    <script>
        function printModalContent(modalId) {
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
        });

    </script>
</asp:Content>

