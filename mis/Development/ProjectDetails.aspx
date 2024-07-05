<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectDetails.aspx.cs" Inherits="mis_Development_ProjectDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/brands.min.css" integrity="sha512-DJLNx+VLY4aEiEQFjiawXaiceujj5GA7lIY8CHCIGQCBPfsEG0nGz1edb4Jvw1LR7q031zS5PpPqFuPA8ihlRA==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <style>
           .modal-body {
  display: flex;
  justify-content: center !important;
  align-items: center;
}
           .modal fade{
               justify-content:center !important;
           }

     @media print {
  @page {
    size: A4;
    margin: 10mm;
  }
  body {
    font-size: 12px;
    transform-origin: top left;
    transform: scale(calc(100% / var(--print-scale, 1)))
    
  }
  .page-break {
    page-break-after: always;
  }
  .modal-body {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center; /* added this line */
  }
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
                      <%--  <li class="breadcrumb-item">
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>--%>
                           <li class="breadcrumb-item">
        <a href="#Development" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')">
            <span>Development</span></a>
    </li>
                        <li class="breadcrumb-item">Project Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Project Details / परियोजना विवरण </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Project Details / परियोजना विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                From Date<br />
                                प्रारंभिक दिनांक से<span style="color: red">*</span></label>
                            <input type="date" id="Fdate" name="birthday" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                To Date <br />
                                अंतिम दिनांक तक<span style="color: red">*</span></label>
                            <input type="date" id="Tdate" name="birthday" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Status <br />

                                परियोजना की स्थिति<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="0">All</option>
                                <%-- <option value="1">Pending at School</option>
                                 <option value="2">Pending at Sankul</option>--%>
                                <option value="3">Pending at BEO</option>
                                <option value="4">Pending at DEO</option>
                                <option value="5">Pending at JD</option>
                                <option value="6">Pending at HO</option>
                                <%-- <option value="7"> Reject From School</option>
                                 <option value="8"> Reject From Sankul</option>
                                 <option value="9"> Reject From BEO</option><a href="../HostelManagment/">../HostelManagment/</a>
                                 <option value="10">Reject From DEO</option>
                                 <option value="11">Reject From JD</option>
                                 <option value="12">Reject From HO</option>--%>
                            </select>
                        </div>
                    </div>


                </div>
                <hr />
                <div class="col-md-12">
                    <input type="submit" name="ctl00$ContentBody$btnSave" value="Search"
                        class="btn btn-success btn-border" />
                    <a href="ProjectDetails.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>

            </fieldset>
            <fieldset>
                <legend>Project Details / परियोजना विवरण</legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                <tr style="white-space:nowrap">
                                    <th>Sr.No.<br />
                                       सरल क्रमांक</th>
                                   <%-- <th>Action Status/<br>
                                        गतिविधि स्थिति</th>
                                    <th>Edit/<br>
                                        एडिट करें</th>
                                    <th>View Document/<br>
                                        दस्तावेज़ देखें</th>
                                    <th>View Details/<br>
                                        विवरण देखें</th>
                                    <th>Project Status/<br>
                                        परियोजना की स्थिति</th>--%>
                                    <th>Project Code<br>
                                        परियोजना क्रमांक</th>
                                    <th>Project Date<br>
                                        परियोजना दिनांक</th>
                                    <%--<th>Village /<br />
                                        गाँव का नाम</th>--%>
                                    <th>Work Category<br />
                                        कार्य की श्रेणी</th>
                                    <th>Work Subcategory<br />
                                        कार्य का नाम</th>
                                    <th>OIS Code<br />OIS कोड</th>
                                    <th>Address<br />
पता</th>
                                   <%-- <th>Action Status<br>
                                        गतिविधि स्थिति</th>--%>
                                  <%--  <th>Work Place  /<br />
                                        कार्य स्थल</th>--%>
                                    <th> Work Description<br />
कार्य का विवरण</th>
                                    <th>Estimated Budget Cost(In Rs)  <br />
                                        अनुमानित बजट</th>
                                       <th>View Document<br>
       दस्तावेज़ देखें</th>
                                      <th>Edit<br>
      एडिट करें</th>
                                    <th>Send To Request<br />अनुरोध करने के लिए भेजें</th>
                                </tr></thead>
                                <tbody id="tbody">
                                <tr>
                                    
                                    <td>1</td>
                                 <%--   <td>
                                        <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" class="form-check-input">
                                    </td>--%>
                                     <td>P00019</td>
                                    <th>22/05/2023</th>
                                     <td>स्कूल मरम्मत/निर्माण</td>
                                     <td>इमारत मरम्मत</td>
                                    <td>QT4561</td>
                                    <td>Bhopal M.P</td>
                                    <%--<td>Working Mode</td>--%>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>

                                    <td><%--<a class="btn btn-info btn-rounded" href="#">--%>  <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                    <td>
                                        <a class="btn btn-info btn-rounded" href="CreateProject.aspx"><i class="fa fa-pen"></i></a>
                                    </td>
                                 <%--   <td>
   <input type="button" value="Send TO H.O" id="btnSend" class="Alert-Save btn btn-outline-success btn-border w-lg" />
     
</td>--%><td>    <button id="BtnBack"  class="Alert-Save btn btn-outline-primary w-xl  fs-16 me-4 rounded-4 " type="button"><%--<i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>--%> 
   <%-- <i class="fa-regular fa-paper-plane-top  fs-16 me-2"></i>--%> Send To Request</button></td>
                                  <%--  <td>Approval awaited at DEO</td>
                                    <td>P00019</td>
                                    <td>11/06/2024</td>
                                    <td>Usridhana[उसरीढाना]</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>--%>
                                </tr>
</tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <!-- Modal Component -->
            <div class="modal" id="viewModel" tabindex="-1" role="dialog" aria-labelledby="viewModelListLabel1">
                <div class="modal-dialog modal-xl" style="width: 100%;">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalLabel1">Project Details</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- Modal Body -->
                         <fieldset  style="visibility: visible;">
                        <div class="modal-body">
                           
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Enter Remark /<br />
                                            टिप्पणी दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Remark" />
                                    </div>
                                </div>

                                <%--<div class="col-md-12">
                                    <div class="form-group">
                                        <input type="button" value="Save & Next" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />
                                    </div>
                                </div>--%>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="button"
                                            onclick="window.location.href = 'InstallmentCreation.aspx';"
                                            value="Save & Next" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />
                                        <%--<a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>--%>
                                    </div>
                                </div>
                            </div>
                              
                        </div>  </fieldset>

                        <!-- Modal Footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!--document-->

                                     <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-xl">
          <div class="modal-content">
              <div class="modal-header" style="background-color: var(--vz-primary);">
                  <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                  <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Document / दस्तावेज</h3>
                  <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                 <fieldset>
    <input type="hidden" asp-for="PrevEmpId" id="hdnPrevEmpId" />
    <input type="hidden" asp-for="CompassionId" id="hdnCompassionId" />
    <legend>Work Related Important Document / कार्य संबंधी आवश्यक दस्तावेज</legend>
    <div class="row">
        <%--<div>
            <h5 style="font-weight: 200;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
        </div>--%>
        <div class="col-md-12 mt-3">
            <table class="table table-bordered table-responsive-lg">
                <thead>
                    <th>Sr.No.<br />
                        सरल क्रमांक</th>
                    <th>Document Name
                    <br />
                        दस्तावेज का नाम</th>
                 
                    <th class="text-center">View Document
                    <br />
                        दस्तावेज देंखे</th>
                   
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><b> Techincal Document
                        <br />
                            तकनीकी दस्तावेज़  </b></td>
                       
                       
                         <td class="text-center">
      <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                   
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><b>Upload Civil Document
                        <br />
                            सिविल दस्तावेज अपलोड करें </b></td>
                      
                         
                         <td class="text-center">
      <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                   
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><b>Upload Elecrtrical Document
                        <br />
                            इलेक्ट्रिकल दस्तावेज अपलोड करें </b></td>
                      
                       
                         <td class="text-center">
      <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                   
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><b>Upload Project Document
                        <br />
                            परियोजना के दस्तावेज अपलोड करें </b></td>
                       
                       
                         <td class="text-center">
      <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                   
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><b>Upload Other Document
                        <br />
                            अन्य दस्तावेज अपलोड करें </b></td>
                       
                         <td class="text-center">
      <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                   
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</fieldset>
            </div>
            
            </div>
       </div>
                             </div>
            <%--<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title w-100 text-center"></h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Add the image here -->
                <img src="../../img/SchoolTec.jpg" alt="SchoolTec Image" />
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-primary" onclick="printModalContent()">Print</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>--%>
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title w-100 text-center"></h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center">
                <fieldset style="width:max-content">
                    <img src="../../img/SchoolTec.jpg" alt="SchoolTec Image" />
                </fieldset>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop')">Print</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printModalContent() {
            // Create a new HTML element to wrap the modal content
            var printContent = document.getElementById("printContent");
            if (!printContent) {
                printContent = document.createElement("div");
                printContent.id = "printContent";
                document.body.appendChild(printContent);
            }

            // Get the modal content
            var modalContent = document.getElementById("staticBackdrop").getElementsByClassName("modal-content")[0];

            // Append the modal content to the new HTML element
            printContent.innerHTML = "";
            printContent.appendChild(modalContent.cloneNode(true));

            // Call window.print()
            window.print();
        }
    </script>


    <%--<script>
        document.addEventListener('DOMContentLoaded', function () {
            var checkbox = document.getElementById('vehicle1');
            var modalElement = document.getElementById('viewModel');
            var modal = new bootstrap.Modal(modalElement, {});

            checkbox.addEventListener('change', function () {
                if (this.checked) {
                    modal.show();
                } else {
                    modal.hide();
                }
            });

            modalElement.addEventListener('hidden.bs.modal', function () {
                checkbox.checked = false;
            });
        });
