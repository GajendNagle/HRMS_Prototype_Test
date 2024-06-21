<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MeargingSchools.aspx.cs" Inherits="mis_Registration_MeargingSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
        }
    </style>
    <style>
        #firstdiv {
            display: none;
        }
    </style>
    <style>
        /* Style for the modal */
        #Editmodal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            /* width: 100%;
            height: 100%;*/
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            /* padding-top: 60px;*/
        }

        /* Style for the modal content */
        /* .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }*/

        /* Close button style */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
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

                       <li class="breadcrumb-item">  <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a></li>
                         <li class="breadcrumb-item"> <a href="#OISVerification" data-bs-toggle="collapse" onclick="SidebarToggle('SchoolDirectory')" role="button" aria-expanded="false"><span>OIS Verification</span></a></li>
                        <li class="breadcrumb-item">Merge School</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

       
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Merge School/मर्ज स्कूल
                    </h4>
                </div>
            </div>
            </div>
            <div class="card-body">
                <div class="row align-items-end">

                    <div class="col-md-9 mt-3">
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
                            <label class="control-label" for="BlockId">Select Block /ब्लॉक चुनें</label><span style="color: red;">*</span>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem Value="0">All</asp:ListItem>
                                <asp:ListItem Value="2">02-Phanda</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>



                <fieldset>
                    <legend>School to Merge (स्कूल जो विलय करना हैं)</legend>
                    <div class="row align-items-end">
             
                   
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">UDISE Code/यूडीआईएसई कोड<span style="color: red;"> *</span></label>
                                <input type="text" placeholder="Enter UDISE Code" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <%-- <button onclick="showHideDiv()" type="button" class="btn btn-success btn-rounded">Search</button>--%>
                                <asp:Button ID="View1" CssClass="btn btn-success btn-rounded " runat="server" OnClick="View1_Click" Text="Search" />
                            </div>
                        </div>
                    </div>
                    <div class="row" runat="server" id="firstdiv">
                        <!-- sample modal content -->
                        <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog modal-xxl" style="width: 100%;">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="myLargeModalLabel">School Details/स्कूल विवरण</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                    </div>
                                    <div class="modal-body">
                                        <fieldset>
                                            <legend>School Basic Information/स्कूल की जानकारी</legend>
                                            <div class="row align-items-end">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">School UDISE Code/स्कूल यूडीआईएसई कोड<span style="color: red;"> *</span></label>
                                                        <asp:TextBox ID="ir" runat="server" CssClass="form-control" ReadOnly="true" placeholder="45845752"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                                        <asp:TextBox runat="server" Placeholder="Jawahar Navoday Vidhyalaya" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                                        <asp:TextBox runat="server" Placeholder="जवाहर नवोदय विद्यालय" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select Division /संभाग चुनें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                            <asp:ListItem>2-Indore</asp:ListItem>
                                                            <asp:ListItem>3-Ujjain</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select District /जिले चुनें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                            <asp:ListItem>2-Raisen</asp:ListItem>
                                                            <asp:ListItem>3-Sehore</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select Block /ब्लॉक चुनें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                            <asp:ListItem>Berasia</asp:ListItem>
                                                            <asp:ListItem>Phanda</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select School Board/स्कूल बोर्ड का चयन करें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
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
                                                        <label class="font-bold">Select School Type/स्कूल का प्रकार चुनें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem>1-Boy</asp:ListItem>
                                                            <asp:ListItem>2-Girls</asp:ListItem>
                                                            <asp:ListItem Selected="True">3-Co-Ed</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select School Category/स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem>1-Primary</asp:ListItem>
                                                            <asp:ListItem>2-Upper Primary</asp:ListItem>
                                                            <asp:ListItem Selected="True">3-Higher Secondary</asp:ListItem>
                                                            <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Select School Category Details/स्कूल श्रेणी विवरण का चयन करें<span style="color: red;"> *</span></label>
                                                        <select class="form-control select2" disabled>
                                                            <option value=" -Select-">-Select-</option>
                                                            <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                                            <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                                            <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                                            <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                                            <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                                            <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                                            <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                                            <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                                            <option selected value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">
                                                            9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</optio>
                                                            <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                                            <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select Management Group/प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
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
                                                        <label class="font-bold">Select School Management/स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                                            <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                            <asp:ListItem>3-Local Body </asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select In-Charge Type/प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">1-Head Master / Principal </asp:ListItem>
                                                            <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                            <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">IN-Charge Unique Id/प्रभारी यूनिक आई.डी<span style="color: red;">*</span></label>
                                                        <asp:TextBox runat="server" placeholder="656985" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">IN-Charge Name/प्रभारी का नाम<span style="color: red;"> *</span></label>
                                                        <asp:TextBox runat="server" placeholder="Mr.Jai" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">IN-Charge Mobile Number /प्रभारी मोबाइल नंबर<span style="color: red;">*</span></label>
                                                        <asp:TextBox runat="server" placeholder="8956852145" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select Year of Establishment/स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                                        <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">2015</asp:ListItem>
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
                                                <%--    <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem>1-Muslim</asp:ListItem>
                                                            <asp:ListItem>2-Sikh</asp:ListItem>
                                                            <asp:ListItem>3-Jain</asp:ListItem>
                                                            <asp:ListItem>4-Christian</asp:ListItem>
                                                            <asp:ListItem>5-Parsi</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>--%>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select School Medium/स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem>19-English</asp:ListItem>
                                                            <asp:ListItem Selected="True">04-Hindi</asp:ListItem>
                                                            <asp:ListItem>18-Urdu</asp:ListItem>
                                                            <asp:ListItem>10-Marathi</asp:ListItem>
                                                            <asp:ListItem>99-Other</asp:ListItem>
                                                        </asp:DropDownList>

                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>
                                            <legend>School Address Information/स्कूल के पते की जानकारी</legend>
                                            <div class="row align-items-end">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">School Address (Line 1)/स्कूल का पता(1)<span style="color: red;">*</span></label>
                                                        <asp:TextBox runat="server" Placeholder="H No. 14 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">School Address (Line 2)/स्कूल का पता(2)</label>
                                                        <asp:TextBox runat="server" Placeholder="H No. 14 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Pin Code/पिन कोड<span style="color: red;">*</span></label>
                                                        <asp:TextBox runat="server" Placeholder="462540" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Landline Number/लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                                        <asp:TextBox runat="server" Placeholder="0755 5581 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row align-items-end">

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Email ID/ईमेल आई.डी<span style="color: red;">*</span></label>
                                                        <asp:TextBox runat="server" Placeholder="Jawahar@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">School Website/स्कूल की वेबसाइट</label>
                                                        <asp:TextBox runat="server" Placeholder="JawaharSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select School Shift/स्कूल शिफ्ट का चयन करें <span style="color: red;">*</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem>Morning</asp:ListItem>
                                                            <asp:ListItem Selected="True">Afternoon</asp:ListItem>
                                                            <asp:ListItem>Both</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select Is School Residential/क्या विद्यालय आवासीय है का चयन करें<span style="color: red;">*</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
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
                                                        <label class="font-bold">Select Special School/विशेष विद्यालय का चयन करें<span style="color: red;">*</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">CM Rise</asp:ListItem>
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
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">Functional</asp:ListItem>
                                                            <asp:ListItem>Closed</asp:ListItem>
                                                            <asp:ListItem>Merged</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="font-bold">Select Hostel Attach/हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                                        <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                            <asp:ListItem>-Select-</asp:ListItem>
                                                            <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                            <asp:ListItem>No</asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                </div>


                                            </div>
                                        </fieldset>
                                        <fieldset>
                                            <legend>School Bank Information/स्कूल बैंक सूचना</legend>

                                            <div class="row align-items-end">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="font-bold">School Bank Account Name/स्कूल बैंक खाते का नाम<span style="color: red;">*</span></label>
                                                        <asp:TextBox ID="TextBox2" placeholder="State Bank Of India" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="font-bold">School Bank Account Number/स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                                        <asp:TextBox ID="TextBox3" Placeholder="5522851512547" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 ">
                                                    <div class="form-group">
                                                        <label class="font-bold">IFSC Code/आईएफएससी कोड<span style="color: red;">*</span></label>
                                                        <asp:TextBox ID="TextBox4" Placeholder="BARN0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </div>
                                        </fieldset>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn w-lg btn-danger" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->




                        <div class="col-md-12">
                            <fieldset>
                                <legend>School Details/स्कूल विवरण</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th>Sr. No./क्रमांक</th>
                                                <th>Block/ब्लॉक</th>
                                                <th>UDISE Code/UDISE कोड</th>
                                            <th>School Name/स्कूल के नाम</th>
                                            <th>School Board/स्कूल बोर्ड</th>
                                            <th>Management/प्रबंध</th>
                                            <th>Category/वर्ग</th>
                                            <th>School Category Detail/स्कूल श्रेणी विवरण</th>
                                                <%--<th>Sankul(DDO) Code/Name</th>--%>
                                                <th>Incharge Name/प्रभारी का नाम</th>
                                            <th>Incharge Number/प्रभारी क्रमांक</th>
                                            <th>Action/कार्रवाई</th>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Huzur</td>
                                                <td class="txt-link">
                                                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
