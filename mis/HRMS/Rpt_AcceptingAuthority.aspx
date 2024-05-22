﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_AcceptingAuthority.aspx.cs" Inherits="mis_Transaction_Rpt_AcceptingAuthority" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #workdescription2 {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }



        #ddlPosition {
            position: relative;
            bottom: 20px;
        }
        /*@media print {*/
        /* Show modal content in full page */
        /*.modal-dialog {
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
     }*/
        /* Hide unnecessary elements */
        /*body.modal-open {
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
         position: center;*/
        /*right:40px;*/
        /*}*/

        @media Print {
            /* Show modal content in full page */

            #show2, .navbar, #hrms, #button, .footer {
                display: none;
            }
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
            <div class="col-md-7 align-self-center text-end" id="hrms">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                        <li class="breadcrumb-item active"></li>
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


            <fieldset id="show2">
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

                                        <th>Employee Report</th>
                                        <th>Reporting Officer Report</th>
                                        <th>Accepting Authority Report</th>

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
                                            <a href="Rpt_EmployeeACR.aspx"  class="btn btn-primary"> <i class="fa fa-print" aria-hidden="true" >
                                                                                                                                                  </i></a>
                                        </td>
                                       
                                         <td>
      <a href="Rpt_ReportingOfficer.aspx" class="btn btn-primary" > <i class="fa fa-print" aria-hidden="true" ></i></a>
 </td>
                                                                                <td>
   <a onclick="showtbl()" class="btn btn-primary"> <i class="fa fa-print" aria-hidden="true"></i> </a>

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
                                            <a href="Rpt_EmployeeACR.aspx"  class="btn btn-primary"> <i class="fa fa-print" aria-hidden="true" >
                                                                                                                                                  </i></a>
                                        </td>
                                                                      <td>
     <a href="Rpt_ReportingOfficer.aspx" class="btn btn-primary" > <i class="fa fa-print" aria-hidden="true" ></i></a>
</td>
                                         <td>
       <a onclick="showtbl()" class="btn btn-primary"> <i class="fa fa-print" aria-hidden="true"></i> </a>
 </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>



            <br />
               <fieldset style="display: none;" id="FS_FillByOfficer">

                <legend>To Be Filled By Accepting Authority(स्वीकृत अधिकारी द्वारा भरा जाये)</legend>
                <div class="row">
                    <div class="col-md-4">
                        <label class="mt-3 fw-bold">
                            Employee Name/Unique ID<br />
                            (कर्मचारी का नाम/कर्मचारी आई.डी) <span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control mt-2 fw-bold" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>
                    </div>
                    <div class="col-md-4 mt-4">
                        <label>Do you agree with the remarks of the reporting officer ?(क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|) <span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" CssClass="fw-bold form-control">

                            <asp:ListItem>Yes/हाँ</asp:ListItem>
                            <asp:ListItem>No/नही</asp:ListItem>
                            <%--   <asp:ListItem>No/या</asp:ListItem>--%>
                            <asp:ListItem>Partially/आंशिक</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4" style="position: relative; top: 46px;">
                        <label>Grading(ग्रेड) <span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" CssClass="fw-bold form-control">

                            <asp:ListItem>Outstanding/उत्कृष्ट</asp:ListItem>
                            <asp:ListItem>Very good/बहुत अच्छा</asp:ListItem>
                            <asp:ListItem>good/अच्छा</asp:ListItem>
                            <asp:ListItem>Satisfactory/संतोषप्रद</asp:ListItem>
                            <asp:ListItem>Below satisfaction/असंतोषप्रद</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row  mt-5" style="position: relative; top: 20px;">
                    <div class="col-md-4">
                        <label>
                            If no or agree partially give reasons for disagreement<br />
                            (यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण )</label>

                        <textarea class="form-control mb-2 fw-bold" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                    </div>
                </div>
                <br />
                   <div class="modal-footer justify-content-center" id="button">

    <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
</div>
            </fieldset>
            
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- <script>
      function openPDF() {
          // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
          var pdfUrl = '../Document/Promotion-1.pdf';
          // Open the PDF in a new window or tab

          window.open(pdfUrl, '_blank');
          document.getElementById('<%= show2.ClientID %>').style.display = "none";
      }
  </script>--%>
      <script>function showtbl() {

              document.getElementById('FS_FillByOfficer').style.display = "block";
              document.getElementById('show2').style.display = "none";
              document.getElementById('buttons').style.display = "block";

          }// TABLE SHOE</script>
</asp:Content>

