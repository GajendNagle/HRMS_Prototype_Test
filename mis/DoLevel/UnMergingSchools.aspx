<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="UnMergingSchools.aspx.cs" Inherits="mis_DoLevel_UnMergingSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .underline {
            text-decoration: underline;
        }

        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">OIS Verification</li>
                        <li class="breadcrumb-item">Unmerge School</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">School Unmerge/अनमर्ज स्कूल
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>School Unmerge/अनमर्ज स्कूल</legend>

                <div class="row align-items-end">

                    <%--    <div class="col-md-3">
                            <label class="font-bold">Division Name <span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" Enabled="false">
                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" Enabled="false">
                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>
                            </asp:DropDownList>
                        </div>--%>
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
                            <label class="font-weight-bold">Enter School UDISE Code<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> Enter School UDISE Code</asp:ListItem>
                                <asp:ListItem>14548455-AKBARPUR GOVT. HS</asp:ListItem>
                                <asp:ListItem>14632121-BERASIA (BOYS) GOVT.HSS</asp:ListItem>
                                <asp:ListItem>24587465-DHAMARRA GOVT. HS</asp:ListItem>
                                <asp:ListItem>15445463-EENT KHEDI GOVT. HSS</asp:ListItem>
                                <asp:ListItem>24876546-BAIRAGARH (BOYS) GOVT.HSS</asp:ListItem>
                                <asp:ListItem>24876588-BERAISA (GIRLS) SN HSS</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-2 mb-4">
                        <asp:Button ID="View1" CssClass="btn w-lg btn-outline-success btn-rounded" OnClick="View1_Click" runat="server" Text="Search" />
                    </div>
                    <div class="col-md-2 mb-4">
                        <a href="UnMergingSchools.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                    </div>
                </div>

            </fieldset>

            <fieldset runat="server" id="report" visible="false">
                <legend>Details/विवरण</legend>
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
                                <tbody>
                                    <tr>
                                        <th rowspan="2">
                                            <br />
                                            <br />
                                            Sr.No./क्रमांक</th>
                                        <th rowspan="2">
                                            <br />
                                            <br />
                                            Status/कार्रवाई</th>
                                        <th colspan="5">School/स्कूल</th>
                                        <th colspan="6">Anchor School/एंकर स्कूल</th>

                                    </tr>
                                    <tr>
                                        <th>UDISE Code/UDISE कोड</th>
                                        <th>School Name/स्कूल के नाम</th>
                                        <th>Category/वर्ग</th>
                                        <th>School Category Detail/स्कूल श्रेणी विवरण</th>
                                        <th>School Board/स्कूल बोर्ड</th>
                                        <th>UDISE Code/UDISE कोड</th>
                                        <th>School Name/स्कूल के नाम</th>
                                        <th>Category/वर्ग</th>
                                        <th>School Category Detail/स्कूल श्रेणी विवरण</th>
                                        <th>School Board/स्कूल बोर्ड</th>
                                        <th>Merge Status/मर्ज स्थिति</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>


                                        <td>
                                            <input type="checkbox" class="form-check" /></td>

                                        <td class="txt-link">
                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                <b>23450300631</b></asp:HyperLink>
                                        <td>Jawahar Nehru School</td>
                                        <td>Primary</td>
                                        <td>Primary only with grades 1 to 5 (PRY)</td>
                                        <td>CBSC</td>

                                        <td class="txt-link">
                                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
