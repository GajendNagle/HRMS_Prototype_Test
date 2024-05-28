<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SankulWiseSummaryOfProgressOfReviewAndVerificationofSchoolDirectory - Copy (2).aspx.cs" Inherits="mis_Transaction_SankulWiseSummaryOfProgressOfReviewAndVerificationofSchoolDirectory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div id="dv_Masters_LocationMasters" runat="server">--%>
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Sankul Wise Progress Report</h4>

        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                    <li class="breadcrumb-item"><a href="BlockWiseSummaryOfPublishedSchools.aspx" title="click to go on">Block-wise Publish Schools
</a></li>
                    <li class="breadcrumb-item active">Sankul Wise Progress Report</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Sankul Wise Progress Report</legend>
                <div class="row">
                    <div class="col-md-4">
                        <label class="font-bold">District<span style="color: red">* </span></label>
                        <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict" ClientIDMode="Static" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Raisen</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="font-bold">Block </label>
                        <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlBlock">
                            <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="font-bold">Sankul </label>
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
                    <div class="col-md-4 mb-3">


                        <label class="font-bold">Management Group </label>
                        <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroup" AutoPostBack="true" OnSelectedIndexChanged="ddlManagementGroup_SelectedIndexChanged">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>State Government</asp:ListItem>
                            <asp:ListItem>Central Government</asp:ListItem>
                            <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                            <asp:ListItem>Government Aided</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="font-bold">Management Group Details </label>
                        <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroupDetails">
                            <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="font-bold">Category </label>
                        <asp:DropDownList CssClass="form-control select2" runat="server" AutoPostBack="true" ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Primary School</asp:ListItem>
                            <asp:ListItem>Upper primary School</asp:ListItem>
                            <asp:ListItem>Secondary School</asp:ListItem>
                            <asp:ListItem>Higher Secondary School</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-4 ">
                        <label class="font-bold">Category Details </label>
                        <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlCategoryDetails">
                            <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>


                </div>
                <div class="row justify-content-center">
                    <div class="col-md-4 text-center mt-4">
                        <div class="form-group">
                            <asp:Button runat="server" class="btn btn-outline-success shadow" Text="Get Sankul-Wise Summary" OnClick="Unnamed_Click" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset id="show" runat="server" visible="false">
                <legend>Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-1">
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
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>

                </div>


                <div class="row">
                    <div class="col-md-12">
                        <table id="tbl2" class="table table-bordered table-responsive text-center" runat="server">
                            <thead>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th colspan="2">New School to be Opened</th>
                                    <th colspan="2">New School to be Merged</th>
                                    <th colspan="2">New School to be Closed</th>
                                    <th colspan="2">New School to be Updated/Upgraded</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr valign="middle">
                                    <td><b>S. No.</b></td>
                                    <td><b>Block</b></td>
                                    <td><b>Sankul</b></td>
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
                                    <%--<th></th>
                                            <th></th>--%>
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
                <%--</div>--%>
            </fieldset>
        </div>
    </div>
    <%--</div>--%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function showtbl(tblId) {
            document.getElementById(tblId).style.display = "table";
        }
    </script>
</asp:Content>

