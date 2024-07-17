<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ClaimExperienceCertificate.aspx.cs" Inherits="mis_GuestFacultyManagement_Trn_ClaimExperienceCertificate_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                          <li class="breadcrumb-item">
                         <a href="#GuestFaculty" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Guest Faculty Login</span></a>
                     </li>

                        <li class="breadcrumb-item"><span>Claim Experience Certificate</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-9">
                    <h4 class="card-title">Request For Experience Certificate /
                        अनुभव प्रमाण पत्र के लिए अनुरोध</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Register Experience Claim   / अनुभव का दावा पंजीकृत करें </legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Academic Year 
              <br />
                                शैक्षणिक वर्ष <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>
                                <option value="2020">2020-21</option>
                                <option value="2019">2019-20</option>
                                <option value="2018">2018-19</option>
                                <option value="2016">2017-18</option>
                                <option value="2015">2016-17</option>
                                <option value="2015">2015-16</option>
                                <option value="2014">2014-15</option>
                                <option value="2013">2013-14</option>
                                <option value="2012">2012-13</option>



                                <option value="2011">2011-12</option>
                                <option value="2010">2010-11</option>
                                <option value="2009">2009-10</option>
                                <option value="2008">2008-09</option>
                                <option value="2007">2007-08</option>
                            </select>
                        </div>
                    </div>
                    <%--   <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Dise Code
                            <br />
                                डाइस कोड <span style="color: red">*</span></label>
                            <input class="form-control" />
                        </div>
                    </div>--%>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Guest Faculty  ID/ Mobile Number
                            <br />
                                 अतिथि शिक्षक की आइडी/ मोबाइल नंबर <span style="color: red">*</span></label>
                            <input class="form-control flatpickr-input" placeholder="Enter Mobile Number" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Date Of Birth
                            <br />
                                जन्म तिथि <span style="color: red">*</span></label>
                            <input type="date" class="form-control" data-provider="flatpickr" data-altformat="j F Y" placeholder="Fill Date Of Birth" />
                        </div>
                    </div>

                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('showAll').style.display='block'">View</button>
                        <a href="Trn_ClaimExperienceCertificate.aspx" role="button" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>


            <div id="showAll" class="row" style="display: none">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">

                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table">

                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No. 
                                            <br>
                                            सरल क्र. </th>
                                        <th>School Udise Code - School Name
                                        <br>
                                           स्कूल यूडाइस कोड - स्कूल का नाम
                                        </th>
                                        <th>    Guest Faculty  ID/ Mobile Number