<b>23445656546</b></asp:HyperLink>
                                        </td>
                                        <td>Sarasvati Vidhya Mandir</td>
                                        <td>Primary</td>
                                        <td>Primary only with grades 1 to 5 (PRY)</td>

                                        <td>CBSC</td>
                                        <td>
                                            <label id="data1">Merged</label></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>

                <div class="row justify-content-center" runat="server" id="divbtn" visible="false">

                    <div class="col-md-3 mt-2 text-center">
                        <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" class="btn w-lg btn-outline-success btn-rounded">Unmerge Request</button>
                    </div>

                </div>
            </fieldset>
            <!--Description-->
            <%--<fieldset runat="server" id="dcp" visible="false">
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
                                        <li>The School Name / UDISE Code for schools must be implemented as a <strong>Searchable</strong> dropdown.</li>
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

                                <li><strong>Checkbox (Gridview)</strong>
                                    <ul>
                                        <li>Data can be processed only after clicking the check box of the action column given in gridview.</li>
                                    </ul>
                                </li>

                                <li><strong>UDISE Code (Gridview)</strong>
                                    <ul>
                                        <li>User will able to see school all information in pop-up by clicking on UDISE Code <strong>Hyperlink</strong> in gridview.</li>
                                    </ul>
                                </li>

                                <li><strong>Unmerge Request</strong>
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


            <!--for UDISE CODE CLICK Add the Modal -->
            <!-- sample modal content -->
            <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-xxl" style="width: 100%;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myLargeModalLabel">School Information</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>School Basic Information</legend>

                                <div class="row">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                            <asp:TextBox ID="ir" runat="server" CssClass="form-control" ReadOnly="true" placeholder="Enter UDISE Code"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Division/संभाग का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Indore</asp:ListItem>
                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select District/ जिले का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Raisen</asp:ListItem>
                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Block/ब्लॉक का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Huzur</asp:ListItem>
                                                <asp:ListItem>Berasia</asp:ListItem>
                                                <asp:ListItem>Phanda</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Location/स्थान चुनें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                <asp:ListItem>2-Urban</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Assembly /विधानसभा का चयन करें <span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                <asp:ListItem>Huzur</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Parliamentary/संसदीय का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Bhopal</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Habitation /आवास का चयन करें </label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Berasia</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Board Type/बोर्ड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                <asp:ListItem>2-State Board</asp:ListItem>
                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                <asp:ListItem>4-International</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select School Type/स्कूल का प्रकार चुनें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select School Category/स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Primary</asp:ListItem>
                                                <asp:ListItem>2-Upper Primary</asp:ListItem>
                                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Lowest Class/निम्नतम वर्ग का चयन करें<span style="color: red;">*</span></label>
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

                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Highest Class/उच्चतम वर्ग का चयन करें<span style="color: red;">*</span></label>
                                            <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>

                                            <asp:DropDownList CssClass="form-control" runat="server">

                                                <asp:ListItem Selected="True">12th</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Management Group/प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
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

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select School Management/स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select In-Charge Type/प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Head Master / Principal </asp:ListItem>
                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                </div>

                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">IN-Charge Unique Id/प्रभारी यूनिक आईडी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="Enter IN-Charge Unique ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">IN-Charge Name/प्रभारी का नाम<span style="color: red;"> *</span></label>
                                            <asp:TextBox runat="server" placeholder="Enter IN-Charge Name" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">IN-Charge Mobile Number/प्रभारी मोबाइल नंबर <span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="Enter IN-Charge Mobile Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Year of Establishment/स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
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

                                </div>

                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Minority Community /अल्पसंख्यक समुदाय का चयन करें <span style="color: red;">*</span></label>
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
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select School Medium/स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
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

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                            <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>School Address Information/स्कूल के पते की जानकारी</legend>


                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">School Address (Line 1)/स्कूल का पता(1)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">School Address (Line 2)/स्कूल का पता(2)</label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Pin Code/पिन कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Landline Number/लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Email ID/ईमेल आई.डी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">School Website/स्कूल की वेबसाइट</label>
                                            <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select School Shift/स्कूल शिफ्ट का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Morning</asp:ListItem>
                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                <asp:ListItem>Both</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Is School Residential/क्या विद्यालय आवासीय है का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem Selected="True">No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>



                                </div>

                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Special School/विशेष विद्यालय का चयन करें<span style="color: red;">*</span></label>
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
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select School Status/स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Functional</asp:ListItem>
                                                <asp:ListItem>Closed</asp:ListItem>
                                                <asp:ListItem>Merged</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Select Hostel Attach/हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
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

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="font-bold">School Bank Account Name/स्कूल बैंक खाते का नाम<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox1" placeholder="Enter Bank Name" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="font-bold">School Bank Account Number/स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox5" Placeholder="Enter Account Number" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ">
                                        <div class="form-group">
                                            <label class="font-bold">IFSC Code/आईएफएससी कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox6" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn w-lg btn-outline-danger btn-border" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>

                    <!-- /.modal-content -->
                </div>

                <!-- /.modal-dialog -->

            </div>
            <!-- /.modal -->


            <!-- sample modal content -->
            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV">
                            <h4 class="modal-title" id="myLargeModalLabel1">Unmerge Request/अनमर्ज अनुरोध</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <div class="row align-items-end">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Select Order Document Type/ऑर्डर दस्तावेज़ प्रकार चुनें</label>
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
                                        <label>Order No./आदेश संख्या</label>
                                        <asp:TextBox ID="TextBox4" placeholder="Enter Order No." runat="server" CssClass=" form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order Date/आर्डर की तारीख</label>
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Upload Order Copy/ऑर्डर कॉपी अपलोड करें</label>
                                        <asp:FileUpload runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Effective Date/प्रभावी तिथि</label>
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">

                                        <label>Remark/टिप्पणी</label>
                                        <textarea class="form-control" placeholder="Enter Remark" maxlength="100"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row m-l-5">
                                <div class="col-md-12">
                                    <label class="form-check m-b-0">
                                        <input type="checkbox" class="form-check-input">

                                        <span class="form-check-label"><b>जिला कार्यालय द्वारा आई डी क्रमांक:- E00015 जवाहर नेहरु विद्यालय को  विलय उपरांत पुनः पृथक हेतु सत्यापन उपरांत आज दिनांक 22/11/2023  को आवेदन अनुमोदन हेतु मुख्य कार्यालय  भेजा जा रहा है |</b></span>
                                        <%--<asp:CheckBox ID="chkSatyapan" runat="server" CssClass="form-check-label" />--%>
                                    </label>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer justify-content-center">

                            <button type="button" class="btn w-lg btn-outline-success btn-rounded Alert-UnMerge" data-bs-dismiss="modal">Save</button>
                            <button type="button" class="btn w-lg btn-outline-danger btn-border" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

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
                $('.Alert-UnMerge').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Unmerge School ?",
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
                                text: 'School Unmerge Request Send Successfully!',
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






</asp:Content>