</script>--%>
     <script>
         function printModalContent(modalId) {
             var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
             document.body.innerHTML = modalContent.innerHTML
             window.print();
             window.location.href = "ProjectDetails.aspx";
         }
         document.addEventListener('keydown', function (event) {
             if (event.ctrlKey && event.key === 'p') {
                 // Prevent default behavior of Ctrl+P (opening print dialog)
                 event.preventDefault();
                 // Print the content of the active modal
                 var activeModal = document.querySelector('.modal.show');
                 if (activeModal) {
                     var modalId = activeModal.getAttribute('id');
                     printModalContent(modalId);
                 }
             }
         });

     </script>
  <script>
      debugger;
      $(document).ready(function () {
          "use strict";

          var SweetAlert = function () { };

          // Initialize SweetAlert function
          SweetAlert.prototype.init = function () {
              // Handle click event for .Alert-Save class
              $('.Alert-Save').click(function () {
                  Swal.fire({
                      title: 'Are you sure?',
                      text: "Do you want to Send this record?",
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
                              text: 'Record Send Successfully!',
                              timer: 2000,
                          }).then(() => {
                              document.getElementById('tbody').style.display = "none";
                          });

                          // Manipulate element displays after success
                          //document.getElementById('show1').style.display = "block";
                          //document.getElementById('show').style.display = "none";
                          //document.getElementById('show2').style.display = "none";
                      }
                  });
              });
          }

          // Initialize SweetAlert
          var sweetAlert = new SweetAlert();
          sweetAlert.init();
      });
  </script>

    <script>const canvas = document.getElementById('canvas');
        const ctx = canvas.getContext('2d');
        const img = new Image();
        img.src = '../img/SchoolTec.jpg';
        img.onload = function () {
            ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
        };</script>
</asp:Content>

