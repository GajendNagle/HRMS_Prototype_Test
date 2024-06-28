<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GenerateIDCard.aspx.cs" Inherits="mis_HRMS_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .card-body {
            font-family: "Poppins", sans-serif;
            font-weight: 100;
            font-style: normal;
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
                margin: 0;
                padding: 0;
            }

            .modal-body {
                margin: 0;
                padding: 0;
                width: 210%;
                height: 1500px;
                overflow: hidden !important;
                zoom: 90%;
                background-color: white;
            }

            .container-fluid, .card {
                background-color: white;
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

            .modal-body fieldset, .modal-body legend {
                border: none;
            }

            @page {
                size: A4;
                margin: 0px;
                padding: 0px
            }
        }

        .tabledata {
            font-size: 11px;
            font-weight: 500;
            line-height: normal;
        }

        .form-control {
            height: -26px;
            margin: 2px;
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
                            <a href="#IDCard" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee ID Card Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Print Employee ID Card</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-1">
        <div class="col-md-4 ">
            <img src="../../img/IDCARD.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Print Employee ID Card/
                    कर्मचारी आई.डी कार्ड प्रिंट करें
                    </h5>
                </div>
            </div>
        </div>

        <div class="card-body">
            <div>
                <div class="row mt-2">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                DDO/Shankul Name
                                <br />
                                डीडीओ/संकुल का नाम<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" class="form-control" autocomplete="off" placeholder="232589654521/ GOVT. HS AGURLI" />
                        </div>
                    </div>
                </div>
                <fieldset>
                    <legend>Print Employee Details / कर्मचारी विवरण प्रिंट करें</legend>
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
                        <div class="col-lg-12" runat="server" id="dvStudentDetails">
                            <div class="row" id="idCard">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <t
                                                head style="font-family: 'Poppins', sans-serif; font-size: 14px;">
                                                <tr role="row" id="details">
                                                    <th scope="col" id="photo" aria-label="जिला: activate to sort column ascending">Photo<br />
                                                        फ़ोटो</th>
                                                    <th scope="col" id="cardName" aria-label="Name: activate to sort column ascending">Name<br />
                                                        नाम   </th>
                                                    <th scope="col" id="cardEmployeeCode" aria-label="EmployeeCode: activate to sort column ascending">EmployeeCode<br />
                                                        कर्मचारी कोड</th>
                                                    <th scope="col" aria-label="शाला: activate to sort column ascending" id="cardFname">Father Name 
                                                        <br />
                                                        पिता का नाम</th>
                                                    <th scope="col" aria-label="dob: activate to sort column ascending" id="cardDob">Date of Birth<br />
                                                        जन्म की तारीख</th>
                                                    <th id="cardBloodgroup" scope="col" aria-label="Blood : activate to sort column ascending">Blood Group<br />
                                                        ब्लड ग्रुप </th>
                                                    <th id="cardMobileno" scope="col" aria-label="Mobile: activate to sort column ascending">Mobile Number<br />
                                                        मोबाइल नंबर</th>
                                                    <th id="cardDesignation" scope="col" aria-label="Designation: activate to sort column ascending">Designation<br />
                                                        पद</th>
                                                    <th id="cardOiscode" scope="col" aria-label="OIS: activate to sort column ascending">OIS Code<br />
                                                        ओआईएस कोड</th>
                                                    <th id="cardAddress" scope="col" aria-label="Address: activate to sort column ascending">Employee Address<br />
                                                        कर्मचारी पता</th>
                                                    <th id="cardValidfrom" scope="col" aria-label="Valid From: activate to sort column ascending">Valid From<br />
                                                        से मान्य</th>
                                                    <th id="cardValidupto" scope="col" aria-label="Valid: activate to sort column ascending">Valid Upto<br />
                                                        तक वैध है</th>
                                                    <%--  <th scope="col" aria-label="Upload: activate to sort column ascending" style="width: 0px !important;">Upload Signature<br />
                                                        हस्ताक्षर अपलोड करें</th>--%>
                                                    <th id="signature" scope="col" aria-label="View: activate to sort column ascending">View Signature<br />
                                                        हस्ताक्षर देखें</th>
                                                    <th>Employee Report<br />
                                                        कर्मचारी की रिपोर्ट</th>
                                                </tr>
                                            </t>
                                            <tbody style="font-weight: 500;">

                                                <tr id="row3">
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/11.jpg" alt="Image" style="width: 50px; height: 50px;" id="photo">
                                                    </td>
                                                    <td align="center" valign="middle" id="name">
                                                        <span class="tabledata">Ashok Verma</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="employeeCode">
                                                        <span class="tabledata">AI8496</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="fname">
                                                        <span class="tabledata">Mr. Harish Verma</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="dob">
                                                        <span class="tabledata">02/02/2024</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="bloodgroup">
                                                        <span class="tabledata">A+</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="mobileno">
                                                        <span class="tabledata">9898989898</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="designation">
                                                        <span class="tabledata">Principal HS</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="oiscode">
                                                        <span class="tabledata">2598634781/<br />
                                                            GOVT. HSS RATATALAI</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="address">
                                                        <span class="tabledata">17/2 Shastri
                                                            <br />
                                                            Nagar Ujjain</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="validfrom">
                                                        <input type="date" class="form-control" style="height: 9px;" value="2024-06-03">
                                                    </td>
                                                    <td align="center" valign="middle" id="validupto">
                                                        <input type="date" class="form-control" value="2028-06-03" />
                                                    </td>
                                                    <td align="center" valign="middle" id="signature">
                                                        <img src="../../img/Signature2.png" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <button type="button" class="btn btn-success w-lg btn-border" data-bs-toggle="modal" data-bs-target="#staticBackdrop4">Print</button>
                                                    </td>
                                                </tr>
                                                <tr id="row3 align-items-end">
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/112.png" alt="Image" style="width: 50px; height: 50px;" id="photo">
                                                    </td>
                                                    <td align="center" valign="middle" id="name">
                                                        <a class="tabledata">Rahul Yadav</a>
                                                    </td>
                                                    <td align="center" valign="middle" id="employeeCode">
                                                        <span class="tabledata">AI3333</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="fname">
                                                        <span class="tabledata">Mr. Bulbul Yadav</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="dob">
                                                        <span class="tabledata">02/02/1970</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="bloodgroup">
                                                        <span class="tabledata">AB+</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="mobileno">
                                                        <span class="tabledata">9000089898</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="designation">
                                                        <span class="tabledata">Adhyapak</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="oiscode">
                                                        <span class="tabledata">2111147810/
                                                            EPES  HATPIPLIYA</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="address">
                                                        <span class="tabledata">18/2 Patel<br />
                                                            Nagar Rajkot</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="validfrom3">
                                                        <input type="date" class="form-control" value="2022-01-01" />
                                                    </td>
                                                    <td align="center" valign="middle" id="validupto3">
                                                        <input type="date" class="form-control" value="2028-06-03" />
                                                    </td>
                                                    <td align="center" valign="middle" id="signature">
                                                        <img src="../../img/Signature3.jpg" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <button type="button" class="btn btn-success w-lg btn-border" data-bs-toggle="modal" data-bs-target="#staticBackdrop3">Print</button>

                                                    </td>
                                                </tr>
                                                <tr id="row3">
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/13.jpg" alt="Image" style="width: 50px; height: 50px;" id="photo">
                                                    </td>
                                                    <td align="center" valign="middle" id="name">
                                                        <a class="tabledata">Ram Srivastav</a>
                                                    </td>
                                                    <td align="center" valign="middle" id="employeeCode">
                                                        <span class="tabledata">AI0088</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="fname">
                                                        <span class="tabledata">Mr. JJ Srivastav</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="dob">
                                                        <span class="tabledata">08/08/1975</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="bloodgroup">
                                                        <span class="tabledata">B-</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="mobileno">
                                                        <span class="tabledata">9112289898</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="designation">
                                                        <span class="tabledata">Madhymik Shikshak</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="oiscode">
                                                        <span class="tabledata">2199999999/<br />
                                                            GOVT. HSS </span>
                                                    </td>
                                                    <td align="center" valign="middle" id="address">
                                                        <span class="tabledata">99 Indra Nagar<br />
                                                            Devri, MP</span>
                                                    </td>
                                                    <td align="center" valign="middle" id="validfrom2">
                                                        <input type="date" class="form-control" value="2024-01-02" />
                                                    </td>
                                                    <td align="center" valign="middle" id="validupto2">
                                                        <input type="date" class="form-control" value="2028-06-03" />
                                                    </td>
                                                    <td align="center" valign="middle" id="signature">
                                                        <img src="../../img/Signature4.jpg" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <br />
                                                        <button type="button" class="btn btn-success w-lg btn-border" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">Print</button>

                                                    </td>
                                                </tr>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-12" runat="server" id="Div1">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </fieldset>

                <%--  <div class="row" id="generateorder">
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Approve</button>
                    </div>
                </div>--%>
                <!-- Modal -->

                <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog ">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="btn btn-outline-danger w-lg btn-border btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <style>
                                    * {
                                        margin: 0px;
                                        padding: 0px;
                                    }

                                    .modal-body {
                                        font-family: Serif, Times New Roman;
                                        margin: 0;
                                        padding: 20px;
                                        background-color: white;
                                        text-align: center;
                                    }

                                    h1, .h1, h2, .h2, h3, .h3, h4, .h4, h5, .h5, h6, .h6 {
                                        margin-top: 0;
                                        margin-bottom: .5rem;
                                        /*font-family: "Rubik", sans-serif;*/
                                        font-weight: 700;
                                        line-height: 1.2;
                                        color: #02245B;
                                    }

                                    .id-card-container {
                                        width: 300px;
                                        margin: 0 auto;
                                        padding: 0px;
                                        display: flex;
                                        flex-direction: column;
                                        align-items: center;
                                        justify-content: center;
                                    }

                                    .id-card {
                                        width: 300px;
                                        height: 500px;
                                        border: 1px solid #ccc;
                                        border-radius: 8px;
                                        margin: 10px 0;
                                        padding: 0px;
                                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                                        display: flex;
                                        flex-direction: column;
                                        justify-content: space-between;
                                        align-items: center;
                                        text-align: center;
                                        position: relative;
                                        overflow: hidden;
                                    }

                                        .id-card::before {
                                            content: '';
                                            position: absolute;
                                            top: 0;
                                            left: 0;
                                            width: 100%;
                                            height: 100%;
                                            background-image: url('mis/dist/images/icon/MP_LOGO.svg');
                                            background-repeat: no-repeat;
                                            background-position: center;
                                            opacity: 0.1; /* Adjust the opacity value as needed */
                                            z-index: 1;
                                        }

                                        .id-card > * {
                                            position: relative;
                                            z-index: 2;
                                        }


                                        .id-card img {
                                            margin-bottom: 0px;
                                        }

                                    #imgProfile {
                                        margin: 5px auto 10px auto;
                                        border: 1px solid #009688;
                                        border-radius: 8px;
                                        background-color: #ccc
                                    }

                                    .id-card h4, .id-card h6, .id-card label {
                                        margin: 2px 0;
                                    }

                                    .id-card .row {
                                        width: 100%;
                                    }

                                    .Div_mainHeading {
                                        width: 98%;
                                        background-color: #009688;
                                    }

                                        .Div_mainHeading label {
                                            color: white
                                        }

                                    .id-card .row label {
                                        font-size: 10px;
                                        font-weight: bold;
                                        align-content: end;
                                    }

                                    span {
                                        /*font-size: 11px;*/
                                        /*font-weight: bold;*/
                                        line-height: normal;
                                    }

                                    .table td, .table th {
                                        line-height: normal;
                                        padding: 0.05rem 0.30rem 0.05rem 0.30rem;
                                        background: rgb(0, 0, 0, 0.00);
                                    }

                                    .table th, .col-6 label {
                                        white-space: nowrap
                                    }


                                    .row1 {
                                        height: 20px;
                                        border-top-left-radius: 8px;
                                        border-top-right-radius: 8px;
                                    }

                                    .row2 {
                                        height: 50px;
                                        border-bottom-left-radius: 8px;
                                        border-bottom-right-radius: 8px;
                                        padding-top: 5px;
                                    }

                                    .row1, .row2 {
                                        background: #009688;
                                    }
                                </style>
                                <fieldset class="lh-1">
                                    <div class="id-card-container">
                                        <!-- Front Side -->
                                        <div class="id-card" id="id-card-front">
                                            <img src="../dist/images/icon/MP_LOGO.svg" height="80" alt="Logo" />
                                            <h6>Government of Madhya Pradesh<br />
                                                मध्यप्रदेश शासन </h6>
                                            <div class="Div_mainHeading">
                                                <label>
                                                    School Education Department
                        <br />
                                                    Director of Public Instruction MP
                                                </label>
                                            </div>
                                            <label class="fw-bold">Employee Id No: AI3333</label>
                                            <img src="../../img/112.png" id="imgProfile" height="90" width="75" />
                                            <h3>Rahul Yadav</h3>
                                            <h6>Adhyapak</h6>
                                            <div class="row mb-2 justify-content-between">
                                                <div class="col-6">
                                                    <img src="../../img/signature1.jpg" height="40" />
                                                    <label>Sign Of Card Holder</label>

                                                </div>
                                                <div class="col-6">
                                                    <img src="../../img/signature2.png" height="40" />
                                                    <label>Commissioner</label>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Back Side -->
                                        <div class="id-card" id="id-card-back">
                                            <div class="row row1 w-100"></div>
                                            <div class="row justify-content-center">
                                                <table class="table table-borderless text-start">
                                                    <tr>
                                                        <th><span>Identity card</span></th>
                                                        <td>: </td>
                                                        <td><span>132</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <br />
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <th><span>Father's Name</span></th>
                                                        <td>: </td>
                                                        <td><span>Mr. Bulbul Yadav</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Date Of Birth</span></th>
                                                        <td>: </td>
                                                        <td><span>02/02/1970</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Mobile No.</span></th>
                                                        <td>: </td>
                                                        <td><span>9000089898</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Blood Group</span></th>
                                                        <td>: </td>
                                                        <td><span>AB+</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Address</span></th>
                                                        <td>: </td>
                                                        <td><span>18/2 Patel<br />
                                                            Nagar Rajkot</span></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="row justify-content-center">
                                                <table class="table table-borderless text-start w-50">
                                                    <tr>
                                                        <th><span>Valid From</span></th>
                                                        <td>: </td>
                                                        <td><span>01/04/2024</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Valid Upto</span></th>
                                                        <td>: </td>
                                                        <td><span>31/03/2025</span></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 p-0 text-start">
                                                    <ul>
                                                        <li>
                                                            <span>In case this card is lost/found, kindly inform/return to the issuing authority, Commissioner Directorate of Public Instructions M.P.
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <span>The use of this card is subject to the terms and conditions governing.</span>
                                                        </li>
                                                        <li><span>Not transferable.</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="row row2 ">
                                                <span>Office-DPI, Near Chetak Bridge, Gautam Nagar, Bhopal (M.P.) 462023
                        Ph.: 0755-2583650,2583653
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer text-center">
                                    <button type="button" class=" btn btn-success w-lg btn-border" onclick="window.print()">Print</button>
                                    <button type="button" class="btn btn-outline-danger w-lg btn-border btn-warning" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="staticBackdrop4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog ">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="btn btn-outline-danger w-lg btn-border btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset class="lh-1">
                                    <div class="id-card-container">
                                        <!-- Front Side -->
                                        <div class="id-card" id="id-card-front">
                                            <img src="../dist/images/icon/MP_LOGO.svg" height="80" alt="Logo" />
                                            <h6>Government of Madhya Pradesh<br />
                                                मध्यप्रदेश शासन </h6>
                                            <div class="Div_mainHeading">
                                                <label>
                                                    School Education Department
                        <br />
                                                    Director of Public Instruction MP
                                                </label>
                                            </div>
                                            <label class="fw-bold">Employee Id No: AI8496</label>
                                            <img src="../../img/11.jpg" id="imgProfile" height="90" width="75" />
                                            <h3>Ashok Verma</h3>
                                            <h6>Principal HS</h6>
                                            <div class="row mb-2 justify-content-between">
                                                <div class="col-6">
                                                    <img src="../../img/signature1.jpg" height="40" />
                                                    <label>Sign Of Card Holder</label>
                                                </div>
                                                <div class="col-6">
                                                    <img src="../../img/signature2.png" height="40" />
                                                    <label>Commissioner</label>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Back Side -->
                                        <div class="id-card" id="id-card-back">
                                            <div class="row row1 w-100"></div>
                                            <div class="row justify-content-center">
                                                <table class="table table-borderless text-start">
                                                    <tr>
                                                        <th><span>Identity card</span></th>
                                                        <td>: </td>
                                                        <td><span>133</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <br />
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <th><span>Father's Name</span></th>
                                                        <td>: </td>
                                                        <td><span>Mr. Harish Verma</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Date Of Birth</span></th>
                                                        <td>: </td>
                                                        <td><span>16/11/1989</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Mobile No.</span></th>
                                                        <td>: </td>
                                                        <td><span>8956237415</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Blood Group</span></th>
                                                        <td>: </td>
                                                        <td><span>A+</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Address</span></th>
                                                        <td>: </td>
                                                        <td><span>W-23, Shiv Colony, Sector 2, Mundi, Madhya Pradesh </span></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="row justify-content-center">
                                                <table class="table table-borderless text-start w-50">
                                                    <tr>
                                                        <th><span>Valid From</span></th>
                                                        <td>: </td>
                                                        <td><span>01/04/2024</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Valid Upto</span></th>
                                                        <td>: </td>
                                                        <td><span>31/03/2025</span></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 p-0 text-start">
                                                    <ul>
                                                        <li>
                                                            <span>In case this card is lost/found, kindly inform/return to the issuing authority, Commissioner Directorate of Public Instructions M.P.
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <span>The use of this card is subject to the terms and conditions governing.</span>
                                                        </li>
                                                        <li><span>Not transferable.</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="row row2 ">
                                                <span>Office-DPI, Near Chetak Bridge, Gautam Nagar, Bhopal (M.P.) 462023
                        Ph.: 0755-2583650,2583653
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer text-center">
                                    <button type="button" class=" btn btn-success w-lg btn-border" onclick="window.print()">Print</button>
                                    <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog ">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="btn btn-outline-danger w-lg btn-border btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <fieldset class="lh-1">
                                    <div class="id-card-container">
                                        <!-- Front Side -->
                                        <div class="id-card" id="id-card-front">
                                            <img src="../dist/images/icon/MP_LOGO.svg" height="80" alt="Logo" />
                                            <h6>Government of Madhya Pradesh<br />
                                                मध्यप्रदेश शासन </h6>
                                            <div class="Div_mainHeading">
                                                <label>
                                                    School Education Department
                        <br />
                                                    Director of Public Instruction MP
                                                </label>
                                            </div>
                                            <label class="fw-bold">Employee Id No: AI0088</label>
                                            <img src="../../img/13.jpg" id="imgProfile" height="90" width="75" />
                                            <h3>Ram Srivastav</h3>
                                            <h6>Madhymik Shikshak</h6>
                                            <div class="row mb-2 justify-content-between">
                                                <div class="col-6">
                                                    <img src="../../img/signature1.jpg" height="40" />
                                                    <label>Sign Of Card Holder</label>
                                                </div>
                                                <div class="col-6">
                                                    <img src="../../img/signature2.png" height="40" />
                                                    <label>Commissioner</label>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Back Side -->
                                        <div class="id-card" id="id-card-back">
                                            <div class="row row1 w-100"></div>
                                            <div class="row justify-content-center">
                                                <table class="table table-borderless text-start">
                                                    <tr>
                                                        <th><span>Identity card</span></th>
                                                        <td>: </td>
                                                        <td><span>135</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <br />
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <th><span>Father's Name</span></th>
                                                        <td>: </td>
                                                        <td><span>Mr. JJ Srivastav</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Date Of Birth</span></th>
                                                        <td>: </td>
                                                        <td><span>08/08/1975</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Mobile No.</span></th>
                                                        <td>: </td>
                                                        <td><span>9112289898</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Blood Group</span></th>
                                                        <td>: </td>
                                                        <td><span>B-</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Address</span></th>
                                                        <td>: </td>
                                                        <td><span>99 Indra Nagar
