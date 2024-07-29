<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AcceptingAuthorityFilled.aspx.cs" Inherits="mis_Transaction_AcceptingAuthorityFilled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #workdescription2::-webkit-scrollbar {
            display: none;
        }


        /*textarea {
            resize: vertical;
            min-height: 40px;*/ /* Set a minimum height */
        /*}*/

        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        #ddlPosition {
            position: relative;
            bottom: 20px;
        }
        /*  .table th, .table td {
            padding: 0rem !important  ;
        }
        textarea{
              padding: 0rem !important  ;
        }*/
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
                        <li class="breadcrumb-item"><span>Accepting Authority ACR Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--  <div class="row page-titles mb-4">--%>
    <div class="row">
        <div class="col-md-5 ">
            <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
        </div>
    </div>

    <%--<div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                    </u>
                </p>
               
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
    </div>--%>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5>Reviewing Officer/
                     Acceptanceing Officer
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">

            <%--<nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-3mb-lg-0">
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
            </nav>--%>
            <br />

            <fieldset id="show2" runat="server">
                <legend>Filled By Review Accepting Authority Officer/ समीक्षा स्वीकार करने वाले प्राधिकारी अधिकारी द्वारा  भरना  जाए</legend>
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
                        <div class="table-responsive">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No
                                            <br />
                                            सरल क्र.</th>
                                        <th>Financial Year<br />
                                            वित्तीय वर्ष</th>
                                        <th>Unique ID/Name
                                            <br />
                                            कर्मचारी आईडी/नाम </th>
                                        <th>Date of Birth
                                            <br />
                                            जन्मतिथि</th>
                                        <th>Designation 
                                            <br />
                                            पदनाम</th>
                                        <th>Dise Code of Institution
                                            <br />
                                            संस्थान का डाइस कोड</th>
                                        <th>View Employee Application
                                            <br />
                                            कर्मचारी का आवेदन देखें</th>
                                        <th>View Reporting Officer Application
                                            <br />
                                            रिपोर्टिंग अधिकारी का आवेदन देखें</th>
                                        <th>ACR Form
                                            <br />
                                            एसीआर फॉर्म</th>
                                        <%--<th>Action
                                            <br />
                                            कार्रवाई</th>--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>2023-2024</td>
                                        <td>गोपाल वर्मा/<br />
                                            EDP4454445</td>
                                        <td>22/07/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click" />

                                        </td>
                                        <%-- <td>
                                            <button type="button" class="btn btn-danger btn-rounded" data-toggle="modal" data-target="#myModal">Reject</button></td>--%>
                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>2023-2024</td>

                                        <td>सागर गुप्ता/<br />
                                            EDP78974445</td>
                                        <td>28/09/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click1" />
                                        </td>
                                        <%--  <td>
                                            <button type="button" class="btn btn-danger btn-rounded" data-toggle="modal" data-target="#myModal">Reject</button></td>--%>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


            </fieldset>
            <fieldset runat="server" id="Fieldset2" visible="false">

                <legend>Part-3 Review To Be Filled By Reviewing Authorities/ भाग-3  समीक्षक अधिकारी द्वारा भरा जाये </legend>


                <div class="row align-items-end">
                    <div class="col-md-4">
                        <label>
                            Do you agree with the remarks of the reporting officer ?<br />
                            क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|<span style="color: red">*</span></label>
                        <select class="form-control select2" id="ddlremark1" onchange="myFunctionRemark1()">
                            <option value="0">--Select--</option>
                            <option value="1">Yes/हाँ</option>
                            <option value="2">No/नही</option>
                            <%--  <asp:ListItem>No/या</asp:ListItem>--%>
                            <option value="3">Partially/आंशिक</option>
                        </select>
                    </div>
                    <div class="col-md-4" id="remark" style="display: none;">
                        <label>
                            If no or agree partially give reasons for disagreement<br />
                            यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण<span style="color: red">*</span>
                        </label>

                        <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reason"></textarea>
                        <%-- <asp:ListItem>--Select--</asp:ListItem>
     <asp:ListItem>Yes/हाँ</asp:ListItem>
     <asp:ListItem>No/नही</asp:ListItem>
     <%--  <asp:ListItem>No/या</asp:ListItem>
     <asp:ListItem>Partially/आंशिक</asp:ListItem>--%>
                    </div>

                    <div class="col-md-4">
                        <label>
                            Grading<br />
                            ग्रेड<span style="color: red">*</span></label>
                        <select class="form-control select2" id="ddlfsgrade" onchange="myFunction1()">
                            <option value="0">--Select--</option>
                            <option value="1">Outstanding/उत्कृष्ट</option>
                            <option value="2">Very good/बहुत अच्छा</option>
                            <option value="3">good/अच्छा</option>
                            <option value="4">Satisfactory/संतोषप्रद</option>
                            <option value="5">Below satisfaction/असंतोषप्रद</option>
                        </select>
                    </div>
                    <div class="col-md-4" style="display: none;" id="OfficerName1">
                        <label>
                            Enter Remark For  Outstanding Grading
                            <br />
                            उत्कृष्ट ग्रेडिंग के लिए टिप्पणी<span style="color: red">*</span></label>
                        <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Remark For  Outstanding Grading"></textarea>

                    </div>
                </div>
            </fieldset>
            <br />

            <div runat="server" id="Fieldset1" visible="false">
                <%-- <div class="ROW">
                    <div class="col-md-3">
                        <label class="fw-bold fs-4">Employee Name/Unique ID</label>
                        <asp:TextBox runat="server" CssClass="form-control" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>
                    </div>
                </div>--%>
                <fieldset>
                    <legend>PART-4 Acceptance
                   To Be Filled By Accepting Authority /  भाग-4 स्वीकृत अधिकारी द्वारा भरा जाये</legend>
                    <div class="row align-items-end">
                        <div class="col-md-4">
                            <label class="fw-bold">
                                Employee Name/Unique ID<br />
                                कर्मचारी का नाम/ यूनिक आई.डी<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control  fw-bold" ReadOnly="true" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Do you agree with the remarks of the reporting officer ?<br />
                                क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है?<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlremark2" onchange="myFunctionRemark2()">
                                <option value="0">--Select--</option>
                                <option value="1">Yes/हाँ</option>
                                <option value="2">No/नही</option>
                                <%--  <asp:ListItem>No/या</asp:ListItem>--%>
                                <option value="3">Partially/आंशिक</option>

                            </select>
                        </div>
                        <div class="col-md-4" id="remark2" style="display: none;">
                            <label>
                                If no or agree partially give reasons for disagreement<br />
                                यदि नही या आंशिक रूप से सहमत होने पर बसहमति का कारण<span style="color: red">*</span>
                            </label>
                            <%-- <textarea class="form-control mb-2" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>--%>
                            <textarea class="form-control" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reason"></textarea>
                        </div>



                        <div class="col-md-4">
                            <label>
                                Grading<br />
                                ग्रेड<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlGrading" onchange="myFunction()">
                                <option value="0">--Select--</option>
                                <option value="1">Outstanding/उत्कृष्ट</option>
                                <option value="2">Very good/बहुत अच्छा</option>
                                <option value="3">good/अच्छा</option>
                                <option value="4">Satisfactory/संतोषप्रद</option>
                                <option value="5">Below satisfaction/असंतोषप्रद</option>
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
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="AcceptingAuthorityFilled.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--employee view--%>
    <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                            <legend>Performance / Learning of Student / प्रदर्शन/छात्रों का सीखना</legend>

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


                                            <%-- <tr valign="middle">
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

                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>1
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
                                            <%-- <tr valign="middle">
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
                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>2
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
                                            <%--     <tr valign="middle">
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


                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>3
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
                                            <%--     <tr valign="middle">
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

                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>4
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
                                    <textarea class="form-control mb-3fw-bold" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
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
                                    <textarea class="form-control mb-3fw-bold" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>

                        </fieldset>



                    </div>


                </div>
            </div>

        </div>
    </div>

    <%-- reporting officer--%>

    <div class="modal  fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">
                    <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">EMPLOYEE  ACR FORM</h3>
                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div runat="server" id="Div1">
                        <fieldset>
                            <legend>To be filled by reporting officer / प्रतिवेदक अधिकारी/रिपोर्टिंग अधिकारी द्वारा भरा जाये </legend>
                            <div class="fw-bold">Please give comment of agreement or disagreement on the achievement mentioned by the officer reported upon in self assessment.Please give reasons in case of disagreement and refer to communication made to the officer reported upon in this regard</div>
                            <div class="fw-bold">आवेदक अधिकारी/शिक्षक द्वारा स्वमूल्यांकन में उल्लेखित उपलब्धि के संबंध में सहमति/असहमति की टिप्पणी | असहमति की स्थिति में कारण एवं इस संबंध में किये गये पत्राचार का विवरण एवं स्केल पॉइंट में प्रदर्शन </div>
                            <br />
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="fw-bold fs-5">Employee Name/Unique ID</label>
                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>
                                </div>
                            </div>


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
                                        <th style="width: 400px;">Remark<br />
                                            अभियुक्ति</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">1</td>
                                    <td class="fw-bold">Completion of curriculum<br />
                                        पाठ्यक्रम को पूरा करना
                                    </td>
                                    <td class="text-center">15</td>
                                    <td class="text-center">
                                        <asp:TextBox runat="server" placeholder="10" CssClass="form-control w-100 text-center"></asp:TextBox>

                                    </td>
                                    <td>
                                        <textarea
                                            class="form-control  w-100" placeholder="Hardworking Student" id="workdescription9" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>

                                    </td>

                                </tr>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">2</td>
                                    <td class="fw-bold">Improving attendance
                                        <br />
                                        of children<br />
                                        छात्र उपस्थिति में वृध्दि
                                    </td>
                                    <td class="text-center">05</td>
                                    <td class="text-center">
                                        <asp:TextBox runat="server" placeholder="3" CssClass="form-control text-center w-100"></asp:TextBox></td>
                                    <td>
                                        <textarea
                                            class="form-control  w-100" placeholder="Hardworking Student" id="workdescription9" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                                    </td>

                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 130px" rowspan="6">3</td>
                                    <td class="fw-bold">Role in academic<br />
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
                                        <td>(a) Use of teaching learning aid<br />
                                            शिक्षण सहायक सामग्री का उपयोग</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(b)Use of lesson plan<br />
                                            पाठय योजना का उपयोग</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(c)Innovation and Impact<br />
                                            नवाचार तथा उसका प्रभाव</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(d)checking  of notebook of student<br />
                                            छात्रो की अभ्यास पुस्तिका की जाँच</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(f)Extra classes<br />
                                            अतिरिक्त कक्षा संचालन</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                </tr>

                                <tr>
                                    <td class="text-center" style="position: relative; top: 100px" rowspan="4">4</td>
                                    <td class="fw-bold">Extracurricular activities<br />
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
                                        <td>(a)Sports/Literacy/Cultural Activities<br />
                                            खेल/साहित्यिक/सास्कृतिक गतिविधियाँ</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(b)Extra ordinary workin<br />
                                            Hygiene/Environment<br />
                                            स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(c)Use of ICT in teaching and learning<br />
                                            शिक्षण एवं सिखाने में आई सी टी उपयोग</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>

                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 100px" rowspan="5">5</td>
                                    <td class="fw-bold">Individual Qualities<br />
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
                                        <td>(a)Attitude of work and
                                            <br />
                                            sense of responsibility<br />
                                            कार्य के प्रति अभिव्यक्ति एवं जिम्मेदारी का बोध</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(d)Capacity to work in a team with<br />
                                            team spirit and inter Personal
       relations<br />
                                            टीम में टीम भावना में काम
                                            <br />
                                            करने की क्षमता एवं परस्परसंबंध</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="3" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(c)Communication skill<br />
                                            संप्रेषण कौशल</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="7" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>(d)Capacity to work in a team with<br />
                                            team spirit and inter Personal
       relations<br />
                                            टीम में टीम भावना में काम
                                            <br />
                                            करने की क्षमता एवं परस्परसंबंध</td>
                                        <td>
                                            <asp:TextBox runat="server" placeholder="5" CssClass="form-control w-100 text-center"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control  w-100" id="workdescription3" placeholder="Hardworking Student" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                </tr>
                                <tr>

                                    <td class="text-center mt-2">6</td>
                                    <td class="fw-bold">Participation in
                                        <br />
                                        academic tranning<br />
                                        अवधि में प्रशिक्षण में सहभागिता 
                                    </td>
                                    <td class="text-center mt-2">05</td>
                                    <td class="text-center">
                                        <asp:TextBox runat="server" placeholder="3" CssClass="form-control text-center w-100"></asp:TextBox></td>
                                    <td>
                                        <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription12" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
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
                                 <asp:TextBox runat="server" placeholder="81" CssClass="form-control text-center w-100"></asp:TextBox></td>
                                    <td>
                                        <textarea class="form-control  w-100" placeholder="Hardworking Student" id="workdescription11" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea><br />
                                    </td>
                                </tr>

                            </table>


                            <fieldset style="position: relative; right: 10px;">
                                <legend>Grade</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-4 ">
                                        <label>
                                            Allegiance
                <br />
                                            सन्निष्ठा</label>
                                        <textarea class="form-control  fw-bold" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                    </div>
                                    <div class="col-md-4">
                                        <label>
                                            Please comment on overall assessment of the Teacher<br />
                                            शिक्षक के समग्र मूल्यांकन पर टिप्पणी</label>
                                        <textarea class="form-control  fw-bold" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                    </div>
                                    <div class="col-md-4 ">
                                        <label>
                                            Grade
                <br />
                                            शिक्षक के समग्र मूल्यांकन श्रेणी</label>
                                        <asp:DropDownList runat="server" CssClass=" form-control select2">
                                            <asp:ListItem>A+/उत्कृष्ट</asp:ListItem>
                                            <asp:ListItem>A+/उत्कृष्ट</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </fieldset>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
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
    <script>
        function myFunction1() {
            var ForwordTo = document.getElementById("ddlfsgrade").value;
            if (ForwordTo == "1") {
                document.getElementById('OfficerName1').style.display = "block";
            } else {
                document.getElementById('OfficerName1').style.display = "none";
            }
        }
    </script>

    <script>
        function myFunctionRemark1() {
            var ForwordTo = document.getElementById("ddlremark1").value;
            if (ForwordTo == "2") {
                document.getElementById('remark').style.display = "block";
            }
            else if (ForwordTo == "3") {

                document.getElementById('remark').style.display = "block";
            }
            else {
                document.getElementById('remark').style.display = "none";
            }
        }
    </script>
    <script>
        function myFunctionRemark2() {
            var ForwordTo = document.getElementById("ddlremark2").value;
            if (ForwordTo == "2") {
                document.getElementById('remark2').style.display = "block";
            }
            else if (ForwordTo == "3") {

                document.getElementById('remark2').style.display = "block";
            }
            else {
                document.getElementById('remark2').style.display = "none";
            }
        }
    </script>


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

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
</asp:Content>