23450300631</asp:HyperLink></td>
                                                <td>Kamla Nehru School</td>
                                                <td>State Board</td>
                                                <td>Department of Education	</td>
                                                <td>Primary</td>
                                                <td>Primary only with grades 1 to 5 (PRY)</td>
                                                <%--<td>45854751-Kendriya Vidhyalaya</td>--%>
                                                <td>Mr.Ramprakash</td>
                                                <td>9954857485</td>
                                                <%-- <td>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i class="mdi mdi-eye text-default"></i>
                            <br />
                            View more</asp:LinkButton></td>--%>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton></td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>


                        </div>
                    </div>

                </fieldset>

                <fieldset>
                    <legend>Anchor School (स्कूल जिसमे विलय करना हैं)</legend>
                    <div class="row">

                      

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">UDISE Code/यूडीआईएसई कोड<span style="color: red;"> *</span></label>
                               <input  type="text" placeholder="Enter UDISE Code" class="form-control"/>
                            </div>
                        </div>

                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <asp:Button ID="Button1" CssClass="btn btn-success btn-rounded " runat="server" OnClick="Button1_Click" Text="Search" />
                            </div>
                        </div>
                        <%-- <div class="col-md-12">
                            <b>
                                <p style="color: red">नोट: यदि एंकर स्कूल में किसी भी प्रकार का बदलाव हुआ है तो व्यू बटन पर जाकर एंकर स्कूल की डिटेल को अपडेट करें ।</p>
                            </b>
                        </div>--%>
                    </div>
                    <div class="row" runat="server" id="secondDiv">

                        <div class="col-md-12">
                            <fieldset>
                                <legend>School Details/स्कूल विवरण</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>

                                                <th>Sr. No./क्रमांक</th>

                                                <th>Block/ब्लॉक</th>
                                                 <th>UDISE Code/UDISE कोड</th>
                                            <th>School Name/स्कूल के नाम</th>
                                            <th>School Board/स्कूल बोर्ड</th>
                                            <th>Management/प्रबंध</th>
                                            <th>Category/वर्ग</th>
                                            <th>School Category Detail/स्कूल श्रेणी विवरण</th>
                                                  <th>Sankul(DDO) Code/Name/संकुल (डीडीओ) कोड/नाम</th>
                                            <th>Incharge Name/प्रभारी का नाम</th>
                                            <th>Incharge Number/प्रभारी क्रमांक</th>
                                            <th>Action/कार्रवाई</th>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Huzur</td>
                                                <td class="txt-link">


                                                    <asp:LinkButton runat="server" ID="LinkButton1" OnClick="LBUpadateInfo_Click">23445656546</asp:LinkButton>


                                                </td>

                                                <td>Utkrash School</td>
                                                <td>State Board</td>
                                                <td>Department of Education	</td>
                                                <td>Primary</td>
                                                <td>Primary only with grades 1 to 5 (PRY)</td>
                                                <td>45854751-Kendriya Vidhyalaya</td>
                                                <td>Mr.Ramprakash</td>
                                                <td>9954857485</td>
                                                <%-- <td><a class="fa fa-eye" onclick="openModal()"></a></td>--%>
                                                <td>
                                                    <asp:LinkButton runat="server" ID="LBUpadateInfo"><i class="fa fa-eye"></i></asp:LinkButton></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <legend>Update Anchor School Details/एंकर स्कूल विवरण अपडेट करें</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="control-label" for="SchooltypeId">Select School type/स्कूल का प्रकार चुनें</label><span style="color: red"> *</span>
                                            <select class="form-select select2" id="SchooltypeId" name="SchooltypeId">
                                                <option value="">Select</option>
                                                <option value="1">01-Government Aided Private School</option>
                                                <option value="4">04-Kendriya Vidhyalaya (Central School)</option>
                                                <option value="5">5-Navodaya Vidhyalaya </option>
                                                <option value="7">07-Other Schools  (Central Government Approved)</option>
                                                <option value="3">3-Other Schools (State Govt Approved)</option>
                                                <option value="2">02-Private Un-Aided School (State Board)</option>
                                                <option value="6">6-Sainik School REWA</option>
                                            </select>
                                            <span class="text-danger field-validation-valid" data-valmsg-for="SchooltypeId" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="control-label" for="SchoolCategoryId">Select School Category/स्कूल श्रेणी का चयन करें</label><span style="color: red"> *</span>
                                            <select class="form-select select2"  id="SchoolCategoryId" name="SchoolCategoryId">
                                                <option value="">Select</option>
                                                <option value="4">4-Higher Secondary School</option>
                                                <option value="5">5-Pre-Primary School</option>
                                                <option value="1">1-Primary School</option>
                                                <option value="6">36-SECONDARY</option>
                                                <option value="3">3-Secondary School</option>
                                                <option value="2">2-Upper primary School</option>
                                            </select>

                                            <span class="text-danger field-validation-valid" data-valmsg-for="SchoolCategoryId" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="control-label" for="SchoolSubCatDetailId">Select School Category Details/स्कूल श्रेणी विवरण का चयन करें</label><span style="color: red"> *</span>
                                            <select class="form-select select2" id="SchoolSubCatDetailId" name="SchoolSubCatDetailId" aria-invalid="false">
                                                <option value="">Select</option>
                                                <option value="7">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                                <option value="8">10-Higher Secondary with grades 9 to 12 (SEC-HSEC) </option>
                                                <option value="9">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC) </option>
                                                <option value="10">11-Hr. Sec. /Jr. College only with grades 11 &amp; 12 (HSEC)</option>
                                            </select>
                                            <span class="text-danger field-validation-valid" data-valmsg-for="SchoolSubCatDetailId" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="control-label" for="SchoolMediumId">Select School Medium/स्कूल माध्यम का चयन करें</label>
                                            <select class="form-control select2"  id="SchoolMediumId" name="SchoolMediumId">
                                                <option value="">Select</option>
                                                <option value="12">12-Bangla</option>
                                                <option value="2">2-English</option>
                                                <option value="13">46-English Urdu</option>
                                                <option value="5">5-English&#x2B;Other</option>
                                                <option value="14">56-french</option>
                                                <option value="8">8-Gujrati</option>
                                                <option value="1">1-Hindi</option>
                                                <option value="3">3-Hindi&#x2B;English</option>
                                                <option value="4">4-Hindi&#x2B;Other</option>
                                                <option value="6">6-Marathi</option>
                                                <option value="11">11-Odiya</option>
                                                <option value="9">9-Sanskrit</option>
                                                <option value="10">10-Sindi</option>
                                                <option value="7">7-Urdu</option>
                                            </select>
                                            <span class="text-danger field-validation-valid" data-valmsg-for="SchoolMediumId" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="control-label" for="SchoolShiftId">Select School Shift/
