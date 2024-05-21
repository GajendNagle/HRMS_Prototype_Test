<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoluntaryTransferLock_Applicatin.aspx.cs" Inherits="mis_HRMS_VoluntaryTransferLock_Applicatin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">स्वैच्छिक स्थानांतरण लॉक आवेदन</p>
        </div>
        <div class="col-md-4 align-self-center">   
   
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>
                    <li class="breadcrumb-item active">Voluntary Transfer Lock Application</li>
                </ol>
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
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                    <li class="nav-item dropdown ">
                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Voluntary Transfer Application</b></a>
                       <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_ApplyVoluntaryTransfer.aspx">Apply Voluntary Transfer</a></li>
                                   <%-- <li><a class="dropdown-item" href="Trn_ViewPostCodeWithVacancies.aspx">View Post Code With Vacancies</a></li>--%>
                                    <li><a class="dropdown-item" href="VoluntaryTransfer_PrintDraftApplicationOrDelete.aspx">Print Draft Application or Update

                                        </a></li>
                                    <li><a class="dropdown-item" href="VoluntaryTransferLock_Applicatin.aspx">Lock Application</a></li>
                                 <%--   <li><a class="dropdown-item" href="VoluntaryTransferPrintApplication.aspx">Print Application</a></li>--%>
                                </ul>
                            </li>

                            <a class="nav-link  text-white " href="VoluntaryTransferStatus.aspx" role="button"><b class="font-16 font-bold">Voluntary Transfer Application Status</b></a>
                              <a class="nav-link  text-white " href="Trn_ViewPostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold">View Post Code With Vacancie</b></a>
                        </ul>

            </div>
        </div>
    </nav>
    <br />
    <br />
            <fieldset>
                <legend>Voluntary Transfer Lock Application
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="">
                            <table class="table text-center table-bordered">
                                <tr>
                                    <th>Sr.No<br />
                                        सरल क्र.</th>
                                    <th>Application No.<br />
                                        आवेदन नंबार</th>
                                    <th>Employee Name<br />
                                        कर्मचारी का नाम</th>
                                    <th>Unique Id
                                        <br />
                                        यूनिक आईडी</th>
                                    <th>Upload Application <span style="color: red">*</span>
                                        <br />
                                        आवेदन अपलोड करें</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>12546</td>
                                    <td>Arjun Talwar</td>
                                    <td>BT9430</td>
                                    <td style="width: 22%;">
                                        <input type="file" class="form-control" />
                                        <span style="color: red; margin-right: 148px;">केवल पीडीएफ फॉर्मेट / (500 केबी)</span>
                                    </td>
                                    <td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12">
                        <p class="font-16" style="color:blue">नोट:- स्वतः हस्ताक्षर किये हुए आवेदन को अपलोड कर आवेदन को लॉक करें ।</p>


                    </div>

                </div>



                <div class="row mt-3">
                    <div class="col-md-12 text-center">
                       
                        <input type="button" class="Alert-Save btn btn-success" value="स्वैच्छिक स्थानांतरण लॉक करे"/>
                    </div>
                </div>
            </fieldset>
        </div>

    </div>







</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

     <script>
     debugger;
     !function ($) {
         "use strict";
         var SweetAlert = function () { };

         // Initialize SweetAlert
         SweetAlert.prototype.init = function () {
             $('.Alert-Save').click(function () {
                 Swal.fire({
                     title: 'Are you sure?',
                     text: "Do you want to Lock This Draft Application?",
                     type: 'warning',
                     showCancelButton: true,
                     confirmButtonColor: '#3085D6',
                     cancelButtonColor: '#d33',
                     confirmButtonText: 'Yes'
                 }).then((result) => {
                     if (result.value) {
                         Swal.fire({
                             type: 'success',
                             title: 'Success!',
                             text: 'Application Lock Successfully!',
                             timer: 2000
                         }).then(() => {
                             // Hide or show table1 based on its current display state
                             var x = document.getElementById("table1");
                             x.style.display = x.style.display === "block" ? "none" : "block";
                         });
                     }
                 });
             });
         };

         // Initialize SweetAlert
         $.SweetAlert = new SweetAlert;
         $.SweetAlert.Constructor = SweetAlert;
     }(window.jQuery),

         // Initialize SweetAlert
         function ($) {
             "use strict";
             $.SweetAlert.init();
         }(window.jQuery);
     </script>
</asp:Content>

