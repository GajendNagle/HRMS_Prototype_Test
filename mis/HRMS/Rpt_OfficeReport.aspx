<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_OfficeReport.aspx.cs" Inherits="mis_Transaction_OfficeReport" %>

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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">Reports</li>
                        <li class="breadcrumb-item">Office Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">School Verification/विद्यालय सत्यापन
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Office Report/कार्यालय रिपोर्ट</legend>
                <div class="row form-group align-items-end">
                    <div class="col-md-2">
                        <label class="font-bold">Select Division Name/ संभाग का नाम चुनें<span style="color: red">*</span></label>
                        <asp:DropDownList ID="ddlDivision" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Gwalior</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                        <label class="font-bold">Select District Name/ जिले का नाम चुनें<span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2" ID="ddlDistrict">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                        <label class="font-bold">Select Block Name/ ब्लॉक का नाम चुनें<span style="color: red">*</span></label>
                        <asp:DropDownList ID="ddlBlock" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBlock_SelectedIndexChanged"
                            CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                            <label class="font-bold">Select Office Type/कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="a"
                                    ErrorMessage="Select Office Type" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Office Type !'></i>"
                                    ControlToValidate="ddlOffice" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlOffice">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>BEO,BAROD</asp:ListItem>
                                <asp:ListItem>BRC,BAROD</asp:ListItem>
                                <asp:ListItem>BEO,NALKHEDA</asp:ListItem>
                                <asp:ListItem>BRC,NALKHEDA</asp:ListItem>
                                <asp:ListItem>BEO,SUSNER</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    <div class="col-md-2">
                            <label class="font-bold">Select U-Dise Code/यू-डाइस कोड चुनें<span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="a"
                                    ErrorMessage="Select UDise Code" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select UDise Code !'></i>"
                                    ControlToValidate="ddlUDiceCode" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlUDiceCode">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>232201OBS01-BEO,BAROD</asp:ListItem>
                                <asp:ListItem>232201OBS02-BRC,BAROD</asp:ListItem>
                                <asp:ListItem>232202OBS01-BEO,NALKHEDA</asp:ListItem>
                                <asp:ListItem>232202OBS02-BRC,NALKHEDA</asp:ListItem>
                                <asp:ListItem>232203OBS01-BEO,SUSNER</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    <div class="col-md-2">
                            <label class="font-bold">Select Designation Type/पदनाम प्रकार का चयन करें<span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="a"
                                    ErrorMessage="Select Designation" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Designation !'></i>"
                                    ControlToValidate="ddlDesignation" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" OnSelectedIndexChanged="ddlDesignation_SelectedIndexChanged" AutoPostBack="true" ID="ddlDesignation">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Clerical</asp:ListItem>
                                <asp:ListItem Value="2">Teaching</asp:ListItem>
                                <asp:ListItem Value="3">Executive</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    <div runat="server" id="divDesignation" visible="false">
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr class="card-header">
                                            <th>Sr.No./क्र.सं.</th>
                                            <th>Designation/पद </th>
                                            <th>Sanction/सांप्रतिबंध </th>
                                            <th>Working /वर्किंग </th>
                                            <th>Vacant /रिक्त </th>
                                            <th>Surplus /अधिशेष </th>

                                        </tr>
                                        <tr>
                                            <td>1.</td>
                                            <td>Ardh Kaushal Karigar(SSW)</td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                        </tr>
                                        <tr>
                                            <td>2.</td>
                                            <td>School Mother</td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            <td>
                                                <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2" runat="server" id="divYear">
                        <div class="form-group">
                            <label class="font-bold">Select Financial Year/वित्तीय वर्ष चुनें<span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="a"
                                    ErrorMessage="Select Financial Year" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Financial Year !'></i>"
                                    ControlToValidate="ddlFinancialYear" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlFinancialYear">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>2021-22</asp:ListItem>
                                <asp:ListItem>2022-23</asp:ListItem>
                                <asp:ListItem>2023-24</asp:ListItem>
                                <asp:ListItem>2024-25</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4 mt-4" runat="server" id="btnSave">
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" CssClass="btn btn-outline-success w-lg btn-border" runat="server" Text="Search" OnClick="btnSubmit_Click" />
                            <a href="Rpt_OfficeReport.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="row form-group" id="dv_rpt" runat="server">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Office Details/कार्यालय विवरण</legend>
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
                        <div runat="server" id="divDesignation2" visible="true">
                            <div class="row align-items-end">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr class="card-header">
                                                <th>Sr No./क्र.सं.</th>
                                                <th>Office Type/कार्यालय का प्रकार</th>
                                                <th>U-Dice Code/यूडाइस कोड</th>
                                                <th>Designation Type/पदनाम प्रकार</th>
                                                <th>Sanction/प्रतिबंध</th>
                                                <th>Working/कार्यरत</th>
                                                <th>Vacant/खाली</th>
                                                <th>Surplus/आधिक्य</th>
                                            </tr>
                                            <tr>
                                                <td>1.</td>
                                                <td>BEO,BAROD</td>
                                                <td>232201OBS01-BEO,BAROD</td>
                                                <td>ADPC(RMSA)</td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            </tr>
                                            <tr>
                                                <td>2.</td>
                                                <td>BRC,BAROD</td>
                                                <td>232201OBS02-BRC,BAROD</td>
                                                <td>APC(RMSA)</td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            </tr>
                                        </table>
                                    </div>
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
</asp:Content>


