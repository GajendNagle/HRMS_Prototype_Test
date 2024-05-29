<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TeacherFillReport.aspx.cs" Inherits="mis_Transaction_TeacherFillReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #workdescription, #workdescription1, #workdescription2, #workdescription3, #workdescription4, #workdescription5, #workdescription6, #workdescription7, #workdescription8 {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        /*  .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
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

<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <%--<div class="col-md-5 align-self-center">
    <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
    <h4 class="text-themecolor" style="position: relative; left: 500px; bottom: 20px; color: brown; font-weight: bolder; font-family: Helvetica, Arial, sans-serif;">व्याख्याता/शिक्षक की गोपनीय चरित्रावली  </h4>
    <br />
    <h6 style="font-size: 15px; position: relative; left: 520PX; bottom: 20px;"></h6>
</div>--%>
            <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                    </u>
                </p>
                <h6 style="font-size: 15px; margin-left: 25px">PART-2 Self-Evaluation<br />
                    भाग दो-स्वमूल्यांकन</h6>
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


            <%--<ul class="nav nav-pills m-t-30 ms-3 m-b-30">
                    <li class=" nav-item"><a href="ConfedicialReport.aspx" class="nav-link  tab-menu" aria-expanded="false">Employee Personal Information</a> </li>
                    <li class="nav-item"><a href="TeacherFillReport.aspx" class="nav-link active  tab-menu" aria-expanded="false">Teacher Report Filled</a> </li>
                    <li class="nav-item"><a href="ReportingOfficerFill.aspx" class="nav-link tab-menu" aria-expanded="true">Reporting Fill ACR Report</a> </li>
                    <li class="nav-item"><a href="AcceptingAuthorityFilled.aspx" class="nav-link tab-menu" aria-expanded="true">Accepting Authority Fill ACR Report</a> </li>
                </ul>--%>


            <div runat="server" id="Fieldset1" style="display: block">
                <fieldset>
                    <legend>Improving Attendance Of Childdren / छात्र उपिस्थिति में वृद्धि </legend>

                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table5" class="table table-bordered table-responsive-lg text-center " runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
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
                                </thead>
                                <tbody>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <td>Previous Session<br />
                                            विगत सत्र</td>
                                        <td>Present Session
                                            <br />
                                            वर्तमान सत्र</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>1
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription4" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription5" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription6" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>5</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription7" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>6</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription8" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>7</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription7" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>8</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription8" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>9</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription9" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>10</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription10" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>11</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription11" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>12</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription12" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </fieldset>
                <label>
                    <span class="fa-pull-left" style="color: red; font-size: 15px; position: relative; bottom: 3px;">Note:-</span>The Column Menttioning last year average attendance Will Not Apply for class<br />
                    कक्षा 1 के पिछले वर्ष की औसत उपिस्थिति लागू नहीं होगी|</label>

                <div class="row justify-content-center">
                    <div class="col-md-3 text-center mt-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Save1 btn btn-success btn-rounded ">
                                Save/Next
                            </button>
                            <%-- <asp:Button runat="server" class="Alert-Save2 btn btn-success btn-rounded" Text="Save/Next"  />--%>
                            <a href="TeacherFillReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" id="fieldset2" style="display: none">
                <fieldset>
                    <legend>Complention of Syllabus Aganinst The Target / लक्ष्य के विरुद्ध पाठ्यक्रम  पूर्णता की स्थिति </legend>

                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table id="Table2" class="table table-bordered  text-center " runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No.
                                            <br />
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
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>5</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>6</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>7</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>8</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>9</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>10</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>11</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>12</td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" Text="100%" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

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
                            <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reasons  Minimum 100 words"></textarea>
                        </div>
                    </div>
                </fieldset>

                <div class="row justify-content-center">
                    <div class="col-md-3 text-center mt-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Save2 btn btn-success btn-rounded ">
                                Save/Next
                            </button>
                            <a href="TeacherFillReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" id="fieldset3" style="display: none">
                <fieldset>
                    <legend>Academic Performance and Syllabus Completion Status  / शैक्षणिक प्रदर्शन और पाठ्यक्रम समापन की स्थिति</legend>

                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table id="Table3" class="table table-bordered  text-center  " runat="server" style="border: 2px solid #1B5B5C;">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C; border: 2PX solid #1B5B5C;" class="text-white">
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
                                        <th colspan="5">Previous class annual
