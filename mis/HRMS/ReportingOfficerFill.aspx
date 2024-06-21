﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ReportingOfficerFill.aspx.cs" Inherits="mis_Transaction_ReportingOfficerFill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }


        #ddlPosition {
            position: relative;
            bottom: 20px;
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

            #exampleModalLabel {
                position: center;
                /*right:40px;*/
            }

            /*.modal-header {
          display: none;
      }*/
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
                            <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Reporting Officer Fill By ACR</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--  <div class="row page-titles mb-4">--%>
    <%--  <div class="row page-titles mb-4">--%>
    <div class="col-md-5 " style="position: relative; bottom: 30px; right: 25px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -4.5rem">
            <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title color_black">PART-3 Assessment/
                    भाग तीन- मूल्यांकन
                    </h4>
                </div>
            </div>
        </div>
        <br />
        <div class="card-body">
            <br />


            <fieldset id="show2" runat="server">
                <legend>ACR Report Reviewing and Filling by Reporting Officer /  रिपोर्टिंग अधिकारी द्वारा एसीआर रिपोर्ट की समीक्षा और भरना</legend>
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
                <div class="row">
                    <div class="col-md-12">
                        <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                            <thead>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                    <th>S.No
                                            <br />
                                        सरल क्र.</th>
                                    <th>Unique ID/Name
                                            <br />
                                        कर्मचारी आईडी/नाम</th>

                                    <th>Date of Birth<br />
                                        जन्मतिथि</th>
                                    <th>Designation<br />
                                        पदनाम  </th>
                                    <th>Dise Code of Institution
                                            <br />
                                        संस्थान का डाइस कोड</th>

                                    <th>View Employee Application
                                            <br />
                                        कर्मचारी का आवेदन देखें</th>
                                    <th>ACR Form
                                            <br />
                                        एसीआर फॉर्म</th>
                                    <th>Action
                                            <br />
                                        कार्रवाई </th>
                                    <%--<th>प्रिंट</th--%>
                                </tr>
                            </thead>
                            <tbody>
                                <tr valign="middle">
                                    <td>1</td>
                                    <td>गोपाल वर्मा/<br />
                                        EDP4454445</td>

                                    <td>22/07/1989</td>
                                    <td>सहायक शिक्षक</td>
                                    <td>DPI/456656356</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </button>


                                    </td>
                                    <td>
                                        <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click" />
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-danger btn-rounded" data-toggle="modal" data-target="#myModal">Reject</button></td>


                                </tr>
                            </tbody>
                            <tbody>
                                <tr valign="middle">
                                    <td>2</td>
                                    <td>सागर गुप्ता/<br />
                                        EDP78974445</td>

                                    <td>28/09/1989</td>
                                    <td>सहायक शिक्षक</td>
                                    <td>DPI/456656356</td>
                                    <td>

                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </button>

                                    </td>
                                    <td>
                                        <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click1" />
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-danger btn-rounded" data-toggle="modal" data-target="#myModal">Reject</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    </div>
               
            </fieldset>
            
  
        

        <div runat="server" id="Fieldset1" visible="false">
            <fieldset>



                <div class="fw-bold">Please give comment of agreement or disagreement on the achievement mentioned by the officer reported upon in self assessment.Please give reasons in case of disagreement and refer to communication made to the officer reported upon in this regard</div>
                <div class="fw-bold">आवेदक अधिकारी/शिक्षक द्वारा स्वमूल्यांकन में उल्लेखित उपलब्धि के संबंध में सहमति/असहमति की टिप्पणी | असहमति की स्थिति में कारण एवं इस संबंध में किये गये पत्राचार का विवरण एवं स्केल पॉइंट में प्रदर्शन |</div>
                <br />
                <div class="row">
                    <div class="col-md-3">
                        <label class="fw-bold fs-4">Employee Name/Unique ID</label>
                        <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>

                    </div>

                </div>
                <legend>To be filled by reporting officer /रिपोर्टिंग अधिकारी द्वारा भरा जाये </legend>



                                    <table class="table table-bordered mt-3">
                        <thead>
                            <tr>

                                <th>S.No.<br />
                                    सरल क्र.</th>
                                <th>Achievement shown in self assessment<br />
                                    स्वमूल्यांकन में दर्शित उपलब्धि</th>
                                <th>Scale Point<br />
                                    स्केल बिन्दु</th>
                                <th>Assessment<br />
                                    मूल्यांकन</th>
                                <th style="width:400px;">Remark<br />
                                    अभियुक्ति</th>
                            </tr>
                        </thead>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">1</td>
                            <td class="fw-bold">
                                Completion of curriculum<br />
                                    पाठ्यक्रम को पूरा करना
                            </td>
                            <td class="text-center">15</td>
                            <td class="text-center">
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox>

                            </td>
                            <td>
                                <textarea
                                    class="form-control  w-100" id="workdescription9" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>

                            </td>

                        </tr>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">2</td>
                            <td class="fw-bold">
                               Improving attendance <br />of children<br />
                                    छात्र उपस्थिति में वृध्दि
                            </td>
                            <td class="text-center">05</td>
                             <td class="text-center">
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center w-100"></asp:TextBox></td>
                            <td>
                                <textarea class="form-control  w-100" id="workdescription10" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>

                        </tr>

                        <tr>

                            <td class="text-center" style="position: relative; top: 130px" rowspan="6">3</td>
                            <td class="fw-bold">
                               Role in academic<br />
                                    अकादमिक कार्यो में भूमिका:-<br />
                              
                               <%-- (a) Use of teaching learning aid<br />
                                शिक्षण सहायक सामग्री का उपयोग<br />
                                (b)Use of lesson plan<br />
                                पाठय योजना का उपयोग<br />
                                (c)Innovation and Impact<br />
                                नवाचार तथा उसका प्रभाव<br />
                                (d)checking  of notebook of student<br />
                                छात्रो की अभ्यास पुस्तिका की जाँच<br />
                                (e)Remendial teaching<br />
                                निदानात्मक शिक्षण<br />
                                (f)Extra classes<br />
                                अतिरिक्त कक्षा संचालन<br />--%>
                            </td>
                            <td class="text-center" style="position: relative; top: 130px;" rowspan="6">30</td>
                         <%--   <td style="position: relative; top: 40px;" class="text-center">
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox>
                                <br />                     
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center mt-2 w-100"></asp:TextBox>
                                <br />                                            
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center mt-2 w-100"></asp:TextBox><br />          
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center mt-2 w-100"></asp:TextBox><br />         
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center mt-2 w-100"></asp:TextBox><br />         
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center mt-2 w-100"></asp:TextBox><br />
                            </td>--%>
                           

                          <%--  <td style="position: relative; top: 40px;">
                                <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  mt-1 w-100" id="workdescription4" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  mt-1 w-100" id="workdescription5" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  mt-1 w-100" id="workdescription6" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  mt-1 w-100" id="workdescription7" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  mt-1 w-100" id="workdescription8" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>--%>
                             <tr>
                                 <td> (a) Use of teaching learning aid<br />
                                शिक्षण सहायक सामग्री का उपयोग</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
     <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
 </tr>                            <tr>
                                <td>  (b)Use of lesson plan<br />
 पाठय योजना का उपयोग</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>                      
                            <tr>
                                <td>  (c)Innovation and Impact<br />
 नवाचार तथा उसका प्रभाव</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>                         
                            <tr>
                                <td>   (d)checking  of notebook of student<br />
  छात्रो की अभ्यास पुस्तिका की जाँच</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>                            <tr>
                                <td> (f)Extra classes<br />
