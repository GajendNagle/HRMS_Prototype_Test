<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolVerificationDO.aspx.cs" Inherits="mis_DoLevel_SchoolVerificationDO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
        }
        .Custom-ul {
            list-style: none;
            font-size: small;
            margin-bottom: 0px;
            color: #000;
        }
            .Custom-ul li {
                display: inline;
                padding: 0.5rem;
                margin-right: 5rem;
            }
                .Custom-ul li label {
                    font-weight: 600;
                }

        .bg-megnalight {
            background-color: #01c0c838; /*#1b5b5c40*/
            border-radius: 0.5em;
            padding: 0.5rem;
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
                        <li class="breadcrumb-item"><a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a></li>
                        <li class="breadcrumb-item"><a href="#HeadOfficeLevelVerification" data-bs-toggle="collapse" onclick="SidebarToggle('SchoolDirectory')" role="button" aria-expanded="false"><span>Head Office Level Verification</span></a></li>
                        <li class="breadcrumb-item">School Verification</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">School Verification / विद्यालय सत्यापन
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School Verification / विद्यालय सत्यापन</legend>
                <div class="row align-items-end">
                    <div class="col-md-12 mt-3">
                        <div class="form-group">
                            <span class="bg-megnalight">Division : 
                                   <b class="font-bold">Bhopal</b> संभाग : भोपाल</span>&nbsp&nbsp&nbsp&nbsp
                           <span class="bg-megnalight">District : 
                              <b class="font-bold">Bhopal  </b>जिला : भोपाल
                           </span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Select School UDISE Code/स्कूल UDISE कोड चुनें<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> Select School UDISE Code</asp:ListItem>
                                <asp:ListItem>23145484551-Sarasvati Gyan Mandir</asp:ListItem>
                                <asp:ListItem>23146321212-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                <asp:ListItem>23245874655-Reema Gyan Mandir</asp:ListItem>
                                <asp:ListItem>23154734659-Sarasvati Vidhya Mandir</asp:ListItem>
                                <asp:ListItem>23248765460-Bal Bharti Higher Secondary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group text-center">
                                <asp:Button ID="btnSubmit" CssClass="btn btn-success w-lg btn-border" runat="server" OnClick="btnSubmit_Click" Text="Search" />
                                <a runat="server" id="clearfirst" href="SchoolVerificationDO.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="datatable" visible="false">
                <legend>School Verification Details / स्कूल सत्यापन विवरण</legend>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr. No.<br />क्रमांक</th>
                                        <th>Division<br />संभाग </th>
                                        <th>District<br />जिला </th>
                                        <th>Block<br />ब्लॉक</th>
                                        <th>UDISE Code<br />UDISE कोड</th>
                                        <th>School Name<br />स्कूल के नाम</th>
                                        <th>School Board<br />स्कूल बोर्ड</th>
                                        <th>Management<br />प्रबंध</th>
                                        <th>Category<br />वर्ग</th>
                                        <th>School Category Detail<br />स्कूल श्रेणी विवरण</th>
                                        <th>Sankul(DDO) Code/Name<br />संकुल (डीडीओ) कोड/नाम</th>
                                        <th>Incharge Name/<br />प्रभारी का नाम</th>
                                        <th>Incharge Number<br />प्रभारी क्रमांक</th>
                                        <th>Action/<br />कार्रवाई</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>Huzur</td>
                                        <td class="txt-link">
                                            <asp:HyperLink ID="LinkButton3" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                                  23445656546

                                            </asp:HyperLink>
                                        </td>
                                        <td>Delhi Public School</td>
                                        <td>State Board</td>
                                        <td>Department of Education	</td>
                                        <td>Primary</td>
                                        <td>Primary only with grades 1 to 5 (PRY)</td>
                                        <td>45854751-Kendriya Vidhyalaya</td>
                                        <td>Mr.Ramprakash</td>
                                        <td>9954857485</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12 text-center">
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;">Request To Head Office</asp:LinkButton>
                    </div>
                    <!-- sample modal content -->
                    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header" id="myDIV">
                                    <h4 class="modal-title text-" id="myLargeModalLabel1"><b>School Verification Request / स्कूल सत्यापन अनुरोध</b></h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                </div>
                                <div class="modal-body">

                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Select Order Document Type<br />ऑर्डर दस्तावेज़ प्रकार चुनें<span style="color: red;"> *</span></label>
                                                <select class="form-control">
                                                    <option value="volvo">--Select--</option>
                                                    <option value="volvo">Order Letter</option>
                                                    <option value="volvo">Letter </option>
                                                    <option value="volvo">Request Order Letter </option>
                                                    <option value="volvo">Amendement Letter </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">

                                                <label>Order No.<br />आदेश संख्या<span style="color: red;"> *</span></label>
                                                <asp:TextBox ID="TextBox4" placeholder="Enter Order No." runat="server" CssClass=" form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">

                                                <label>Order Date<br />आर्डर की तारीख<span style="color: red;"> *</span></label>
                                                <input type="date" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">

                                                <label>Upload Order Copy<br />ऑर्डर कॉपी अपलोड करें<span style="color: red;"> *</span></label>
                                                <asp:FileUpload runat="server" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">

                                                <label>Remark<br />रिमार्क<span style="color: red;"> *</span></label>
                                                <textarea class="form-control" placeholder="Enter Remark" maxlength="100"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row m-l-5 ">
                                        <div class="col-md-12">
                                            <label class="form-check m-b-0">
                                                <input type="checkbox" class="form-check-input">
                                                <span class="form-check-label"><b>जिला कार्यालय द्वारा आई डी क्रमांक:- E00015 से सत्यापन/ उपरांत आज दिनांक 22/11/2023 को विद्यालय सत्यापन हेतु आवेदन  मुख्य कार्यालय भेजा जा रहा है|</b></span>
                                                <%--<asp:CheckBox ID="chkSatyapan" runat="server" CssClass="form-check-label" />--%>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer justify-content-center">
                                    <button type="button" class="btn w-lg btn-success Alert-Sendrequest" data-bs-dismiss="modal">Save</button>
                                    <button type="button" class="btn w-lg btn-danger" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </fieldset>
            
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="server">
    <script>
        function FbotonOn() {
            debugger
            const element = document.getElementById("myDIV");
            element.className = "modal-header alert-success"
            document.getElementById('myLargeModalLabel1').innerHTML = "School Verification Successfully";

        }
    </script>
    <script>
        function FbotonOn() {
            if (confirm("Are you sure you want to Send Request To Head Office?") == true) {
                const element = document.getElementById("myDIV");
                element.className = "modal-header alert-success"
                document.getElementById('myLargeModalLabel1').innerHTML = "School Verification Request Send Successfully";
                document.getElementById('data1').innerHTML = "UnMerged";
            }
        }
    </script>
</asp:Content>


