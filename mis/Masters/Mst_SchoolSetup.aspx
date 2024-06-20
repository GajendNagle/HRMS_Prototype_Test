<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_SchoolSetup.aspx.cs" EnableEventValidation="false" Inherits="mis_Master_BlockMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <%--<style>
        #show {
            display: none;
        }

        #Middle {
            display: none;
        }

        #High {
            display: none;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

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
                                <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#OISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                    <span>OIS Setup Master</span></a>
                            </li>
                            <li class="breadcrumb-item">School Setup</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="marqueecontainer">
            <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
            <div>
                <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                    इस पेज के माध्यम से नए ऑफिस/इंस्टीट्यूट/स्कूल सेटअप को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
                </marquee>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-6">
                        <h4 class="card-title">OIS Setup Master / ओआईएस सेटअप मास्टर</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <asp:Label runat="server" ID="lblMsg"></asp:Label>
                <fieldset>
                    <legend>OIS Setup Master / ओआईएस सेटअप मास्टर</legend>
                    <div class="row align-items-end">
                        <%--   <div class="col-md-3">
                            <div class="form-group">
                                <label>Setup <span style="color: red">*</span></label>

                                <asp:DropDownList runat="server" ID="ddlRegistrationType" CssClass="form-control">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="2">Office Setup</asp:ListItem>
                                    <asp:ListItem Value="3">Institute Setup</asp:ListItem>
                                    <asp:ListItem Value="1">School Setup</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Financial Year <br />
                                    वित्तीय वर्ष का चयन करें<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlFinancialYear" CssClass="form-control select2">
                                    <asp:ListItem Value="2024-25">--Select--</asp:ListItem>
                                    <asp:ListItem Value="2024-25">2024-25</asp:ListItem>
                                    <asp:ListItem Value="2023-24">2023-24</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select OIS Type <br />
                                    ओआईएस प्रकार का चयन करें<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlOISType" AutoPostBack="true" OnSelectedIndexChanged="ddlOISType_SelectedIndexChanged" CssClass="form-control select2">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Office Setup</asp:ListItem>
                                    <asp:ListItem Value="2">Institute Setup</asp:ListItem>
                                    <asp:ListItem Value="3">School Setup</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="Div_ddlDivision" visible="false">
                            <div class="form-group">
                                <label>
                                    Select Division Name <br />
                                    संभाग का चयन करें<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlDivision" CssClass="form-control select2">
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
                        </div>
                        <div class="col-md-3" runat="server" id="Div_ddlDistrict" visible="false">
                            <div class="form-group">
                                <label>
                                    District Name <br />
                                    जिला का चयन करें<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlDistrict" CssClass="form-control select2">
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
                        </div>
                        <div class="col-md-3" runat="server" id="Div_ddlBlock" visible="false">
                            <div class="form-group">
                                <label>
                                    Select Block Name<br />
                                    ब्लॉक का चयन करें<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlBlock" CssClass="form-control select2">
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
                        </div>
                        <div class="col-md-3" runat="server" id="div_officetype" visible="false">
                            <div class="form-group">
                                <label>
                                    Select Office Type <br />
                                    कार्यालय प्रकार का चयन करें<span style="color: red;">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlofficetype" CssClass="form-control select2">
                                    <asp:ListItem Value=" -Select-">-Select-</asp:ListItem>
                                    <asp:ListItem Value="Bhopal">Head Office</asp:ListItem>
                                    <asp:ListItem Value="Bhopal">JOINT DIRECTORS</asp:ListItem>
                                    <asp:ListItem Value="Bhopal">DISTRICT EDUCATION OFFICERS</asp:ListItem>
                                    <asp:ListItem Value="Bhopal">BLOCK EDUCATION OFFICERS</asp:ListItem>
                                    <asp:ListItem Value="Bhopal">SANKUL/AEO</asp:ListItem>
                                    <asp:ListItem Value="Bhopal">SCHOOL</asp:ListItem>
                                    <asp:ListItem Value="Principal Secretary">Principal Secretary</asp:ListItem>
                                    <asp:ListItem Value="Secretary">Secretary</asp:ListItem>
                                    <asp:ListItem Value="Deputy Secretary">Deputy Secretary</asp:ListItem>
                                    <asp:ListItem Value="CPI">CPI</asp:ListItem>
                                    <asp:ListItem Value="CRSK">CRSK</asp:ListItem>
                                    <asp:ListItem Value="DPI">DPI</asp:ListItem>
                                    <asp:ListItem Value="Collector">Collector</asp:ListItem>
                                    <asp:ListItem Value="CEO, ZP">CEO, ZP</asp:ListItem>
                                    <asp:ListItem Value="DPC">DPC</asp:ListItem>
                                    <asp:ListItem Value="BRC">BRC</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="div_OfficeName" visible="false">
                            <div class="form-group">
                                <label>
                                    Select Office Name <br />
                                    कार्यालय का चयन करें<span style="color: red;">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlofficeName" CssClass="form-control select2">
                                    <asp:ListItem Value=" -Select-">-Select-</asp:ListItem>
                                    <asp:ListItem Value="School Education Department, Mantralaya - 233203OSS02">School Education Department, Mantralaya - 233203OSS02</asp:ListItem>
                                    <asp:ListItem Value="Minister, School Education Department, Madhya Pradesh - 233203OSS01">Minister, School Education Department, Madhya Pradesh - 233203OSS01 </asp:ListItem>
                                    <asp:ListItem Value="DISTRICT ADULT EDUCATION OFFICER BHOPAL - 233203ODS04">DISTRICT ADULT EDUCATION OFFICER BHOPAL - 233203ODS04</asp:ListItem>
                                    <asp:ListItem Value="DEO,BHOPAL- 233203ODS01">DEO,BHOPAL- 233203ODS01</asp:ListItem>
                                    <asp:ListItem Value="DPC, BHOPAL- 233203ODS03">DPC, BHOPAL- 233203ODS03</asp:ListItem>
                                    <asp:ListItem Value="Joint Director (Education), Bhopal - 233203ORS01">Joint Director (Education), Bhopal - 233203ORS01</asp:ListItem>
                                    <asp:ListItem Value="Rajya Shiksha KendraRajya Shiksha Kendra, Bhopal - 233203OSS04">Rajya Shiksha KendraRajya Shiksha Kendra, Bhopal - 233203OSS04</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="Div_Designation" visible="false">
                            <div class="form-group">
                                <label>
                                    Select Designation Type <br />
                                    पदनाम प्रकार का चयन करें<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Regular">Ministry</option>
                                    <option value="Sthai Karmi">Teaching</option>
                                    <option value="Theka shramik">Executive</option>
                                    <option value="Clerical">Clerical</option>
                                    <option value="State">State</option>
                                    <option value="Other Department">Other Department</option>
                                    <option value="Hostel">Hostel</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="pnlOISCategoryType" runat="server" style="display: none;">
                            <div class="form-group">
                                <label>
                                    Select OIS Category Type <br />
                                    OIS श्रेणी प्रकार का चयन करें <span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlOISCategoryType" CssClass="form-control select2">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">CPI</asp:ListItem>
                                    <asp:ListItem Value="2">DPI </asp:ListItem>
                                    <asp:ListItem Value="3">DEO</asp:ListItem>
                                    <asp:ListItem Value="4">BEO</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3" id="pnlEmpClass" runat="server">
                            <div class="form-group">
                                <label>
                                    Select Employee Class <br />
                                    कर्मचारी वर्ग का चयन करें<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlEmployeeClass" AutoPostBack="true" OnSelectedIndexChanged="ddlEmployeeClass_SelectedIndexChanged" CssClass="form-control select2">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="Class-1">Class-1</asp:ListItem>
                                    <asp:ListItem Value="Class-2">Class-2 </asp:ListItem>
                                    <asp:ListItem Value="Class-3">Class-3</asp:ListItem>
                                    <asp:ListItem Value="Class-4">Class-4</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-12" id="pnlOfficeSetupDetails" runat="server">
                            <div class="form-group">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>S.No.
                                                <br />
                                                सरल क्र.</th>
                                            <th>Designation
                                                <br />
                                                पद का नाम </th>
                                            <th>Sanction Post
                                                <br />
                                                स्वीकृत पोस्ट</th>
                                            <th>Working Post
                                                <br />
                                                वर्किंग पोस्ट</th>
                                            <th>Vacant Post
                                                <br />
                                                रिक्त पोस्ट</th>
                                        </tr>
                                        <tr>

                                            <td>1</td>
                                            <td>Commissioner</td>
                                            <td>
                                                <asp:TextBox ID="txtSanctionPost" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtWorkinPost" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtVacantpost1" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>2</td>
                                            <td>Director</td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtWorking2" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtVacantpost2" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>3</td>
                                            <td>Additional Director</td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtworkin3" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtVacantpost3" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>4</td>
                                            <td>Joint Director</td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtworkin4" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtVacantpost4" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>5</td>
                                            <td>Deputy Director</td>
                                            <td>
                                                <asp:TextBox ID="txt1" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtworkin5" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtVacantpost5" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>6</td>
                                            <td>District Education Officer(DEO)</td>
                                            <td>
                                                <asp:TextBox ID="txt2" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtworkin6" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtVacantpost6" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>

                                    </table>
                                    <%-- <table class="table">
                                        <tr>
                                            <th>S.No.</th>
                                            <th>Designation </th>
                                            <th>Sanction Post</th>

                                        </tr>
                                        <tr>

                                            <td>1</td>
                                            <td>Commissioner</td>
                                            <td>
                                                <asp:TextBox ID="txtSanctionPost" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td>2</td>
                                            <td>Director</td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td>3</td>
                                            <td>Additional Director</td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td>4</td>
                                            <td>Joint Director</td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" Width="100" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>

                                        </tr>

                                    </table>--%>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="pnlschoolcategory" visible="false">
                            <div class="form-group">
                                <label>
                                    Select School Category <br />
                                    स्कूल श्रेणी का चयन करें<span style="color: red">*</span></label>
                                <asp:DropDownList ID="ddlSchoolType" OnSelectedIndexChanged="ddlSchoolType_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control select2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Primary School</asp:ListItem>
                                    <asp:ListItem Value="2">Middle School</asp:ListItem>
                                    <asp:ListItem Value="3">High School</asp:ListItem>
                                    <%--<asp:ListItem>High Secondary School</asp:ListItem>--%>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3" id="divmin" runat="server">
                            <div class="form-group">
                                <label>
                                    Enter Minimum Student Count<br />
                                    न्यूनतम छात्र संख्या दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox ID="ddlstudentcount" runat="server" CssClass="form-control" placeholder="Enter Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" id="divMax" runat="server">
                            <div class="form-group">
                                <label>
                                    Enter Maximum Student Count<br />
                                    अधिकतम छात्र संख्या दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox ID="Count2" runat="server" CssClass="form-control" placeholder="Enter Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" id="divHM" runat="server">
                            <div class="form-group">
                                <label>
                                    Enter Head Master Count <br />
                                    हेड मास्टर संख्या दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Head Count"></asp:TextBox>
                            </div>
                        </div>


                        <div class="col-md-3" runat="server" id="divmd1">
                            <div class="form-group">
                                <label>
                                    Enter Maths Teacher Count <br />
                                    गणित शिक्षक गणना दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="divmd2">
                            <div class="form-group">
                                <label>
                                    Enter English Teacher Count <br />
                                    अंग्रेजी शिक्षक गणना दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="divmd3">
                            <div class="form-group">
                                <label>
                                    Enter Social Science Teacher Count<br />
                                    सामाजिक विज्ञान शिक्षक गणना दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="divmd4">
                            <div class="form-group">
                                <label>
                                    Enter Sanskrit Teacher Count <br />
                                    संस्कृत शिक्षक गणना दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="divmd5">
                            <div class="form-group">
                                <label>
                                    Enter Biology Teacher Count <br />
                                    जीवविज्ञान शिक्षक गणना दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="divmd6">
                            <div class="form-group">
                                <label>
                                    Enter Hindi Teacher Count <br />
                                    हिंदी शिक्षक गणना दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" runat="server" id="divmd7">
                            <div class="form-group">
                                <label>
                                    Enter Urdu Teacher Count <br />
                                    उर्दू शिक्षक गणना दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3" id="divTeacher" runat="server">
                            <div class="form-group">
                                <label>
                                    Enter Total Teacher <br />
                                    कुल शिक्षक दर्ज करें<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Teacher Count"></asp:TextBox>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <%-- <asp:Button runat="server" ID="btnSave" CssClass="btn btn-block btn-success btn-rounded" Text="Save" OnClientClick="return confirm('Are you sure you want to save this record?')" />--%>
                                    <button type="button" class="Alert-Confirmation btn btn-success btn-border btn w-lg">Save</button>
                                    <a href="Mst_SchoolSetup.aspx" class="btn btn-outline-danger btn-border btn w-lg">Clear</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </fieldset>

                <div id="show" runat="server" visible="false">
                    <fieldset>
                        <legend>Report / रिपोर्ट</legend>
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
                                    <table class="table text-center">
                                        <tr>
                                            <th>School Category
                                                <br />
                                                स्कूल श्रेणी</th>
                                            <th>Student Count
                                                <br />
                                                छात्र संख्या</th>
                                            <th>Head Master No.
                                                <br />
                                                हेड मास्टर नंबर</th>
                                            <th>Total Teacher
                                                <br />
                                                कुल शिक्षक
                                            </th>
                                            <th>Action</th>

                                        </tr>
                                        <tr>
                                            <td>Primary School</td>
                                            <td>1 - 60</td>
                                            <td>0</td>
                                            <td>2</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Primary School</td>
                                            <td>61 - 90</td>
                                            <td>0</td>
                                            <td>3</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Primary School</td>
                                            <td>91 - 120</td>
                                            <td>0</td>
                                            <td>4</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div id="Middle" runat="server" visible="false">
                    <fieldset>
                        <legend>Report / रिपोर्ट</legend>
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
                                    <table class="table text-center">
                                        <tr>
                                            <th>School Category
                                                <br />
                                                स्कूल श्रेणी</th>
                                            <th>Student Count
                                                <br />
                                                छात्र संख्या</th>
                                            <th>Head Master No.
                                                <br />
                                                हेड मास्टर नंबर</th>

                                            <th>Maths Teacher Count<br />
                                                गणित शिक्षक गणना</th>
                                            <th>English Teacher Count
                                                <br />
                                                अंग्रेजी शिक्षक गणना</th>
                                            <th>Social Science Teacher Count<br />
                                                सामाजिक विज्ञान शिक्षक गणना</th>
                                            <th>Sanskrit Teacher Count<br />
                                                संस्कृत शिक्षक गणना</th>
                                            <th>Biology Teacher Count<br />
                                                जीवविज्ञान शिक्षक गणना</th>
                                            <th>Hindi Teacher Count<br />
                                                हिंदी शिक्षक गणना</th>
                                            <th>Urdu Teacher Count<br />
                                                उर्दू शिक्षक गणना</th>
                                            <th>Total Teacher
                                                <br />
                                                कुल शिक्षक</th>
                                            <th>Action</th>

                                        </tr>
                                        <tr>
                                            <td>Middle School</td>
                                            <td>1 - 105</td>
                                            <td>1</td>

                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>--</td>
                                            <td>3</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Middle School</td>
                                            <td>106 - 140</td>
                                            <td>1</td>

                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>--</td>
                                            <td>4</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Middle School</td>
                                            <td>141 - 176</td>
                                            <td>1</td>

                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>0</td>
                                            <td>--</td>
                                            <td>5</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div id="High" runat="server" visible="false">
                    <fieldset>
                        <legend>Report / रिपोर्ट</legend>
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
                                    <table class="table text-center">
                                        <tr>
                                            <th>School Category<br />
                                                स्कूल श्रेणी</th>
                                            <th>Student Count
                                                <br />
                                                छात्र संख्या</th>


                                            <th>Maths Teacher Count<br />
                                                गणित शिक्षक गणना</th>
                                            <th>English Teacher Count<br />
                                                अंग्रेजी शिक्षक गणना</th>
                                            <th>Social Science Teacher Count<br />
                                                सामाजिक विज्ञान शिक्षक गणना</th>
                                            <th>Sanskrit Teacher Count<br />
                                                संस्कृत शिक्षक गणना</th>
                                            <th>Biology Teacher Count<br />
                                                जीवविज्ञान शिक्षक गणना</th>
                                            <th>Hindi Teacher Count<br />
                                                हिंदी शिक्षक गणना</th>
                                            <th>Urdu Teacher Count<br />
                                                उर्दू शिक्षक गणना</th>
                                            <th>Total Teacher<br />
                                                कुल शिक्षक</th>
                                            <th>Action</th>

                                        </tr>
                                        <tr>
                                            <td>High School</td>
                                            <td>1 - 240</td>

                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>

                                            <td>--</td>
                                            <td>6</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>High School</td>
                                            <td>241 - 285</td>

                                            <td>2</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>--</td>
                                            <td>7</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>High School</td>
                                            <td>286 - 330</td>

                                            <td>2</td>
                                            <td>2</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>--</td>
                                            <td>8</td>
                                            <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <%-- <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Set up </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Set up </strong>from dropdown.</li>

                                    </ul>
                                </li>

                                <li><strong>School Category >> Primary School</strong>

                                    <ul>
                                        <li>When we click on “Primary School”, the form opens based on primary school,
                                                     fill the textbox fields related to student count,
                                                       minimum student number, maximum student number, headmaster and teacher and save it.</li>
                                    </ul>
                                </li>

                                <li><strong>School Category >> Middle School</strong>

                                    <ul>
                                        <li>When we click on “middle school”, the form opens based on middle school,
                                                     fill the textbox fields related to Student Count Minimum, 
                                                    Student Count Maximum, Head Master,Teacher,Maths,English,Social.Science,Sanskrit,Biology,Hindi,Urdu And save it.</li>
                                    </ul>
                                </li>
                                <li><strong>School Category >> High School</strong>

                                    <ul>
                                        <li>When we click on “High School”, the form opens based on high school,
                                                     fill the textbox fields related to Student Count Minimum, 
                                                    Student Count Maximum,Teacher,Maths,English,Social Science,Sanskrit,Biology,Hindi,Urdu And save it.

                                        </li>
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
                                        <li>User should be able to click on Clear button. </li>
                                        <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>--%>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script type="text/javascript">
        function onDropdownChange() {
            debugger;
            var ddlSchoolType = document.getElementById("ddlSchoolType");
            var selectedValue = document.getElementById('<%= ddlSchoolType.ClientID %>').value;

            if (selectedValue == "1") {
                show.style.display = "block";
            }
            else if (selectedValue == "2") {
                Middle.style.display = "block";
            }
            else if (selectedValue == "3") {
                High.style.display = "block";
            }
            else {
                show.style.display = "none";
                Middle.style.display = "none";
                High.style.display = "none";

            }
        }


    </script>--%>
</asp:Content>