अतिरिक्त कक्षा संचालन</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>
                        </tr>
                       
                        <tr>
                            <td class="text-center" style="position: relative; top: 100px" rowspan="4">4</td>
                            <td class="fw-bold">
                               Extracurricular activities<br />
                                    पाठयेत्तर गतिविधियो में भूमिका:-

                             <%--   (a)Sports/Literacy/Cultural Activities<br />
                                खेल/साहित्यिक/सास्कृतिक गतिविधियाँ<br />
                                (b)Extra ordinary workin<br /> Hygiene/Environment<br />
                                स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य<br />
                                (c)Use of ICT in teaching and learning<br />
                                शिक्षण एवं सिखाने में आई सी टी उपयोग--%>
                            </td>
                            <td class="text-center" style="position: relative; top: 100px;" rowspan="4">15</td>
                          <%--  <td style="position: relative; top: 50px" class="text-center">
                                <asp:TextBox runat="server" placeholder="0"  CssClass="form-control  text-center w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control  text-center mt-2 w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control  text-center mt-2 w-100"></asp:TextBox></td>
                            <td style="position: relative; top: 50px">
                                <textarea class="form-control  w-100" id="workdescription17" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100  mt-1" id="workdescription18" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100  mt-1" id="workdescription19" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>--%>
                                                      <tr>
                                <td> (a)Sports/Literacy/Cultural Activities<br />
                                खेल/साहित्यिक/सास्कृतिक गतिविधियाँ</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>
                                                        <tr>
                                <td> (b)Extra ordinary workin<br /> Hygiene/Environment<br />
