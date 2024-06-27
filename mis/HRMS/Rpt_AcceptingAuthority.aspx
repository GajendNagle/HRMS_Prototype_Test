<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_AcceptingAuthority.aspx.cs" Inherits="mis_Transaction_Rpt_AcceptingAuthority" %>

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

        @media print {


            @page {
                size: A4;
                margin: 10mm;
            }

            body {
                font-size: 12px;
                transform-origin: top left;
                transform: scale(calc(100% / var(--print-scale, 1)));
            }

            .page-break {
                page-break-after: always;
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
                      <li class="breadcrumb-item">
                          <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                              <span>ACR</span></a>
                      </li>
                      <li class="breadcrumb-item"><span>Accepting Authority ACR Report Print</span></li>
                  </ol>
              </div>
          </div>
      </div>
  </div>

  
    <%--  <div class="row page-titles mb-4">--%>
  <%--  <div class="row page-titles mb-4">--%>
 <div class="row"><div class="col-md-5 ">
          <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
      </div></div>  
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title">Reviewing Officer/
                     Acceptanceing Officer Report
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset id="show2">
                <legend>ACR report filled by Accepting Authority / स्वीकृति प्राधिकारी द्वारा भरी गई एसीआर रिपोर्ट</legend>
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
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No<br/> सरल क्र.</th>
                                        <th>Unique ID/Name<br/> कर्मचारी आईडी/नाम</th>

                                        <th>Date of Birth<br/>जन्मतिथि</th>
                                        <th>Designation <br/>पदनाम </th>
                                        <th>Dise Code of Institution<br/>संस्थान का डाइस कोड</th>

                                        <th>Employee Report<br/>कर्मचारी की रिपोर्ट </th>
                                        <th>Reporting Officer Report<br/>रिपोर्टिंग अधिकारी की रिपोर्ट</th>
                                        <th>Accepting Authority Report<br/>स्वीकृति प्राधिकारी की रिपोर्ट</th>

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
                                            <a href="Rpt_EmployeeACR.aspx" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>

                                        <td>
                                            <a href="Rpt_ReportingOfficer.aspx" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
                                        <td>
                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></a>

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
                                            <a href="Rpt_EmployeeACR.aspx" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
                                        <td>
                                            <a href="Rpt_ReportingOfficer.aspx" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
                                        <td>
                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table></div>
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
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <br />
                        <br />
                        <div class="row text-center">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">
                                <br />
                                <h3><strong><b>व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप</b></strong></h3>
                                <h4><strong><b>स्कूल शिक्षा विभाग मध्य प्रदेश शासन</b></strong></h4>
                                <h4><strong><b>जिला:- भोपल</b></strong></h4>
                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <div class="row">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="">
                                        <div class="">
                                            <div class="row">
                                                <div class="col text-start">
                                                    <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

                                                    <span class="fw-bold">2023-2024</span>
                                                </div>

                                                <div class="col text-end">
                                                    <span class="fw-bold">आवेदन दिनाँक:-</span>
                                                    <span class="fw-bold">09-03-2024</span>
                                                </div>
                            <div class="col-md-12 mb-5">
                           <h4 class="text-center mt-3 font-bold"><u>: : Part-3 Review (To Be Filled By Reviewing Authorities) : :</u></h4>
                           <h6 class="text-center mt-2 font-bold"><u>: : भाग-3 समीक्षक अधिकारी द्वारा भरा जाये : :</u></h6>
                       </div>
                       <table class="table table-bordered modal-table table-st fs-5">
                           <tr class="mt-3">

                               <th>Do you agree with the remarks of the reporting officer ?<br />
                                   क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|</th>
                               <td class="text-center ">Yes/हाँ</td>
                           </tr>
                           <tr>
                               <th> If no or agree partially give reasons for disagreement<br />
                                      यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण</th>
                               <td class="text-center ">Nil</td>
                           </tr>
                           <tr>
                               <th>Grading<br />ग्रेड</th>
                               <td class="text-center ">Outstanding/उत्कृष्ट</td>
                           </tr>
                       </table>
                                     </div>

                                            <h3 class="text-center mt-4 mb-4 font-bold"><u>:: Information filled by the Accepting Authority::<br />
                                                <span class="fs-5">:: भाग-4 स्वीकृत अधिकारी द्वारा भरी गई जानकारी ::</span></u></h3>
                                        </div>
                                        <table class="table table-bordered table-st fs-5">
                                            <tr class="mt-3">

                                                <th>Employee Name Unique ID
<br />कर्मचारी का नाम यूनिक आई.डी</th>
                                                <td>सिया वर्मा/EDP4454445</td>
                                            </tr>
                                            <tr>
                                                <th> Do you agree with the remarks of the reporting officer ?<br />क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|</th>
                                                <td>YES/हँ</td>
                                            </tr>
                                            <tr>

                                                <th> If no or agree partially give reasons for disagreement<br />यदि नही या आंशिक रूप से सहमत होने पर बसहमति का कारण </th>
                                                <td>Nil</td>
                                            </tr>
                                            <tr class="mt-3">
                                                <th>Grading<br />ग्रेड
                                                </th>
                                                <td>Outstanding/उत्कृष्ट</td>
                                            </tr>

                                        </table>
                                        <br />

                                        <div class="row ms-0 me-0">
                                            <div class="col-12">

                                                <h4 class="text-center font-bold">: : <u>Remark for outstanding</u> : :</h4>
                                            </div>

                                            <div class="col-12">
                                                <p class="font-18 text-center">
                                                    सिया वर्मा  ने इस वर्ष अपने विकास में काफी प्रगति की है। वह अधिक आत्मविश्वासी  और शैक्षणिक रूप से अच्छा प्रदर्शन कर रहा है।
                                                </p>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />

                        <br />
                        <br />
                        <br />


                    </fieldset>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop')">Print</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

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
            window.location.href = "Rpt_AcceptingAuthority.aspx";
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

