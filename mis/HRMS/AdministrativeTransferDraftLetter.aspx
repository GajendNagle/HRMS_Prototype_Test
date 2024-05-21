<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AdministrativeTransferDraftLetter.aspx.cs" Inherits="mis_HRMS_AdministrativeTransferDraftLetter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
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
                zoom: 120%;
               
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">

    
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">प्रिंट ड्राफ्ट लेटर - अपडेट </p>
        </div>
        <div class="col-md-4 align-self-center">   


    
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                   <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                  
                    <li class="breadcrumb-item active">Print Draft Transfer Letter or Transfer Letter</li>
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
                    <div class="collapse navbar-collapse " id="navbarSupportedContent" >
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                            <li class="nav-item dropdown ">
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Transfer Process</b></a>
                                <ul class="dropdown-menu">                                   
                                    <%--<li><a class="dropdown-item" href="trn_administrativepostcodewithvacancies.aspx">view post code with vacancies</a></li>--%>
                                    <li><a class="dropdown-item" href="Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                    <li><a class="dropdown-item" href="AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                    <li><a class="dropdown-item" href="AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order</a></li>
                                    <li><a class="dropdown-item" href="AdministrativePrintTransferOrder.aspx">Final Print Transfer Order</a></li>
                                </ul>
                            </li>
                              <li class="nav-item">
                                  <a class="nav-link text-white " href="Trn_AdministrativePostCodeWithVacancies.aspx" role="button" ><b class="font-16 font-bold">View Post Code With Vacancies</b></a>
                                  </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>Print Draft Letter & Update
                </legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation Type<br />
                                पदनाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="----">--Select--</option>
                                  <option value="----">All</option>
                                <option value="----">Clerical</option>
                                <option value="----">Executive</option>
                                <option value="----">Ministry</option>
                                <option value="----">Teaching</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">
                            District<br />
                            ज़िला<span style="color: red">*</span></label>
                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                               <option value="----">All</option>
                            <option value="Bhopal">Bhopal</option>
                            <option value="Raisen">Raisen</option>
                            <option value="Rajgarh">Rajgarh</option>
                            <option value="Sehore">Sehore</option>
                            <option value="Vidisha">Vidisha</option>
                            <option value="Ashoknagar">Ashoknagar</option>
                            <option value="Shivpuri">Shivpuri</option>
                            <option value="Datia">Datia</option>
                            <option value="Guna">Guna</option>
                            <option value="Gwalior">Gwalior</option>
                            <option value="Harda">Harda</option>
                            <option value="Hoshangabad">Hoshangabad</option>
                            <option value="Betul">Betul</option>
                            <option value="Morena">Morena</option>
                            <option value="Sheopur">Sheopur</option>
                            <option value="Bhind">Bhind</option>
                            <option value="Barwani">Barwani</option>
                            <option value="Burhanpur">Burhanpur</option>
                            <option value="Dhar">Dhar</option>
                            <option value="Indore">Indore</option>
                            <option value="Jhabua">Jhabua</option>
                            <option value="Khandwa">Khandwa</option>
                            <option value="Khargone">Khargone</option>
                            <option value="Alirajpur">Alirajpur</option>
                            <option value="Balaghat">Balaghat</option>
                            <option value="Chhindwara">Chhindwara</option>
                            <option value="Jabalpur">Jabalpur</option>
                            <option value="Katni">Katni</option>
                            <option value="Mandla">Mandla</option>
                            <option value="Narsinghpur">Narsinghpur</option>
                            <option value="Seoni">Seoni</option>
                            <option value="Rewa">Rewa</option>
                            <option value="Satna">Satna</option>
                            <option value="Sidhi">Sidhi</option>
                            <option value="Singroli">Singroli</option>
                            <option value="Chhatarpur">Chhatarpur</option>
                            <option value="Damoh">Damoh</option>
                            <option value="Panna">Panna</option>
                            <option value="Sagar">Sagar</option>
                            <option value="Tikamgarh">Tikamgarh</option>
                            <option value="Shahdol">Shahdol</option>
                            <option value="Umaria">Umaria</option>
                            <option value="Dindori">Dindori</option>
                            <option value="Anuppur">Anuppur</option>
                            <option value="Dewas">Dewas</option>
                            <option value="Mandsaur">Mandsaur</option>
                            <option value="Neemuch">Neemuch</option>
                            <option value="Ratlam">Ratlam</option>
                            <option value="Shajapur">Shajapur</option>
                            <option value="Ujjain">Ujjain</option>

                        </select>
                    </div>

                    <div class="col-md-3">
                        <label class="font-bold">
                            Block<br />
                            ब्लॉक</label>
                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                               <option value="----">All</option>
                            <option value="Bhopal">Huzur</option>
                            <option value="Raisen">Fanda</option>
                            <option value="Govindapura">Govindpura</option>
                        </select>
                    </div>
                     <div class="col-md-3">
                        <label class="font-bold">
                           Employee Unique ID.<br />
                            कर्मचारी यूनिक आईडी.
                            </label>
                    <input type="text" class="form-control" placeholder="Enter Employee Unique ID" />
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <button type="button" class="btn btn-success btn-rounded mt-3" onclick="myFunction()">Search</button>
                            <a class="btn btn-danger btn-rounded mt-3" href="HeadOfficeTransferApproval.aspx">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>


            <fieldset id="vacaniesDetail" style="display: none;">
                <legend>Print Draft Letter & Update       
                </legend>
                <table class="table table-bordered text-center ">
                    <tbody>
                        <tr>
                            <th>Sr No.</th>
                            <th>Order Number</th>
                            <th>Employ Name</th>
                            <th>Unique Id</th>
                            <th>Print Draft Letter</th>
                            <th>Update Letter</th>
                        </tr>
                        <tr>
                            <td>1</td>

                            <td>2024/20-01/140530</td>

                            <td>Rounak Nath</td>

                            <td>AR4781</td>

                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                            </td>
                            <td><button type="button" class="btn btn-info"><i class="fas fa-edit"></i></button></td>
                        </tr>
                        <tr>
                            <td>2</td>

                            <td>2024/20-01/140530</td>

                            <td>Aman Singh</td>

                            <td>FT8526</td>

                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                            </td>
                            <td><button type="button" class="btn btn-info"><i class="fas fa-edit"></i></button></td>
                        </tr>
                        <tr>
                            <td>3</td>

                            <td>2024/20-01/140530</td>

                            <td>Ankit Singh</td>

                            <td>ER4568</td>

                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                            </td>
                            <td><button type="button" class="btn btn-info"><i class="fas fa-edit"></i></button></td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title w-100 text-center">प्रिंट ड्राफ्ट ट्रांसफर लेटर या ट्रांसफर लेटर डिलीट </h3>                          
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-sm-8 text-center">
                                        <h4><strong><b>स्कूल शिक्षा विभाग
                            <br />
                                            मध्य प्रदेश शासन</b></strong></h4>
                                        <h4><strong><b>प्रिंट ड्राफ्ट ट्रांसफर लेटर या ट्रांसफर लेटर डिलीट  (DRAFT - Not Locked)</b></strong></h4>

                                    </div>
                                    <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                                <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>वेरिफिकेशन कोड:</th>
                                            <td>757972</td>
                                            <th>दिनाँक:</th>
                                            <td>09 /10 /2022</td>
                                        </tr>                                     
                                        <tr>
                                            <th colspan="4" class="text-center font-20">: : <u>ई-सेवा पुस्तिका अनुसार व्यक्तिगत जानकारी</u> : :</th>
                                        </tr>
                                        <tr>
                                            <th>आदेश क्रमांक:</th>
                                            <td>132240</td>
                                            <th>आदेश दिनाँक :</th>
                                            <td>09 /10 /2022</td>
                                        </tr>
                                        <tr>
                                            <th>कर्मचारी का नाम</th>
                                            <td>Arjun Talwar</td>
                                            <th>यूनिक आई.डी</th>
                                            <td>AR4781</td>
                                        </tr>
                                        <tr>
                                            <th>पदनाम </th>
                                            <td>Teacher (UDT)</td>
                                            <th>ज़िला</th>
                                            <td>Bhopal</td>
                                        </tr>
                                        <tr>
                                            <th>ब्लॉक</th>
                                            <td>Govindapura</td>
                                            <th>क्षेत्र</th>
                                            <td>Urban</td>
                                        </tr>
                                        <tr>
                                            <th>संकुल कोड </th>
                                            <td>15151235256-PVT VINAYAK<br />
                                                PUBLIC SCHOOL TARRAKHURD</td>
                                            <th>स्कूल कोड </th>
                                            <td>15151235256-PVT VINAYAK<br />
                                                PUBLIC SCHOOL TARRAKHURD</td>
                                        </tr>
                                        <tr>
                                        </tr>
                                        <tr>
                                            <th>विषय </th>
                                            <td>Mathematics</td>
                                            <th>जन्मतिथि</th>
                                            <td>17/07/1992</td>
                                        </tr>
                                        <tr>
                                            <th>आयु (वर्तमान की स्थिति में)</th>
                                            <td>32 years</td>
                                            <th>शैक्षणिक योग्यता</th>
                                            <td>B Tech</td>
                                        </tr>
                                        <tr>
                                            <th>पैनल समूह</th>
                                            <td>SSS-1 Mathematics</td>
                                            <th>वर्तमान संस्था में पदस्थ दिनांक</th>
                                            <td>15/04/2002</td>
                                        </tr>
                                        <tr>
                                            <th>कुल अवधि वर्षों में</th>
                                            <td colspan="3">4</td>
                                        </tr>                                     
                                        <tr>
                                            <th colspan="4" class="text-center font-20">: : <u>नया कार्यालय स्थान</u> : :</th>
                                        </tr>
                                       <%-- <tr>
                                            <th>आदेश क्रमांक</th>
                                            <td>132240</td>
                                            <th>आदेश दिनाँक</th>
                                            <td>09 /10 /2022</td>
                                        </tr>--%>
                                        <tr>
                                            <th>कर्मचारी का नाम</th>
                                            <td>Arjun Talwar</td>
                                            <th>यूनिक आई.डी</th>
                                            <td>AR4781</td>
                                        </tr>
                                       <tr>
                                           <th>प्रभावी दिनांक</th>
                                           <td>15/04/2024</td>
                                           <th>कार्यमुक्त दिनांक</th>
                                           <td>11/04/2024</td>
                                       </tr>                                      
                                        <tr>
                                              <th>नवीन संकुल कोड</th>
                                            <td>4012003014 - VIJAYPUR, PRINCIPAL H S S TARRAKALAN </td>
                                             <th>नवीन ओ.आई.एस.कोड</th>
                                            <td>4012003014 - VIJAYPUR, PRINCIPAL H S S TARRAKALAN</td>                                         
                                            
                                        </tr>
                                         <tr>
                                            <th>पैनल समूह</th>
                                            <td>SSS-1 Mathematics</td>
                                              <th>ट्रान्सफर निर्देशानुसार</th>
                                            <td>मंत्रालय</td>

                                            
                                        </tr>
                                        <tr>
                                            <th>टिप्पणी</th>
                                            <td> </td>
                                        </tr>
                                        
                                        <%--<tr>
                                            <th>विषय </th>
                                            <td>Mathematics</td>
                                            <th>जन्मतिथि</th>
                                            <td>17/07/1992</td>
                                        </tr>
                                        <tr>
                                            <th>आयु (वर्तमान की स्थिति में)</th>
                                            <td>32 years</td>
                                            <th>शैक्षणिक योग्यता</th>
                                            <td>B Tech</td>
                                        </tr>
                                        <tr>
                                            <th>पैनल समूह<</th>
                                            <td>SSS-1 Mathematics</td>
                                            <th>वर्तमान संस्था में पदस्थ दिनांक</th>
                                            <td>15/04/2002</td>
                                        </tr>
                                        <tr>
                                            <th>कुल अवधि वर्षों में</th>
                                            <td colspan="3">4</td>
                                        </tr>--%>
                                    </tbody>
                                </table>
                               <%-- <table style="width: 100%;">
                                    <tbody>
                                        <tr>
                                            <th class="text-center font-20">: : <u>घोषणा</u> : :</th>
                                        </tr>
                                        <tr>
                                            <td class="font-18">में प्रमाणित करता करती हूँ कि उपरोक्त जानकारी मेरे ज्ञान व विश्वास से एवं दस्तावेजों के अनुसार सत्य है. किसी भी प्रकार की असत्य एवं त्रुटिपूर्ण जानकारी पर मेरा आवेदन स्थानांतरण रद्द कर दिया जावेगा। और मेरे विरुध्द अनुशासनात्मक कार्यवाही के लिए सक्षम अधिकारी स्वतंत्र होंगे।
                                            </td>
                                        </tr>
                                        <tr>
                                             <td class="font-16"><br /><br /><br />हस्ताक्षर</td>
                                               <td class="text-end font-16"><br /><br /><br />हस्ताक्षर</td>
                                              
                                            </tr>
                                        <tr>
                                            <td class="font-16"> Anshu Chaturved</td>                                         
                                               <td class="float-end font-16">AnshuChaturved</td>
                                             
                                            
                                      </tr>
                                    </tbody>
                                </table>--%>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
     <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
     </script>
</asp:Content>

