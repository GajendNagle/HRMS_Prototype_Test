<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_SankulDO.aspx.cs" Inherits="mis_DoLevel_Mst_SankulDO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
        }
    </style>
    <style>
        /* Optional styling for better visibility */
        #myDiv {
            display: none;
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
                        <li class="breadcrumb-item"><a href="#OISVerification" data-bs-toggle="collapse" onclick="SidebarToggle('SchoolDirectory')" role="button" aria-expanded="false"><span>OIS Verification</span></a></li>
                        <li class="breadcrumb-item">Create Sankul</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Sankul Master / संकुल मास्टर
                    </h4>
                </div>
            </div>
        </div>
            <div class="card-body">
                <asp:Label runat="server" ID="lblMsg"></asp:Label>
                <fieldset>
                    <legend>Sankul Master / संकुल मास्टर</legend>

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
                                <label >School UDISE Code<br />स्कूल यू.डी.आई.एस.ई कोड<span style="color: red;"> *</span></label>
                                <asp:DropDownList CssClass="form-control select2" runat="server">
                                    <asp:ListItem> Enter School UDISE Code</asp:ListItem>
                                    <asp:ListItem>1214548455-Sarasvati Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>1014632121-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>0124587465-Reema Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>1315473465-Sarasvati Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>1224876546-Bal Bharti Higher Secondary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3 mb-4">
                            <asp:Button runat="server" ID="btnsearch" OnClick="btnsearch_Click" Text="Search" CssClass="btn btn-success btn-rounded" />
                        </div>


                    </div>
                    <div class="row" id="tabledata" runat="server" visible="false">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>

                                            <th>Sr. No.<br />क्रमांक</th>

                                            <th>Block<br />ब्लॉक</th>
                                            <th>UDISE Code<br />UDISE कोड</th>
                                            <th>School Name<br />स्कूल के नाम</th>
                                            <th>School Board<br />स्कूल बोर्ड</th>
                                            <th>Management<br />प्रबंध</th>
                                            <th>Category<br />वर्ग</th>
                                            <th>School Category Detail<br />स्कूल श्रेणी विवरण</th>
                                            <th>Action<br />कार्यवाही</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Huzur</td>
                                            <td class="txt-link">
                                                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;">23445656546</asp:LinkButton>



                                            </td>
                                            <td>Delhi Public School</td>
                                            <td>State Board</td>
                                            <td>Department of Education	</td>
                                            <td>Primary</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton></td>
                                            <!-- Editable  modal content -->
                                            <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                                <div class="modal-dialog modal-xxl" style="width: 100%;">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title" id="myLargeModalLabel2">School Details / स्कूल विवरण</h4>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <fieldset>
                                                                <legend>School Basic Information / स्कूल की जानकारी</legend>

                                                                <div class="row align-items-end">

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>School UDISE Code <br />स्कूल यू.डी.आई.एस.ई कोड<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>School Name (In English)<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="Kamla nehru school" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="कमला नेहरु स्कूल" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Division <br /> संभाग का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                                                <asp:ListItem>2-Indore</asp:ListItem>
                                                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select District <br />  जिला का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                                                <asp:ListItem>2-Raisen</asp:ListItem>
                                                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Block <br />  ब्लॉक का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                                                <asp:ListItem>Berasia</asp:ListItem>
                                                                                <asp:ListItem>Phanda</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Location <br /> स्थान का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                                                <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Assembly <br /> सभा का चयन करें <span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Parliamentary<br />संसदीय का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Habitation <br />आवास का चयन करें </label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select School Board<br />स्कूल बोर्ड का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
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
                                                                            <label>Select School Type<br /> स्कूल प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server" Enabled="false">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                                                <asp:ListItem Selected="True">3-Co-Ed</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select School Category<br />स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                                                            <select class="form-control select2" disabled>
                                                                                <option value=" -Select-">-Select-</option>
                                                                                <option value="1-Primary">1-Pre-Primary</option>
                                                                                <option value="1-Primary">2-Primary</option>
                                                                                <option selected value="2-Upper Primary">3-Upper Primary</option>
                                                                                <option value="3-Higher Secondary">4-Secondary</option>
                                                                                <option value="3-Higher Secondary">5-Higher Secondary</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select School Category Details<br />स्कूल श्रेणी विवरण का चयन करें<span style="color: red;"> *</span></label>
                                                                            <select class="form-control select2" disabled>
                                                                                <option value=" -Select-">-Select-</option>
                                                                                <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                                                                <option selected value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
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
                                                                            <label class="font-bold">Select Management Group<br />प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
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
                                                                            <label>Select School Management<br />स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>In-Charge Type<br />प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="t">1-Head Master / Principal </asp:ListItem>
                                                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>IN-Charge Unique Id<br />प्रभारी यूनिक आई.डी<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>IN-Charge Name<br />प्रभारी का नाम<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>IN-Charge Mobile Number<br />प्रभारी मोबाइल नंबर <span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Year of Establishment<br />स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                                                            <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="t">2015</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Minority Community <br />अल्पसंख्यक समुदाय का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>

                                                                                <asp:ListItem Selected="true">2-Sikh</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select School Medium<br />स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server" Enabled="false">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">19-English</asp:ListItem>
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
                                                                <legend>School Address Information / स्कूल के पते की जानकारी</legend>


                                                                <div class="row align-items-end">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >School Address (Line 1)<br />स्कूल का पता(1)<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >School Address (Line 2)<br />स्कूल का पता(2)</label>
                                                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >Pin Code<br />पिन कोड<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >Landline Number<br />लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <div class="row align-items-end">

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >Email ID<br />ईमेल आई.डी<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >School Website<br />स्कूल की वेबसाइट</label>
                                                                            <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >School Shift <br />स्कूल शिफ्ट का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Morning</asp:ListItem>
                                                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                                                <asp:ListItem>Both</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Is School Residential<br />क्या विद्यालय आवासीय है का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>



                                                                </div>

                                                                <div class="row align-items-end">

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Select Special School<br />विशेष विद्यालय का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>CM Rise</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Model</asp:ListItem>
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
                                                                            <label >Select School Status<br />स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Functional</asp:ListItem>
                                                                                <asp:ListItem>Closed</asp:ListItem>
                                                                                <asp:ListItem>Merged</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label >Select Hostel Attach<br />हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem Selected="True">No</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>


                                                                </div>
                                                            </fieldset>
                                                            <fieldset>
                                                                <legend>School Bank Information / स्कूल बैंक सूचना</legend>

                                                                <div class="row align-items-end">
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label>School Bank Account Name<br />स्कूल बैंक खाते का नाम<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox5" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label>School Bank Account Number<br />स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox7" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 ">
                                                                        <div class="form-group">
                                                                            <label >IFSC Code<br />आईएफएससी कोड<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox8" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <div class="row">

                                                                <div>
                                                                    <%-- <asp:Button ID="Button4" CssClass="btn btn-success btn-rounded w-100" runat="server" OnClick="Button1_Click" Text="Update" />--%>

                                                                    <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                                                                </div>
                                                            </div>



                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label >Mark as a Sankul<span style="color: red">*</span></label>
                                <br />
                                <asp:CheckBox Checked="false" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label >New Sankul Code No.	<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter New Sankul Code No." onkeypress="return lettersOnly();"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-1 ">
                            <div class="form-group">
                                <label >IsActive<i style="color: red;">*</i></label>
                                <br />
                                <asp:CheckBox Checked="true" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-12 justify-content-between">
                            <div class="form-group">
                                <button type="button" onclick="toggleVisibility()" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                                <a href="Mst_SankulDO.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="myDiv">
                    <fieldset>
                        <legend>Details / विवरण</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>
                                                <input type="checkbox" /></th>
                                            <th>Sr.No.<br />क्रमांक</th>

                                            <th>Division Name<br />संभाग नाम</th>
                                            <th>District Name<br />जिला नाम</th>
                                            <th>Block Name<br />ब्लॉक नाम</th>
                                            <th>School UDISE Code/Name<br />स्कूल यूडीआईएसई कोड/नाम</th>
                                            <th>School Board<br />स्कूल बोर्ड</th>
                                            <th>School Category<br />स्कूल श्रेणी</th>
                                            <th>School Category Detail<br />स्कूल श्रेणी विवरण</th>
                                            <th>New Sankul Code No.<br />नवीन संकुल कोड नं.</th>
                                            <th>Status<br />स्थिति</th>
                                            <th>Action<br />कार्यवाही</th>

                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" /></td>
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>Phanda</td>
                                            <td>23454285263/Reema Vidhya Mandir</td>
                                            <td>State Board</td>
                                            <td>Primary</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                            <td>03</td>
                                            <td>Active</td>

                                            <td><%--<a class="Alert-Edit"><i class="fa fa-pen"></i></a>|--%> <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>

                                        </tr>

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
                                            <h4 class="modal-title text-" id="myLargeModalLabel1"><b>Create Sankul Request / संकुल अनुरोध बनाएं</b></h4>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                        </div>
                                        <div class="modal-body">

                                            <div class="row align-items-end">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Select Order Document Type<br />ऑर्डर दस्तावेज़ प्रकार का चयन करें</label>
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
                                                        <label>Order No.<br />ऑर्डर संख्या</label>
                                                        <asp:TextBox ID="TextBox4" placeholder="Enter Order No." runat="server" CssClass=" form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Order Date<br />आर्डर की दिनांक</label>
                                                        <input type="date" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Upload Order Copy<br />ऑर्डर कॉपी अपलोड करें</label>
                                                        <asp:FileUpload runat="server" CssClass="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Effective Date<br />प्रभावी दिनांक</label>
                                                        <input type="date" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">

                                                        <label>Remark / टिप्पणी</label>
                                                        <textarea class="form-control" placeholder="Enter Remark" maxlength="100"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-l-5 mt-4">
                                                <div class="col-md-12">
                                                    <label class="form-check m-b-0">
                                                        <input type="checkbox" class="form-check-input">

                                                        <span class="form-check-label"><b>जिला कार्यालय द्वारा आई डी क्रमांक:- E00015 से नवीन संकुल  सत्यापन उपरांत आज दिनांक 22/11/2023 को संकुल आवेदन अनुमोदन हेतु मुख्य कार्यालय  भेजा जा रहा है |</b></span>
                                                        <%--<asp:CheckBox ID="chkSatyapan" runat="server" CssClass="form-check-label" />--%>
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="modal-footer justify-content-center">

                                            <button type="button" class="btn btn-success w-lg btn-border Alert-Sendrequest" data-bs-dismiss="modal">Save</button>
                                            <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                        </div>
                    </fieldset>

                    <%--<fieldset>
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
                                            <li>User will be able to select the School Name / UDISE Code and the field will be populated from School Registration.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Mark as Sankul</strong>
                                        <ul>
                                            <li>User will be able to click on a check box for Sankul mark.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Code No.</strong>
                                        <ul>
                                            <li>User will be able to enter the Sankul Code and the text field will accept only Alpha numerical values.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Effective Date </strong>
                                        <ul>
                                            <li>User will be able to select effective date; the field should be in a calendar format.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Is Active (Checkbox)</strong>
                                        <ul>
                                            <li>If <strong>Is Active (Checkbox)</strong> is checked then need to show in every dependent <strong>Report / Dropdown Field / In Calculations</strong>.</li>
                                            <li><strong>Is Active checkbox</strong> is always be <strong>Checked/Active</strong>.</li>
                                            <li>The user must have the right to check or uncheck the Is Active Checkbox. </li>
                                        </ul>

                                    </li>


                                    <li><strong>Save</strong>
                                        <ul>
                                            <li>User should be able to click on save button.</li>
                                            <li>On save button click form field should be validated. </li>
                                            <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?"  "Do you want to save this record?").</li>
                                            <li>If click on <strong>Yes</strong> – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                            <li>If click on <strong>NO</strong> the data will not be saved and will return to the same page. </li>
                                        </ul>

                                    </li>
                                    <li><strong>Clear</strong>
                                        <ul>
                                            <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                        </ul>
                                    </li>
                                    <li><strong>UDISE Code (Gridview)</strong>
                                        <ul>
                                            <li>User will able to see school all information in pop-up by clicking on UDISE Code <strong>Hyperlink</strong> in gridview.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Action (Edit)</strong>
                                        <ul>
                                            <li>On Clicking The Edit Icon - A Pop Up Message Will Open -Popup Message - Do You Want To Update The Form?</li>
                                            <li>On Choose Yes Button, The Form Will Come In The Edit Table Format.</li>
                                            <li>After Editing The Form, On Clicking The Update Button,( A Pop Up Message Will Open. )- Message- Do You Want To Update.</li>
                                            <li>Choose YES - Popup Message - Data Updated Successfully.</li>
                                            <li>On Doing Cancel,</li>
                                            <li>The data will not be edited.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Action (Delete)</strong>
                                        <ul>
                                            <li>If User Wants To Delete Any Data - Then User Can Clicking The Delete Icon</li>
                                            <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The Data?</li>
                                            <li>On Doing YES,</li>
                                            <li>The Data Will Be Deleted And The Popup Message Will Be Shown</li>
                                            <li>Popup Message - Data Deleted Successfully.</li>
                                            <li>On Doing Cancel,</li>
                                            <li>The data will not be deleted.</li>

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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Details?",
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
                                text: 'Details Deleted Successfully!',
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
                $('.Alert-Edit').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Edit Details?",
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
                        //if (result.value) {
                        //    Swal.fire({
                        //        type: 'success',
                        //        title: 'Success!',
                        //        text: 'Salary Generated Successfully!',
                        //        timer: 2000
                        //        // animation: false,
                        //        // customClass: {
                        //        //     popup: 'animated tada'
                        //        // }
                        //    }
                        //    )
                        //}
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
        function toggleVisibility() {
            var div = document.getElementById('myDiv');
            var currentDisplay = div.style.display;

            // Toggle between 'none' and 'block'
            div.style.display = (currentDisplay === 'none' || currentDisplay === '') ? 'block' : 'none';
        }
    </script>


</asp:Content>

