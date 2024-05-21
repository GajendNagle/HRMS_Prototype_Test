<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MutualTransLockApplication.aspx.cs" Inherits="mis_HRMS_MutualTransLockApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">पारस्परिक स्थानांतरण लॉक एप्लीकेशन</p>
        </div>
        <div class="col-md-4 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                   <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                     
                    <li class="breadcrumb-item active">Mutual Transfer Lock Application</li>
                </ol>
            </div>
        </div>
    </div>
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
                        
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b>Mutual Transfer Application</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Update Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                    <%--<li><a class="dropdown-item" href="MutualTransferPrintApplication.aspx">Print Application</a></li>--%>
                                </ul>
                            </li> 
                           <%-- <li class="nav-item">
                                 <a class="nav-link text-dark font-16 text-white" href="MutalTransferSelfVerification.aspx" role="button"  aria-expanded="false"><strong><b>Mutual Transfer Self Verification</b></strong></a>
                            </li>--%>
                             <li class="nav-item">
                                 <a class="nav-link text-dark font-16 text-white" href="MutualTransferApplicationStatus.aspx" role="button"  aria-expanded="false"><strong><b>Mutual Transfer Application Status</b></strong></a>
                            </li>
                        </ul>
                       
                    </div>
                </div>
            </nav>          
              <br />
            <br />
            <fieldset>
                <legend>Mutual Transfer Lock Application</legend>
                <div id="table1">
                <table class="table table-bordered text-center">
                    <tbody>
                        <tr>
                                <th>Sr No.<br />स.क्र.</th>
                                <th>Date<br /> दिनांक</th>
                                <th>Unique <br />युनिक आई.डी.</th>
                                <th>Name And Designation <br /> नाम एवं पद</th>
                                <th>Subject<br />विषय</th>
                                <th>Working Institute And UDISE Code<br /> कार्यरत संस्था एवं डाइस कोड</th>
                                <th>Working District<br />कार्यरत जिला</th>
                                <th>New Organization And UDICE Code<br /> नवीन संस्था एवं डाइम कोड</th>
                                <th>District Of New Posting <br /> नवीन पदस्थापना का जिला</th>
                                <th>Lock Application<span style="color: red;"> *</span><br />लॉक एप्लीकेशन</th>
                            </tr>
                        <%--<tr>
                            <th>Sr No.</th>
                            <th>Application Number</th>
                            <th>Employ Name</th>
                            <th>Unique Id</th>
                            <th>Lock Application<span style="color: red;"> *</span></th>
                        </tr>--%>
                         <tr>
                                <td>1</td>
                                <td>09-03-2024</td>
                                <td>BT921</td>
                                <td>Arjun Talwar / Teacher (UDT) </td>
                                <td>Hindi</td>
                                <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                <td>Bhapal</td>
                                <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                <td>Rajgarh</td>
                                <td style="width: 20%" rowspan="2">
                            <input type="file" class="form-control" />
                               <p style="color:red; font-size:15px" class="text-start">केवल पीडीएफ फॉरमैट / साइज (500 KB) </p>
                            </td>
                            </tr>
                        <tr>
                                <td>2</td>
                                <td>09-03-2024</td>
                                <td>BT899</td>
                                <td>Aman Patidar / Teacher (UDT) </td>
                                <td>Hindi</td>
                                <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                <td>Rajgarh</td>
                                <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                <td>Bhapal</td>
                                
                            </tr>
                       <%-- <tr>
                            <td>1</td>
                            <td>1234567</td>
                            <td>Rounak Nath</td>
                            <td>AR4781</td>
                            <td style="width: 20%">
                            <input type="file" class="form-control" />
                               <p style="color:red; font-size:15px" class="text-start">केवल पीडीएफ फॉरमैट / साइज (500 KB) </p>
                            </td>
                        </tr>--%>
                    </tbody>
                </table>

                <p style="color:blue" class="font-16"><b> नोट :- पारस्परिक स्थानान्तरण आवेदन लॉक करने हेतु संबंधित दोनों कर्मचारी ड्राफ्ट आवेदन पर स्वतः हस्ताक्षर कर फाइल अपलोड करें ।</b></p>
                   
                 <button id="Button2" type="button" class="btn btn-success btn-rounded mt-3 Alert-Save" onclick="myFunction()" >Lock Application</button>
                  
                </div>
                 <b><p id="note" class="font-18"></p></b>
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
                                   text: 'Tour Apply Successfully!',
                                   timer: 2000
                               }).then(() => {
                                   // Hide or show table1 based on its current display state
                                   var x = document.getElementById("table1");
                                   var y = document.getElementById("note");
                                   x.style.display = "none";
                                   y.innerHTML = "------------No Record Found------------";
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
       </script>ript>


</asp:Content>

