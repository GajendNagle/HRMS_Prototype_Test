<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_StudentTransferCertificate.aspx.cs" Inherits="mis_Student_Rpt_StudentTransferCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .btn-check:focus + .btn-outline-info, .btn-outline-info:focus {
            box-shadow: none !important;
        }

        .btn-outline-success:focus, .btn-outline-success.focus {
            box-shadow: none;
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
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                    <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                        <span>ACR</span></a>
                </li>--%>
                        <li class="breadcrumb-item"><span>Generate TC </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">स्थानांतरण प्रमाणपत्र जनरेट </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();"
                                onmouseout="this.start();"
                                direction="left"
                                behavior="scroll"
                                scrollamount="7"
                                class="Marqueetext">
                                Generate TC  /स्थानांतरण प्रमाणपत्र जनरेट
                            </marquee>
                        </div>
                    </div>
                </div>
                <%--<div class="col-xxl-2 col-md-12 text-end"> <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>add new state</a> </div>--%>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Transfers /छात्र स्थानांतरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4">
                        <div class="form-group">
                            <label>
                                Academic Year 
                                        <br />
                                शैक्षणिक वर्ष <span style="color: red">*</span></label>
                            <select class="form-select select2">
                                <option value="0">--Select--</option>
                                <option selected value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>
                                <option value="2020">2020-21</option>
                                <option value="2019">2019-20</option>
                                <option value="2018">2018-19</option>
                                <option value="2016">2017-18</option>
                                <option value="2015">2016-17</option>
                                <option value="2015">2015-16</option>
                                <option value="2014">2014-15</option>
                                <option value="2013">2013-14</option>
                                <option value="2012">2012-13</option>
                                <option value="2011">2011-12</option>
                                <option value="2010">2010-11</option>
                                <option value="2009">2009-10</option>
                                <option value="2008">2008-09</option>
                                <option value="2007">2007-08</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="form-group">
                            <label>
                                Class
                                        <br />
                                कक्षा
                            </label>
                            <select class="form-select select2">
                                <option value="0">--Select--</option>
                                <option value="All">All</option>
                                <option value="1">1st</option>
                                <option value="2">2nd</option>
                                <option value="3">3rd</option>
                                <option value="4">4th</option>
                                <option value="5">5th</option>
                                <option value="6">6th</option>
                                <option value="7">7th</option>
                                <option value="8">8th</option>
                                <option value="9">9th</option>
                                <option value="10">10th</option>
                                <option value="11">11th</option>
                                <option value="12">12th</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="$('#fsStudentDtails').css('display','block')">Search</button>
                            <a href="Rpt_StudentTransferCertificate.aspx" class="btn btn-outline-danger w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fsStudentDtails" style="display: none">
                <legend>Student Details/ छात्र का विवरण</legend>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.
                                            <br />
                                            सरल क्र.</th>
                                        <th>Student Id
                                            <br />
                                            छात्र आई डी </th>
                                        <th>Student Name
                                            <br />
                                            छात्र का नाम</th>
                                        <th>Father Name
                                            <br />
                                            पिता का नाम</th>
                                        <th>Date of Birth
                                            <br />
                                            जन्म की तारीख</th>
                                        <th>Percentage  %
                                            <br />
                                            प्रतिशत % 

                                        </th>
                                        <th>Result Status
                                            <br />
                                            परिणाम स्थिति</th>
                                        <th>School
                                            <br />
                                            स्कूल</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2430440585</td>
                                        <td>Manoj Ahirwav</td>
                                        <td>Maakhan Ahirwar</td>
                                        <td>26/05/2001</td>
                                        <td>75%
                                        </td>
                                        <td>Pass
                                        </td>
                                        <td>

                                            <%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2"><i class="fa fa-print" aria-hidden="true"></i></button>--%>




                                            <button type="button" class="btn btn-outline-info btn-rounded w-lg" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Print</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>2430440554</td>
                                        <td>Santosh Mishra</td>
                                        <td>Vishnu Mishra</td>
                                        <td>21/04/2001</td>
                                        <td>68%
                                        </td>
                                        <td>Pass
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-outline-info btn-rounded w-lg" data-bs-toggle="modal" data-bs-target="#staticBackdrop">`</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>2430440748</td>
                                        <td>Vishal Varma</td>
                                        <td>Dheeraj Varma</td>
                                        <td>02/06/2002</td>
                                        <td>48%
                                        </td>
                                        <td>Fail
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-outline-info btn-rounded w-lg" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Print</button>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
            </fieldset>



            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <div class="certificate-container p-0 m-0">
                                <img
                                    id="imgbackLogo"
                                    class="d-flex align-items-center justify-content-center"
                                    style="z-index: +1; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);"
                                    src="./pngegg.png"
                                    alt="" />
                                <div class="container-fluid p-0 m-0">



                                    <div class="row mt-2">
                                        <div class="col-sm-2">
                                            <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100px; height: auto; background: none" class="responsive" />
                                        </div>
                                        <div class="col-8 text-center p-0 m-0">
                                            <h5>Government Laxmi Mandi Higher Secondary School</h5>
                                            <h5>Indore URBAN-1, Indore</h5>
                                            <h5>स्कूल डाइस कोड: 20203020213</h5>
                                        </div>
                                        <div class="col-sm-2">
                                            <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                        </div>
                                    </div>


                                    <div class="row align-items-center p-0 m-0 justify-content-center py-4">
                                        <legend style="width: auto" class="h4 py-2 px-4 text-dark">शाला स्थानांतरण प्रमाण पत्र
                                        </legend>
                                    </div>

                                    <div class="row" style="margin: 0 10px;">
                                        <div class="col-6">
                                            <span class="fw-semibold">क्रमांक: </span>26/30
                                        </div>
                                        <div class="col-6 text-end">
                                            <span class="fw-semibold">दिनांक: </span>09/09/2024

                                        </div>

                                    </div>
                                </div>
                                <div class="container-fluid p-0 m-0 px-2">
                                    <fieldset style="border: 1px solid black" class="py-1 px-2">
                                        <table class="table table-responsive">
                                            <tr>
                                                <td class="w-25 border-light"></td>
                                                <td class="w-20 border-light"></td>
                                                <td class="w-25 border-light"></td>
                                                <td class="w-30 border-light"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <label class="fw-bold">प्रमाणित किया जाता है कि श्री/कुमारी</label>
                                                </td>
                                                <td colspan="2">
                                                    <label>Avni Jain</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">
                                                    <label class="fw-semibold">पिता का नाम श्री</label>
                                                </td>
                                                <td>
                                                    <label>Mr. Abhijeet Jain</label>
                                                </td>
                                                <td class="fw-bold">
                                                    <label>जाति</label>
                                                </td>
                                                <td>
                                                    <label>Oc/St</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">माता का नाम श्रीमती</td>
                                                <td>Mrs. Anjali Jain</td>
                                                <td class="fw-bold">मातृभाषा</td>
                                                <td>Hindi</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">शाला का नाम (code)</td>
                                                <td colspan="3">Government Laxmi Mandi Higher Secondary School(012345678)</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">विकास खण्ड का नाम</td>
                                                <td>Indore</td>
                                                <td class="fw-bold">जिला का नाम</td>
                                                <td>Indore</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">में तारीख</td>
                                                <td>16/09/2024</td>
                                                <td class="fw-bold">से</td>
                                                <td>18/09/2024</td>
                                            </tr>
                                            <tr style="font-size: 15px;">
                                                <td colspan="2" class="fw-bold">तक उपस्थित रहा / रही ओर अब आज तारीख</td>
                                                <td>25/09/2024</td>
                                                <td class="fw-bold">को शाला छोड़ता/छोड़ती है</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold" colspan="2">शाला में प्रवेश पंजी क्रमांक
                    <span class="fw-normal">&nbsp;&nbsp;&nbsp;&nbsp;
                    1234567987</span></td>
                                                <td colspan="2">
                                                    <span class="fw-bold">के अनुसर उनकी जन्मतिथि (अंको मे)</span>
                                                    <span class="fw-normal">&nbsp;&nbsp;&nbsp; 16/09/2024</span></td>
                                            </tr>
                                            <tr>

                                                <td colspan="4">
                                                    <span style="font-weight: bold;">शब्दो में
                                                    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; सोलह सितम्बर दो हज़ार चौबीस &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-weight: bold;">है।</span></td>

                                            </tr>
                                            <tr>
                                                <td colspan="4" class="fw-bold">Note:- उसको टीका लगाया जा चुका हैं या अन्यथा चेचक के प्रकोप से सुरक्षित है। उसके द्वारा उत्तीर्ण वार्षिक कक्षौन्नति परीक्षा इस प्रकार हैं।</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">कक्षा</td>
                                                <td>7th Class</td>
                                                <td class="fw-bold">माध्यम</td>
                                                <td>Hindi</td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">वर्ष</td>
                                                <td>2024</td>
                                                <td class="fw-bold">छात्र को कक्षा</td>
                                                <td>7th Class</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="fw-bold">में प्रवेश दिया गया था
                 उसका आचरण</td>
                                                <td colspan="2">छात्र का आचरण अच्छा रहा।</td>

                                            </tr>
                                        </table>
                                    </fieldset>


                                    <div class="row align-items-center p-0 m-0 justify-content-center py-2 ">
                                        <div class="container mt-5">
                                            <div class="row flex-row  ">
                                                <div class="col-6  mt-4">
                                                    <label class="fw-semibold">कक्षाध्यापक</label>

                                                </div>

                                                <div class="col-6 text-end  mt-4">
                                                    <label class="fw-semibold text-center">प्राचार्य / प्रधानाध्यापक</label>
                                                    <br>
                                                    <label class="fw-semibold mt-2">
                                                        Government Laxmi Mandi
                                                        <br>
                                                        Higher Secondary School
                                                        <br>
                                                        Indore URBAN-1,
                Indore</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>




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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

