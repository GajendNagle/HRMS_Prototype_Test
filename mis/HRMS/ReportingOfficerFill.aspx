<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ReportingOfficerFill.aspx.cs" Inherits="mis_Transaction_ReportingOfficerFill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #workdescription, #workdescription1, #workdescription2, #workdescription3, #workdescription4, #workdescription5, #workdescription6, #workdescription7, #workdescription8, #workdescription9, #workdescription10, #workdescription11, #workdescription12, #workdescription13, #workdescription14, #workdescription15, #workdescription16, #workdescription17, #workdescription18, #workdescription19 {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        /* .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            background-color: #16603ae3;
        }

        .profileimage {
            display: block;
            height: 6.2rem;
            margin-left: 5rem;
        }

        html body .m-t-30 {
            margin-top: 0px;
        }

        .tab-menu {
            color: #313132;
            font-weight: 600 !important;
            margin-left: 1px !important;
            border: 1px solid #a5a3a3 !important;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out !important;
        }

            .tab-menu:hover {
                color: #16603ae3;
            }*/

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

    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                    </u>
                </p>
                <h6 style="font-size: 15px; margin-left: 25px">PART-3 Assessment(भाग तीन- मूल्यांकन)</h6>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Annual Confidential Report (ACR)</li>
                    </ol>
                </div>
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
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <a class="nav-link  text-white " href="ConfedicialReportNotes.aspx" role="button"><b class="font-16 font-bold "><i class="fa fa-home "></i></b></a>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee ACR </b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ConfedicialReport.aspx">Employee Apply ACR</a></li>
                                    <li><a class="dropdown-item" href="EmployeeDetails.aspx">Resend/Print Application </a></li>
                                </ul>
                            </li>
                            <a class="nav-link text-white" href="ReportingOfficerFill.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Fill By Reporting  Officer</b></a>
                            <a class="nav-link text-white" href="AcceptingAuthorityFilled.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Reviewing Fill Accepting Authority </b></a>


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Rpt_EmployeeACR.aspx">Employee ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_ReportingOfficer.aspx">Reporting Officer ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_AcceptingAuthority.aspx">Accepting Authority ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_DistrictWiseAcr.aspx">District Wise ACR Report</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />


            <%-- <ul class="nav nav-pills m-t-30 ms-3 m-b-30">
                    <li class=" nav-item"><a href="ConfedicialReport.aspx" class="nav-link  tab-menu" aria-expanded="false">Employee Personal Information</a> </li>
                    <li class="nav-item"><a href="TeacherFillReport.aspx" class="nav-link  tab-menu" aria-expanded="false">Teacher Report Filled</a> </li>
                    <li class="nav-item"><a href="ReportingOfficerFill.aspx" class="nav-link active tab-menu" aria-expanded="true">Reporting Fill ACR Report</a> </li>
                    <li class="nav-item"><a href="AcceptingAuthorityFilled.aspx" class="nav-link tab-menu" aria-expanded="true">Accepting Authority Fill ACR Report</a> </li>
                </ul>--%>

            <fieldset id="show2" runat="server">
                <legend>ACR Report Fill By Reporting  Officer Details</legend>
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
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No</th>
                                        <th>Unique ID/Name</th>

                                        <th>Date of Birth</th>
                                        <th>Designation </th>
                                        <th>Dise Code of Institution</th>

                                        <th>View Employee Application</th>
                                        <th>ACR Form</th>
                                        <th>Action</th>
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
                </div>
            </fieldset>


            <div runat="server" id="Fieldset1" visible="false">
                <fieldset>



                    <div class="fw-bold">Please give comment of agreement or disagreement on the achievement mentioned by the officer reported upon in self assessment.Please give reasons in case of disagreement and refer to communication made to the officer reported upon in this regard</div>
                    <div class="fw-bold">(आवेदक अधिकारी/शिक्षक द्वारा स्वमूल्यांकन में उल्लेखित उपलब्धि के संबंध में सहमति/असहमति की टिप्पणी | असहमति की स्थिति में कारण एवं इस संबंध में किये गये पत्राचार का विवरण एवं स्केल पॉइंट में प्रदर्शन )</div>
                    <br />
                    <div class="row">
                        <div class="col-md-3">
                            <label class="fw-bold fs-4">Employee Name/Unique ID</label>
                            <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>

                        </div>

                    </div>
                    <legend>To be filled by reporting officer(प्रतिवेदक अधिकारी/रिपोर्टिंग अधिकारी द्वारा भरा जाये)</legend>



                    <table class="table table-bordered mt-3">
                        <thead>
                            <tr>

                                <th>S.No.(क्र)</th>
                                <th>Achievement shown in self assessment<br />
                                    (स्वमूल्यांकन में दर्शित उपलब्धि)</th>
                                <th>Scale Point
                                    (स्केल बिन्दु)</th>
                                <th>Assessment(मूल्यांकन)</th>
                                <th>Remark(अभियुक्ति)</th>
                            </tr>
                        </thead>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">1</td>
                            <td>
                                <h4 class="fw-bold">Completion of curriculum<br />
                                    (पाठ्यक्रम को पूरा करना)</h4>
                            </td>
                            <td class="text-center">15</td>
                            <td>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>

                            </td>
                            <td>
                                <textarea
                                    class="form-control  w-100" id="workdescription9" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>

                            </td>

                        </tr>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">2</td>
                            <td>
                                <h4 class="fw-bold">Improving attendance of children<br />
                                    (छात्र उपस्थिति में वृध्दि)</h4>
                            </td>
                            <td class="text-center">05</td>
                            <td>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td>
                                <textarea class="form-control  w-100" id="workdescription10" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>

                        </tr>

                        <tr>

                            <td class="text-center" style="position: relative; top: 130px">3</td>
                            <td>
                                <h4 class="fw-bold">Role in academic<br />
                                    (अकादमिक कार्यो में भूमिका):-<br />
                                </h4>
                                (a) Use of teaching learning aid<br />
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
                                अतिरिक्त कक्षा संचालन<br />
                            </td>
                            <td class="text-center" style="position: relative; top: 130px;">30</td>
                            <td style="position: relative; top: 40px;">
                                <asp:TextBox runat="server" CssClass="form-control w-100"></asp:TextBox>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2 w-100"></asp:TextBox>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2 w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2 w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2 w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2 w-100"></asp:TextBox><br />
                            </td>



                            <td style="position: relative; top: 40px;">
                                <textarea class="form-control  w-100" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100" id="workdescription4" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100" id="workdescription5" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100" id="workdescription6" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100" id="workdescription7" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100" id="workdescription8" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                        </tr>
                        <tr>
                            <td class="text-center" style="position: relative; top: 100px">4</td>
                            <td>
                                <h4 class="fw-bold">Extracurricular activities<br />
                                    पाठयेत्तर गतिविधियो में भूमिका:-</h4>

                                (a)Sports/Literacy/Cultural Activities<br />
                                खेल/साहित्यिक/सास्कृतिक गतिविधियाँ<br />
                                (b)Extra ordinary workin Hygiene/Environment<br />
                                स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य<br />
                                (c)Use of ICT in teaching and learning<br />
                                शिक्षण एवं सिखाने में आई सी टी उपयोग
                            </td>
                            <td class="text-center" style="position: relative; top: 100px;">15</td>
                            <td style="position: relative; top: 50px">
                                <asp:TextBox runat="server" CssClass="form-control  w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2 w-100"></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2 w-100"></asp:TextBox></td>
                            <td style="position: relative; top: 50px">
                                <textarea class="form-control  w-100" id="workdescription17" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100" id="workdescription18" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control  w-100" id="workdescription19" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>

                        </tr>

                        <tr>

                            <td class="text-center" style="position: relative; top: 100px">5</td>
                            <td>
                                <h4 class="fw-bold">Individual Qualities<br />
                                    व्यक्तिगत विशिष्टताये:-</h4>


                                (a)Attitude of work and sense of responsibility<br />
                                कार्य के प्रति अभिव्यक्ति एवं जिम्मेदारी का बोध<br />
                                (b)Maintenance of discipline<br />
                                अनुशासन<br />
                                (c)Communication skill<br />
                                संप्रेषण कौशल<br />
                                (d)Capacity to work in a team with team spirit and inter Personal
                                    relations<br />
                                टीम में टीम भावना में काम करने की क्षमता एवं परस्परसंबंध

                            </td>
                            <td class="text-center" style="position: relative; top: 100px;">30</td>
                            <td style="position: relative; top: 60px;">
                                <asp:TextBox runat="server" CssClass="form-control "></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2"></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control  mt-2"></asp:TextBox><br />
                                <asp:TextBox runat="server" CssClass="form-control mt-2"></asp:TextBox></td>
                            <td style="position: relative; top: 60px;">
                                <textarea class="form-control " id="workdescription13" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control " id="workdescription14" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control" id="workdescription15" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                <textarea class="form-control " id="workdescription16" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />

                            </td>
                        </tr>
                        <tr>

                            <td class="text-center mt-2">6</td>
                            <td>
                                <h4 class="fw-bold">Participation in academic tranning<br />
                                    (अवधि में प्रशिक्षण में सहभागिता )</h4>
                            </td>
                            <td class="text-center mt-2">05</td>
                            <td>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td>
                                <textarea class="form-control  w-100" id="workdescription12" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">7</td>
                            <td class="text-center">Total (योग)</td>
                            <td>
                                <asp:TextBox runat="server" CssClass="form-control text-center fw-bold" placeholder="100"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td>
                                <textarea class="form-control  w-100" id="workdescription11" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                            </td>
                        </tr>

                    </table>
                    <fieldset>

                        <legend>Grade</legend>
                        <div class="row">
                            <div class="col-md-4 mt-3">
                                <label>Allegiance (सन्निष्ठा)</label>
                                <textarea class="form-control mt-1" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                            </div>

                            <div class="col-md-4">
                                <label>
                                    Please comment on overall assessment of the Teacher
                                        (शिक्षक के समग्र मूल्यांकन पर टिप्पणी)</label>
                                <textarea class="form-control mb-2" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                            </div>

                            <div class="col-md-4 mt-4">
                                <label>Grade(शिक्षक के समग्र मूल्यांकन श्रेणी)</label>
                                <asp:DropDownList runat="server" CssClass="select2 form-control">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>A+/उत्कृष्ट</asp:ListItem>
                                    <asp:ListItem>A/बहुत अच्छा</asp:ListItem>
                                    <asp:ListItem>B/अच्छा</asp:ListItem>
                                    <asp:ListItem>C/संतोषप्रद</asp:ListItem>
                                    <asp:ListItem>D/असंतोषप्रद</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </fieldset>
                    <%--    <br />    <h6>Part-3 Review (भाग-3 समीक्षा)</h6>--%>
                    <fieldset>

                        <legend>Part-3 Review (भाग-3 समीक्षा)--समीक्षक अधिकारी द्वारा भरा जाये  </legend>


                        <div class="row">
                            <div class="col-md-4 mt-4">
                                <label>Do you agree with the remarks of the reporting officer ?(क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|)</label>
                                <asp:DropDownList runat="server" CssClass="select2 form-control">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Yes/हाँ</asp:ListItem>
                                    <asp:ListItem>No/नही</asp:ListItem>
                                    <%--  <asp:ListItem>No/या</asp:ListItem>--%>
                                    <asp:ListItem>Partially/आंशिक</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label>
                                    If no or agree partially give reasons for disagreement<br />
                                    (यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण )</label>
                                <textarea class="form-control" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                            </div>

                            <div class="col-md-4" style="position: relative; top: 40px;">
                                <label>Grading(ग्रेड)</label>
                                <asp:DropDownList runat="server" CssClass="select2 form-control">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Outstanding/उत्कृष्ट</asp:ListItem>
                                    <asp:ListItem>Very good/बहुत अच्छा</asp:ListItem>
                                    <asp:ListItem>good/अच्छा</asp:ListItem>
                                    <asp:ListItem>Satisfactory/संतोषप्रद</asp:ListItem>
                                    <asp:ListItem>Below satisfaction/असंतोषप्रद</asp:ListItem>

                                </asp:DropDownList>
                            </div>

                        </div>
                    </fieldset>
                </fieldset>
                <div class="row">
                    <div class="col-5"></div>
                    <div class="col-md-3 text-center" style="position: relative; top: 20px;">
                        <div class="form-group">
                            <button type="button" class="Alert-Save btn btn-success btn-rounded  ">
                                Send to Officer
                            </button>


                            <a href="ReportingOfficerFill.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Button trigger modal -->



    <!-- Modal -->
    <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #1B5B5C;">

                    <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">EMPLOYEE PERSONAL INFORMATION</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>EMPLOYEE PERSONAL INFORMATION</legend>
                        <br />
                        <div class="row">
                            <div class="col-md-3" style="position: relative; bottom: 20px;">
                                <div class="form-group">
                                    <label>
                                        Financial Year<br />
                                        (वार्षिक प्रतिवेदन अवधि वर्ष) <span class="fa-pull-right" style="color: red">*</span>
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
                                    <label>Name (नाम)  <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="txtName" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Designation (पद नाम) <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:DropDownList runat="server" ID="DropDownList1" class="form-control select2" autocomplete="off">
                                        <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                                        <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                                        <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                                        <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Unique ID
                       (कर्मचारी आई.डी)
                    <span class="fa-pull-right" style="color: red">*</span>
                                    </label>
                                    <asp:TextBox runat="server" ID="TextBox4" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Date of Birth(जन्मतिथि)/अंकों में <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="TXTDOB" class="form-control  mt-4" autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

                                </div>
                            </div>
                            <%--  <div class="col-md-3">
                <div class="form-group">
                    <label>Date of Birth(जन्मतिथि)/ शब्दों में <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

                </div>
            </div>--%>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Institution of Posting<br />
                                        (पदस्थी शाला/स्थान)<span class="fa-pull-right" style="color: red; position: relative; bottom: 20px;">*</span></label>
                                    <asp:DropDownList runat="server" ID="ddlPosting" class="form-control mb-5 select2" autocomplete="off">
                                        <asp:ListItem>भोपाल</asp:ListItem>
                                        <asp:ListItem>बैतूल</asp:ListItem>
                                        <asp:ListItem>इंदौर </asp:ListItem>
                                        <asp:ListItem>जबलपुर</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="fs-6">
                                        Dise Code of Institution<br />
                                        (पदस्थी शाला का डाइस कोड)<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" placeholder="St Theresa Girls School/489754554"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3" style="position: relative; bottom: 20px;">
                                <div class="form-group">
                                    <label>
                                        Date OF First Posting and designation<br />
                                        (प्रथम नियुक्ति का दिनांक एवं पद)<span style="color: red;">*</span>
                                    </label>
                                    <asp:TextBox runat="server" ID="txtFirstPosting" class="form-control" autocomplete="off" value="1992-09-17" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>


                        </div>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Date OF  Posting/Pramotion<br />
                                        (वर्तमान पद पर नियुक्ति/ पदोन्नति दिनांक)<span style="color: red;">*</span>
                                    </label>
                                    <asp:TextBox runat="server" ID="txtPrmaotion" class="form-control mt-3" autocomplete="off" value="1996-12-23" TextMode="Date" Style="position: relative; top: 5px;"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3 mt-1">
                                <div class="form-group">
                                    <label>
                                        Date OF Filiing of annual Immovabel Property Return<br />
                                        (स्थाई संपत्ती विवरण दाखिल करनेका दिनांक)<span style="color: red;">*</span>
                                    </label>
                                    <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date" Style="position: relative; bottom: 4px;"></asp:TextBox>

                                </div>
                            </div>

                        </div>


                    </fieldset>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-success" onclick="window.print()">Print</button>
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>

                    </div>

                </div>
            </div>

        </div>
    </div>
    <%--  employee viwe--%>

    <div class="modal  fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #1B5B5C;">

                    <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">EMPLOYEE  ACR FORM</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div runat="server" id="show">
                        <fieldset>
                            <legend>EMPLOYEE PERSONAL INFORMATION</legend>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Financial Year(वार्षिक प्रतिवेदन अवधि वर्ष) <span class="fa-pull-right" style="color: red">*</span> </label>
                                        <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control select2">
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
                                        <label>Name (नाम)  <span class="fa-pull-right" style="color: red">*</span> </label>
                                        <asp:TextBox runat="server" ID="TextBox1" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Designation (पद नाम) <span class="fa-pull-right" style="color: red">*</span> </label>
                                        <asp:DropDownList runat="server" ID="DropDownList3" class="form-control select2" autocomplete="off">
                                            <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                                            <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                                            <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                                            <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID
                                                    (कर्मचारी आई.डी)
                                                 <span class="fa-pull-right" style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox2" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Date of Birth<br />
                                            (जन्मतिथि)/अंकों में <span class="fa-pull-right" style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox3" class="form-control" autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

                                    </div>
                                </div>
                                <%--  <div class="col-md-3">
                                             <div class="form-group">
                                                 <label>Date of Birth(जन्मतिथि)/ शब्दों में <span class="fa-pull-right" style="color: red">*</span> </label>
                                                 <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

                                             </div>
                                         </div>--%>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Institution of Posting<br />
                                            (पदस्थी शाला/स्थान)<span style="color: red; position: relative; bottom: 20px; right: 60PX;">*</span></label>
                                        <asp:DropDownList runat="server" ID="DropDownList4" class="form-control mb-5 select2" autocomplete="off">
                                            <asp:ListItem>भोपाल</asp:ListItem>
                                            <asp:ListItem>बैतूल</asp:ListItem>
                                            <asp:ListItem>इंदौर </asp:ListItem>
                                            <asp:ListItem>जबलपुर</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="fs-6">
                                            Dise Code of Institution<br />
                                            (पदस्थी शाला का डाइस कोड)<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" ID="TextBox6" class="form-control" autocomplete="off" placeholder="St Theresa Girls School/489754554"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Date OF First Posting and designation<br />
                                            (प्रथम नियुक्ति का दिनांक एवं पद)<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox7" class="form-control" autocomplete="off" value="1992-09-17" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>


                            </div>
                            <div class="row">

                                <div class="col-md-3 mt-2">
                                    <div class="form-group">
                                        <label>
                                            Date OF  Posting/Pramotion<br />
                                            (वर्तमान पद पर नियुक्ति/ पदोन्नति दिनांक)<span style="color: red;">*</span>
                                        </label>
                                        <br />
                                        <asp:TextBox runat="server" ID="TextBox8" class="form-control mt-1" autocomplete="off" value="1996-12-23" TextMode="Date" Style="position: relative; top: 5px;"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3 mb-1">
                                    <div class="form-group">
                                        <label>
                                            Date OF Filiing of annual Immovabel Property Return
                                                     (स्थाई संपत्ती विवरण दाखिल करनेका दिनांक)<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox9" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date" Style="position: relative; bottom: 4px;"></asp:TextBox>

                                    </div>
                                </div>

                            </div>


                        </fieldset>
                        <br />
                        <h5 class="fw-bold ml-3" style="color: #416a59;">PART-2 Self-Evaluation(भाग दो-स्वमूल्यांकन)</h5>
                        <br />
                        <%--  <fieldset>
                          <legend>PART-2 Self-Evaluation(भाग दो-स्वमूल्यांकन)</legend>--%>
                        <br />
                        <fieldset>


                            <legend>Improving Attendance Of Childdren(छात्र उपिस्थिति में वृद्धि)</legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table5" class="table table-bordered table-responsive-lg text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th rowspan="2">S.No.(स.क्र)</th>
                                                <th rowspan="2">Class being taught<br />
                                                    (पढाई जाने वाली कक्षा)</th>
                                                <th colspan="2">Enrolment(नामांकन)</th>
                                                <th rowspan="2">Average Annual attendance 
                            <br />
                                                    in Percentege<br />
                                                    (वार्षिक औसत उपिस्थिति)</th>
                                                <th rowspan="2">Remark (टिप्पणी)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <td>Previous Session<br />
                                                    (विगत सत्र)</td>
                                                <td>Present Session
                                <br />
                                                    (वर्तमान सत्र)</td>
                                            </tr>
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
                            <legend>Complention of Syllabus Aganinst The Target(लक्ष्य के विरुद्ध पाठ्यक्रम  पूर्णता की स्थिति)</legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table2" class="table table-bordered table-responsive-lg text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>S.No.(स.क्र)</th>
                                                <th>Class(कक्षा)</th>
                                                <th>Subject(विषय)</th>
                                                <th>Target(In % age)<br />
                                                    (लक्ष्य प्रतिशत में)</th>
                                                <th>Achievement (In % age)<br />
                                                    (उपलब्धि प्रतिशत में)</th>
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
                                    <label><span class="fa-pull-left">Reasons, if any, fro not completing the target (लक्ष्य  प्राप्ति न होने के करण)</span></label>
                                    <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>
                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Complention of Syllabus Aganinst The Target</legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table3" class="table table-bordered table-responsive-lg text-center table-responsive " runat="server" style="border: 2px solid #1B5B5C;">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C; border: 2PX solid #1B5B5C;" class="text-white">
                                                <th>S.No.(स.क्र)</th>
                                                <th>Class(कक्षा)</th>
                                                <th>Subject(विषय)</th>
                                                <th>No.of
                               <br />
                                                    Student<br />
                                                    (छात्र संख्या)
                                                </th>
                                                <th colspan="5">Previous class annual
                               examination Result grade
                               wises Student number<br />
                                                    (पूर्व कक्षा के परीक्षा परिणाम के
                            
                               अनुसार छात्रों की ग्रेडवार संख्या)
                                                </th>
                                                <th colspan="5">Achievement on the basis
                            
                               of annual examination result
                               <br />
                                                    (वार्षिक परीक्षा के
                               आधार पर उपलब्धि)<br />
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
                                    <label>Reasons Of Not achieving target (लक्ष्य  से कम उपलब्धि के करण)</label>
                                    <textarea class="form-control mb-2 fw-bold" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>



                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Role in academic (अकादमिक कार्यो में भूमिका)</legend>
                            <div class="row mt-3">
                                <div class="col-md-4">
                                    <label>
                                        Use of  teaching  learning aid
                   <br />
                                        (शिक्षक सहायक सामग्री का उपयोग)  
                                    </label>
                                    <asp:TextBox runat="server" ID="txtteaching" CssClass="form-control fw-bold" placeholder="Nil"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Use of  lesson plan(पाठ्य योजना का उपयोग)   </label>
                                    <asp:TextBox runat="server" ID="TextBox10" CssClass="form-control mt-4 fw-bold" Style="position: relative; bottom: 3px;" placeholder="Nil"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Innovation and impect(नवाचार तथा उसका प्रभाव)   </label>
                                    <asp:TextBox runat="server" ID="TextBox11" CssClass="form-control mt-4 fw-bold" Style="position: relative; bottom: 3px;" placeholder="Nil"></asp:TextBox>
                                </div>
                            </div>


                            <div class="row mt-3">
                                <div class="col-md-4">
                                    <label>
                                        Checking of notebook's of students<br />
                                        (छात्रों की अभ्यास पुस्तिका की जांच) 
                                    </label>
                                    <asp:TextBox runat="server" ID="TextBox12" CssClass="form-control fw-bold" placeholder="Nil"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Remedial teaching (निदात्मक शिक्षण) </label>
                                    <asp:TextBox runat="server" ID="TextBox13" CssClass="form-control mt-4 fw-bold" Style="position: relative; bottom: 3px;" placeholder="Nil"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Extra Classes(अतिरिक्त कक्षा संचालन) </label>
                                    <asp:TextBox runat="server" ID="TextBox14" CssClass="form-control mt-4 fw-bold" Style="position: relative; bottom: 3px;" placeholder="Nil"></asp:TextBox>
                                </div>
                            </div>


                        </fieldset>
                        <br />


                        <fieldset>
                            <legend>Extraacurricular Activities(पाठ्येत्तर गतिविधियों मे भूमिका )</legend>

                            <div class="row mt-3">
                                <div class="col-md-4">
                                    <label>
                                        Sports/Literary/Cultural Activities
                              <br />
                                        खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ 
                                    </label>
                                    <asp:TextBox runat="server" ID="TextBox15" CssClass="form-control mt-3 fw-bold" Style="position: relative; top: 6px;" placeholder="Nil"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>
                                        Extra Ordinary Work in Hygiene/Environment
                              <br />
                                        स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</label>
                                    <asp:TextBox runat="server" ID="TextBox16" CssClass="form-control mt-5 fw-bold" Style="position: relative; bottom: 26px;" placeholder="Nil"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>
                                        Use of ICT in teaching and learning<br />
                                        शिक्षण एवं सिखने में आई सी टी का उपयोग</label>
                                    <asp:TextBox runat="server" ID="TextBox17" CssClass="form-control mt-4 fw-bold" Style="position: relative; bottom: 3px;" placeholder="Nil"></asp:TextBox>
                                </div>
                            </div>



                        </fieldset>
                        <br />
                        <fieldset>
                            <legend>Academic trsining attended during  Appraisal period(प्रतिवेदित अवधि मे सहभागिता)</legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table4" class="table table-bordered table-responsive-lg text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>S.No.(स.क्र)</th>
                                                <th>Name of Training(प्रशिक्षण का नाम)</th>
                                                <th>Subject(विषय)</th>
                                                <th>Period of Training(प्रशिक्षण की अवधि)</th>
                                                <th>Result/Grade(उपलब्धि/ग्रेड)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle">
                                                <td>1</td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="स्कूली शिक्षा"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="जीव विज्ञान"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="1 वर्ष"></asp:TextBox></td>
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
                            <legend>Any Other Work Which You Want to Mention as an Outstanding Contribution<br />
                                (कोई अन्य कार्य जिसे आप एक उत्कृष्ट योगदान के रूप में उल्लेख करना चाहते है)</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                    </label>
                                    <textarea class="form-control mb-2 fw-bold" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>

                        </fieldset>

                        <div class="modal-footer justify-content-center" id="button">
                            <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                        </div>
                        <%--  </fieldset>--%>
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
                <div class="modal-header" style="background-color: #1B5B5C; color: white">
                    <h4 class="modal-title">Add Remark For Reject ACR Report </h4>
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
    <script>
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
                                text: 'Record Send Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
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


</asp:Content>


