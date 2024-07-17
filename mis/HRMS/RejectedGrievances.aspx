<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RejectedGrievances.aspx.cs" Inherits="mis_Transaction_RejectedGrievances" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                            <a href="#GrievanceReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>List of Rejected Grievance Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                <img src="../../img/Grievance%20Logo.png" style="height: 60px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Grievances Reject / शिकायतें अस्वीकृत
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <h3 class="fw-bold justify-content-center" style="position: relative; left: 500px; top: 10px; color: brown;"></h3>
            <div runat="server" id="show">
                <fieldset>
                    <legend>List of Rejected Grievances / अस्वीकृत शिकायतों की सूची</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    District<br />
                                    जिला<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control select2">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>1-Bhopal</asp:ListItem>
                                    <asp:ListItem>2-Raisen</asp:ListItem>
                                    <asp:ListItem>3-Rajgarh</asp:ListItem>
                                    <asp:ListItem>4-Sehore</asp:ListItem>
                                    <asp:ListItem>5-Vidisha</asp:ListItem>
                                    <asp:ListItem>6-Ashoknagar</asp:ListItem>
                                    <asp:ListItem>7-Shivpuri</asp:ListItem>
                                    <asp:ListItem>8-Datia</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Section Name<br />
                                    अनुभाग का नाम
                                <span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control select2">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>RMSA</asp:ListItem>
                                    <asp:ListItem>Est-1</asp:ListItem>
                                    <asp:ListItem>Est-2</asp:ListItem>
                                    <asp:ListItem>Est-3</asp:ListItem>
                                    <asp:ListItem>Est-4</asp:ListItem>
                                    <asp:ListItem>CAFMS</asp:ListItem>
                                    <asp:ListItem>New Cadre</asp:ListItem>
                                    <asp:ListItem>Finance</asp:ListItem>
                                    <asp:ListItem>Grant</asp:ListItem>
                                    <asp:ListItem>NSDL</asp:ListItem>
                                    <asp:ListItem>CPI</asp:ListItem>
                                    <asp:ListItem>Legal</asp:ListItem>
                                    <asp:ListItem>Mis</asp:ListItem>
                                    <asp:ListItem>Physical education</asp:ListItem>
                                    <asp:ListItem>Akadmik</asp:ListItem>
                                    <asp:ListItem>CM-RISE</asp:ListItem>
                                    <asp:ListItem>Planning</asp:ListItem>
                                    <asp:ListItem>TMC</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <hr />
                            <div class="form-group">
                                <asp:Button runat="server" type="button" class=" btn w-lg btn-success btn-border" OnClick="Unnamed_Click" Text=" Search" />
                                <a href="RejectedGrievances.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div runat="server" id="show2" visible="false">
                <fieldset>
                    <legend>Grievances Reject / शिकायतें अस्वीकृत</legend>
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
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th data-class="expand" scope="col">Sr.No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">Grievance No.<br />
                                                शिकायत क्र.
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">Employee Name<br />
                                                कर्मचारी का नाम</th>
                                            <th data-hide="phone,tablet" scope="col">Type<br />
                                                प्रकार</th>
                                            <th data-hide="phone,tablet" scope="col">Subject<br />
                                                विषय</th>
                                            <th data-hide="phone,tablet" scope="col">Rejected by<br />
                                                द्वारा अस्वीकार कर दिया
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">Rejected Date
                                                <br />
                                                अस्वीकृत तिथि
                                            </th>
                                            <th data-hide="phone,tablet" scope="col">Rejected Details<br>
                                                अस्वीकृत विवरण</th>
                                            <th data-hide="phone,tablet" scope="col">Status<br />
                                                स्थिति</th>
                                            <th data-hide="phone,tablet" scope="col" style="display: table-cell;">View Document<br />
                                                दस्तावेज़ देखें</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblRowNumber">1</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_hdnId" value="65745">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblGrievance">65745</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblName">Sanjeev Kumar Shrivastava [HM(MS) ]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblRejected_by">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblRejected_Date">10/08/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblRejected_Details">आपके आवेदन से स्‍पष्‍ट नहीं हो पा रहा है कि आप क्‍या चाहते है। कृपया स्‍पष्‍ट अभिमत के साथ दस्‍तावेज संलग्‍न कर पुन: आवेदन करें।</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblstatus">Rejected</span>
                                            </td>
                                            <td style="display: table-cell;">
                                                <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary">View</a></td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblRowNumber">2</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl03$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_hdnId" value="35392">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblGrievance">35392</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblName">Neeraj Saxena [Principal HSS ]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblRejected_by">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblRejected_Date">16/06/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblRejected_Details">आप क्या चाहते हो आवेदन में स्पष्ट रूप से उल्लेख करें</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblstatus">Rejected</span>
                                            </td>
                                            <td style="display: table-cell;">
                                                <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary">View</a></td>

                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblRowNumber">3</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl04$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_hdnId" value="34137">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblGrievance">34137</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblName">Neeraj Saxena [Principal HSS ]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblsubject">Salary</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblRejected_by">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblRejected_Date">16/06/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblRejected_Details">आप क्या चाहते हो आवेदन में स्पष्ट रूप से उल्लेख करें</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblstatus">Rejected</span>
                                            </td>
                                            <td style="display: table-cell;">
                                                <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary">View</a></td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblRowNumber">4</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl05$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_hdnId" value="32169">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblGrievance">32169</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblName">Neeraj Saxena [Principal HSS ]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblRejected_by">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblRejected_Date">16/06/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblRejected_Details">आप क्या चाहते हो आवेदन में स्पष्ट रूप से उल्लेख करें</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblstatus">Rejected</span>
                                            </td>
                                            <td style="display: table-cell;">
                                                <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary">View</a></td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblRowNumber">5</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl06$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_hdnId" value="10637">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblGrievance">10637</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblName">Varsha Palsule [Lecturer ]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblsubject">senior Scale - Second</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblRejected_by">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblRejected_Date">11/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblRejected_Details">आपका मूल पद क्या है कृपया आवेदन में उल्लेख करें</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblstatus">Rejected</span>
                                            </td>
                                            <td style="display: table-cell;">
                                                <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary">View</a></td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblRowNumber">6</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl07$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_hdnId" value="9972">
                                            </td>
                                            <td class="phone,tablet">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblGrievance">9972</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblName">Suman Kant Jain [Programmer (SSA) ]</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblsubject">senior Scale - First</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblRejected_by">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblRejected_Date">03/02/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblRejected_Details">सिकायत तथ्‍यहीन है।</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblstatus">Rejected</span>
                                            </td>
                                            <td style="display: table-cell;">

                                                <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary">View</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

