<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolWithoutSankul.aspx.cs" Inherits="mis_Transaction_SchoolWithoutSankul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="container-fluid">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">School Without Sankul</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <%-- <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>--%>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">School Without Sankul</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>

                    <legend>School Without Sankul</legend>

                    <div class="row">

                        <div class="col-md-3">
                            <label class="font-bold">Division Name<span style="color: red">*</span></label>
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
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                ErrorMessage="Select School Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>"
                                ControlToValidate="ddlDistrict" Display="Dynamic" runat="server">
                            </asp:RequiredFieldValidator>

                            <asp:DropDownList runat="server" ID="ddlDistrict" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>

                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">Block Name</label>
                            <asp:DropDownList runat="server" ID="ddlBlock" CssClass="form-control select2 mt-2">
                                <asp:ListItem>--Select--</asp:ListItem>

                            </asp:DropDownList>

                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">Management Group</label>
                            <asp:DropDownList runat="server" ID="ddMGt" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddMGt_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Central Government</asp:ListItem>
                                <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                <asp:ListItem>Government Aided</asp:ListItem>
                                <asp:ListItem>State Government</asp:ListItem>



                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="row mt-4">

                        <div class="col-md-3">
                            <label class="font-bold">Management Group Details</label>
                            <asp:DropDownList runat="server" ID="ddlMgtGroupD" CssClass="form-control select2 mt-2">
                                <asp:ListItem>--Select--</asp:ListItem>

                            </asp:DropDownList>

                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">Category</label>
                            <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Primary School</asp:ListItem>
                                <asp:ListItem>Upper primary School</asp:ListItem>
                                <asp:ListItem>Secondary School</asp:ListItem>
                                <asp:ListItem>Higher Secondary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Category Detail</label>
                            <asp:DropDownList runat="server" ID="ddlCategoryDetail" CssClass="form-control select2 mt-2">
                                <asp:ListItem>--Select--</asp:ListItem>

                            </asp:DropDownList>

                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">School Dise Code</label>
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
                    <div class="row mt-4">
                        <div class="col-4"></div>
                        <div class="col-md-4">
                            <div class="form-group text-center">
                                <asp:Button runat="server" Text="Search" CssClass="btn btn-success  btn-rounded" OnClick="Unnamed_Click" />

                                <a href="SchoolWithoutSankul.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset runat="server" id="Schoolreport" visible="false">
                    <legend>Details</legend>
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
                            <table class="table table-bordered table-responsive-lg text-center" style="border: 2px;" id="districtD">

                                <thead>
                                    <tr>
                                        <th>S.NO.</th>
                                        <th>District Name</th>
                                        <th>School No.</th>

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

                            <table class="table table-bordered table-responsive-lg text-center" style="border: 2px; display: none" id="BlockDetail">

                                <tbody>
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>Block Name</th>
                                        <th>School No.</th>
                                    </tr>
                                </thead>
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
                            </table>

                            <table class="table table-bordered table-responsive-lg text-center" style="border: 2px; display: none" id="Raisenblock">

                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>Block Name</th>
                                        <th>School No.</th>
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

                            <table class="table table-bordered table-responsive-lg text-center" style="display: none;" id="SclDetail">
                                <thead>
                                    <tr>
                                        <th>S.NO.</th>
                                        <th>School Dise/School Name</th>
                                        <th>Management Group</th>
                                        <th>Management Detail</th>
                                        <th>Category</th>
                                        <th>Category Detail</th>
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

                            <table class="table table-bordered table-responsive-lg text-center" style="display: none;" id="RaisenSclD">
                                <thead>
                                    <tr>
                                        <th>S.NO.</th>
                                        <th>School Dise Code/School Name</th>
                                        <th>Management Group</th>
                                        <th>Management Detail</th>
                                        <th>Category</th>
                                        <th>Category Detail</th>
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

                            <table class="table table-bordered table-responsive-lg text-center" style="display: none;" id="GairatganjD">
                                <thead>
                                    <tr>
                                        <th>S.NO.</th>
                                        <th>School Dise Code/School Name</th>
                                        <th>Management Group</th>
                                        <th>Management Detail</th>
                                        <th>Category</th>
                                        <th>Category Detail</th>
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
                </fieldset>
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