स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>
                                                        <tr>
                                <td>   (c)Use of ICT in teaching and learning<br />
  शिक्षण एवं सिखाने में आई सी टी उपयोग</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>

                        </tr>

                        <tr>

                            <td class="text-center" style="position: relative; top: 100px" rowspan="5">5</td>
                            <td class="fw-bold">
                                Individual Qualities<br />
                                    व्यक्तिगत विशिष्टताये:-


                               <%-- (a)Attitude of work and <br />sense of responsibility<br />
                                कार्य के प्रति अभिव्यक्ति एवं जिम्मेदारी का बोध<br />
                                (b)Maintenance of discipline<br />
                                अनुशासन<br />
                                (c)Communication skill<br />
                                संप्रेषण कौशल<br />
                                (d)Capacity to work in a team with<br /> team spirit and inter Personal
                                    relations<br />
                                टीम में टीम भावना में काम <br />करने की क्षमता एवं परस्परसंबंध--%>

                            </td>
                            <td class="text-center" style="position: relative; top: 100px;" rowspan="5">30</td>
                         <%--   <td style="position: relative; top: 60px;" class="text-center">
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control  text-center   w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control  text-center mt-2 w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control  text-center  mt-2 w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control  text-center mt-2 w-100"></asp:TextBox></td>
                            <td style="position: relative; top: 60px;">
                                <textarea class="form-control " id="workdescription13" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control mt-1 " id="workdescription14" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  mt-1" id="workdescription15" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  mt-1 " id="workdescription16" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />

                            </td>--%>
                                                        <tr>
                                <td>(a)Attitude of work and <br />sense of responsibility<br />
                                कार्य के प्रति अभिव्यक्ति एवं जिम्मेदारी का बोध</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>
                                                        <tr>
                                <td>    (d)Capacity to work in a team with<br /> team spirit and inter Personal
       relations<br />
   टीम में टीम भावना में काम <br />करने की क्षमता एवं परस्परसंबंध</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>
                                                        <tr>
                                <td>    (c)Communication skill<br />
   संप्रेषण कौशल</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>
                                                        <tr>
                                <td>   (d)Capacity to work in a team with<br /> team spirit and inter Personal
       relations<br />
   टीम में टीम भावना में काम <br />करने की क्षमता एवं परस्परसंबंध</td><td>  <asp:TextBox runat="server" placeholder="0" CssClass="form-control w-100 text-center"></asp:TextBox></td>
    <td> <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
</tr>
                        </tr>
                        <tr>

                            <td class="text-center mt-2">6</td>
                            <td class="fw-bold">
                                Participation in <br />academic tranning<br />
                                    अवधि में प्रशिक्षण में सहभागिता 
                            </td>
                            <td class="text-center mt-2">05</td>
                             <td class="text-center">
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center w-100"></asp:TextBox></td>
                            <td>
                                <textarea class="form-control  w-100" id="workdescription12" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">7</td>
                            <td class="text-center fw-bold">Total
                                <br />
                                योग</td>
                            <td class="text-center">
                            100
                             <td class="text-center">
                                <asp:TextBox runat="server" placeholder="0" CssClass="form-control text-center w-100"></asp:TextBox></td>
                            <td>
                                <textarea class="form-control  w-100" id="workdescription11" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                            </td>
                        </tr>

                    </table>
                <fieldset>

                    <legend>Grade</legend>
                    <div class="row">
                        <div class="col-md-4 mt-3">
                            <label for="message">
                                Allegiance
                                    <br />
                                सन्निष्ठा<span style="color: red">*</span></label>
                            <textarea class="form-control mt-1   fw-bold" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Please comment on overall assessment of the Teacher<br />
                                शिक्षक के समग्र मूल्यांकन पर टिप्पणी<span style="color: red">*</span></label>
                            <textarea class="form-control mb-5  fw-bold" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                        </div>
                        <div class="col-md-4 mt-3">
                            <label>
                                Grading
                                    <br />
                                शिक्षक के समग्र मूल्यांकन श्रेणी<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlGrading" onchange="myFunction()">
                                <option value="0">--Select--</option>
                                <option value="1">A+/उत्कृष्ट</option>
                                <option value="2">A/बहुत अच्छा</option>
                                <option value="3">B/अच्छा</option>
                                <option value="4">C/संतोषप्रद</option>
                                <option value="5">D/असंतोषप्रद</option>
                            </select>
                        </div>
                        <div class="col-md-4" style="display: none;" id="OfficerName">
                            <label>
                                Enter Remark For  Outstanding Grading
           <br />
                                उत्कृष्ट ग्रेडिंग के लिए टिप्पणी<span style="color: red">*</span></label>
                            <textarea class="form-control" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Remark For  Outstanding Grading"></textarea>

                        </div>
                    </div>

                </fieldset>

            </fieldset>
           <%-- <div class="row">
                <div class="col-md-12 text-center">
                    <div class="form-group">
                        <button type="button" class=" btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Save
                        </button>
                        <a href="ReportingOfficerFill.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                    </div>
                </div>
            </div>--%>
                                              <hr />
