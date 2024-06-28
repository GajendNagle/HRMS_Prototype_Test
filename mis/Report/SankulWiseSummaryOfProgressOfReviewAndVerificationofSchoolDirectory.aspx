<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SankulWiseSummaryOfProgressOfReviewAndVerificationofSchoolDirectory.aspx.cs" Inherits="mis_Report_SankulWiseProgressReport" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#RptOISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchoolDirectory')">
                                <span>OIS Setup Reports</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>District-Wise Publish Schools</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title">Sankul Wise Progress Report / संकुल वार प्रगति रिपोर्ट </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Sankul Wise Progress Report / संकुल वार प्रगति रिपोर्ट</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District<br />
                                जिला<span style="color: red">* </span>
                            </label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict" ClientIDMode="Static" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Block<br />
                                विकासखंड<span style="color: red">* </span>
                            </label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlBlock">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Sankul
                                <br />
                                संकुल</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlSankul">
                                <asp:ListItem>Select All Sankul</asp:ListItem>
                                <asp:ListItem>14548455-AKBARPUR GOVT. HS</asp:ListItem>
                                <asp:ListItem>14632121-BERASIA (BOYS) GOVT.HSS</asp:ListItem>
                                <asp:ListItem>15445463-EENT KHEDI GOVT. HS</asp:ListItem>
                                <asp:ListItem>24587465-DHAMARRA GOVT. HS</asp:ListItem>
                                <asp:ListItem>24876588-BERAISA (GIRLS) SN HS</asp:ListItem>
                                <asp:ListItem>24876546-BAIRAGARH (BOYS) GOVT.H</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Management Group
                                <br />
                                प्रबंधन समूह <span style="color: red">* </span>
                            </label>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroup" AutoPostBack="true" OnSelectedIndexChanged="ddlManagementGroup_SelectedIndexChanged">
                                <asp:ListItem>--Select--</asp:ListItem>
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
                            <label>
                                Management Group Details
                                <br />
                                प्रबंधन समूह विवरण<span style="color: red">* </span>
                            </label>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroupDetails">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Category
                                <br />
                                वर्ग<span style="color: red">* </span>
                            </label>
                            <asp:DropDownList CssClass="form-control select2" runat="server" AutoPostBack="true" ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged1">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Primary School</asp:ListItem>
                                <asp:ListItem>Upper primary School</asp:ListItem>
                                <asp:ListItem>Secondary School</asp:ListItem>
                                <asp:ListItem>Higher Secondary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Category Details
                                <br />
                                श्रेणी विवरण<span style="color: red">* </span>
                            </label>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlCategoryDetails">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 mt-5">
                            <div class="form-group">
                                <asp:Button runat="server" class="btn btn-outline-success w-lg btn-border" Text="Get Sankul-Wise Summary" OnClick="Unnamed_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                </div>
            </fieldset>
            <br />
            <fieldset id="show" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                        </div>
                        <table id="tbl2" class="table text-center table-bordered" runat="server">
                            <thead>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                    <th>Sr. No.<br />
                                        सरल क्र.</th>
                                    <th>Block<br />
                                        विकासखंड</th>
                                    <th>Sankul<br />
                                        संकुल</th>
                                    <th colspan="2">New School to be Opened<br />
                                        नया स्कूल खोला जाएगा</th>
                                    <th colspan="2">New School to be Merged<br />
                                        नए स्कूल का विलय किया जाएगा</th>
                                    <th colspan="2">New School to be Closed<br />
                                        नया स्कूल बंद किया जाएगा</th>
                                    <th colspan="2">New School to be Updated/Upgraded<br />
                                        नए स्कूल को अद्यतन/उन्नयन किया जाएगा</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr valign="middle">
                                    <td><b></b></td>
                                    <td><b></b></td>
                                    <td><b></b></td>
                                    <td><b>Proposed</b></td>
                                    <td><b>Aproved</b></td>
                                    <td><b>Proposed</b></td>
                                    <td><b>Aproved</b></td>
                                    <td><b>Proposed</b></td>
                                    <td><b>Aproved</b></td>
                                    <td><b>Proposed</b></td>
                                    <td><b>Aproved</b></td>
                                </tr>
                                <tr valign="middle">
                                    <td>1</td>
                                    <td>BERASIA</td>
                                    <td>BEO BERASIA 0532003006</td>
                                    <td>5</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>
                                <tr valign="middle">
                                    <td>2</td>
                                    <td>BERASIA</td>
                                    <td>BERASIA(BOYS) 0598003654</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>4</td>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>12</td>
                                    <td>11</td>
                                </tr>
                                <tr valign="middle">
                                    <td>3</td>
                                    <td>BERASIA</td>
                                    <td>GUNA BERASIA,PRINCIPAL GOVT. HSS  0592343654</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>6</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>16</td>
                                    <td>13</td>
                                </tr>
                                <tr valign="middle">
                                    <td>4</td>
                                    <td>BERASIA</td>
                                    <td>HARRKHEDA, BERASIA,PRINCIPAL GOVT. HSS  0587424388</td>
                                    <td>4</td>
                                    <td>3</td>
                                    <td>7</td>
                                    <td>4</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>6</td>
                                    <td>6</td>
                                </tr>
                                <tr valign="middle">
                                    <td>4</td>
                                    <td>BERASIA</td>
                                    <td>LALARIYA, BERASIA,PRINCIPAL GOVT. HSS  0548744637</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>6</td>
                                    <td>3</td>
                                    <td>17</td>
                                    <td>15</td>
                                </tr>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                    <th colspan="3">TOTAL</th>
                                    <th>12</th>
                                    <th>5</th>
                                    <th>22</th>
                                    <th>13</th>
                                    <th>12</th>
                                    <th>5</th>
                                    <th>51</th>
                                    <th>45</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function showtbl(tblId) {
            document.getElementById(tblId).style.display = "table";
        }
    </script>
</asp:Content>

