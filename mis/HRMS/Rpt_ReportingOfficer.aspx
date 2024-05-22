<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ReportingOfficer.aspx.cs" Inherits="mis_Transaction_Rpt_ReportingOfficer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        textarea {
            /*resize: vertical;*/
            height: auto
        }
        /*



        #ddlPosition {
            position: relative;
            bottom: 20px;
        }*/

        @media Print {
            /* Show modal content in full page */

            #show2, .navbar, #hrms, #button, .footer {
                display: none;
                width: auto;
            }

            fieldset {
                width: auto;
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
    <h6 style="font-size: 15px; margin-left: 25px">PART-3 Assessment(भाग तीन- मूल्यांकन)</h6>
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
                                            <a onclick="showtbl()" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>

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
                                            <a onclick="showtbl()" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true"></i></a>

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



                <div class="fw-bold">Please give comment of agreement or disagreement on the achievement mentioned by the officer reported upon in self assessment.Please give reasons in case of disagreement and refer to communication made to the officer reported upon in this regard</div>
                <div class="fw-bold">(आवेदक अधिकारी/शिक्षक द्वारा स्वमूल्यांकन में उल्लेखित उपलब्धि के संबंध में सहमति/असहमति की टिप्पणी | असहमति की स्थिति में कारण एवं इस संबंध में किये गये पत्राचार का विवरण एवं स्केल पॉइंट में प्रदर्शन )</div>
                <br />
                <div class="row">
                    <div class="col-md-3">
                        <label class="fw-bold fs-4">Employee Name/Unique ID</label>
                        <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="गोपाल वर्मा/EDP4454445"></asp:TextBox>

                    </div>

                </div>
                <legend>To be filled by reporting officer(प्रतिवेदक अधिकारी/रिपोर्टिंग अधिकारी द्वारा भरा जाये)</legend>



                <table class="table table-bordered mt-3">
                    <thead>
                        <tr>

                            <th>S.No.(क्र)</th>
                            <th>Achievement shown in self assessment<br />
                                (स्वमूल्यांकन में दर्शित उपलब्धि)</th>
                            <th>Scale Point
                                    (स्केल बिन्दु)</th>
                            <th>Assessment(मूल्यांकन)</th>
                            <th>Remark(अभियुक्ति)</th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="text-center">1</td>
                        <td>
                            <h4 class="fw-bold">Completion of curriculum<br />
                                (पाठ्यक्रम को पूरा करना)</h4>
                        </td>
                        <td class="text-center">15</td>
                        <td>
                            <asp:TextBox runat="server" CssClass="form-control text-center fw-bold" placeholder="10"></asp:TextBox></td>
                        <td>
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription9"  autocomplete="off" placeholder="hardworking student"></asp:TextBox>

                        </td>

                    </tr>
                    <tr>
                        <td class="text-center">2</td>
                        <td>
                            <h4 class="fw-bold">Improving attendance of children<br />
                                (छात्र उपस्थिति में वृध्दि)</h4>
                        </td>
                        <td class="text-center">05</td>
                        <td>
                            <asp:TextBox runat="server" CssClass="form-control  text-center fw-bold" placeholder="3"></asp:TextBox></td>
                        <td>
                            <asp:TextBox runat="server" class="form-control  text-center fw-bold  text-center fw-bold" id="workdescription10"  autocomplete="off" placeholder="hardworking student "></asp:TextBox></td>
                    </tr>
                    <tr>

                        <td class="text-center">3</td>
                        <td>
                            <h4 class="fw-bold">Role in academic<br />
                                (अकादमिक कार्यो में भूमिका):-<br />
                            </h4>
                            (a) Use of teaching learning aid<br />
                            शिक्षण सहायक सामग्री का उपयोग<br />
                            (b)Use of lesson plan<br />
                            पाठय योजना का उपयोग<br />
                            (c)Innovation and Impact<br />
                            नवाचार तथा उसका प्रभाव<br />
                            (d)checking  of notebook of student<br />
                            छात्रो की अभ्यास पुस्तिका की जाँच<br />
                            (e)Remendial teaching<br />
                            निदानात्मक शिक्षण<br />
                            (f)Extra classes<br />
                            अतिरिक्त कक्षा संचालन<br />
                        </td>
                        <td class="text-center">30</td>
                        <td style="position: relative; top: 40px;">
                            <asp:TextBox runat="server" CssClass="form-control  text-center fw-bold" placeholder="5"></asp:TextBox>
                            <br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2  text-center fw-bold" placeholder="5"></asp:TextBox>
                            <br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2  text-center fw-bold" placeholder="5"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2  text-center fw-bold" placeholder="5"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2  text-center fw-bold" placeholder="5"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2  text-center fw-bold" placeholder="5"></asp:TextBox><br />
                        </td>
                        <td style="position: relative; top: 40px;">
                            <asp:TextBox runat="server" class="form-control text-center fw-bold" id="workdescription3"  autocomplete="off" placeholder="hardworking student"></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription4"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription5"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription6"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control  text-center  fw-bold  " id="workdescription7"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription8"  autocomplete="off" placeholder="hardworking student "></asp:TextBox>
                    </tr>
                    <tr>
                        <td class="text-center">4</td>
                        <td>
                            <h4 class="fw-bold">Extracurricular activities<br />
                                पाठयेत्तर गतिविधियो में भूमिका:-</h4>

                            (a)Sports/Literacy/Cultural Activities<br />
                            खेल/साहित्यिक/सास्कृतिक गतिविधियाँ<br />
                            (b)Extra ordinary workin Hygiene/Environment<br />
                            स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य<br />
                            (c)Use of ICT in teaching and learning<br />
                            शिक्षण एवं सिखाने में आई सी टी उपयोग
                        </td>
                        <td class="text-center" style="position: relative; top: 100px;">15</td>
                        <td style="position: relative; top: 50px">
                            <asp:TextBox runat="server" CssClass="form-control   text-center fw-bold" placeholder="5"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2  text-center fw-bold" placeholder="5"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2  text-center fw-bold" placeholder="5"></asp:TextBox></td>
                        <td style="position: relative; top: 50px">
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription17"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control   fw-bold" id="workdescription18"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control text-center fw-bold  " id="workdescription19"  autocomplete="off" placeholder="hardworking student "></asp:TextBox></td>

                    </tr>

                    <tr>

                        <td class="text-center" style="position: relative; top: 100px">5</td>
                        <td>
                            <h4 class="fw-bold">Individual Qualities<br />
                                व्यक्तिगत विशिष्टताये:-</h4>


                            (a)Attitude of work and sense of responsibility<br />
                            कार्य के प्रति अभिव्यक्ति एवं जिम्मेदारी का बोध<br />
                            (b)Maintenance of discipline<br />
                            अनुशासन<br />
                            (c)Communication skill<br />
                            संप्रेषण कौशल<br />
                            (d)Capacity to work in a team with team spirit and inter Personal
                                    relations<br />
                            टीम में टीम भावना में काम करने की क्षमता एवं परस्परसंबंध

                        </td>
                        <td class="text-center" style="position: relative; top: 100px;">30</td>
                        <td style="position: relative; top: 60px;">
                            <asp:TextBox runat="server" CssClass="form-control text-center fw-bold " placeholder="5"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2 text-center fw-bold" placeholder="3"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control  mt-2 text-center fw-bold" placeholder="7"></asp:TextBox><br />
                            <asp:TextBox runat="server" CssClass="form-control mt-2 text-center fw-bold" placeholder="5"></asp:TextBox></td>
                        <td style="position: relative; top: 60px;">
                            <asp:TextBox runat="server" class="form-control text-center fw-bold" id="workdescription13"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control  text-center fw-bold" id="workdescription14"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control text-center fw-bold" id="workdescription15"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription16"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />

                        </td>
                    </tr>
                    <tr>

                        <td class="text-center mt-2">6</td>
                        <td>
                            <h4 class="fw-bold">Participation in academic tranning<br />
                                (अवधि में प्रशिक्षण में सहभागिता )</h4>
                        </td>
                        <td class="text-center mt-2">05</td>
                        <td>
                            <asp:TextBox runat="server" CssClass="form-control text-center fw-bold" placeholder="3"></asp:TextBox></td>
                        <td>
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription123"  autocomplete="off" placeholder="hardworking student"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">7</td>
                        <td class="text-center">Total (योग)</td>
                        <td class="text-center">100</td>
                        <td>
                            <asp:TextBox runat="server" CssClass="form-control text-center fw-bold" placeholder="81"></asp:TextBox></td>
                        <td>
                            <asp:TextBox runat="server" class="form-control text-center fw-bold " id="workdescription11"  autocomplete="off" placeholder="hardworking student "></asp:TextBox><br />
                        </td>
                    </tr>

                </table>
                <fieldset style="position: relative; right: 10px;">

     <legend>Grade</legend>
     <div class="row">
         <div class="col-md-4 mt-5">
             <label>Allegiance (सन्निष्ठा)</label>
             <asp:TextBox runat="server" class="form-control  fw-bold" id="workdescription1" autocomplete="off" placeholder="Nil"></asp:TextBox>
         </div>


         <div class="col-md-4 mt-5">
             <label>Grade(शिक्षक के समग्र मूल्यांकन श्रेणी)</label>
             <asp:DropDownList runat="server" CssClass="fw-bold form-control">

                 <asp:ListItem>A+/उत्कृष्ट</asp:ListItem>
                 <asp:ListItem>A/बहुत अच्छा</asp:ListItem>
                 <asp:ListItem>B/अच्छा</asp:ListItem>
                 <asp:ListItem>C/संतोषप्रद</asp:ListItem>
                 <asp:ListItem>D/असंतोषप्रद</asp:ListItem>
             </asp:DropDownList>
         </div>
         <div class="col-md-4 mt-2">
             <label>
                 If no or agree partially give reasons for disagreement<br />
                 (यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण )</label>
             <asp:TextBox runat="server" class="form-control fw-bold" id="workdescription12" autocomplete="off" placeholder="Nil"></asp:TextBox>
         </div>
     </div>
 </fieldset>

 <fieldset style="position: relative; right: 10px;">

     <legend>Part-3 Review (भाग-3 समीक्षा)--समीक्षक अधिकारी द्वारा भरा जाये  </legend>


     <div class="row">
         <div class="col-md-4 mt-4 fs-6">
             <label>Do you agree with the remarks of the reporting officer ?(क्या आप प्रतिवेदक अधिकारी के रिमार्क से सहमत है|)</label>
             <asp:DropDownList runat="server" CssClass="form-control fw-bold">
                 <%--  <asp:ListItem>--Select--</asp:ListItem>--%>
                 <asp:ListItem>Yes/हाँ</asp:ListItem>
                 <asp:ListItem>No/नही</asp:ListItem>
                 <%--  <asp:ListItem>No/या</asp:ListItem>--%>
                 <asp:ListItem>Partially/आंशिक</asp:ListItem>

             </asp:DropDownList>
         </div>


         <div class="col-md-4 mt-5" >
             <label>Grading(ग्रेड)</label>
             <asp:DropDownList runat="server" CssClass=" form-control fw-bold">

                 <asp:ListItem>Outstanding/उत्कृष्ट</asp:ListItem>
                 <asp:ListItem>Very good/बहुत अच्छा</asp:ListItem>
                 <asp:ListItem>good/अच्छा</asp:ListItem>
                 <asp:ListItem>Satisfactory/संतोषप्रद</asp:ListItem>
                 <asp:ListItem>Below satisfaction/असंतोषप्रद</asp:ListItem>

             </asp:DropDownList>
         </div>
         <div class="col-md-4 mt-2">
             <label class="fs-6">
                 If no or agree partially give reasons for disagreement<br />
                 (यदि नही या आंशिक रूप से सहमत होने पर सहमति का कारण )</label>
             <asp:TextBox runat="server" class="form-control" ID="workdescription2" autocomplete="off" placeholder="Nil" Style="height: 30px;"></asp:TextBox>
         </div>
     </div>

 </fieldset>
                <div class="justify-content-center" style="position: relative; left: 500px;" id="button">
                    <div class="modal-footer justify-content-center" style="display: none;" id="buttons">
                        <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </fieldset>

            <%--  <div class="row">
                    <div class="col-5"></div>
                    <div class="col-md-3 text-center" style="position: relative; top: 20px;">
                        <div class="form-group">
                            <button type="button" class="Alert-Save btn btn-success btn-rounded  ">
                                Send to Officer
                            </button>


                            <a href="ReportingOfficerFill.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }
    </script>--%>

    <%--<script>
          function window.print() {
            
           
              window.open(pdfUrl, '_blank');
          
          document.getElementById('<%= show2.ClientID %>').style.display = "none";

         
          };
      </script>--%>
    <script>function showtbl() {

            document.getElementById('FS_FillByOfficer').style.display = "block";
            document.getElementById('show2').style.display = "none";
            document.getElementById('buttons').style.display = "block";

        }// TABLE SHOE</script>
</asp:Content>

