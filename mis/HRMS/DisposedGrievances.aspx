<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DisposedGrievances.aspx.cs" Inherits="mis_Transaction_DisposedGrievances" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row page-titles" style="margin-bottom: -30px">


        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Grievance%20Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)"><u><br>
                </u>
            </p>
        </div>
        <div class="col-md-3 mt-5 fw-bold fs-3" style="position: relative; bottom: 10px; left: 80px; font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
            <p>निराकृत शिकायतों की सूची</p>
        </div>

        <div class="col-md-5 align-self-center">

            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="ParivednaNevakarn.aspx" title="click to go on">Grievance Management System</a></li>
                    <li class="breadcrumb-item active">List of Resolved Grievance</li>

                </ol>
            </div>
        </div>
    </div>

    <%--<h4 class="fw-bold">List of Disposded Grievance</h4>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li>
                                <a class="nav-link  text-white " href="ParivednaNevakarn.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i>शिकायत पंजीयन</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_ParivadNivaran.aspx">Grievance Filed</a></li>
                                    <li><a class="dropdown-item" href="ParivednaNevakarnStatus.aspx">Grievance Tracking Status</a></li>
                                    <li><a class="dropdown-item" href="PrintComplaint.aspx">Print Grievance</a></li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>शिकायत प्रोसेसिंग </b></a>
                            </li>
                            <li>
                                <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>शिकायत निराकरण </b></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>रिपोर्ट</b> </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="DisposedGrievances.aspx">List of Resolved Grievance</a></li>
                                    <li><a class="dropdown-item" href="RejectedGrievances.aspx">List of Rejected Grievance</a></li>
                                    <li><a class="dropdown-item" href="ForwardedGrievances .aspx">District Wise Details of Forwarded Grievance</a></li>
                                    <li><a class="dropdown-item" href="CPIGrievancesDetails.aspx">Details of Grievance forwarded from CPI</a></li>
                                    <li><a class="dropdown-item" href="DistrictWiseProcessReport.aspx">District Wise Progress Report</a></li>
                                    <li><a class="dropdown-item" href="SectionWiseGrievanceReports.aspx">Section Wise Pending Report</a></li>
                                </ul>
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
                            <a href="#Grievance" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>List of Resolved Grievance</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <%--  <div class="row page-titles mb-4">--%>
    <div class="col-md-5" style="position: relative; bottom: 20px; right: 15px;">
        <%--      <p style="font-style: oblique; color: green; font-weight: bolder; font-size: large; font-family: Helvetica, Arial, sans-serif;">--%>
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -3rem">
            <img src="../../img/Grievance%20Logo.png" style="height: 60px"><u><br />
            </u>
        </p>
    </div>



    <div class="card   card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">List of Resolved Grievance/
           
निराकृत शिकायतों की सूची
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="show">
                <fieldset>
                    <legend>List of Resolved Grievance/समाधान की गई शिकायतों की सूची</legend>
                    <div class="row">

                        <div class="col-md-3">
                            <label class="font-bold">
                                District/
                                <br />
                                जिला<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control select2">
                                <asp:ListItem     value="0">--select--</asp:ListItem>
                                <asp:ListItem     value="1">Bhopal</asp:ListItem>
                                <asp:ListItem     value="2">Raisen</asp:ListItem>
                                <asp:ListItem     value="3">Rajgarh</asp:ListItem>
                                <asp:ListItem     value="4">Sehore</asp:ListItem>
                                <asp:ListItem     value="5">Vidisha</asp:ListItem>
                                <asp:ListItem     value="6">Ashoknagar</asp:ListItem>
                                <asp:ListItem     value="7">Shivpuri</asp:ListItem>
                                <asp:ListItem     value="8">Datia</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">
                                Section  Name/<br />
                                अनुभाग का नाम<span style="color: red">*</span></label>
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
                           <hr />
   <div class="col-md-12">
       <div class="form-group">
            <asp:Button runat="server" type="button" class=" btn w-lg btn-success btn-border" OnClick="btnSearch_Click" Text=" Search" ID="btnSearch" />
           <%-- <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>--%>
          <%-- <asp:Button runat="server" type="button" class=" btn w-lg btn-success btn-border" OnClick="Unnamed_Click" Text=" Search" />--%>
           <a href="DisposedGrievances.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
       </div>
   </div>

                       <%-- <div class="col-md-4 mt-3" style="position: relative; top: 2rem;">
                            <div class="form-group">
                                <asp:Button runat="server" type="button" class="btn btn-success btn-rounded" OnClick="btnSearch_Click" Text=" Search" ID="btnSearch" />
                                <a href="DisposedGrievances.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>--%>
                    </div>
                    <br />
                </fieldset>
            </div>
            <div runat="server" id="show2" visible="false">
                <fieldset>
                    <legend>Dispose Action Details/
