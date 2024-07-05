<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolVerification.aspx.cs" Inherits="mis_Registration_Rpt_SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .view-but {
            font-weight: 700;
            color: #673ab7;
            text-decoration: underline;
        }

        .alert-success {
            color: white !important;
            background-color: #069570 !important;
        }

        @media (min-width: 992px) {
            .modal-lg, .modal-xl, .modal-xxl {
                max-width: 80%
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
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
                <div class="col-lg-12">
                    <h4 class="card-title">School Verification / विद्यालय सत्यापन
                    </h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>School Verification / विद्यालय सत्यापन</legend>

                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                        <label >
                            Select Division Name<br />
                            संभाग का नाम चुनें
                        </label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Gwalior</asp:ListItem>
                            <asp:ListItem>Narmadapuram</asp:ListItem>
                            <asp:ListItem>Indore</asp:ListItem>
                            <asp:ListItem>Jabalpur</asp:ListItem>
                            <asp:ListItem>Rewa</asp:ListItem>
                            <asp:ListItem>Sagar</asp:ListItem>
                            <asp:ListItem>Shahdol</asp:ListItem>
                            <asp:ListItem>Ujjain</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                        <label >
                            Select District Name<br />
                            जिले का नाम चुनें</label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Raisen</asp:ListItem>
                            <asp:ListItem>Rajgarh</asp:ListItem>
                            <asp:ListItem>Sehore</asp:ListItem>
                            <asp:ListItem>Vidisha</asp:ListItem>
                            <asp:ListItem>Ashoknagar</asp:ListItem>
                            <asp:ListItem>Shivpuri</asp:ListItem>
                            <asp:ListItem>Datia</asp:ListItem>
                            <asp:ListItem>Guna</asp:ListItem>
                            <asp:ListItem>Gwalior</asp:ListItem>
                            <asp:ListItem>Harda</asp:ListItem>
                            <asp:ListItem>Hoshangabad</asp:ListItem>
                            <asp:ListItem>Betul</asp:ListItem>
                            <asp:ListItem>Morena</asp:ListItem>
                            <asp:ListItem>Sheopur</asp:ListItem>
                            <asp:ListItem>Bhind</asp:ListItem>
                            <asp:ListItem>Barwani</asp:ListItem>
                            <asp:ListItem>Burhanpur</asp:ListItem>
                            <asp:ListItem>Dhar</asp:ListItem>
                            <asp:ListItem>Indore</asp:ListItem>
                            <asp:ListItem>Jhabua</asp:ListItem>
                            <asp:ListItem>Khandwa</asp:ListItem>
                            <asp:ListItem>Khargone</asp:ListItem>
                            <asp:ListItem>Alirajpur</asp:ListItem>
                            <asp:ListItem>Balaghat</asp:ListItem>
                            <asp:ListItem>Chhindwara</asp:ListItem>
                            <asp:ListItem>Jabalpur</asp:ListItem>
                            <asp:ListItem>Katni</asp:ListItem>
                            <asp:ListItem>Mandla</asp:ListItem>
                            <asp:ListItem>Narsinghpur</asp:ListItem>
                            <asp:ListItem>Seoni</asp:ListItem>
                            <asp:ListItem>Rewa</asp:ListItem>
                            <asp:ListItem>Satna</asp:ListItem>
                            <asp:ListItem>Sidhi</asp:ListItem>
                            <asp:ListItem>Singroli</asp:ListItem>
                            <asp:ListItem>Chhatarpur</asp:ListItem>
                            <asp:ListItem>Damoh</asp:ListItem>
                            <asp:ListItem>Panna</asp:ListItem>
                            <asp:ListItem>Sagar</asp:ListItem>
                            <asp:ListItem>Tikamgarh</asp:ListItem>
                            <asp:ListItem>Shahdol</asp:ListItem>
                            <asp:ListItem>Umaria</asp:ListItem>
                            <asp:ListItem>Dindori</asp:ListItem>
                            <asp:ListItem>Anuppur</asp:ListItem>
                            <asp:ListItem>Dewas</asp:ListItem>
                            <asp:ListItem>Mandsaur</asp:ListItem>
                            <asp:ListItem>Neemuch</asp:ListItem>
                            <asp:ListItem>Ratlam</asp:ListItem>
                            <asp:ListItem>Shajapur</asp:ListItem>
                            <asp:ListItem>Ujjain</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                        <label >
                            Select Block Name<br />
                            ब्लॉक का नाम चुनें</label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Agar</asp:ListItem>
                            <asp:ListItem>Barod</asp:ListItem>
                            <asp:ListItem>Nalkheda</asp:ListItem>
                            <asp:ListItem>Susner</asp:ListItem>
                            <asp:ListItem>Alirajpur</asp:ListItem>
                            <asp:ListItem>Bhabra</asp:ListItem>
                            <asp:ListItem>Katthiwara</asp:ListItem>
                            <asp:ListItem>Sondwa</asp:ListItem>
                            <asp:ListItem>Udaygarh</asp:ListItem>
                            <asp:ListItem>Jobat</asp:ListItem>
                            <asp:ListItem>Anuppur</asp:ListItem>
                            <asp:ListItem>Jaithari</asp:ListItem>
                            <asp:ListItem>Kotma</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <%--  <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                            <div class="form-group">
                                <label >School UDISE Code</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server">
                                    <asp:ListItem>Enter School UDISE Code</asp:ListItem>
                                    <asp:ListItem>1214548455-Sarasvati Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>1014632121-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>0124587465-Reema Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>1315473465-Sarasvati Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>1224876546-Bal Bharti Higher Secondary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>--%>
                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">

                        <label >
                            UDISE Code<br />
                            यूडीआईएसई कोड</label>
                        <asp:TextBox runat="server" ID="txtUdiseCode" CssClass="form-control" placeholder="Enter UDISE Code"></asp:TextBox>
                    </div>
                </div>
                <hr />

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group ">
                            <asp:Button ID="btnSubmit" CssClass="btn w-lg btn-outline-success btn-rounded" runat="server" OnClick="btnSubmit_Click" Text="Search" />
                            <a runat="server" id="clearfirst" href="SchoolVerification.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>



            </fieldset>


            <fieldset runat="server" id="datatable" visible="false">
                <legend>School Verification Details
                    स्कूल सत्यापन विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-outline-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-outline-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr class="nowrap">
                                        <th>Sr. No.<br />
                                          सरल  क्रमांक</th>
                                        <th>View Request Detail<br />
                                            अनुरोध विवरण देखें</th>
                                        <th>Action<br />
                                            कार्रवाई </th>
                                        <th>Division<br />
                                            संभाग </th>
                                        <th>District<br />
                                            जिला </th>
                                        <th>Block<br />
                                            ब्लॉक</th>
                                        <th>UDISE Code<br />
                                            UDISE कोड</th>
                                        <th>School Name<br />
                                            स्कूल के नाम</th>
                                        <th>School Board<br />
                                            स्कूल बोर्ड</th>
                                        <th>Management<br />
                                            प्रबंध</th>
                                        <th>Category<br />
                                            वर्ग</th>
                                        <th>School Category Detail<br />
                                            स्कूल श्रेणी विवरण</th>
                                        <th>Sankul(DDO)<br />
                                            संकुल(डीडीओ)</th>
                                        <th>Incharge Name<br />
                                            प्रभारी का नाम</th>
                                        <th>Incharge Number<br />
                                            प्रभारी क्रमांक</th>
                                        <th>Functional<br />
                                            कार्यात्मक</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                        </td>
                                        <td scope="col">
                                            <input type="checkbox" /></td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>Huzur</td>
                                        <td class="txt-link">

                                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                23445656546</asp:HyperLink>

                                        </td>
                                        <td>Reema Vidhya Mandir</td>
                                        <td>State Board</td>
                                        <td>Department of Education	</td>
                                        <td>Primary</td>
                                        <td>Primary only with grades 1 to 5 (PRY)</td>
                                        <td>Kendriya Vidhyalaya</td>
                                        <td>Mr.Ramcharan</td>
                                        <td>7984568574</td>
                                        <td>Yes/No</td>
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                        </td>
                                        <td scope="col">
                                            <input type="checkbox" /></td>
                                        <td>Bhopal</td>
                                        <td>Vidisha</td>
                                        <td>Basoda</td>
                                        <td class="txt-link">
                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass=" btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                            25445656547</asp:HyperLink>
                                        </td>
                                        <td>Delhi Public School</td>
                                        <td>State Board</td>
                                        <td>Department of Education	</td>
                                        <td>Primary</td>
                                        <td>Primary only with grades 1 to 5 (PRY)</td>
                                        <td>Kendriya Vidhyalaya</td>
                                        <td>Mr.Shyam Singh</td>
                                        <td>7984568574</td>
                                        <td>Yes/No</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>
                                            <!-- sample modal content -->
                                            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                                <div class="modal-dialog modal-xl">
                                                    <div class="modal-content">
                                                        <div class="modal-header" id="myDIV">
                                                            <h4 class="modal-title" id="myLargeModalLabel1">Request Detail / अनुरोध विवरण</h4>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <div class="row align-items-end">
                                                                <div class="col-lg-3 col-md-6 mt-3">
                                                                    <label>
                                                                        Date<br />
                                                                        तारीख</label>
                                                                    <asp:TextBox ID="TextBox8" placeholder="15/11/2023" ReadOnly="true" runat="server" CssClass="datepicker form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-lg-3 col-md-6 mt-3">
                                                                    <label>
                                                                        Order Document Type
                    <br />
                                                                        ऑर्डर दस्तावेज़ प्रकार</label>
                                                                    <asp:TextBox ID="TextBox4" placeholder="Order Letter" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>

                                                                <div class="col-lg-3 col-md-6 mt-3">
                                                                    <label>
                                                                        Order No<br />
                                                                        आदेश संख्या</label>
                                                                    <asp:TextBox ID="TextBox9" placeholder="1248745" ReadOnly="true" runat="server" CssClass=" form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-lg-3 col-md-6 mt-3">
                                                                    <label>
                                                                        Effective Date<br />
                                                                        प्रभावी तिथि</label>
                                                                    <asp:TextBox ID="TextBox6" placeholder="20/11/2023" ReadOnly="true" runat="server" CssClass="datepicker form-control"></asp:TextBox>
                                                                </div>

                                                                <div class="col-md-2 mt-3">
                                                                    <button type="button" id="LinkButton3" class="btn  btn-outline-secondary  border" onclick="openPDF()"><i class="fas fa-eye"></i>Document</button>
                                                                    <%--<asp:FileUpload runat="server" CssClass="form-control" />--%>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->

                                            <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                        </td>
                                        <td scope="col">
                                            <input type="checkbox" /></td>
                                        <td>Chambal</td>
                                        <td>SHEOPUR</td>
                                        <td>VIJAYPUR</td>

                                        <td class="txt-link">
                                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                           25445655665    </asp:HyperLink>
                                        </td>
                                        <td>Modern Convent School</td>
                                        <td>CBSE</td>
                                        <td>Department of Education	</td>
                                        <td>Upper Primary</td>
                                        <td>Upper Primary with grades 1 to 8 (PRY-UPR)</td>
                                        <td>Kendriya Vidhyalaya</td>
                                        <td>Mr.Mohan Singh</td>
                                        <td>7984568574</td>
                                        <td>Yes/No</td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <div class="" runat="server" id="divbtn" visible="false">
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class=" btn w-lg btn-outline-success btn-rounded" data-bs-toggle="modal" data-bs-target="#OTPModal">Verify School</button>
                            <button type="button" class="btn w-lg btn-outline-danger btn-rounded" onclick="openBootstrapModal()">Reject Request</button>
                        </div>
                    </div>


                </div>
            </fieldset>

            <div class="modal" tabindex="-1" role="dialog" id="OTPModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">OTP Details / OTP विवरण</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>OTP Details / OTP विवरण</legend>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>
                                                OTP (One Time Password)<br />
                                                OTP (वन टाइम पासवर्ड)</label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn w-lg btn-outline-success Alert-VerifySchool" data-bs-dismiss="modal">Submit</button>
                            <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- sample modal content -->
            <!-- Bootstrap Modal -->
            <div class="modal" tabindex="-1" role="dialog" id="bootstrapModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Reason of Rejection / अस्वीकृति का कारण</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                        Remark<br />
                                        टिप्पणी</label>
                                    <asp:TextBox ID="TextBox3" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn  btn-outline-danger w-lg btn-border Alert-Reject" data-bs-dismiss="modal">Reject</button>
                            <button type="button" class="btn btn-outline-success w-lg btn-border" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal -->

            <!-- sample modal content -->
            <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-xxl" style="width: 100%;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myLargeModalLabel">School Details / स्कूल विवरण</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>School Basic Information / स्कूल की जानकारी</legend>

                                <div class="row align-items-end">
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >School UDISE Code <br /> स्कूल यूडीआईएसई कोड<span style="color: red;"> *</span></label>
                                            <asp:TextBox ID="ir" runat="server" CssClass="form-control" ReadOnly="true" placeholder="Enter UDISE Code"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Division <br /> संभाग का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Indore</asp:ListItem>
                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select District <br />  जिले का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Raisen</asp:ListItem>
                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Block <br /> ब्लॉक का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Huzur</asp:ListItem>
                                                <asp:ListItem>Berasia</asp:ListItem>
                                                <asp:ListItem>Phanda</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Location <br /> स्थान चुनें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                <asp:ListItem>2-Urban</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Assembly  <br /> विधानसभा का चयन करें <span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                <asp:ListItem>Huzur</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Parliamentary <br /> संसदीय का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Bhopal</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Habitation  <br /> आवास का चयन करें </label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Berasia</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Board Type <br /> बोर्ड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                <asp:ListItem>2-State Board</asp:ListItem>
                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                <asp:ListItem>4-International</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select School Type <br /> स्कूल का प्रकार चुनें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select School Category <br /> स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Primary</asp:ListItem>
                                                <asp:ListItem>2-Upper Primary</asp:ListItem>
                                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Lowest Class <br /> निम्नतम वर्ग का चयन करें<span style="color: red;">*</span></label>
                                            <%--<asp:TextBox ID="txtclass" runat="server" placeholder="Enter Lowest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                            <asp:dropdownlist cssclass="form-control" enabled="False" xmlns:asp="#unknown" runat="server">
                                                <asp:listitem>-Select-</asp:listitem>
                                                <asp:listitem>Nursary</asp:listitem>
                                                <asp:listitem>LKG</asp:listitem>
                                                <asp:listitem>UKG</asp:listitem>
                                                <asp:listitem>1st</asp:listitem>
                                                <asp:listitem>2nd</asp:listitem>
                                                <asp:listitem>3rd</asp:listitem>
                                                <asp:listitem>4th</asp:listitem>
                                                <asp:listitem>5th</asp:listitem>
                                                <asp:listitem>6th</asp:listitem>
                                                <asp:listitem>7th</asp:listitem>
                                                <asp:listitem>8th</asp:listitem>
                                                <asp:listitem>9th</asp:listitem>
                                                <asp:listitem>10th</asp:listitem>
                                                <asp:listitem>11th</asp:listitem>
                                                <asp:listitem>12th</asp:listitem>
                                            </asp:dropdownlist>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Highest Class <br /> उच्चतम वर्ग का चयन करें<span style="color: red;">*</span></label>
                                            <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>

                                            <asp:DropDownList CssClass="form-control" runat="server">

                                                <asp:ListItem Selected="True">12th</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Management Group <br /> प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>A-State Govt</asp:ListItem>
                                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                                <asp:ListItem>C-Private UnAided </asp:ListItem>
                                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                                <asp:ListItem>E-Other</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select School Management <br /> स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select In-Charge Type <br /> प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Head Master / Principal </asp:ListItem>
                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >IN-Charge Unique Id <br /> प्रभारी यूनिक आईडी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="Enter IN-Charge Unique ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >IN-Charge Name <br /> प्रभारी का नाम<span style="color: red;"> *</span></label>
                                            <asp:TextBox runat="server" placeholder="Enter IN-Charge Name" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >IN-Charge Mobile Number <br /> प्रभारी मोबाइल नंबर<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="Enter IN-Charge Mobile Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Year of Establishment <br /> स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                            <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>2015</asp:ListItem>
                                                <asp:ListItem>2016</asp:ListItem>
                                                <asp:ListItem>2017</asp:ListItem>
                                                <asp:ListItem>2018</asp:ListItem>
                                                <asp:ListItem>2019</asp:ListItem>
                                                <asp:ListItem>2020</asp:ListItem>
                                                <asp:ListItem>2021</asp:ListItem>
                                                <asp:ListItem>2022</asp:ListItem>
                                                <asp:ListItem>2023</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Minority Community  <br /> अल्पसंख्यक समुदाय का चयन करें <span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Muslim</asp:ListItem>
                                                <asp:ListItem>2-Sikh</asp:ListItem>
                                                <asp:ListItem>3-Jain</asp:ListItem>
                                                <asp:ListItem>4-Christian</asp:ListItem>
                                                <asp:ListItem>5-Parsi</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select School Medium <br /> स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>19-English</asp:ListItem>
                                                <asp:ListItem>04-Hindi</asp:ListItem>
                                                <asp:ListItem>18-Urdu</asp:ListItem>
                                                <asp:ListItem>10-Marathi</asp:ListItem>
                                                <asp:ListItem>99-Other</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >School Name (In English)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                            <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>School Address Information/स्कूल के पते की जानकारी</legend>


                                <div class="row align-items-end">
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >School Address (Line 1) <br /> स्कूल का पता(1)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >School Address (Line 2) <br /> स्कूल का पता(2)</label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Pin Code <br /> पिन कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Landline Number <br /> लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Email ID <br /> ईमेल आई.डी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >School Website <br /> स्कूल की वेबसाइट</label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select School Shift <br /> स्कूल शिफ्ट का चयन करें <span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Morning</asp:ListItem>
                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                <asp:ListItem>Both</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Is School Residential <br /> क्या विद्यालय आवासीय है का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem Selected="True">No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Special School <br /> विशेष विद्यालय का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>CM Rise</asp:ListItem>
                                                <asp:ListItem>Model</asp:ListItem>
                                                <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                                <asp:ListItem>District Excellence</asp:ListItem>
                                                <asp:ListItem>Block Excellence</asp:ListItem>
                                                <asp:ListItem>PM Shri </asp:ListItem>
                                                <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                                <asp:ListItem>Urdu</asp:ListItem>
                                                <asp:ListItem>Marathi</asp:ListItem>
                                                <asp:ListItem>Sanskrit</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select School Status <br /> स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Functional</asp:ListItem>
                                                <asp:ListItem>Closed</asp:ListItem>
                                                <asp:ListItem>Merged</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-2">
                                        <div class="form-group">
                                            <label >Select Hostel Attach <br /> हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>


                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>School Bank Information/स्कूल बैंक सूचना</legend>

                                <div class="row align-items-end">
                                    <div class="col-md-6 col-lg-4 mb-2">
                                        <div class="form-group">
                                            <label >School Bank Account Name <br /> स्कूल बैंक खाते का नाम<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 mb-2">
                                        <div class="form-group">
                                            <label >School Bank Account Number <br /> स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox1" Placeholder="Enter Account Number" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 ">
                                        <div class="form-group">
                                            <label >IFSC Code <br /> आईएफएससी कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox5" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>

                    <!-- /.modal-content -->
                </div>

                <!-- /.modal-dialog -->

            </div>
            <!-- /.modal -->


            <!--Description-->
            <%--<fieldset id="dcp" runat="server" visible="false">
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>. </li>
                                    </ul>
                                </li>

                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>Division Name.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Block Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade <strong>Division and District name.</strong> </li>
                                    </ul>
                                </li>

                                <li><strong>School UDISE Code</strong>
                                    <ul>
                                        <li>School UDISE Code will be auto populated data based on selected <strong>Division, District and Block name </strong></li>
                                        <li>The School UDISE Code for schools must be implemented as a <strong>Searchable</strong> dropdown.</li>
                                    </ul>
                                </li>


                                <li><strong>Search </strong>
                                    <ul>
                                        <li>After click on Search button data will be visible in gridview.</li>
                                    </ul>

                                </li>


                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                    </ul>
                                </li>

                                <li><strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li><strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li><strong>View Request Detail (Gridview)</strong>
                                    <ul>
                                        <li>When the user clicks on the eye Icon, request related  details will be visible in the pop up.</li>

                                        <li>When clicking on the eye icon, users can view request details such as the Date and Order Number.
 Additionally, by clicking on the 'Documents' Button, they can also view request, related documents .
                                        </li>
                                    </ul>
                                </li>
                                <li><strong>UDISE Code (Gridview)</strong>
                                    <ul>
                                        <li>User will able to see school all information in pop-up by clicking on UDISE Code <strong>Hyperlink</strong> in gridview.</li>
                                    </ul>
                                </li>
                                <li><strong>Verify School</strong>
                                    <ul>
                                        <li>It is mandatory to click on the checkbox in front of the data to verify the relevant data.
                                                  After that the data will be verified</li>

                                    </ul>
                                </li>
                                <li><strong>Reject</strong>
                                    <ul>
                                        <li>It is mandatory to click on the checkbox in front of the data to <strong>Reject</strong> the relevant request.
                                                  After that the <strong>Modal Pop-up</strong> will open. </li>
                                        <li>The user will be able to enter <strong>rejection remarks</strong>, and by clicking on 'Reject,' the request will be rejected.</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>--%>
            <!-- End Description -->
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
            debugger
            alert("Are you sure you want to Verified School");
            const element = document.getElementById("myDIV");
            element.className = "modal-header alert-success"
            document.getElementById('myLargeModalLabel1').innerHTML = "School UnMerged Successfully";
            document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>


    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-VerifySchool').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Verify School ?",
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
                                text: 'School Verified Successfully!',
                                timer: 2000
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
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>
        // Function to open the Bootstrap modal
        function openBootstrapModal() {
            $('#bootstrapModal').modal('show');
        }
    </script>


</asp:Content>

