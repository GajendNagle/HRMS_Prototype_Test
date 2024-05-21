<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolVerificationDO.aspx.cs" Inherits="mis_DoLevel_SchoolVerificationDO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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

    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor">School Verification</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=DO" title="click to go on">OIS Verification</a></li>
                        <li class="breadcrumb-item active">School Verification</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>


            <div class="card-body">
                <fieldset>
                    <legend>School Verification</legend>

                    <div class="row">

                        <%--    <div class="col-md-3">

                            <ul class=" Custom-ul">
                                <li class="bg-megnalight">Division : 
                            <label>Bhopal</label></li>
                            </ul>

                        </div>
                        <div class="col-md-3">

                            <ul class=" Custom-ul">

                                <li class="bg-megnalight">District :
                            <label>Bhopal</label></li>
                            </ul>

                        </div>--%>




                        <%--     <div class="col-md-3">
                            <label class="font-bold">Division Name <span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" Enabled="false" CssClass="form-control select2">

                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" Enabled="false" CssClass="form-control select2">

                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                            </asp:DropDownList>
                        </div>--%>
                        <div class="col-md-12 mt-3">
                            <div class="form-group">
                                <span class="bg-megnalight">Division : 
                                   <b class="font-bold">Bhopal</b> </span>&nbsp&nbsp&nbsp&nbsp
                       
                           <span class="bg-megnalight">District : 
                              <b class="font-bold">Bhopal  </b>
                           </span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Enter School UDISE Code<span style="color: red;"> *</span></label>
                                <asp:DropDownList CssClass="form-control select2" runat="server">
                                    <asp:ListItem> Enter School UDISE Code</asp:ListItem>
                                    <asp:ListItem>23145484551-Sarasvati Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>23146321212-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>23245874655-Reema Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>23154734659-Sarasvati Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>23248765460-Bal Bharti Higher Secondary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-3  mt-4">
                            <div class="form-group">

                                <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded" runat="server" OnClick="btnSubmit_Click" Text="Search" />

                                <a runat="server" id="clearfirst" href="SchoolVerificationDO.aspx" class="btn  btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>


                <fieldset runat="server" id="datatable" visible="false">
                    <legend>School Verification Details</legend>
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
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>

                                            <th>Sr. No.</th>
                                            <th>Division</th>
                                            <th>District</th>
                                            <th>Block</th>
                                            <th>UDISE Code</th>
                                            <th>School Name</th>
                                            <th>School Board</th>
                                            <th>Management</th>
                                            <th>Category</th>
                                            <th>School Category Detail</th>
                                            <th>Sankul(DDO) Code/Name</th>
                                            <th>Incharge Name</th>
                                            <th>Incharge Number</th>
                                            <th>Action</th>

                                        </tr>
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


                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;">Request To Head Office</asp:LinkButton>

                        </div>
                        <!-- sample modal content -->
                        <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header" id="myDIV">
                                        <h4 class="modal-title text-" id="myLargeModalLabel1"><b>School Verification Request</b></h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Order Document Type</label>
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

                                                    <label>Order No.</label>
                                                    <asp:TextBox ID="TextBox4" placeholder="Enter Order No." runat="server" CssClass=" form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">

                                                    <label>Order Date</label>
                                                    <input type="date" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">

                                                    <label>Upload Order Copy</label>
                                                    <asp:FileUpload runat="server" CssClass="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">

                                                    <label>Remark</label>
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

                                        <button type="button" class="btn btn-success Alert-Sendrequest" data-bs-dismiss="modal">Save</button>
                                        <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->
                    </div>
                </fieldset>
                <!--for UDISE CODE CLICK Add the Modal -->
                <!-- sample modal content -->
                <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-xxl" style="width: 100%;">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myLargeModalLabel">School Details</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>School Basic Information</legend>

                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="23445656546" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Kamla nehru school" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                                <asp:TextBox runat="server" Placeholder="कमला नेहरु स्कूल" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Division<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                    <asp:ListItem>2-Indore</asp:ListItem>
                                                    <asp:ListItem>3-Ujjain</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">District<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                    <asp:ListItem>2-Raisen</asp:ListItem>
                                                    <asp:ListItem>3-Sehore</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Block<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                    <asp:ListItem>Berasia</asp:ListItem>
                                                    <asp:ListItem>Phanda</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Location<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Rural</asp:ListItem>
                                                    <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Govindpura</asp:ListItem>
                                                    <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Parliamentary<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Habitation </label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Board<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-CBSE</asp:ListItem>
                                                    <asp:ListItem Selected="True">2-State Board</asp:ListItem>
                                                    <asp:ListItem>3-ICSE </asp:ListItem>
                                                    <asp:ListItem>4-International</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Type<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Boy</asp:ListItem>
                                                    <asp:ListItem>2-Girls</asp:ListItem>
                                                    <asp:ListItem>3-Co-Ed</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>School Category<span style="color: red;"> *</span></label>
                                                <select class="form-control select2">
                                                    <option value=" -Select-">-Select-</option>
                                                    <option value="1-Primary">1-Pre-Primary</option>
                                                    <option value="1-Primary">2-Primary</option>
                                                    <option value="2-Upper Primary">3-Upper Primary</option>
                                                    <option value="3-Higher Secondary">4-Secondary</option>
                                                    <option value="3-Higher Secondary">5-Higher Secondary</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>School Category Details<span style="color: red;"> *</span></label>
                                                <select class="form-control select2">
                                                    <option value=" -Select-">-Select-</option>
                                                    <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                                    <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                                    <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                                    <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                                    <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Management Group<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">A-State Govt</asp:ListItem>
                                                    <asp:ListItem>B-Govt Aided</asp:ListItem>
                                                    <asp:ListItem>C-Private UnAided </asp:ListItem>
                                                    <asp:ListItem>D-Central Govt</asp:ListItem>
                                                    <asp:ListItem>E-Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Management<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                                    <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                    <asp:ListItem>3-Local Body </asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">In-Charge Type<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="t">1-Head Master / Principal </asp:ListItem>
                                                    <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                    <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Unique Id<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="68571" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Name<span style="color: red;"> *</span></label>
                                                <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Mobile Number <span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                                                <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ></asp:TextBox>--%>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="t">2015</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>

                                                    <asp:ListItem Selected="true">2-Sikh</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Medium<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>19-English</asp:ListItem>
                                                    <asp:ListItem>04-Hindi</asp:ListItem>
                                                    <asp:ListItem>18-Urdu</asp:ListItem>
                                                    <asp:ListItem>10-Marathi</asp:ListItem>
                                                    <asp:ListItem>99-Other</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>
                                        </div>

                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>School Address Information</legend>


                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 1)<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 2)</label>
                                                <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Website</label>
                                                <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Shift <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Morning</asp:ListItem>
                                                    <asp:ListItem>Afternoon</asp:ListItem>
                                                    <asp:ListItem>Both</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Is School Residential<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem Selected="True">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>



                                    </div>

                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Special School<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
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
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Status<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Functional</asp:ListItem>
                                                    <asp:ListItem>Closed</asp:ListItem>
                                                    <asp:ListItem>Merged</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">hostel Attach<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>


                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>School Bank Information</legend>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox1" Placeholder="Enter Account Number" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 ">
                                            <div class="form-group">
                                                <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox5" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </fieldset>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" data-bs-dismiss="modal">Update</button>
                                <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>

                        <!-- /.modal-content -->
                    </div>

                    <!-- /.modal-dialog -->

                </div>
                <!-- /.modal -->



                <!--Description-->
                <%--   <fieldset runat="server" id="dcp" visible="false">
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

                                <li><strong>School Name / UDISE Code</strong>
                                    <ul>
                                        <li>School Name / UDISE Code will be auto populated data based on selected <strong>Division, District and Block name </strong></li>
                                        <li>
                                        School Name / UDISE Code Name for schools must be implemented as a multiselect dropdown.
                                    </ul>
                                </li>


                                <li><strong>Search </strong>
                                    <ul>
                                        <li>After click on Search button data will be visible in grid view.</li>
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
                                <li><strong>UDISE Code (Gridview)</strong>
                                    <ul>
                                        <li>User will able to see school all information in pop-up by clicking on UDISE Code <strong>Hyperlink</strong> in gridview.</li>
                                    </ul>
                                </li>

                                <li><strong>Request Button (Gridview)</strong>
                                    <ul>
                                        <li>When the user clicks the request button to send a request to the Head Office, a pop-up will open.</li>

                                        <li>After uploading the request related details like <strong>Date, Order Number, Relevant Documents and clicking on the Verification Check box,</strong> the request can be sent to the head office by clicking on the confirm button.</li>
                                    </ul>
                                </li>



                            </ul>
                        </div>
                    </div>
                </fieldset>--%>
                <!-- End Description -->




            </div>
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