<div class="col-md-12">
    <div class="form-group">
        <button type="button" class="  btn w-lg btn-success btn-border" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Save
        </button>
        <a href="ReportingOfficerFill.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>
        </div>
    </div>
  </div>

    <!-- Button trigger modal -->


    <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">

                    <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">Send To Accepting Authority Officer</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Send To Accepting Authority Officer / स्वीकारकर्ता प्राधिकारी को भेजें</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Accepting Authority Officer Unique ID
                                    <br />
                                    स्वीकारकर्ता प्राधिकारी की यूनिक आईडी <span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" onchange="myFunction1()" AutoComplete="off"></asp:TextBox>

                            </div>

                            <div class="col-md-4" style="display: none;" id="OfficerName1">
                                <label>Accepting Authority Officer Name
                                    <br />
                                    स्वीकारकर्ता प्राधिकारी का नाम <span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Dilip Raghuwanshi"></asp:TextBox>

                            </div>

                            <div class="col-md-4" style="display: none;" id="SankulCode1">
                                <label>Accepting Authority Officer Sankul Code
                                    <br />
                                    स्वीकारकर्ता प्राधिकारी का संकुल कोड<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="GOVT. HSS SHYAMPUR-23010804504"></asp:TextBox>
                            </div>
                        </div>




                        <%--    <div class="form-group">
                      <label>Remark<span style="color: red">*</span></label>
                      <textarea class="form-control" rows="3" style="resize: vertical" placeholder="Enter Remark For Reject Order"></textarea>
                  </div>--%>
                    </fieldset>
                    <hr />
                    <div class="modal-footer">
                        <div style="display: none;" id="btn1">
                            <div class="col-md-12>
                            <button type="button" class="btn btn-outline-success w-lg Alert-Save btn-rounded" data-dismiss="modal" id="saveButton">Send To Officer</button>
                            <a href="ReportingOfficerFill.aspx"  class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Modal -->

    <%--  employee view--%>

    <div class="modal  fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">

                    <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">EMPLOYEE  ACR FORM</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div runat="server" id="show">

                        <fieldset>
                            <legend>EMPLOYEE PERSONAL INFORMATION / कर्मचारी की व्यक्तिगत जानकारी</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Financial Year<br />
                                            वार्षिक प्रतिवेदन अवधि वर्ष <span style="color: red">*</span>
                                        </label>
                                        <asp:DropDownList runat="server" ID="ddlyera" CssClass="form-control select2">
                                            <asp:ListItem>2020-2021</asp:ListItem>
                                            <asp:ListItem>2021-2022</asp:ListItem>
                                            <asp:ListItem>2022-2023</asp:ListItem>
                                            <asp:ListItem>2023-2024</asp:ListItem>
                                            <asp:ListItem>2024-2025</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Name
                                     <br />
                                            नाम  <span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="txtName" class="form-control" autocomplete="off" value="गोपाल वर्मा"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID<br />
                                            कर्मचारी आई.डी
                                     <span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox4" ReadOnly="true" class="form-control" autocomplete="off" value="EDP4561231556"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Designation
                                     <br />
                                            पद नाम <span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="DropDownList1" class="form-control " autocomplete="off" ReadOnly="true" value="सहायक शिक्षक"></asp:TextBox>
                                        <%-- <asp:DropDownList runat="server" ID="DropDownList1" class="form-control select2" autocomplete="off">
                                     <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                                     <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                                     <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                                     <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                                 </asp:DropDownList>--%>
                                    </div>
                                </div>

                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            Date of Birth<br />
                                            जन्मतिथि<span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="TXTDOB" class="form-control" autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

                                    </div>
                                </div>
                                <%--  <div class="col-md-3">
    <div class="form-group">
        <label>Date of Birth(जन्मतिथि)/ शब्दों में <spanstyle="color: red">*</span> </label>
        <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

    </div>
