<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistWiseSummaryOfPublishedSchools.aspx.cs" Inherits="mis_Report_DistWiseSummaryOfPublishedSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        a {
            color: blue;
        }
        /*        tr{
            background-color:green;
        }*/
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">District-Wise Publish Schools</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item active">District-Wise Publish Schools</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>District-Wise Publish Schools</legend>

                    <div class="row ">

                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <%--<asp:RequiredFieldValidator ID="rfvDistrictName" ErrorMessage="Select District Name" ControlToValidate="ddlDistrict" runat="server" ValidationGroup="a" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Name !'></i>" Display="Dynamic" />--%>
                            <asp:DropDownList runat="server" ID="ddlDistrict" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                <asp:ListItem Value="2">Raisen</asp:ListItem>
                            </asp:DropDownList>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group<span style="color: red">*</span></label>
                                <span class="fa-pull-right">
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="a"
                                        ErrorMessage="Select Management Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Name !'></i>"
                                        ControlToValidate="ddlManagementGrp" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>--%>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" OnSelectedIndexChanged="ddlManagementGrp_SelectedIndexChanged" AutoPostBack="true" runat="server" ID="ddlManagementGrp">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem>Central Government</asp:ListItem>
                                    <asp:ListItem>Government Aided</asp:ListItem>
                                    <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                    <asp:ListItem>State Government</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group Detail<span style="color: red">*</span></label>
                                <span class="fa-pull-right">
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="a"
                                        ErrorMessage="Select Management Details" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Details !'></i>"
                                        ControlToValidate="ddlmngmntgrpdtls" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>--%>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlmngmntgrpdtls">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>



                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Category<span style="color: red">*</span></label>
                                <span class="fa-pull-right">
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="a"
                                        ErrorMessage="Select Category" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Category !'></i>"
                                        ControlToValidate="ddlSchoolCat" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>--%>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" OnSelectedIndexChanged="ddlSchoolCat_SelectedIndexChanged" AutoPostBack="true" ID="ddlSchoolCat">
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
                                <label>Category Details<span style="color: red">*</span></label>
                                <%--<asp:RequiredFieldValidator ValidationGroup="a" ErrorMessage="Select Category Details" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Category !'></i>" Display="Dynamic" ControlToValidate="ddlSchoolCatdtls" runat="server" />--%>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolCatdtls">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>


                        <%--<div class="row text-center">--%>
                        <div class="col-md-4 m-5" style="margin-left: 15%!important;">
                            <div class="form-group">
                                <asp:Button Text="District-Wise Publish Schools" runat="server" ID="btnSearch" class="btn btn-success shadow" ValidationGroup="a" OnClick="btnSearch_Click1" />
                            </div>
                        </div>
                        <%--</div>--%>
                    </div>


                </fieldset>
                <div class="row form-group" id="dv_rpt" visible="false" runat="server">

                    <div class="col-md-12">

                        <fieldset>
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
                                    <div class=" table-responsive">
                                        <table id="tbl1" runat="server" class="table text-center table-bordered">
                                            <tr class="card-header">
                                                <th></th>
                                                <th></th>
                                                <th colspan="2">New Schools to be opened</th>
                                                <th colspan="2">Schools to be Merged</th>
                                                <th colspan="2">Schools to be Closed</th>
                                                <th colspan="2">Schools to be Update/Upgrade</th>
                                            </tr>
                                            <tr>
                                                <th>Sr. No</th>
                                                <th>District</th>
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
                                                <td><a href="BlockWiseSummaryOfPublishedSchools.aspx">Bhopal</a></td>
                                                <td>20</td>
                                                <td>15</td>
                                                <td>10</td>
                                                <td>4</td>
                                                <td>4</td>
                                                <td>0</td>
                                                <td>6</td>
                                                <td>4</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td><a href="BlockWiseSummaryOfPublishedSchools.aspx">Raisen</a></td>
                                                <td>10</td>
                                                <td>8</td>
                                                <td>7</td>
                                                <td>3</td>
                                                <td>6</td>
                                                <td>4</td>
                                                <td>3</td>
                                                <td>0</td>
                                            </tr>
                                            <tr class="card-header">
                                                <%--<th></th>--%>
                                                <th colspan="2">TOTAL</th>
                                                <th>30</th>
                                                <th>23</th>
                                                <th>17</th>
                                                <th>7</th>
                                                <th>10</th>
                                                <th>4</th>
                                                <th>9</th>
                                                <th>4</th>
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
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="server">
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