Devri, MP</span></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="row justify-content-center">
                                                <table class="table table-borderless text-start w-50">
                                                    <tr>
                                                        <th><span>Valid From</span></th>
                                                        <td>: </td>
                                                        <td><span>01/04/2024</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Valid Upto</span></th>
                                                        <td>: </td>
                                                        <td><span>31/03/2025</span></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 p-0 text-start">
                                                    <ul>
                                                        <li>
                                                            <span>In case this card is lost/found, kindly inform/return to the issuing authority, Commissioner Directorate of Public Instructions M.P.
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <span>The use of this card is subject to the terms and conditions governing.</span>
                                                        </li>
                                                        <li><span>Not transferable.</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="row row2 ">
                                                <span>Office-DPI, Near Chetak Bridge, Gautam Nagar, Bhopal (M.P.) 462023
                        Ph.: 0755-2583650,2583653
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer text-center">
                                    <button type="button" class=" btn btn-success w-lg btn-border" onclick="window.print()">Print</button>
                                    <button type="button" class="btn btn-outline-danger w-lg btn-border btn-warning" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            function showImagePreview(event) {
                var file = event.target.files[0];
                if (file) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var img = document.getElementById('imgPreview');
                        img.src = e.target.result;
                        img.style.display = 'block';
                    }
                    reader.readAsDataURL(file);
                }
            }

            function printRow(element) {
                // Get the parent row of the clicked print icon
                var row = element.closest('tr');

                // Clone the row content
                var rowClone = row.cloneNode(true);

                // Create a new window for printing
                var printWindow = window.open('', '', 'width=800,height=600');

                // Prepare the HTML content for the new window
                printWindow.document.write('<html><head><title>Print Table Row</title>');
                printWindow.document.write('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">');
                printWindow.document.write('<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>');
                printWindow.document.write('<style>table {width: 100%; border-collapse: collapse;} td {border: 1px solid #000; padding: 8px;} img {width: 50px; height: 50px;} .form-control {border: none;}</style>');
                printWindow.document.write('</head><body >');
                printWindow.document.write('<table>');
                printWindow.document.write(rowClone.outerHTML);
                printWindow.document.write('</table>');
                printWindow.document.write('</body></html>');

                // Close the document to render the content
                printWindow.document.close();

                // Print the content
                printWindow.print();

                // Close the print window after printing
                printWindow.close();
            }

        </script>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