स्कूल शिफ्ट का चयन करें</label><span style="color: red;">*</span>
                                            <select class="form-select select2"  id="SchoolShiftId" name="SchoolShiftId">
                                                <option value="">Select</option>
                                                <option value="1">Morning</option>
                                                <option value="2">Afternoon</option>
                                                <option value="3">Both</option>
                                            </select>
                                            <span class="text-danger field-validation-valid" data-valmsg-for="SchoolShiftId" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="control-label" for="IsHostelAttachId">Select Hostel Attach/हॉस्टल अटैच का चयन करें</label><span style="color: red;">*</span>
                                            <select class="form-select select2"  name="IsHostelAttachId">
                                                <option value="">Select</option>
                                                <option value="1">Yes</option>
                                                <option value="2">No</option>
                                            </select>
                                            <span class="text-danger field-validation-valid" data-valmsg-for="IsHostelAttachId" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </fieldset>



                <div class="row mt-4 justify-content-center">


                    <div class="col-md-12" runat="server" id="adddiv">
                        <div class="form-group text-center">
                            <asp:Button ID="Button3" runat="server" Text="Add" OnClick="Button3_Click" CssClass="btn w-lg btn btn-success btn-rounded"/>
                            <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btn w-lg btn-danger btn-rounded"/>
                        </div>
                    </div>

                </div>

                <fieldset id="grid" runat="server">
                    <legend>Merge School Request Details/स्कूल अनुरोध विवरण मर्ज करें</legend>
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
                                            <th rowspan="2">Sr. No./क्रमांक</th>
                                            <th rowspan="2">Action/कार्रवाई</th>
                                            <th colspan="5">School /स्कूल </th>

                                            <th colspan="6">Anchor School /एंकर स्कूल</th>
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
                                            <th>Action/कार्रवाई</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td scope="col">
                                                <input type="checkbox" />
                                            </td>
                                            <td class="txt-link">
                                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i><b>23445656546</b></asp:HyperLink>
                                            </td>
                                            <td>Utkrash School</td>
                                            <td>Primary</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                            <td>CBSE</td>
                                            <td class="txt-link">
                                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i><b>23450300631</b></asp:HyperLink></td>
                                            <td>kamla Nehru School</td>
                                            <td>Primary</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                            <td>CBSE</td>

                                            <td><a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>


                                        </tr>

                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </fieldset>

                <div class="row mt-4 justify-content-center">
                    
                    <div class="col-md-3">

                      
                        <div class="form-group text-center">

                            <asp:LinkButton ID="LinkButton4" runat="server" Visible="false" CssClass=" btn btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Merge School</asp:LinkButton>

                        </div>
                    </div>

                </div>
                  <!-- Editable  modal content -->
                <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-xxl" style="width: 100%;">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myLargeModalLabel2">School Details/स्कूल विवरण</h4>
                                <button type="button" class="btn-close" onclick="CloseModal()" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>School Basic Information/स्कूल की जानकारी</legend>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School UDISE Code/स्कूल यूडीआईएसई कोड<span style="color: red;"> *</span></label>
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
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
                                                <label class="font-bold">Select Division/संभाग का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select District/ जिले का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select Block/ब्लॉक का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select Location/स्थान चुनें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Rural</asp:ListItem>
                                                    <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Assembly /विधानसभा का चयन करें <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Govindpura</asp:ListItem>
                                                    <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Parliamentary/संसदीय का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Habitation /आवास का चयन करें </label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Board/स्कूल बोर्ड का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select School Type/स्कूल का प्रकार चुनें<span style="color: red;"> *</span></label>
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
                                                <label>Select School Category/स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label>Select School Category Details/स्कूल श्रेणी विवरण का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select Management Group/प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select School Management/स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select In-Charge Type/प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">IN-Charge Unique Id/प्रभारी यूनिक आई.डी<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Name/प्रभारी का नाम<span style="color: red;"> *</span></label>
                                                <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Mobile Number /प्रभारी मोबाइल नंबर<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Year of Establishment/स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                                <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="t">2015</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Minority Community/अल्पसंख्यक समुदाय का चयन करें <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>

                                                    <asp:ListItem Selected="true">2-Sikh</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Medium/स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
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
                                    <legend>School Address Information/स्कूल के पते की जानकारी</legend>


                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 1)/स्कूल का पता (1)<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 2)/स्कूल का पता (2)</label>
                                                <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Pin Code/पिन कोड<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Landline Number/लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Email ID/ईमेल आई.डी<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Website/स्कूल की वेबसाइट</label>
                                                <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Shift/स्कूल शिफ्ट का चयन करें <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Morning</asp:ListItem>
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
                                                    <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
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
                                                <label class="font-bold">Select School Status/स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
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
                                                <label class="font-bold">Select Hostel Attach/हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem Selected="True">No</asp:ListItem>

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
                                                <asp:TextBox ID="TextBox10" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="font-bold">School Bank Account Number/स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox11" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 ">
                                            <div class="form-group">
                                                <label class="font-bold">IFSC Code/IFSC कोड<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox12" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </fieldset>
                            </div>
                            <div class="modal-footer">
                                <div class="row">

                                    <div>
                                        <%-- <asp:Button ID="Button4" CssClass="btn btn-success btn-rounded " runat="server" OnClick="Button1_Click" Text="Update" />--%>
                                        <button type="button" class="btn btn-success" onclick="CloseModal()">Update</button>
                                        <button type="button" class="btn btn-danger waves-effect text-start text-white" onclick="CloseModal()">Close</button>
                                    </div>
                                </div>



                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                
                <!--Description-->
                <%-- <fieldset runat="server" id="des">
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <h5><strong>School To Merge</strong></h5>

                            <ul class="main-ul">

                                <li><strong>School Name / UDISE Code</strong>
                                    <ul>
                                        <li>User will be able to select UDISE Code / School Name in drop down field.</li>
                                        <li>The UDISE code for schools must be implemented as a <strong>Searchable</strong> dropdown.</li>
                                        <li>After the selection of UDISE code all school detail will be auto populated.</li>

                                    </ul>
                                </li>

                                <li><strong>Letter No.</strong>
                                    <ul>
                                        <li>User will be able to enter Letter No., the text field should accept in Alpha numeric.</li>
                                    </ul>
                                </li>
                                <li><strong>Effective Date</strong>
                                    <ul>
                                        <li>User will be able to select Effective Date, the field should be in a calendar format.</li>
                                    </ul>
                                </li>

                                <li><strong>Upload Document  </strong>
                                    <ul>
                                        <li>User will be able to Upload Document.</li>
                                    </ul>
                                </li>
                                <li><strong>View more</strong>
                                    <ul>
                                        <li>On clicking the <strong>View More </strong>button, complete information of the related school will appear in the pop up.</li>

                                    </ul>
                                </li>
                            </ul>
                            <br />
                            <h5><strong>Anchor School</strong></h5>

                            <ul class="main-ul">

                                <li><strong>School Name / UDISE Code</strong>
                                    <ul>
                                        <li>User will be able to select School Name / UDISE Code in drop down field.</li>
                                        <li>The School Name / UDISE Code for schools must be implemented as a <strong>Searchable</strong> dropdown.</li>
                                        <li>After the selection of School Name / UDISE Code all school detail will be auto populated.</li>
                                    </ul>
                                </li>

                 

                                <li><strong>Merge Request</strong>
                                    <ul>

                                        <li>When the user clicks the Merge Request button to send a request to the Head Office, a pop-up will open.</li>
                                        <li>After uploading the request related details like <strong>Date, Order Number, Relevant Documents and clicking on the Verification Check box,</strong> the request can be sent to the head office by clicking on the confirm button.</li>
                                    </ul>
                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                    </ul>
                                </li>

                                <li><strong>View more</strong>
                                    <ul>
                                        <li>On clicking the <strong>View More </strong>button, complete information of the related school will appear in the pop up.</li>

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>--%>
                <!-- End Description -->
                  <!-- sample modal content -->
                        <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header" id="myDIV">
                                        <h4 class="modal-title" id="myLargeModalLabel1">Merge Request/मर्ज अनुरोध</h4>
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
                                                    <asp:TextBox ID="TextBox6" placeholder="Enter Order No." runat="server" CssClass=" form-control"></asp:TextBox>
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
                                        <div class="row m-l-5 mt-4">
                                            <div class="col-md-12">
                                                <label class="form-check m-b-0">
                                                    <input type="checkbox" class="form-check-input">
                                                    <span class="form-check-label"><b>सत्यापन उपरांत जिला कार्यालय द्वारा आज दिनांक 15/11/2023 को कमला नेहरु विद्यालय को उत्कृष्ट विद्यालय में विलय का अनुमोदन प्रधान कार्यालय भेजा गया |</b></span>
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

                <!-- Editable  modal content -->
                <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-xxl" style="width: 100%;">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myLargeModalLabel2">School Details/स्कूल विवरण</h4>
                                <button type="button" class="btn-close" onclick="CloseModal()" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>School Basic Information/स्कूल की जानकारी</legend>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School UDISE Code/स्कूल यूडीआईएसई कोड<span style="color: red;"> *</span></label>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
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
                                                <label class="font-bold">Select Division/संभाग का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select District/ जिले का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select Block/ब्लॉक का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select Location/स्थान चुनें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Rural</asp:ListItem>
                                                    <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Assembly /विधानसभा का चयन करें <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Govindpura</asp:ListItem>
                                                    <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Parliamentary/संसदीय का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Habitation /आवास का चयन करें </label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Board/स्कूल बोर्ड का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select School Type/स्कूल का प्रकार चुनें<span style="color: red;"> *</span></label>
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
                                                <label>Select School Category/स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label>Select School Category Details/स्कूल श्रेणी विवरण का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select Management Group/प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select School Management/स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">Select In-Charge Type/प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
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
                                                <label class="font-bold">IN-Charge Unique Id/प्रभारी यूनिक आई.डी<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Name/प्रभारी का नाम<span style="color: red;"> *</span></label>
                                                <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Mobile Number /प्रभारी मोबाइल नंबर<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Year of Establishment/स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                                <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="t">2015</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Minority Community/अल्पसंख्यक समुदाय का चयन करें <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>

                                                    <asp:ListItem Selected="true">2-Sikh</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Medium/स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
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
                                    <legend>School Address Information/स्कूल के पते की जानकारी</legend>


                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 1)/स्कूल का पता (1)<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 2)/स्कूल का पता (2)</label>
                                                <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Pin Code/पिन कोड<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Landline Number/लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Email ID/ईमेल आई.डी<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Website/स्कूल की वेबसाइट</label>
                                                <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Shift/स्कूल शिफ्ट का चयन करें <span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem Selected="True">Morning</asp:ListItem>
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
                                                    <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
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
                                                <label class="font-bold">Select School Status/स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
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
                                                <label class="font-bold">Select Hostel Attach/हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem Selected="True">No</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>


                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>School Bank Information/स्कूल बैंक सूचना</legend>

                                    <div class="row align-items-end">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="font-bold">School Bank Account Name/स्कूल बैंक खाते का नाम<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox5" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="font-bold">School Bank Account Number/स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox7" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 ">
                                            <div class="form-group">
                                                <label class="font-bold">IFSC Code/IFSC कोड<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox8" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </fieldset>
                            </div>
                            <div class="modal-footer">
                                <div class="row">

                                    <div>
                                        <%-- <asp:Button ID="Button4" CssClass="btn btn-success btn-rounded " runat="server" OnClick="Button1_Click" Text="Update" />--%>
                                        <button type="button" class="btn btn-success" onclick="CloseModal()">Update</button>
                                        <button type="button" class="btn btn-danger waves-effect text-start text-white" onclick="CloseModal()">Close</button>
                                    </div>
                                </div>



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
    <%-- <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtPurchase.ClientID %>').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });
        });
    </script>--%>
    <script>
        function FbotonOn() {
            if (confirm("Are you sure you want to Send Request To Head Office?") == true) {
                const element = document.getElementById("myDIV");
                element.className = "modal-header alert-success"
                document.getElementById('myLargeModalLabel1').innerHTML = "School Merged Successfully";
                document.getElementById('data1').innerHTML = "UnMerged";
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Merge').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Merge School ?",
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
                                text: 'School Merge Request Send Successfully!',
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
        function showHideDiv() {
            var FDiv = document.getElementById("firstdiv");
            FDiv.style.display = "block";
        }
    </script>
    <script>
        function openModal() {
            document.getElementById('Editmodal').style.display = 'block';
        }
        function CloseModal() {
            document.getElementById('Editmodal').style.display = 'none';
        }
    </script>
</asp:Content>


