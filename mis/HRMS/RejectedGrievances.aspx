﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RejectedGrievances.aspx.cs" Inherits="mis_Transaction_RejectedGrievances" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <%--<style>     
        .text-dark:hover, a.text-dark:focus {
            color: white !important;
        }

    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Grievance%20Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)"><u><br>
                </u>
            </p>
        </div>
        <div class="col-md-3 mt-5 fw-bold fs-3" style="position: relative; bottom: 10px; left: 80px; font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
            <p>अस्वीकृत शिकायतों की सूची</p>
        </div>
        <%--  <div class="col-md-3 mt-4" style="position:relative; left:20px;">
         <p style="font-style: oblique; color: brown; font-weight: bolder;   font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align:right">शिकायत का निराकरण करना</p>
     </div>--%>

        <div class="col-md-5 align-self-center">

            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>

                    <li class="breadcrumb-item active">Grievance Application Status</li>
                </ol>
            </div>
        </div>
    </div>
    <h4 class="fw-bold">List of Rejected Grievance</h4>
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

     <a class="nav-link  text-white " href="ParivednaNevakarn.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
     <li class="nav-item dropdown">

       <%--  <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong>शिकायत पंजीयन</></strong></a>--%>
          <%-- <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत पंजीयन </b></a>--%>


           <a class="nav-link dropdown-toggle font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i> शिकायत पंजीयन</b></strong></a>
         <ul class="dropdown-menu">

             <li><a class="dropdown-item" href="Trn_ParivadNivaran.aspx">शिकायत दर्ज करे</a></li>

             <li><a class="dropdown-item" href="ParivednaNevakarnStatus.aspx">शिकायत ट्रैकिंग स्थिति</a></li>
             <li><a class="dropdown-item" href="PrintComplaint.aspx">शिकायत प्रिंट करे</a></li>

         </ul>
        
     </li>
   <%--  <a class="nav-link  text-white " href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold">शिकायत प्रोसेसिंग </b></a>--%>


        <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत प्रोसेसिंग </b></a>
   <%--  <a class="nav-link  text-white " href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold">शिकायत निराकरण </b></a>--%>



      <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत निराकरण </b></a>
 


     <li class="nav-item dropdown">
       <a class="nav-link dropdown-toggle font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  रिपोर्ट</b> </a>
         
          <ul class="dropdown-menu">

        <li><a class="dropdown-item" href="DisposedGrievances.aspx">निराकृत शिकायतों की सूची</a></li>
        <li><a class="dropdown-item" href="RejectedGrievances.aspx">अस्वीकृत शिकायतों की सूची</a></li>

        <li><a class="dropdown-item" href="ForwardedGrievances .aspx">जिलेवार अग्रेषित शिकायतों का विवरण</a></li>
        <li><a class="dropdown-item" href="CPIGrievancesDetails.aspx">CPI से अग्रेषित शिकायतों का विवरण</a></li>
        <%-- <li><a class="dropdown-item" href="#">शिकायत प्रिंट करे</a></li>--%>
    </ul>
     </li>
 </ul>



                    </div>
                </div>
            </nav>
            <br />

            <h3 class="fw-bold justify-content-center" style="position: relative; left: 500PX; top: 10PX; color: brown;"></h3>
            <div runat="server" id="show">
                <fieldset>
                    <legend>Grievances Reject</legend>

                    <div class="row">

                        <div class="col-md-4 fs-4">
                            <label>District<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control select2">
                                <asp:ListItem>--select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                                <asp:ListItem>Rajgarh</asp:ListItem>
                                <asp:ListItem>Sehore</asp:ListItem>
                                <asp:ListItem>Vidisha</asp:ListItem>
                                <asp:ListItem>Ashoknagar</asp:ListItem>
                                <asp:ListItem>Shivpuri</asp:ListItem>
                                <asp:ListItem>Datia</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4  fs-4">
                            <label>Authority  Name<span style="color: red">*</span></label>
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
                        <div class="col-md-4 text-center mt-4" style="position: relative; top: 10px;">
                            <div class="form-group">
                                <asp:Button runat="server" type="button" class="btn btn-success btn-rounded" OnClick="Unnamed_Click" Text=" Search" />
                                <a href="GrievancesDispose.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div runat="server" id="show2" visible="false">
                <fieldset>
                    <legend>Rejected Details</legend>
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
                    </div>

                    <table class="footable table  table-striped table-bordered footable-loaded default" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance" style="border-collapse: collapse;">
                        <thead>
                            <tr>
                                <th data-class="expand" scope="col">SN</th>
                                <th data-class="phone,tablet" scope="col">Grievance No</th>
                                <th data-hide="phone,tablet" scope="col">Name</th>
                                <th data-hide="phone,tablet" scope="col">Type</th>
                                <th data-hide="phone,tablet" scope="col">Subject</th>
                                <th data-hide="phone,tablet" scope="col">Rejected by</th>
                                <th data-hide="phone,tablet" scope="col">Rejected Date</th>
                                <th data-hide="phone,tablet" scope="col">Rejected Details</th>
                                <th data-hide="phone,tablet" scope="col">Status</th>
                                <th data-hide="phone,tablet" scope="col" style="display: table-cell;">View Doc</th>
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
         <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary"> Viwe</a></td>
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
 <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary"> Viwe</a></td>
                           
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
 <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary"> Viwe</a></td>
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
 <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary"> Viwe</a></td>
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
 <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary"> Viwe</a></td>
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

   <a href="../Document/Dispose_File_Download%20(2).pdf" class="btn btn-primary"> Viwe</a>
</td>
                            </tr>
                        </tbody>
                    </table>

                </fieldset>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