</div>--%>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            Institution of Posting<br />
                                            पदस्थी शाला/स्थान<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="ddlPosting" value="भोपाल" class="form-control" autocomplete="off"></asp:TextBox>
                                        <%--  <asp:DropDownList runat="server" ID="ddlPosting" class="form-control mb-5 " autocomplete="off" >--%>
                                        <%-- <asp:ListItem>भोपाल</asp:ListItem>
                                <asp:ListItem>बैतूल</asp:ListItem>
                                     <asp:ListItem>इंदौर </asp:ListItem>
                                     <asp:ListItem>जबलपुर</asp:ListItem>
                                 </asp:DropDownList>--%>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="fs-6">
                                            <br />
                                            Dise Code of Institution<br />
                                            पदस्थी शाला का डाइस कोड<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" value="St Theresa Girls School/489754554"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            Date Of First Posting<br />
                                            प्रथम नियुक्ति का दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="txtFirstPosting" class="form-control" autocomplete="off" ReadOnly="true" value="1992-09-17" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>


                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            First Posting  designation<br />
                                            प्रथम नियुक्ति का पद<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox2" ReadOnly="true" class="form-control" autocomplete="off" value="प्राथमिक अध्यापक"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <label>
                                            Current Date Of Promotion
                                     <br />
                                            वर्तमान पद पर नियुक्ति का  दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox3" class="form-control " autocomplete="off" ReadOnly="true" value="2024-01-23" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>



                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <label>
                                            Date Of Promotion
                                     <br />
                                            पदोन्नति का दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="txtPrmaotion" class="form-control " autocomplete="off" value="2024-01-23" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <label>
                                            Date OF Filiing Of Annual Immovabel Property Return<br />
                                            स्थाई संपत्ती विवरण दाखिल करने का दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </fieldset>
                        <br />
                        <h5 class="fw-bold ml-3" style="color: var(--vz-primary);">PART-2 Self-Evaluation
  <br />
                            भाग दो-स्वमूल्यांकन</h5>
                        <br />

                        <fieldset>
                            <legend>Improving Attendance Of Childdren / छात्र उपिस्थिति में वृद्धि </legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table5" class="table table-bordered table-responsive-lg text-center " runat="server">
                                        <thead>
                                            <tr valign="middle">
                                                <th rowspan="2">S.No.<br />
                                                    सरल.क्र </th>
                                                <th rowspan="2">Class being taught<br />
                                                    पढाई जाने वाली कक्षा</th>
                                                <th colspan="2">Enrolment<br />
                                                    नामांकन</th>
                                                <th rowspan="2">Average Annual attendance in Percentege<br />
                                                    वार्षिक औसत उपिस्थिति</th>
                                                <th rowspan="2">Remark
            <br />
                                                    टिप्पणी</th>
                                            </tr>

                                            <tr valign="middle">
                                                <td>Previous Session<br />
                                                    विगत सत्र</td>
                                                <td>Present Session<br />
                                                    वर्तमान सत्र</td>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr valign="middle">
                                                <td>1
                                                </td>
                                                <td cssclass="fw-bold text-center">पहली कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">85%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>2</td>
                                                <td cssclass="fw-bold text-center">दूसरी</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">92%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>3</td>
                                                <td cssclass="fw-bold text-center">तीसरी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">82%</td>
                                                <td cssclass="Fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>4</td>
                                                <td cssclass="fw-bold text-center">चौथी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">76%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>5</td>
                                                <td cssclass="fw-bold text-center">पाचंवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">89%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>6</td>
                                                <td cssclass="fw-bold text-center">छटवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">75%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>7
                                                </td>
                                                <td cssclass="fw-bold text-center">सातवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">85%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>


                                            </tr>
                                            <tr valign="middle">
                                                <td>8</td>
                                                <td cssclass="fw-bold text-center">आठवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">92%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>9</td>
                                                <td cssclass="fw-bold text-center">नव्वी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">82%</td>
                                                <td cssclass="Fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>10</td>
                                                <td cssclass="fw-bold text-center">दसवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">76%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>11</td>
                                                <td cssclass="fw-bold text-center">ग्यारवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">`189%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>12</td>
                                                <td cssclass="fw-bold text-center">बरवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पहला</td>
                                                <td cssclass="fw-bold text-center">दूसरा</td>
                                                <td cssclass="fw-bold text-center">75%</td>
                                                <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Complention of Syllabus Aganinst The Target / लक्ष्य के विरुद्ध पाठ्यक्रम  पूर्णता की स्थिति </legend>

                            <div class="row">
                                <div class="col-md-12 table-responsive">
                                    <table id="Table2" class="table table-bordered  text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>S.No.<br />
                                                    सरल.क्र</th>
                                                <th>Class<br />
                                                    कक्षा</th>
                                                <th>Subject<br />
                                                    विषय</th>
                                                <th>Target (In % age)<br />
                                                    लक्ष्य (प्रतिशत में)</th>
                                                <th>Achievement (In % age)<br />
                                                    उपलब्धि (प्रतिशत में)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle">
                                                <td>1</td>
                                                <td cssclass="fw-bold text-center">पहली कक्षा</td>
                                                <td cssclass="fw-bold text-center">हिंदी</td>
                                                <td cssclass="fw-bold text-center">100%</td>

                                                <td cssclass="fw-bold text-center">89%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>2</td>
                                                <td cssclass="fw-bold text-center">दूसरी कक्षा</td>
                                                <td cssclass="fw-bold text-center">गणित</td>
                                                <td cssclass="fw-bold text-center">100%
                                                </td>
                                                <td cssclass="fw-bold text-center">68%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>3</td>
                                                <td cssclass="fw-bold text-center">तीसरी कक्षा</td>
                                                <td cssclass="fw-bold text-center">अंग्रेजी</td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center">74%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>4</td>
                                                <td cssclass="fw-bold text-center">चौथी कक्षा</td>
                                                <td cssclass="fw-bold text-center">पर्यावरण</td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center">63%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>5</td>
                                                <td cssclass="fw-bold text-center">पाचंवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">हिंदी</td>
                                                <td cssclass="fw-bold text-center">100%</td>

                                                <td cssclass="fw-bold text-center">89%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>6</td>
                                                <td cssclass="fw-bold text-center">छटवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">गणित</td>
                                                <td cssclass="fw-bold text-center">100%
                                                </td>
                                                <td cssclass="fw-bold text-center">68%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>7</td>
                                                <td cssclass="fw-bold text-center">सातवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">अंग्रेजी</td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center">74%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>8</td>
                                                <td cssclass="fw-bold text-center">आठवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">विज्ञान</td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center">63%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>9</td>
                                                <td cssclass="fw-bold text-center">नव्वी कक्षा</td>
                                                <td cssclass="fw-bold text-center">हिंदी</td>
                                                <td cssclass="fw-bold text-center">100%</td>

                                                <td cssclass="fw-bold text-center">89%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>10</td>
                                                <td cssclass="fw-bold text-center">दसवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">गणित</td>
                                                <td cssclass="fw-bold text-center">100%
                                                </td>
                                                <td cssclass="fw-bold text-center">68%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>11</td>
                                                <td cssclass="fw-bold text-center">ग्यारवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">गणित</td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center">74%</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>12</td>
                                                <td cssclass="fw-bold text-center">बरवी कक्षा</td>
                                                <td cssclass="fw-bold text-center">जीव विज्ञान</td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center">63%</td>

                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>
                                        <span class="fa-pull-left">Reasons, if any, fro not completing the target
                                 <br />
                                            लक्ष्य  प्राप्ति न होने के करण</span></label>
                                    <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>
                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Academic Performance and Syllabus Completion Status  / शैक्षणिक प्रदर्शन और पाठ्यक्रम समापन की स्थिति</legend>

                            <div class="row">
                                <div class="col-md-12 table-responsive">
                                    <table id="Table3" class="table table-bordered  text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>S.No.<br />
                                                    सरल.क्र</th>
                                                <th>Class<br />
                                                    कक्षा</th>
                                                <th>Subject<br />
                                                    विषय</th>
                                                <th>No.of
                     Student<br />
                                                    छात्र संख्या
                                                </th>
                                                <th colspan="5">Previous class annual examination Result grade wises Student number<br />
                                                    पूर्व कक्षा के परीक्षा परिणाम के अनुसार छात्रों की ग्रेडवार संख्या
                                                </th>
                                                <th colspan="5">Achievement on the basis of annual examination result                          
                                                    <br />
                                                    वार्षिक परीक्षा के