<br />
     अतिथि शिक्षक की आइडी/ मोबाइल नंबर 
                                        </th>
                                        <th>Name
                                        <br>
                                            नाम
                                        </th>
                                        <th>Date Of Birth
                                            <br />
                                            जन्म तिथि
                                        </th>
                                        <th>Academic Year
                                            <br />
                                            शैक्षणिक वर्ष 
                                        </th>
                                        <th>Working Period 
                                        <br>कार्य की अवधि 
                                            
                                        </th>
                                        <th>Action                                                                                  
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>23350804904 - GOVT. HSS GOULA</td>
                                        <td>9638527410</td>
                                        <td>Ramesh Laal</td>
                                        <td>28/07/1995</td>
                                        <td>2022-23</td>
                                        <td>August</td>
                                        <td class="text-center"><button type="button" class="btn view-btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fas fa-eye"></i></button></td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>23350811106 - GOVT. HSS JOULKHEDA</td>
                                        <td>9638527410</td>
                                        <td>Ramesh Laal</td>
                                        <td>28/07/1995 </td>
                                        <td>2023-24 </td>
                                        <td>September </td>
                                        <td  class="text-center"><input  type="checkbox" class=" form-check-input"/> </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <hr />
                                <button type="button" class=" Alert-ClaimConfirmation btn btn-outline-success btn-border w-lg">Request For Claim  </button>
                            </div>
                             <div class="col-md-12 mt-4">
                                 <p><b><span style="color:red">* Note :- आपके द्वारा अनुभव प्रमाण पत्र हेतु संकुल कार्यलय को अनुरोध कर दिया गया है|</span></b>

                                 </p>
                                 </div>
                        </div>
                    </fieldset>
                </div>

            </div>

            
        </div>
    </div>
     <!-- Modal -->
 <div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
     <div class="modal-dialog modal-xl">
         <div class="modal-content">
             <div class="modal-header">
                 <h1 class="modal-title fs-5" id="staticBackdropLabel"></h1>
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body">
                 <fieldset>
                     <div class="border border-dark rounded-3 mt-2">
                         <div class="p-2">
                             <div class="row text-center align-items-center">
                                 <div class="col-2">
                                     <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                 </div>
                                 <div class="col-8 text-center">

                                     <h3><strong><b>उपस्थिति सत्यापन पत्रक</b></strong></h3>
                                     <h4><strong><b>(भरे हुये अनुभव प्रमाण पत्र एवं  दस्तवेजो को नस्ती में संग्रहित करे)</b></strong></h4>
                                     <h6><strong><b>सत्र:	2023-24</b></strong></h6>
                                     <div class="row mx-5 mb-0 justify-content-between">
                                         <div class="col text-left">
                                             स्कूल का DISE Code: 23350804904  
                                         </div>
                                         <div class="col text-right">
                                             स्कूल का नाम: GOVT. HSS GOULA
                                         </div>
                                     </div>
                                 </div>
                                 <div class="col-2">
                                     <%--<img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />--%>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="p-2">
                         <div class="row ">
                             <div class="col">
                                 <b>अतिथि शिक्षक की जानकारी (पोर्टल में उपलब्ध विवरण के अनुसार)</b>
                             </div>
                            
                         </div>
                         <div class="row">
                             <div class="col-12">
                                 <h3>नोट:-</h3>
                                 <ol>
                                     <li>यह अनुभव प्रमाणपत्र नहीं है।</li>
                                     <li>अनुभव प्रमाणपत्र जारी करने के पूर्व की सत्यापन प्रक्रिया है।</li>
                                     <li>माह में प्रदर्शित कार्य दिवसों की संख्या को एजूकेशन पोर्टल के मानदेय देयक से लिया गया है </li>
                                     <li>संबंधित संस्था प्रमुख तथा संकृत प्राचार्य द्वारा अभिलेखों से सत्यापन करने के उपरांत ही कार्य दिवस मान्य किये जायेंगे।</li>
                                 </ol>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-12">


                                 <div class="bottom-dotted-border">
                                     <b>अतिथि शिक्षक का Guest ID / Mobile Number :-</b> <span>9638527410</span>
                                 </div>
                             </div>
                             <div class="col-md-12 ">
                                 <div class="bottom-dotted-border">
                                     <b>अतिथि शिक्षक का नाम :-</b> <span>रमेश लाल </span>
                                 </div>
                             </div>
                             <div class="col-md-12 ">
                                 <div class="bottom-dotted-border">
                                     <b>अतिथि शिक्षक की जानकारी (आधार के अनुसार) :-</b> <span></span>
                                 </div>
                             </div>
                             <div class="col-md-12 ">
                                 <div class="bottom-dotted-border">
                                     <b>नाम  :-</b> <span>रमेश लाल </span>
                                 </div>
                             </div>
                         </div>

                         <div class="row mt-3">
                             <div class="col-md-12">
                                 <div class="table-responsive">
                                     <table class="table">
                                         <thead>
                                             <tr>
                                                 <th colspan="6">
                                                     <h5>सत्र में एडुकेशन पोर्टल में लॉक किये गये मानदेय देयक का विवरण </h5>
                                                 </th>
                                             </tr>
                                             <tr>
                                                 <th>सरल क्र.
                                                 </th>
                                                 <th>पद जिसके विरुद्ध कार्य किया</th>
                                                 <th>माह</th>
                                                 <th>पोर्टत के अनुसार कुत दिवस</th>
                                                 <th>संस्था प्रमुख के अनुसार कुल दिवस</th>
                                                 <th>संकुल प्राचार्य के अनुसार कुल दिवस</th>

                                             </tr>
                                         </thead>
                                         <tbody>
                                             <tr>
                                                 <td>1
                                                 </td>
                                                 <td>वर्ग 2</td>
                                                 <td>August</td>
                                                 <td>23</td>
                                                 <td>Not Yet Verified by Sankul Principal</td>
                                                 <td>Not Yet Verified by Sankul Principal</td>
                                             </tr>
                                             <tr>
                                                 <td>2
                                                 </td>
                                                 <td>वर्ग 2</td>
                                                 <td>September</td>
                                                 <td>24</td>
                                                 <td>Not Yet Verified by Sankul Principal</td>
                                                 <td>Not Yet Verified by Sankul Principal</td>
                                             </tr>
                                         </tbody>
                                     </table>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-12 mb-3">
                                 <h4 class="text-center">संस्था प्रमुख का सत्यापन</h4>
                             </div>


                             <div class="col-12 my-3">
                                 <p>प्रमाणित किया जाता है कि अतिथि शिक्षक की शाला में उपस्थिति दिवस का सत्यापन शाला अभिलेख (उपस्थिति पंजी) से कर लिया गया है |</p>
                             </div>

                         </div>
                     </div>
                     <%-- End by sagar--%>
                 </fieldset>
             </div>
             <div class="modal-footer justify-content-center">
                 <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="printModalContent('staticBackdrop')">Print</button>
                 <button type="button" class="btn btn-outline-danger  btn-border w-lg" data-bs-dismiss="modal">Close</button>
             </div>
         </div>
     </div>
 </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
  
            function printModalContent(modalId) {
         var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
                window.location.href = "Trn_ClaimExperienceCertificate.aspx";
     }
            document.addEventListener('keydown', function (event) {
         if (event.ctrlKey && event.key === 'p') {
             // Prevent default behavior of Ctrl+P (opening print dialog)
             // Print the content of the active modal
             var activeModal = document.querySelector('.modal.show');
            if (activeModal) {
                event.preventDefault();
            var modalId = activeModal.getAttribute('id');
            printModalContent(modalId);
             }
         }
     });
  
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic

                $('.Alert-ClaimConfirmation').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Register Experience Claim Form ?",
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
                                text: 'Experience Claim Form Registered Successfully!',
                                timer: 2000,
                                //onClose: () => {
                                //    document.getElementById('PrintClaimForm').style.display = 'block'
                                //}

                                
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
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

