<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true"
    CodeFile="Rpt_ZeroTeacherSchool.aspx.cs" Inherits="mis_Transaction_RptZeroTeacherSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        a:not([href]):not([class]), a:not([href]):not([class]):hover {
            color: #03a9f3;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Zero Teacher School </h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">Zero Teacher School Report</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>School Details</legend>
                    <div class="row form-group">
                        <div class="col-md-3">
                            <label class="font-bold">Division Name <span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                    ErrorMessage="Select Division Name" InitialValue="0" ForeColor="Red"
                                    Text="<i class='fa fa-exclamation-circle' title='Select Division Name !'></i>"
                                    ControlToValidate="ddlDivision" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDivision" AutoPostBack="true" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Bhopal</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                    ErrorMessage="Select District Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select District Name !'></i>"
                                    ControlToValidate="ddlDistrict" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict" AutoPostBack="true" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Block Name</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" AutoPostBack="true" ID="ddlBlock">
                                <asp:ListItem>--Select--</asp:ListItem>

                            </asp:DropDownList>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group</label>

                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGrp" OnSelectedIndexChanged="ddlManagementGrp_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>State Government</asp:ListItem>
                                    <asp:ListItem>Central Government</asp:ListItem>
                                    <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                    <asp:ListItem>Government Aided</asp:ListItem>

                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group Details</label>
                                <span class="fa-pull-right"></span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolManagementDtls">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Category</label>

                                <asp:DropDownList CssClass="form-control select2" runat="server" AutoPostBack="true" ID="ddlSchoolCat" OnSelectedIndexChanged="ddlSchoolCat_SelectedIndexChanged">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>Primary School</asp:ListItem>
                                    <asp:ListItem>Upper primary School</asp:ListItem>
                                    <asp:ListItem>Secondary School</asp:ListItem>
                                    <asp:ListItem>Higher Secondary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Category Details</label>
                                <asp:DropDownList class="form-control select2" ID="ddlCategarydtl" runat="server">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">School Dise Code</label>

                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolDiseCode">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>23320400117 - GOVT HSS AHAMDABAD</asp:ListItem>
                                    <asp:ListItem>23320303134 - GOVT HSS KHAJURI KALAN</asp:ListItem>
                                    <asp:ListItem>23320212709 - GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</asp:ListItem>
                                    <asp:ListItem>23320110008 - GOVT HSS GUNGA</asp:ListItem>
                                    <asp:ListItem>23340101207 - M.P. CONVENT BADI</asp:ListItem>
                                    <asp:ListItem>23340202202 - GMS BERKHEDI BARAMAD GADHI</asp:ListItem>
                                    <asp:ListItem>23340300401 - UEGS KUSNAGAR AMGAWAN</asp:ListItem>
                                    <asp:ListItem>23340402101 - GGPS BAMULIYA DANGI</asp:ListItem>
                                    <asp:ListItem>23340502509 - GHSS BANGAWAN</asp:ListItem>
                                    <asp:ListItem>23340603802 - GAYANDEEP M S CHANDAN PIPALIYA</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded" runat="server" Text="Search" OnClick="btnSubmit_Click" />


                                <a href="Rpt_ZeroTeacherSchool.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="row form-group" id="dv_rpt" runat="server">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Zero Teacher School Details</legend>
                            <div class="row justify-content-end">
                                <div class="col-md-1 ">
                                    <div class="form-group">
                                        <asp:Button ID="Button2" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <asp:Button ID="Button3" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12">

                                    <%--table district Start--%>

                                    <table class="table table-bordered table-responsive-lg " id="tblDistrict">
                                        <thead>
                                            <tr>
                                                <th>Sr. No</th>
                                                <th>District</th>
                                                <th>Zero Teacher No</th>

                                                <%--<th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td><a onclick="showtbl('tblBlockofBhopal')">2</a></td>
                                            <%-- <td>4</td>
                                            <td>5</td>--%>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Raisen</td>
                                            <td><a onclick="showtbl('tblBlockofRaisen')">3</a></td>
                                            <%--<td>5</td>
                                            <td>3</td>--%>
                                        </tr>
                                    </table>
                                    <%--table district End--%>
                                    <%-- table Block start --%>
                                    <%--table Block of bhopal Start--%>
                                    <table class="table table-bordered table-responsive-lg" id="tblBlockofBhopal" style="display: none;">
                                        <thead>
                                            <tr>
                                                <th>Sr. No</th>
                                                <th>Block</th>
                                                <th>Zero Teacher No</th>
                                                <%--<th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>Phanda Gramin</td>
                                            <td><a onclick="showtbl('tblSankulofPhandaGramin0502003027')">1</a></td>
                                            <%--<td>2</td>
                                            <td>2</td>--%>
                                        </tr>

                                        <tr>
                                            <td>2</td>
                                            <td>Berasia</td>
                                            <td><a onclick="showtbl('tblSankulofBerasia0532003003')">1</a></td>
                                            <%--<td>2</td>
                                            <td>3</td>--%>
                                        </tr>
                                    </table>
                                    <%--table Block of bhopal End--%>
                                    <%--table Block of raisen Start--%>
                                    <table class="table table-bordered table-responsive-lg" id="tblBlockofRaisen" style="display: none;">
                                        <thead>


                                            <tr>
                                                <th>Sr. No</th>
                                                <th>Block</th>
                                                <th>Zero Teacher No</th>
                                                <%-- <th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>Sanchi</td>
                                            <td><a onclick="showtbl('tblSankulofSanchi2902003003')">1</a></td>
                                            <%-- <td>2</td>
                                            <td>2</td>--%>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Silwani</td>
                                            <%--<td><a onclick="showtbl('tblSankulofSilwani2902003004')">1</a></td>--%>
                                            <td>2</td>
                                            <%-- <td>3</td>
                                            <td>1</td>  --%>
                                        </tr>
                                    </table>
                                    <%--table Block of raisen  End--%>
                                            <%-- table Block End--%>
                                            <%-- table Sankul start--%>
                                            <%--table Sankul Sanchi2902003003 of raisen District Start--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSankulofSanchi2902003003" style="display: none;">
                                                <%--table Block of raisen to sanchi--%>
                                                <thead>
                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>Sankul </th>
                                                        <th>Zero Teacher No</th>
                                                        <%-- <th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>
                                                    <td>2902003003- SANCHI- Girls H.S.S. RAISEN</td>

                                                    <%--<td>1</td>--%>
                                                    <td><a onclick="showtbl('tblSchoolofSanchi2902003003')">1</a></td>
                                                    <%-- <td>2</td>
                                            <td>2</td>--%>
                                                </tr>
                                            </table>
                                            <%--table Sankul Sanchi2902003003 of raisen  District End--%>

                                            <%--table Sankul PhandaGramin0502003027 of Bhopal District End--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSankulofPhandaGramin0502003027" style="display: none;">
                                                <thead>


                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>Sankul</th>
                                                        <th>Zero Teacher No</th>
                                                        <%--<th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>

                                                    <td>0502003027-PHANDA, PRINCIPAL, GOVT. HS</td>

                                                    <td><a onclick="showtbl('tblSankulofSchool2902003003')">1</a></td>
                                                    <%--<td>2</td>
                                            <td>1</td>--%>
                                                </tr>

                                            </table>
                                            <%--table SankulofBerasia0532003003 of bhopal District--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSankulofBerasia0532003003" style="display: none;">
                                                <thead>


                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>Sankul </th>
                                                        <th>Zero Teacher No</th>
                                                        <%--<th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>
                                                    <td>0532003003 - GUNGA, BERASIA, PRINCIPAL, GOVT. HSS</td>
                                                    <td><a onclick="showtbl('tblSchoolofBERASIA0532003003')">1</a></td>
                                                    <%-- <td>7</td>--%>
                                                    <%--  <td>2</td>
                                            <td>3</td>--%>
                                                </tr>
                                            </table>
                                            <%--table SankulofBerasia0532003003 of bhopal District--%>

                                            <%--table Silwani2902003004 of Raisen District--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSankulofSilwani2902003004" style="display: none;">
                                                <thead>


                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>Sankul </th>
                                                        <th>Zero Teacher No</th>
                                                        <%--<th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>

                                                    <td>2952003030 - SILWANI- Govt.H.S.S. BIKALPUR</td>
                                                    <td><a onclick="showtbl('tblSankulofSchool2902003003SILWANI')">1</a></td>

                                                    <%-- <td>3</td>
                                            <td>1</td>--%>
                                                </tr>
                                            </table>
                                            <%-- table Sankul end--%>
                                            <%-- table School Start--%>
                                            <%-- table School  from Phanda Gramin block Start--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSankulofSchool2902003003" style="display: none;">
                                                <thead>


                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>School </th>
                                                        <th>Zero Teacher No</th>
                                                        <%-- <th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>
                                                    <td>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</td>
                                                    <td>1</td>
                                                    <%-- <td>3</td>
                                            <td>2</td>--%>
                                                </tr>

                                            </table>
                                            <%-- table School from Phanda Gramin block end--%>
                                            <%-- table School from Sanchi block Start--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSchoolofSanchi2902003003" style="display: none;">
                                                <thead>


                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>School </th>
                                                        <th>Zero Teacher No</th>
                                                        <%-- <th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>
                                                    <td>GHSS BANGAWAN</td>
                                                    <td>1</td>
                                                    <%-- <td>3</td>
                                            <td>2</td>--%>
                                                </tr>

                                            </table>
                                            <%-- table School from Sanchi block End--%>
                                            <%-- table School from BERASIA block Start--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSchoolofBERASIA0532003003" style="display: none;">
                                                <thead>


                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>School </th>
                                                        <th>Zero Teacher No</th>
                                                        <%--<th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>
                                                    <td>GOVT HSS GUNGA</td>
                                                    <td>1</td>
                                                    <%-- <td>3</td>
                                            <td>2</td>--%>
                                                </tr>

                                            </table>
                                            <%-- table School from BERASIA block End--%>
                                            <%-- table School from SILWANI block Start--%>
                                            <table class="table table-bordered table-responsive-lg " id="tblSankulofSchool2902003003SILWANI" style="display: none;">
                                                <thead>


                                                    <tr>
                                                        <th>Sr. No</th>
                                                        <th>School </th>
                                                        <th>Zero Teacher No</th>
                                                        <%--<th>Handicaped</th>
                                                <th>Critical Illness</th>--%>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td>1</td>
                                                    <td>GAYANDEEP M S CHANDAN PIPALIYA</td>
                                                    <td>1</td>
                                                    <%-- <td>3</td>
                                            <td>2</td>--%>
                                                </tr>

                                            </table>
                                            <%-- table School from SILWANI block Start--%>
                                    <%-- table School End--%>
                                </div>
                            </div>
                        </fieldset>
                    </div>
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




