<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BlockWiseSummaryOfPublishedSchools.aspx.cs" Inherits="mis_Transaction_BlockWiseSummaryOfPublishedSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        a {
            color: blue;
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
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row align-items-end">
                        <div class="col-lg-12">
                            <h4 class="card-title">Block-Wise Publish Schools / ब्लॉकवार प्रकाशित विद्यालय</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Block-wise Publish Schools / ब्लॉकवार प्रकाशित विद्यालय</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District Name<br />जिले का नाम
                                        <span style="color: red">*</span></label>
                                    <asp:DropDownList runat="server" ID="ddlDistrictName" OnSelectedIndexChanged="ddlDistrictName_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2 mt-2">
                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                        <asp:ListItem>Bhopal</asp:ListItem>
                                        <asp:ListItem>Raisen</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Block Name<br />विकासखण्ड का नाम
                                        <span style="color: red">*</span></label>
                                    <asp:DropDownList runat="server" ID="ddlBlockN" CssClass="form-control select2 mt-2">
                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group<br />प्रबंधन समूह
                                    </label>
                                    <asp:DropDownList runat="server" ID="ddlMgtGroup" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddlMgtGroup_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                        <asp:ListItem>Central Government</asp:ListItem>
                                        <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                        <asp:ListItem>Government Aided</asp:ListItem>
                                        <asp:ListItem>State Government</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group Details<br />प्रबंधन समूह विवरण</label>
                                    <asp:DropDownList runat="server" ID="ddlMgtGroupD" CssClass="form-control select2 mt-2">
                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Category<br />वर्ग</label>
                                    <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control select2 mt-2" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                        <asp:ListItem>Primary School</asp:ListItem>
                                        <asp:ListItem>Upper primary School</asp:ListItem>
                                        <asp:ListItem>Secondary School</asp:ListItem>
                                        <asp:ListItem>Higher Secondary School</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Category Detail<br />वर्ग विवरण</label>
                                    <asp:DropDownList runat="server" ID="ddlCategoryDetail" CssClass="form-control select2 mt-2">
                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button runat="server" Text="Block-wise Summary of Publishing Schools" CssClass="btn btn-success btn-rounded text-wrap" OnClick="Unnamed_Click" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="tblDetails" visible="false" runat="server">
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
                        <div class="table-responsive">
                            <table class="table text-center table-bordered">
                                <thead>
                                    <tr>
                                        <th colspan="4">New Schools to be Opened</th>
                                        <th colspan="2">Schools to be Merged</th>
                                        <th colspan="2">Schools to be Closed</th>
                                        <th colspan="2">Schools to be Updated/Upgraded</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Block</th>
                                    <th>Proposed</th>
                                    <th>Approved</th>
                                    <th>Proposed</th>
                                    <th>Approved</th>
                                    <th>Proposed</th>
                                    <th>Approved</th>
                                    <th>Proposed</th>
                                    <th>Approved</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><a href="SankulWiseSummaryOfProgressOfReviewAndVerificationofSchoolDirectory.aspx">Berasia</a></td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>20</td>
                                    <td>10</td>
                                    <td>15</td>
                                    <td>8</td>
                                    <td>30</td>
                                    <td>17</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="SankulWiseSummaryOfProgressOfReviewAndVerificationofSchoolDirectory.aspx">Phanda Gramin</a></td>
                                    <td>20</td>
                                    <td>15</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>30</td>
                                    <td>24</td>
                                    <td>16</td>
                                    <td>10</td>
                                </tr>
                                <tr class="card-header">
                                    <th colspan="2">TOTAL</th>
                                    <th>30</th>
                                    <th>22</th>
                                    <th>32</th>
                                    <th>16</th>
                                    <th>45</th>
                                    <th>32</th>
                                    <th>46</th>
                                    <th>27</th>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