आधार पर उपलब्धि<br />
                                                    (Student in Grade)<br />
                                                    (ग्रेडवार छात्र संख्या)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>A<br />
                                                    (अ)</td>
                                                <td>B<br />
                                                    (ब)</td>
                                                <td>C<br />
                                                    (स)</td>
                                                <td>D<br />
                                                    (द)</td>
                                                <td>E<br />
                                                    (ई)</td>


                                                <td>A<br />
                                                    (अ)</td>
                                                <td>B<br />
                                                    (ब)</td>
                                                <td>C<br />
                                                    (स)</td>
                                                <td>D<br />
                                                    (द)</td>
                                                <td>E<br />
                                                    (ई)</td>
                                            </tr>


                                            <tr valign="middle">
                                                <td>1</td>
                                                <td>पहली कक्षा</td>
                                                <td>हिंदी</td>
                                                <td>20</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>3</td>
                                                <td>2</td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>3</td>
                                                <td>2</td>
                                                <td>5</td>


                                            </tr>
                                            <tr valign="middle">
                                                <td>2
                                                </td>
                                                <td>दूसरी कक्षा
                                                </td>
                                                <td>गणित
                                                </td>
                                                <td>30</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>
                                                <td>10</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>
                                                <td>10</td>

                                            </tr>

                                            <tr valign="middle">
                                                <td>3
                                                </td>
                                                <td>तीसरी कक्षा
                                                </td>
                                                <td>अंग्रेजी
                                                </td>
                                                <td>50
                                                </td>
                                                <td>10</td>
                                                <td>15</td>
                                                <td>5</td>
                                                <td>12</td>
                                                <td>8</td>
                                                <td>10</td>
                                                <td>15</td>
                                                <td>5</td>
                                                <td>12</td>
                                                <td>8</td>

                                            </tr>

                                            <tr valign="middle">
                                                <td>4
                                                </td>
                                                <td>चौथी  कक्षा
                                                </td>
                                                <td>पर्यावरण
                                                </td>
                                                <td>25
                                                </td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>5
                                                </td>
                                                <td>पाचंवी कक्षा
                                                </td>
                                                <td>हिंदी
                                                </td>
                                                <td>68
                                                </td>
                                                <td>10</td>
                                                <td>30</td>
                                                <td>9</td>
                                                <td>6</td>
                                                <td>12</td>
                                                <td>10</td>
                                                <td>30</td>
                                                <td>9</td>
                                                <td>6</td>
                                                <td>12</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>6
                                                </td>
                                                <td>छटवी कक्षा
                                                </td>
                                                <td>गणित
                                                </td>
                                                <td>20</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>3</td>
                                                <td>2</td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>3</td>
                                                <td>2</td>
                                                <td>5</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>7
                                                </td>
                                                <td>सातवी कक्षा
                                                </td>
                                                <td>अंग्रेजी
                                                </td>
                                                <td>30</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>
                                                <td>10</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>
                                                <td>10</td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>8
                                                </td>
                                                <td>आठवी कक्षा
                                                </td>
                                                <td>विज्ञान
                                                </td>
                                                <td>50
                                                </td>
                                                <td>10</td>
                                                <td>15</td>
                                                <td>5</td>
                                                <td>12</td>
                                                <td>8</td>
                                                <td>10</td>
                                                <td>15</td>
                                                <td>5</td>
                                                <td>12</td>
                                                <td>8</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>9
                                                </td>
                                                <td>नव्वी कक्षा
                                                </td>
                                                <td>हिंदी
                                                </td>
                                                <td>25
                                                </td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>8</td>
                                                <td>2</td>


                                            </tr>
                                            <tr valign="middle">
                                                <td>10
                                                </td>
                                                <td>दसवी कक्षा
                                                </td>
                                                <td>गणित
                                                </td>
                                                <td>68
                                                </td>
                                                <td>10</td>
                                                <td>30</td>
                                                <td>9</td>
                                                <td>6</td>
                                                <td>12</td>
                                                <td>10</td>
                                                <td>30</td>
                                                <td>9</td>
                                                <td>6</td>
                                                <td>12</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>11
                                                </td>
                                                <td>ग्यारवी कक्षा
                                                </td>
                                                <td>गणित
                                                </td>
                                                <td>40
                                                </td>
                                                <td>8</td>
                                                <td>6</td>
                                                <td>10</td>
                                                <td>5</td>
                                                <td>11</td>
                                                <td>8</td>
                                                <td>6</td>
                                                <td>10</td>
                                                <td>5</td>
                                                <td>11</td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>12
                                                </td>
                                                <td>बरवी कक्षा
                                                </td>
                                                <td>जीव विज्ञान
                                                </td>
                                                <td>45
                                                </td>
                                                <td>6</td>
                                                <td>7</td>
                                                <td>15</td>
                                                <td>10</td>
                                                <td>7</td>
                                                <td>6</td>
                                                <td>7</td>
                                                <td>15</td>
                                                <td>10</td>
                                                <td>7</td>

                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>
                                        Reasons Of Not achieving target
                                 <br />
                                        लक्ष्य  से कम उपलब्धि के करण</label>
                                    <textarea class="form-control mb-2 fw-bold" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>



                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Role in academic/ 
                    
                      अकादमिक कार्यो में भूमिका</legend>
                            <%--  <div class="row ">
                      <div class="col-md-4">
                          <label>
                              Use of  teaching  learning aid
                              <br />
                              शिक्षक सहायक सामग्री का उपयोग 
                          </label>
                          <asp:TextBox runat="server" ID="txtteaching" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Use of  lesson plan<br />
                              पाठ्य योजना का उपयोग  
                          </label>
                          <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Innovation and impect<br />
                              नवाचार तथा उसका प्रभाव  
                          </label>
                          <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control"></asp:TextBox>
                      </div>
                  </div>


                  <div class="row mt-3">
                      <div class="col-md-4">
                          <label>
                              Checking of notebook's of students<br />
                              छात्रों की अभ्यास पुस्तिका की जांच 
                          </label>
                          <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Remedial teaching
                              <br />
                              निदात्मक शिक्षण
                          </label>
                          <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control "></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Extra Classes<br />
                              अतिरिक्त कक्षा संचालन
                          </label>
                          <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control "></asp:TextBox>
                      </div>
                  </div>--%>
                            <table class="table table-bordered mt-3">
                                <thead>
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Role in academic<br />

                                            अकादमिक कार्यो में भूमिका</th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">1</td>
                                    <td>Use of  teaching  learning aid
                                        <br />
                                        शिक्षक सहायक सामग्री का उपयोग 
                                    </td>
                                    <td>
                                        <textarea class="form-control" placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">2</td>
                                    <td>Use of  lesson plan<br />
                                        पाठ्य योजना का उपयोग 
                                    </td>
                                    <td>
                                        <textarea class="form-control " placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 10px">3</td>
                                    <td>Innovation and impect<br />
                                        नवाचार तथा उसका प्रभाव  
                                    </td>
                                    <td>
                                        <textarea class="form-control" placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                </tr>



                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">4</td>
                                    <td>Checking of notebook's of students<br />
                                        छात्रों की अभ्यास पुस्तिका की जांच 
                                    </td>
                                    <td>
                                        <textarea class="form-control" placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">5</td>
                                    <td>Remedial teaching
 <br />
                                        निदात्मक शिक्षण
                                    </td>
                                    <td>
                                        <textarea class="form-control " placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 10px">6</td>
                                    <td>Extra Classes<br />
                                        अतिरिक्त कक्षा संचालन
                                    </td>
                                    <td>
                                        <textarea class="form-control" rows="1" placeholder="Nil" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                </tr>



                            </table>


                        </fieldset>
                        <br />


                        <fieldset>
                            <legend>Extraacurricular Activities / पाठ्येत्तर गतिविधियों मे भूमिका </legend>

                            <%-- <div class="row mt-3">
                       <div class="col-md-4">
                           <label>
                               Sports/Literary/Cultural Activities
                               <br />
                               खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ 
                           </label>
                           <asp:TextBox runat="server" ID="TextBox6" CssClass="form-control "></asp:TextBox>
                       </div>
                       <div class="col-md-4">
                           <label>
                               Extra Ordinary Work in Hygiene/Environment
                               <br />
                               स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</label>
                           <asp:TextBox runat="server" ID="TextBox7" CssClass="form-control "></asp:TextBox>
                       </div>
                       <div class="col-md-4">
                           <label>
                               Use of ICT in teaching and learning<br />
                               शिक्षण एवं सिखने में आई सी टी का उपयोग</label>
                           <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control "></asp:TextBox>
                       </div>
                   </div>--%>
                            <table class="table table-bordered mt-3">
                                <thead>
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Extraacurricular Activities
                                   <br />
                                            पाठ्येत्तर गतिविधियों मे भूमिका
                                   <br />

                                            अकादमिक कार्यो में भूमिका</th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">1</td>
                                    <td>Sports/Literary/Cultural Activities
 <br />
                                        खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ 
                                    </td>
                                    <td>
                                        <textarea class="form-control" rows="1" placeholder="Nil" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">2</td>
                                    <td>Extra Ordinary Work in Hygiene/Environment
                                        <br />
                                        स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य
                                    </td>
                                    <td>
                                        <textarea class="form-control " rows="1" placeholder="Nil" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 10px">3</td>
                                    <td>Use of ICT in teaching and learning<br />
                                        शिक्षण एवं सिखने में आई सी टी का उपयोग
                                    </td>
                                    <td>
                                        <textarea class="form-control " placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                </tr>
                            </table>


                        </fieldset>
                        <br />
                        <fieldset>
                            <legend>Academic trsining attended during  Appraisal period / प्रतिवेदित अवधि मे प्रशिक्षण मे सहभागिता</legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table4" class="table table-bordered table-responsive-lg text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>S.No.<br />
                                                    सरल.क्र</th>
                                                <th>Name of Training<br />
                                                    प्रशिक्षण का नाम</th>
                                                <%-- <th>Subject<br />
                                                    विषय</th>--%>
                                                <th>Period of Training (Days)<br />
                                                    प्रशिक्षण की अवधि (दिन में)</th>
                                                <th>Result/Grade<br />
                                                    उपलब्धि/ग्रेड</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle">
                                                <td>1</td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="स्कूली शिक्षा"></asp:TextBox></td>
                                                <td>
                                                    <%--<asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="जीव विज्ञान"></asp:TextBox></td>
                                                <td>--%>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="45 दिन"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="A"></asp:TextBox></td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>


                        </fieldset>
                        <br />
                        <fieldset>
                            <legend>Any Other Work Which You Want to Mention as an Outstanding Contribution / 
                         कोई अन्य कार्य जिसे आप एक उत्कृष्ट योगदान के रूप में उल्लेख करना चाहते है</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                    </label>
                                    <textarea class="form-control mb-2 fw-bold" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>

                        </fieldset>



                    </div>


                </div>
            </div>

        </div>
    </div>

    <%--  remark--%>
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                    <h4 class="modal-title text-white">Add Remark For Reject ACR Report </h4>
                    <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="form-group">
                        <label>Remark<span style="color: red">*</span></label>
                        <textarea class="form-control" rows="3" style="resize: vertical" placeholder="Enter Remark For Reject ACR Report"></textarea>
                    </div>
                </div>
                <!-- Modal Footer -->
                <div class="modal-footer justify-content-center">

                    <button type="button" class="btn btn-success Alert-Reject btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                    <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- <script>
        function opnmodel() {
            $('#exampleModal').model('show')
        }
    </script>--%>
    <script>
        function myFunction1() {
            document.getElementById('OfficerName1').style.display = "block";
            document.getElementById('SankulCode1').style.display = "block";
            document.getElementById('btn1').style.display = "block";
        }
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Send this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000,

                                // animation: false,<a href="">TeacherFillReport.aspx</a>
                                // customClass: {
                                //     popup: 'animated tada'<a href="ReportingOfficerFill.aspx">ReportingOfficerFill.aspx</a>
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'ReportingOfficerFill.aspx';
                            });
                            var x = document.getElementById("EmployeeDetails2");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <script>
        function myFunction() {
            var ForwordTo = document.getElementById("ddlGrading").value;
            if (ForwordTo == "1") {
                document.getElementById('OfficerName').style.display = "block";
            } else {
                document.getElementById('OfficerName').style.display = "none";
            }
        }
    </script>
</asp:Content>
