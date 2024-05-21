<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AcceptingAuthorityFilled.aspx.cs" Inherits="mis_Transaction_AcceptingAuthorityFilled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #workdescription2 {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        /*.nav-pills .nav-link.active, .nav-pills .show > .nav-link {
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
                <h6 style="font-size: 15px; margin-left: 25px">PART-4 Acceptance(भाग चार-स्वीकृतकर्ता)</h6>
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
                            <li><a class="nav-link  text-white " href="ConfedicialReportNotes.aspx" role="button"><b class="font-16 font-bold "><i class="fa fa-home "></i></b></a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee ACR </b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ConfedicialReport.aspx">Employee Apply ACR</a></li>
                                    <li><a class="dropdown-item" href="EmployeeDetails.aspx">Print Application </a></li>
                                </ul>
                            </li>
                            <li><a class="nav-link text-white" href="ReportingOfficerFill.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Fill By Reporting  Officer</b></a></li>
                            <li><a class="nav-link text-white" href="AcceptingAuthorityFilled.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Reviewing Fill Accepting Authority </b></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />

            <fieldset id="show2" runat="server">
                <legend>ACR Report Reviewing Fill Accepting Authority Details</legend>
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
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>गोपाल वर्मा/EDP4454445</td>
                                        <td>22/07/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                        </td>
                                        <td>
                                            <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click" />
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>सागर गुप्ता/EDP78974445</td>
                                        <td>28/09/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                        </td>
                                        <td>
                                            <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click1" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <%-- <ul class="nav nav-pills m-t-30 ms-3 m-b-30">
                    <li class=" nav-item"><a href="ConfedicialReport.aspx" class="nav-link  tab-menu" aria-expanded="false">Employee Personal Information</a> </li>
                    <li class="nav-item"><a href="TeacherFillReport.aspx" class="nav-link  tab-menu" aria-expanded="false">Teacher Report Filled</a> </li>
                    <li class="nav-item"><a href="ReportingOfficerFill.aspx" class="nav-link tab-menu" aria-expanded="true">Reporting Fill ACR Report</a> </li>
                    <li class="nav-item"><a href="AcceptingAuthorityFilled.aspx" class="nav-link active tab-menu" aria-expanded="true">Accepting Authority Fill ACR Report</a> </li>
                </ul>--%>
            <div runat="server" id="Fieldset1" visible="false">
                <%-- <div class="ROW">
                    <div class="col-md-3">
                        <label class="fw-bold fs-4">Employee Name/Unique ID</label>
                        <asp:TextBox runat="server" CssClass="form-control" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>
                    </div>
                </div>--%>
                <fieldset>
                    <legend>To Be Filled By Accepting Authority(स्वीकृत अधिकारी द्वारा भरा जाये)</legend>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="mt-3 fw-bold">
                                Employee Name/Unique ID<br />
                                (कर्मचारी का नाम/कर्मचारी आई.डी)</label>
                            <asp:TextBox runat="server" CssClass="form-control mt-2 fw-bold" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>
                        </div>
                        <div class="col-md-4 mt-4">
                            <label>Do you agree with the remarks of the reporting officer ?(क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|)</label>
                            <asp:DropDownList runat="server" CssClass="select2 form-control">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Yes/हाँ</asp:ListItem>
                                <asp:ListItem>No/नही</asp:ListItem>
                                <%--   <asp:ListItem>No/या</asp:ListItem>--%>
                                <asp:ListItem>Partially/आंशिक</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4" style="position: relative; top: 46px;">
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
                    <div class="row">
                        <div class="col-md-4 mt-4">
                            <label>
                                If no or agree partially give reasons for disagreement<br />
                                (यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण )</label>
                            <%-- <textarea class="form-control mb-2" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>--%>
                            <textarea class="form-control mb-2" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                        </div>
                    </div>
                </fieldset>
                <div class="row">
                    <div class="col-5"></div>
                    <div class="col-md-3 text-center" style="position: relative; top: 20px;">
                        <div class="form-group">
                            <button type="button" class="Alert-Save btn btn-success btn-rounded  ">
                                Send to Officer
                            </button>
                            <a href="AcceptingAuthorityFilled.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
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
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
</asp:Content>