निपटान कार्रवाई विवरण</legend>
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
                                    <table id="Table4" class="table table-bordered text-center m-1" runat="server">
                                        <thead>
                                            <tr>
                                                <th data-class="expand" scope="col">Sr.No./<br />
                                                    सरल क्र.
                                                </th>
                                                <th data-class="phone,tablet" scope="col">Grievance No./<br />
                                                    शिकायत क्र.
                                                </th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Employee Name/<br />
                                                    कर्मचारी का नाम</th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Type/<br />
                                                    प्रकार</th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Subject/<br />
                                                    विषय</th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Disposed On/<br>
                                                    पर निस्तारण किया गया</th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Disposed By/<br>
                                                    द्वारा निस्तारित</th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Dispose Details/<br>
                                                    निपटान विवरण</th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Status/<br />
                                                    स्थिति</th>
                                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">View Document/<br />
                                                    दस्तावेज़ देखें </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="expand">
                                                    <span >1</span>
                                                    <input type="hidden"   value="33554">
                                                </td>
                                                <td class="phone,tablet">
                                                    <span >33554</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Umashankar Agrawal [Principal HS ]</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Establishment Related</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >senior Scale - Second</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >5/2/2024 3:20:00 PM</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >DEO, CHHINDWARA</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >जिले में कार्यरत नही।</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Disposed</span>
                                                </td>
                                                <td style="display: table-cell;">

                                                    <a href="../Document/Dispose_File_Download.pdf" class="btn btn-primary">view</a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="expand">
                                                    <span >2</span>
                                                    <input type="hidden"   value="41194">
                                                </td>
                                                <td class="phone,tablet">
                                                    <span >41194</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Abhilasha Sahu [Prathmik Shikshak ]</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Others</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Others</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >5/2/2024 3:19:00 PM</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >DEO, CHHINDWARA</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >शिक्षा विभाग स्थानान्तरण नीति अंतर्गत् स्थानान्तरण आनलाईन आवेदन द्वारा किये है संबंधित आनलाईन अपना स्थानान्तरण आवेदन की निराकरण स्थिति देख सकते है शिकायत विलोपित करने का अनुरोध है</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Disposed</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <a href="../Document/Dispose_File_Download.pdf" class="btn btn-primary">view</a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="expand">
                                                    <span >3</span>
                                                    <input type="hidden"   value="53593">
                                                </td>
                                                <td class="phone,tablet">
                                                    <span >53593</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Gayatri Nagwanshi [Prathmik Shikshak ]</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Others</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Others</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >5/2/2024 3:18:00 PM</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >DEO, CHHINDWARA</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >ifjosnuk dk mYys[k ugh</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Disposed</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <a href="../Document/Dispose_File_Download.pdf" class="btn btn-primary">view</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="expand">
                                                    <span >4</span>
                                                    <input type="hidden"   value="55080">
                                                </td>
                                                <td class="phone,tablet">
                                                    <span >55080</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Mohammad Rafi [Prathmik Shikshak ]</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Others</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Others</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >5/2/2024 3:17:00 PM</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >DEO, CHHINDWARA</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >बी.एल.ओ.से मुक्त हेतु अपने तहसील कार्यालय में आवेदन देकर निराकरण करावे।</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <span >Disposed</span>
                                                </td>
                                                <td style="display: table-cell;">
                                                    <a href="../Document/Dispose_File_Download.pdf" class="btn btn-primary">view</a>

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
            <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #1B5B5C;">
                            <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                            <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">EMPLOYEE PERSONAL INFORMATION</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <%--<fieldset>
                                <legend>Detail</legend>
                                <div class="row">
                                    <div class="col-md-12">
                                        <table id="Table1" class="table table-bordered table-responsive-lg text-center " runat="server">
                                            <thead>
                                                <tr>
                                                    <th data-class="expand" scope="col">SN</th>
                                                    <th data-class="phone,tablet" scope="col">Grievance No</th>
                                                    <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Employee Name</th>
                                                    <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Type</th>
                                                    <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Subject</th>
                                                    <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Disposed On</th>
                                                    <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Disposed By</th>
                                                    <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Dispose Details</th>
                                                    <th data-hide="phone,tablet" scope="col" style="display: table-cell;">Status</th>
                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="expand">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblRowNumber">1</span>
                                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl10$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_hdnId" value="62888">
                                                    </td>
                                                    <td class="phone,tablet">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblGrievance">62888</span>
                                                    </td>
                                                    <td style="display: table-cell;">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblName">Sucheta Naidu [Madhymik Shikshak ]</span>
                                                    </td>
                                                    <td style="display: table-cell;">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblGrievance_Type">Others</span>
                                                    </td>
                                                    <td style="display: table-cell;">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblsubject">Others</span>
                                                    </td>
                                                    <td style="display: table-cell;">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lbldate">5/2/2024 3:06:00 PM</span>
                                                    </td>
                                                    <td style="display: table-cell;">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblDisposed_by">DEO, CHHINDWARA</span>
                                                    </td>
                                                    <td style="display: table-cell;">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblDispose_Details">शिकायत का निराकरण किया जा चुका है</span>
                                                    </td>
                                                    <td style="display: table-cell;">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblstatus">Disposed</span>
                                                    </td>
                                                    
                                                </tr>
                                           
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </fieldset>--%> <%--  <a href="../Document/Dispose_File_Download.pdf">../Document/Dispose_File_Download.pdf</a>
                            <div class="modal-footer justify-content-center">--%>
                            <%-- <button type="button" class=" btn btn-primary">Print</button>--%>
                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
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
                        text: "Do you want to Dispose this record ?",
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
                                text: 'Record Dispose Successfully!',
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

