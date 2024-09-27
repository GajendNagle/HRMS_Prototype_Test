<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolWithoutSankul.aspx.cs" Inherits="mis_Transaction_SchoolWithoutSankul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SchoolReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchoolDirectory')">
                                <span>School Reports</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>School Without Sankul Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">

            <%--<div class="marqueecontainer">
       <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
       <div>
           <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
               0
           </marquee>
       </div>
   </div>--%>
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">School Without Sankul / संकुल विहीन विद्यालय</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>School Without Sankul / संकुल विहीन विद्यालय</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <label>
                                    Select Division Name<br />
                                    संभाग का नाम चुनें<span style="color: red">*</span></label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                    ErrorMessage="Select School Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>"
                                    ControlToValidate="ddlDivision" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                                <asp:DropDownList runat="server" ID="ddlDivision" CssClass="form-control select2" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem>Bhopal</asp:ListItem>
                                    <asp:ListItem>Indore</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Select District Name<br />
                                    जिले का नाम चुनें<span style="color: red">*</span></label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                    ErrorMessage="Select School Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>"
                                    ControlToValidate="ddlDistrict" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                                <asp:DropDownList runat="server" ID="ddlDistrict" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Select Block Name<br />
                                    ब्लॉक का नाम चुनें</label>
                                <asp:DropDownList runat="server" ID="ddlBlock" CssClass="form-control select2 mt-2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Select Management Group<br />
                                    प्रबंधन समूह चुनें</label>
                                <asp:DropDownList runat="server" ID="ddMGt" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddMGt_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Central Government</asp:ListItem>
                                    <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                    <asp:ListItem>Government Aided</asp:ListItem>
                                    <asp:ListItem>State Government</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <label>
                                    Select Management Group Details<br />
                                    प्रबंधन समूह विवरण चुनें</label>
                                <asp:DropDownList runat="server" ID="ddlMgtGroupD" CssClass="form-control select2 mt-2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Select Category<br />
                                    श्रेणी चुनें</label>
                                <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Primary School</asp:ListItem>
                                    <asp:ListItem>Upper primary School</asp:ListItem>
                                    <asp:ListItem>Secondary School</asp:ListItem>
                                    <asp:ListItem>Higher Secondary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Select Category Detail<br />
                                    श्रेणी विवरण चुनें</label>
                                <asp:DropDownList runat="server" ID="ddlCategoryDetail" CssClass="form-control select2 mt-2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Select School Dise Code<br />
                                    स्कूल डीआईएसई कोड का चयन करें</label>
                                <asp:DropDownList runat="server" ID="ddlSchoolDise" CssClass="form-control select2 mt-2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>23320400117-GOVT HSS AHAMDABAD</asp:ListItem>
                                    <asp:ListItem>23320303134-GOVT HSS KHAJURI KALAN</asp:ListItem>
                                    <asp:ListItem>23320212709-GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</asp:ListItem>
                                    <asp:ListItem>23320110008-GOVT HSS GUNGA</asp:ListItem>
                                    <asp:ListItem>23340101207-M.P. CONVENT BADI</asp:ListItem>
                                    <asp:ListItem>23340202202-GMS BERKHEDI BARAMAD GADHI</asp:ListItem>
                                    <asp:ListItem>23340300401-UEGS KUSNAGAR AMGAWAN</asp:ListItem>
                                    <asp:ListItem>23340402101-GGPS BAMULIYA DANGI</asp:ListItem>
                                    <asp:ListItem>23340502509-GHSS BANGAWAN</asp:ListItem>
                                    <asp:ListItem>23340603802-GAYANDEEP M S CHANDAN PIPALIYA</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <hr />
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Button runat="server" Text="Search" CssClass="btn w-lg btn-outline-success btn-border" OnClick="Unnamed_Click" />

                                    <a href="SchoolWithoutSankul.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset runat="server" id="Schoolreport" visible="false">
                        <legend>Details / विवरण</legend>
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
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class=" table-responsive">
                                    <table class="table table-bordered text-center" id="districtD">
                                        <thead>
                                            <tr>
                                                <th>S.NO.<br />
                                                    क्र.सं</th>
                                                <th>District Name<br />
                                                    जिले का नाम</th>
                                                <th>School No.<br />
                                                    स्कूल नं.</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td><a onclick="showtbl('BlockDetail')" style="color: blue">2</a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Raisen</td>
                                            <td><a onclick="showtbl('Raisenblock')" style="color: blue">2</a></td>
                                        </tr>
                                    </table>
                                    <table class="table table-borderedtext-center" style="border: 2px; display: none" id="BlockDetail">

                                        <thead>
                                            <tr>
                                                <th>S.NO./क्र.सं</th>
                                                <th>Block Name/ब्लॉक का नाम</th>
                                                <th>School No./स्कूल नं.</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Berasia</td>
                                                <td><a onclick="showtbl('SclDetail')" style="color: blue">1</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Phanda Gramin</td>
                                                <td>1</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="table table-bordered text-center" style="border: 2px; display: none" id="Raisenblock">

                                        <thead>
                                            <tr>
                                                <th>S.NO./क्र.सं</th>
                                                <th>Block Name/ब्लॉक का नाम</th>
                                                <th>School No./स्कूल नं.</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>Begamganj</td>
                                            <td><a onclick="showtbl('RaisenSclD')" style="color: blue">1</a></td>
                                        </tr>

                                        <tr>
                                            <td>1</td>
                                            <td>Gairatganj</td>
                                            <td><a onclick="showtbl('GairatganjD')" style="color: blue">1</a></td>
                                        </tr>

                                    </table>

                                    <table class="table table-bordered text-center" style="display: none;" id="SclDetail">
                                        <thead>
                                            <tr>
                                                <th>S.NO.<br />
                                                    क्र.सं</th>
                                                <th>School Dise/School Name<br />
                                                    <br />
                                                    स्कूल का नाम/स्कूल का नाम</th>
                                                <th>Management Group<br />
                                                    प्रबंधन समूह</th>
                                                <th>Management Detail<br />
                                                    प्रबंधन विवरण</th>
                                                <th>Category<br />
                                                    वर्ग</th>
                                                <th>Category Detail<br />
                                                    श्रेणी विवरण</th>
                                            </tr>
                                        </thead>

                                        <tr>
                                            <td>1</td>
                                            <td>23320110008-GOVT HSS GUNGA</td>
                                            <td>State Government</td>
                                            <td>Department of Education</td>
                                            <td>Higher Secondary School</td>
                                            <td>Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</td>
                                        </tr>
                                    </table>

                                    <table class="table table-bordered text-center" style="display: none;" id="RaisenSclD">
                                        <thead>
                                            <tr>
                                                <th>S.NO.<br />
                                                    क्र.सं</th>
                                                <th>School Dise Code/School Name<br />
                                                    स्कूल डीआईएसई कोड/स्कूल का नाम</th>
                                                <th>Management Group<br />
                                                    <br />
                                                    प्रबंधन समूह</th>
                                                <th>Management Detail<br />
                                                    प्रबंधन विवरण</th>
                                                <th>Category<br />
                                                    वर्ग</th>
                                                <th>Category Detail<br />
                                                    श्रेणी विवरण</th>
                                            </tr>
                                        </thead>

                                        <tr>
                                            <td>1</td>
                                            <td>23340202202-GMS BERKHEDI BARAMAD GADHI</td>
                                            <td>State Government</td>
                                            <td>Department of Education</td>
                                            <td>Upper primary School</td>
                                            <td>Upper Primary with grades 1 to 8 (PRY-UPR) </td>
                                        </tr>

                                    </table>

                                    <table class="table table-bordered text-center" style="display: none;" id="GairatganjD">
                                        <thead>
                                            <tr>
                                                <th>S.NO.<br />
                                                    क्र.सं</th>
                                                <th>School Dise Code/School Name<br />
                                                    स्कूल डीआईएसई कोड/स्कूल का नाम</th>
                                                <th>Management Group<br />
                                                    प्रबंधन समूह</th>
                                                <th>Management Detail<br />
                                                    प्रबंधन विवरण</th>
                                                <th>Category<br />
                                                    वर्ग</th>
                                                <th>Category Detail<br />
                                                    श्रेणी विवरण</th>
                                            </tr>
                                        </thead>

                                        <tr>
                                            <td>1</td>
                                            <td>23340300401-UEGS KUSNAGAR AMGAWAN</td>
                                            <td>State Government</td>
                                            <td>Department of Education</td>
                                            <td>Primary School</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>

        function showtbl(tblId) {
            var tables = document.getElementsByTagName('table');
            for (var i = 0; i < tables.length; i++) {
                tables[i].style.display = "none";
            }
            document.getElementById(tblId).style.display = "table";
        }
    </script>
</asp:Content>

