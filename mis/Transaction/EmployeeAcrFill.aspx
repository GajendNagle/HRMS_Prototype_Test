<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeAcrFill.aspx.cs" Inherits="mis_Transaction_EmployeeAcrFill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #workdescription {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }
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

            .modal-header {
                display: none;
            }
        }
    </style>
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="https://schooledutest.tserver.co.in/css/site.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप </h4>
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
        <div class="card mt-3 shadow">
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar ">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">


                                <a class="nav-link  text-white" href="#" role="button"><b class="font-16 font-bold "><i class="fa fa-home mt-1"></i></b></a>

                                <a class="nav-link text-white" href="EmployeeAcr.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Employee ACR</b></a>
                                <a class="nav-link text-white" href="EmployeeAcrFill.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Fill ACR Form</b></a>
                                <a class="nav-link text-white" href="AcrReport.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;ACR Report </b></a>
                            </ul>
                        </div>
                    </div>
                </nav>
                <br />
                <div class="row page-titles mb-4">
                    <div class="col-md-5 align-self-center">
                    </div>
                </div>
                <div class="card-header card-border-info">
                </div>
                <fieldset id="show2" runat="server">
                    <legend>Detail</legend>
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
                                            <th>स.क्र.</th>
                                            <th>कर्मचारी आई.डी/नाम (उप नाम सहित)</th>
                                            <th>पिता/पति का नाम</th>
                                            <th>जन्मतिथि</th>
                                            <th>धारित पद का नाम</th>
                                            <th>संस्था का नाम /स्कूल कोड</th>
                                            <th>ACR फॉर्म</th>
                                            <%--<th>प्रिंट</th--%>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>गोपाल वर्मा/EDP4454445</td>
                                            <td>राम वर्मा</td>
                                            <td>22/07/1989</td>
                                            <td>सहायक शिक्षक</td>
                                            <td>DPI/456656356</td>
                                            <td>
                                                <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click1" />
                                            </td>
                                            <%--  <td>
    <button type="button"    class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
  </td>--%>
                                        </tr>
                                    </tbody>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>2</td>
                                            <td>सागर गुप्ता/EDP78974445</td>
                                            <td>कृष्णा गुप्ता</td>
                                            <td>28/09/1989</td>
                                            <td>सहायक शिक्षक</td>
                                            <td>DPI/456656356</td>
                                            <td>
                                                <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click" />
                                            </td>
                                            <%-- <td>
                                                   <button type="button"    class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button> </td>--%>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="show" visible="false">
                    <legend>व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>वार्षिक प्रतिवेदन अवधि वर्ष<span class="fa-pull-right" style="color: red">*</span></label>
                                <%-- <asp:TextBox runat="server" ID="txtfinancialyear" class="form-control" autocomplete="off"></asp:TextBox>--%>
                                <%-- <input onkeypress="return NumberOnly();"  maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="YYYY" type="text" data-val="true"  value="" />--%>
                                <input onkeypress="return NumberOnly();" maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2021-22" type="text" data-val="true" value="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>विभाग का नाम<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="txtDepartment" class="form-control" autocomplete="off" placeholder="शिक्षा विभाग"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>जिला  का नाम<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox1" class="form-control" autocomplete="off" placeholder="भोपाल"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    कर्मचारी  आई.डी <span class="fa-pull-right" style="color: red">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="TextBox12" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>नाम (उप नाम सहित)<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="txtName" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>पिता/पति का नाम<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="txtFatherName" class="form-control" autocomplete="off" placeholder="राम वर्मा"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>जन्मतिथि<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TXTDOB" class="form-control" autocomplete="off" placeholder="22-07-1989"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>धारित पद का नाम<span class="fa-pull-right" style="color: red">*</span></label>
                                                   <asp:TextBox runat="server" ID="Txtdesignetion" class="form-control" autocomplete="off" placeholder="सहायक शिक्षक"></asp:TextBox>
                              <%--  <select class="form-control select2">
                                    <option value="Indore">Ministry (मंत्रालय)</option>
                                    <option value="Gwalior">Executive (कार्यकारी)</option>
                                    <option value="Jabalpur">Teaching (शिक्षण)</option>
                                </select>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>संस्था का नाम  <span class="fa-pull-right" style="color: red">*</span> </label>
                                <asp:TextBox runat="server" ID="TextBox13" class="form-control" autocomplete="off" placeholder="DPI"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>जी.पी.एफ.खाता क्रमांक<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="txtAccuntNo" class="form-control" autocomplete="off" placeholder="654456123789"></asp:TextBox>

                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>वर्तमान पद पर नियुक्ति  दिनांक</label>
                                <asp:TextBox runat="server" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" TextMode="date" placeholder="12/04/2024"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>विभाग में प्रथम  नियुक्ति  दिनांक </label>
                                <asp:TextBox runat="server" ID="TXTfIRSTJINGDATE" TextMode="Date" class="form-control" autocomplete="off" placeholder="12/04/2024"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>विभाग में पद नाम </label>
                                <asp:TextBox runat="server" ID="TextBox3" class="form-control" autocomplete="off" placeholder="सहायक शिक्षक"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>प्रथम संस्था का नाम </label>
                                <asp:TextBox runat="server" ID="TextBox11" class="form-control" autocomplete="off" placeholder="DPI"></asp:TextBox>

                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">धारित पद <span class="fa-pull-right" style="color: red">*</span> </label>
                                <asp:DropDownList runat="server" ID="ddlDESINATIONTYPE" CssClass="form-control select2">

                                    <asp:ListItem>स्थाई</asp:ListItem>
                                    <asp:ListItem>अस्थाई</asp:ListItem>
                                    <asp:ListItem>स्थानापन्न</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>व्यक्तित्व एवं व्यवहार<span class="fa-pull-right" style="color: red">*</span> </label>
                                <asp:TextBox runat="server" ID="txtNacher" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>समता/बुद्धिमता एवं व्यवसायिक योग्यता<span class="fa-pull-right" style="color: red">*</span> </label>
                                <asp:TextBox runat="server" ID="TXTstrenth" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>सनिष्ठा के विशेष संधर्भ में आचरण/प्रशंसा<span class="fa-pull-right" style="color: red">*</span> </label>
                                <asp:TextBox runat="server" ID="TextBox2" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>जनता एवं सह पदाधिकारी से सम्बन्ध<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox4" class="form-control" autocomplete="off" placeholder></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>पदोन्नति/दक्षतारोध पार करने की उपयुक्ता<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>जनता एवं सह पदाधिकारी से सम्बन्ध<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox6" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>सामान्य टिप्पणी<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox7" class="form-control" autocomplete="off" placeholder></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>वर्गीकरण<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox8" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>स्थान<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox9" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>दिनांक<span class="fa-pull-right" style="color: red">*</span></label>
                                <asp:TextBox runat="server" ID="TextBox10" TextMode="Date" class="form-control" autocomplete="off"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>जांच करने वाले अधिकारी की टिप्पणी<span class="fa-pull-right" style="color: red">*</span></label>

                                <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>

                            </div>
                        </div>


                        <div class="col-md-3 text-center mt-4">
                            <div class="form-group">
                                <%--                                <button type="button" class="btn btn-success btn-rounded " style="margin-top: 7px" data-bs-toggle="modal>Send to DEO</button--%>




                                <%--  <asp:Button runat="server" type="button" class="Alert-Save btn btn-success btn-rounded" Text="Send To DEO" OnClick="Unnamed_Click3" />--%>

                                <a class=" Alert-Save btn btn-success btn-rounded">Send To DEO</a>



                                <a href="EmployeeAcrFill.aspx" class="btn btn-danger  btn-rounded">clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="Fieldset1" runat="server" visible="false">
                    <legend>Detail</legend>
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
                                <table id="Table2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>स.क्र.</th>
                                            <th>कर्मचारी आयडी/नाम (उप नाम सहित)</th>
                                            <th>पिता/पति का नाम</th>
                                            <th>जन्मतिथि</th>
                                            <th>धारित पद का नाम</th>
                                            <th>संस्था का नाम /स्कूल कोड</th>

                                            <th>प्रिंट</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>गोपाल वर्मा/EDP4454445</td>
                                            <td>राम वर्मा</td>
                                            <td>22/07/1989</td>
                                            <td>सहायक शिक्षक</td>
                                            <td>DPI/456656356</td>
                                            <%-- <td>
                                              <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click1" />


                                          </td>--%>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>2</td>
                                            <td>सागर गुप्ता/EDP78974445</td>
                                            <td>कृष्णा गुप्ता</td>
                                            <td>28/09/1989</td>
                                            <td>सहायक शिक्षक</td>
                                            <td>DPI/456656356</td>
                                            <%--                                          <td>
                                              <asp:Button runat="server" type="button" class=" btn btn-success btn-rounded" Text="Fill ACR Report" OnClick="Unnamed_Click" />


                                          </td>--%>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>



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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script>
        function HideShow() {
            var x = document.getElementById("Fieldset1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>--%>


    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
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
                        text: "Do you want to save this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        //animation: false,
                        //customClass: {
                        //    popup: 'animated tada'
                        //}
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000,

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'AcrReport.aspx';
                            });
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
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(document).ready(function () {
            //$('.datepickerYear').datepicker({
            //    format: 'yyyy-yyyy',
            //    viewMode: 'years',
            //    minViewMode: 'years',
            //    autoclose: true // Add autoclose option
            //});
            $('.datepickerYear').datepicker({
                format: "yyyy",
                minViewMode: 2,
                autoclose: true
            }).on('hide', function (e) {
                var selectedYear = parseInt(e.target.value); // Convert to integer
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            });

            // Triggering the datepicker to show


            $('.datepickerMonthYear').datepicker({
                format: 'mm/yyyy', // Set the format to display month and year
                viewMode: 'months', // Set view mode to display months
                minViewMode: 'months', // Set min view mode to display months
                autoclose: true // Add autoclose option
            });
        }); </script>
</asp:Content>

