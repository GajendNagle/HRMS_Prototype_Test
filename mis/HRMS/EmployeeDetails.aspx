<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeDetails.aspx.cs" Inherits="mis_Transaction_EmployeeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
    <style>
        @media print {
            /* Show modal content in full page */
            .modal-dialog {
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
            }
            /* Hide unnecessary elements */
            body.modal-open {
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
                position: center;
                /*right:40px;*/
            }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
        <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">व्याख्याता/शिक्षक की गोपनीय चरित्रावली </h4>
                <br />
                <h6 style="font-size: 15px;"></h6>
            </div>
            <div class="col-md-7 align-self-center text-end">
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
            
            <fieldset id="show2" runat="server">
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
                                        
                                        <th>View Employee Application</th>
                                 
                                        <th>Status</th>
                                        <th>Resend ACR Report<</th>
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
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
<i class="fa fa-eye" aria-hidden="true"></i></button>
                                        </td>
                                        <td><B>ACR Report Reject <%-- Rejected By Reporting Officer--%></B><br />:-He is  not my employee</td>
                                                                                <td>
<button type="button" class="btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal1">
Resend</button>
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
      <div class="modal-header" style="background-color:#1B5B5C;">
            
      <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
 
        <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel" > EMPLOYEE  ACR FORM</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
            <fieldset>
        <legend>EMPLOYEE PERSONAL INFORMATION</legend>
<br />
        <div class="row">
            <div class="col-md-3" style="position:relative; bottom:20px;">
                <div class="form-group">
                    <label>Financial Year<br />(वार्षिक प्रतिवेदन अवधि वर्ष) <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:DropDownList runat="server" ID="ddlyera" CssClass="form-control select2">
                        <asp:ListItem>2020-2021</asp:ListItem>
                        <asp:ListItem>2021-2022</asp:ListItem>
                        <asp:ListItem>2022-2023</asp:ListItem>
                        <asp:ListItem>2023-2024</asp:ListItem>
                        <asp:ListItem>2024-2025</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Name (नाम)  <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:TextBox runat="server" ID="txtName" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Designation (पद नाम) <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:DropDownList runat="server" ID="DropDownList1" class="form-control select2" autocomplete="off">
                        <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                        <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                        <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                        <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Unique ID
                       (कर्मचारी आई.डी)
                    <span class="fa-pull-right" style="color: red">*</span>
                    </label>
                    <asp:TextBox runat="server" ID="TextBox4" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label>Date of Birth<br />(जन्मतिथि)/अंकों में <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:TextBox runat="server" ID="TXTDOB" class="form-control  " autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

                </div>
            </div>
            <%--  <div class="col-md-3">
                <div class="form-group">
                    <label>Date of Birth(जन्मतिथि)/ शब्दों में <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

                </div>
            </div>--%>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Institution of Posting<br />(पदस्थी शाला/स्थान)<span  style="color: red; position: relative;  left:1PX;">*</span></label>
                    <asp:DropDownList runat="server" ID="ddlPosting" class="form-control mb-5 select2" autocomplete="off">
                        <asp:ListItem>भोपाल</asp:ListItem>
                        <asp:ListItem>बैतूल</asp:ListItem>
                        <asp:ListItem>इंदौर </asp:ListItem>
                        <asp:ListItem>जबलपुर</asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fs-6">Dise Code of Institution<br />
                        (पदस्थी शाला का डाइस कोड)<span style="color: red;">*</span></label>
                    <asp:TextBox runat="server" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" placeholder="St Theresa Girls School/489754554"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-3" style="position:relative; bottom:20px;">
                <div class="form-group">
                    <label>Date OF First Posting <BR />and designation<br />
                        (प्रथम नियुक्ति का दिनांक एवं पद)<span style="color: red;">*</span> </label>
                    <asp:TextBox runat="server" ID="txtFirstPosting" class="form-control" autocomplete="off" value="1992-09-17" TextMode="Date"></asp:TextBox>

                </div>
            </div>


        </div>
        <div class="row">

            <div class="col-md-3">
                <div class="form-group">
                    <label>Date OF  Posting/Pramotion<br />
                        (वर्तमान पद पर नियुक्ति/ पदोन्नति दिनांक)<span style="color: red;">*</span> </label>
                    <asp:TextBox runat="server" ID="txtPrmaotion" class="form-control mt-3" autocomplete="off" value="1996-12-23" TextMode="Date" Style="position: relative; top: 5px;"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-3 mt-1">
                <div class="form-group">
                    <label>Date OF Filiing of annual Immovabel Property Return<br />
                        (स्थाई संपत्ती विवरण दाखिल करनेका दिनांक)<span style="color: red;">*</span> </label>
                    <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date" Style="position: relative; bottom: 4px;"></asp:TextBox>

                </div>
            </div>
           
        </div>


    </fieldset>
             <div class="modal-footer justify-content-center">
     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
     <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
   </div>

</div>
      </div>
   
    </div>
  </div>

        <div class="modal  fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header" style="background-color:#1B5B5C;">
            
      <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
 
        <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1" > EMPLOYEE  ACR FORM</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
            <fieldset>
        <legend>EMPLOYEE PERSONAL INFORMATION</legend>
<br />
        <div class="row">
            <div class="col-md-3" style="position:relative; bottom:20px;">
                <div class="form-group">
                    <label>Financial Year<br />(वार्षिक प्रतिवेदन अवधि वर्ष) <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control select2">
                        <asp:ListItem>2020-2021</asp:ListItem>
                        <asp:ListItem>2021-2022</asp:ListItem>
                        <asp:ListItem>2022-2023</asp:ListItem>
                        <asp:ListItem>2023-2024</asp:ListItem>
                        <asp:ListItem>2024-2025</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Name (नाम)  <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:TextBox runat="server" ID="TextBox1" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Designation (पद नाम) <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:DropDownList runat="server" ID="DropDownList3" class="form-control select2" autocomplete="off">
                        <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                        <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                        <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                        <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Unique ID
                       (कर्मचारी आई.डी)
                    <span class="fa-pull-right" style="color: red">*</span>
                    </label>
                    <asp:TextBox runat="server" ID="TextBox2" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label>Date of Birth<br />(जन्मतिथि)/अंकों में <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:TextBox runat="server" ID="TextBox3" class="form-control  " autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

                </div>
            </div>
            <%--  <div class="col-md-3">
                <div class="form-group">
                    <label>Date of Birth(जन्मतिथि)/ शब्दों में <span class="fa-pull-right" style="color: red">*</span> </label>
                    <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

                </div>
            </div>--%>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Institution of Posting<br />(पदस्थी शाला/स्थान)<span  style="color: red; position: relative;  left:1PX;">*</span></label>
                    <asp:DropDownList runat="server" ID="DropDownList4" class="form-control mb-5 select2" autocomplete="off">
                        <asp:ListItem>भोपाल</asp:ListItem>
                        <asp:ListItem>बैतूल</asp:ListItem>
                        <asp:ListItem>इंदौर </asp:ListItem>
                        <asp:ListItem>जबलपुर</asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fs-6">Dise Code of Institution<br />
                        (पदस्थी शाला का डाइस कोड)<span style="color: red;">*</span></label>
                    <asp:TextBox runat="server" ID="TextBox6" class="form-control" autocomplete="off" placeholder="St Theresa Girls School/489754554"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-3" style="position:relative; bottom:20px;">
                <div class="form-group">
                    <label>Date OF First Posting <BR />and designation<br />
                        (प्रथम नियुक्ति का दिनांक एवं पद)<span style="color: red;">*</span> </label>
                    <asp:TextBox runat="server" ID="TextBox7" class="form-control" autocomplete="off" value="1992-09-17" TextMode="Date"></asp:TextBox>

                </div>
            </div>


        </div>
        <div class="row">

            <div class="col-md-3">
                <div class="form-group">
                    <label>Date OF  Posting/Pramotion<br />
                        (वर्तमान पद पर नियुक्ति/ पदोन्नति दिनांक)<span style="color: red;">*</span> </label>
                    <asp:TextBox runat="server" ID="TextBox8" class="form-control mt-3" autocomplete="off" value="1996-12-23" TextMode="Date" Style="position: relative; top: 5px;"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-3 mt-1">
                <div class="form-group">
                    <label>Date OF Filiing of annual Immovabel Property Return<br />
                        (स्थाई संपत्ती विवरण दाखिल करनेका दिनांक)<span style="color: red;">*</span> </label>
                    <asp:TextBox runat="server" ID="TextBox9" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date" Style="position: relative; bottom: 4px;"></asp:TextBox>

                </div>
            </div>
           
        </div>


    </fieldset>
             <div class="modal-footer justify-content-center">
                    <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Send To Officer</button>
    
                         <a href="EmployeeDetails.aspx" class="btn btn-danger btn-rounded">Clear</a>

  
   </div>

</div>
      </div>
   
    </div>
  </div>
    
<%--      <div class="modal" id="myModal">
      <div class="modal-dialog">
          <div class="modal-content">
              <!-- Modal Header -->
              <div class="modal-header" style="background-color:#1B5B5C; color:white">
                  <h4 class="modal-title"> Reject ACR Report Status </h4>
                  <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
              </div>
              <!-- Modal Body -->
              <div class="modal-body">
                  <div class="form-group">
                      <label>Remark<span style="color: red">*</span></label>
                      <textarea class="form-control" rows="3" style="resize: vertical" placeholder="He is not my employee"></textarea>
                  </div>
              </div>
              <!-- Modal Footer -->
              <div class="modal-footer justify-content-center">
                 
                  <button type="button" class="btn btn-success Alert-Reject btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                   <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              </div>
          </div>
      </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
<%--    <script>
    function openPDF() {
        // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
        var pdfUrl = '../Document/Promotion-1.pdf';
        // Open the PDF in a new window or tab
        window.open(pdfUrl, '_blank');
    }
    </script>--%>
</asp:Content>