examination Result grade
wises Student number<br />
                                            पूर्व कक्षा के परीक्षा परिणाम के
अनुसार छात्रों की ग्रेडवार संख्या
                                        </th>
                                        <th colspan="5">Achievement on the basis
of annual examination result
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
                                        <td>1
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>2
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>

                                    </tr>

                                    <tr valign="middle">
                                        <td>3
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>4
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>5
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>6
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>7
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>8
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>9
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>10
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>11
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>12
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" Style="width: 70px;"></asp:TextBox></td>


                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-6">
                            <label>
                                Reasons Of Not achieving target
                                <br />
                                लक्ष्य  से कम उपलब्धि के करण</label>
                            <textarea class="form-control mb-2" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reasons Minimum 100 words"></textarea>
                        </div>
                    </div>



                    <label>
                        <span style="color: red; font-size: 15px;">Note:-</span>
                        1. * A-80% or avove, B-60-79%, C-45-59%, D-33-45%,E< 33% (Rounding off Will be in  higher number)<br />
                        &emsp; &emsp;&emsp; <span>अ-80 प्रतिशत या अधिक ,ब 60-79 प्रतिशत, स.45-59 प्रतिशत, द 33-45 प्रतिशत, ई 33 प्रतिशत से काम</span><br />
                        &emsp; &emsp; &emsp;<span>2.कक्षा 5वी 8वी 10वी 12वी हेतु बोर्ड पैटर्न/बोर्ड परीक्षा  के परिणाम अंकित किये जाये </span>|</label>

                </fieldset>
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center ">
                        <div class="form-group">
                            <button type="button" class="Alert-Save3 btn btn-success btn-rounded ">
                                Save/Next
                            </button>
                            <a href="TeacherFillReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" id="fieldset4" style="display: none">

                <%--         <fieldset>--%>
                <h4 class="fw-bold mb-5">Role in academic and Extra Curriculum activities
                    <br />
                    अकादमिक एवं पाठ्येत्तर गतिविधियों मे भूमिका<br />
                </h4>
                <span class="fw-bold">कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्य का विवरण दे:-</span>
                <fieldset>
                    <legend>Role in academic  <br /> अकादमिक कार्यो में भूमिका</legend>
                    <div class="row ">
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
                    </div>


                </fieldset>
                <br />


                <fieldset>
                    <legend>Extraacurricular Activities / पाठ्येत्तर गतिविधियों मे भूमिका </legend>

                    <div class="row mt-3">
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
                    </div>



                </fieldset>
                <br />
                <div>
                    <fieldset>
                        <legend>Academic trsining attended during  Appraisal period / प्रतिवेदित अवधि मे सहभागिता</legend>

                        <div class="row">
                            <div class="col-md-12">
                                <table id="Table4" class="table table-bordered table-responsive-lg text-center " runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>S.No.<br />
                                                सरल.क्र</th>
                                            <th>Name of Training<br />
                                                प्रशिक्षण का नाम</th>
                                            <th>Subject<br />
                                                विषय</th>
                                            <th>Period of Training<br />
                                                प्रशिक्षण की अवधि</th>
                                            <th>Result/Grade<br />
                                                उपलब्धि/ग्रेड</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>

                                        </tr>
                                    </tbody>

                                </table>
                            </div>
                        </div>

                        <label><span class="fa-pull-left" style="color: red; font-size: 15px; position: relative; bottom: 3px;">Note:-</span> * यदि प्रशिक्षण  में किये गये मूल्यांकन में ग्रेड प्राप्त  हुआ है, तो उल्लेखित किया जाए है|</label>
                    </fieldset>
                </div>
                <br />
                <fieldset>
                    <legend>Any Other Work Which You Want to Mention as an Outstanding Contribution / 
                        कोई अन्य कार्य जिसे आप एक उत्कृष्ट योगदान के रूप में उल्लेख करना चाहते है|</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <label>
                            </label>
                            <textarea class="form-control mb-2" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter  Other Work Outstanding Contribution in Minimum 100 words"></textarea>
                        </div>
                    </div>

                </fieldset>
                <div class="row justify-content-center">
                    <div class="col-md-3 text-center mt-3" style="position: relative; top: 20px;">
                        <div class="form-group">
                            <%-- <button type="button" class="btn btn-success btn-rounded " data-toggle="modal" data-target="#myModal">
                                Send to Officer

                            </button>--%>

                            <button type="button" class="btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal">Save  </button>
                            <a href="TeacherFillReport.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

 <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog modal-xl">
         <div class="modal-content">
             <div class="modal-header" style="background-color: #1B5B5C;">

                 <img src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                 <h3 class="modal-title  fw-bold  text-white ms-3">Send To Reporting Officer</h3>
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body">
                 <fieldset>
                     <legend>Send To Reporting Officer / रिपोर्टिंग अधिकारी को भेजें </legend>
                     <div class="row">
                         <div class="col-md-4">
                             <label>Reporting Officer Unique ID 
                                 <br />
                                 रिपोर्टिंग अधिकारी यूनिक आईडी<span style="color: red">*</span></label>
                             <asp:TextBox runat="server" CssClass="form-control" onchange="myFunction()"></asp:TextBox>

                         </div>

                         <div class="col-md-4" style="display: none;" id="OfficerName">
                             <label>Reporting Officer Name
                                 <br />
                                 रिपोर्टिंग अधिकारी का नाम <span style="color: red">*</span></label>
                             <asp:TextBox runat="server" CssClass="form-control" placeholder="Dilip Raghuwanshi"></asp:TextBox>

                         </div>

                         <div class="col-md-4" style="display: none;" id="SankulCode">
                             <label>Reporting Officer Sankul Code<br />
                                 रिपोर्टिंग अधिकारी संकुल कोड</label>
                             <asp:TextBox runat="server" CssClass="form-control" placeholder="GOVT. HSS SHYAMPUR-23010804504"></asp:TextBox>
                         </div>
                     </div>
                 </fieldset>
                 <div class="modal-footer justify-content-center">
                     <div style="display: none;" id="btn1">
                         <button type="button" class="btn btn-success Alert-Save btn-rounded">Send To Officer</button>
                         <a href="ReportingOfficerFill.aspx" class="btn btn-danger btn-rounded">Clear</a>
                     </div>
                 </div>
             </div>

         </div>
     </div>
 </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            document.getElementById('OfficerName').style.display = "block";
            document.getElementById('SankulCode').style.display = "block";
            document.getElementById('btn1').style.display = "block";


            //var x = document.getElementById("mySelect").value;
            //document.getElementById("demo").innerHTML = "You selected: " + x;
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
                            })

                        }
                    })
                }),
                    $('.Alert-Save1').click(function () {
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

                                })
                                document.getElementById('<%= fieldset2.ClientID %>').style.display = "block";
                                document.getElementById('<%= fieldset3.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset4.ClientID %>').style.display = "none";
                                document.getElementById('<%= Fieldset1.ClientID %>').style.display = "none";

                            }
                        })
                    }),
                    $('.Alert-Save2').click(function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "Do you want to Save  this record ?",
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
                                    text: 'Record Save  Successfully!',
                                    timer: 2000
                                    // animation: false,
                                    // customClass: {
                                    //     popup: 'animated tada'
                                    // }

                                })
                                document.getElementById('<%= fieldset2.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset3.ClientID %>').style.display = "block";
                                document.getElementById('<%= fieldset4.ClientID %>').style.display = "none";
                                document.getElementById('<%= Fieldset1.ClientID %>').style.display = "none";

                            }
                        })
                    }), $('.Alert-Save3').click(function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "Do you want to Save  this record ?",
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
                                    text: 'Record Save Successfully!',
                                    timer: 2000
                                    // animation: false,
                                    // customClass: {
                                    //     popup: 'animated tada'
                                    // }

                                })
                                document.getElementById('<%= fieldset2.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset3.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset4.ClientID %>').style.display = "block";
                                document.getElementById('<%= Fieldset1.ClientID %>').style.display = "none";

                            }
                        })
                    })


            };
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

