<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SingleTeacherSchool.aspx.cs" Inherits="mis_Report_SingleTeacherSchool" %>

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
                <h4 class="text-themecolor ">Single Teacher School Details Report</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">School Detail Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>Single Teacher School Details</legend>

                    <div class="row form-group">
                        <div class="col-md-3">
                            <label class="font-bold">Division Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlDivision" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlDistrict" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Block Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlBlock" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group<span style="color: red">*</span></label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="a"
                                        ErrorMessage="Select Management Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Name !'></i>"
                                        ControlToValidate="ddlManagementGrp" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="a"
                                        ErrorMessage="Select Management Details" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Details !'></i>"
                                        ControlToValidate="ddlmngmntgrpdtls" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="a"
                                        ErrorMessage="Select School Category" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Category !'></i>"
                                        ControlToValidate="ddlSchoolCat" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
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
                        <%--   </div>



                    <div class="row form-group">--%>



                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Category Details<span style="color: red">*</span></label>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolCatdtls">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>


                        <%-- <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Sankul</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="a"
                                        ErrorMessage="Select Sankul" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Sankul !'></i>"
                                        ControlToValidate="ddlSchoolDiseCode" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSankul">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>--%>



                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">School Dise Code<span style="color: red">*</span></label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="a"
                                        ErrorMessage="Select School Code" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Code !'></i>"
                                        ControlToValidate="ddlSchoolDiseCode" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolDiseCode">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
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

                        <%--
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">School Name</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="a"
                                        ErrorMessage="Select School Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>"
                                        ControlToValidate="ddlSchool" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchool">
                                    <asp:ListItem Value="0">All</asp:ListItem>
                                    <asp:ListItem>GOVT HSS AHAMDABAD</asp:ListItem>
                                    <asp:ListItem>GOVT HSS KHAJURI KALAN</asp:ListItem>
                                    <asp:ListItem>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</asp:ListItem>
                                    <asp:ListItem>GOVT HSS GUNGA</asp:ListItem>
                                    <asp:ListItem>M.P. CONVENT BADI</asp:ListItem>
                                    <asp:ListItem>GMS BERKHEDI BARAMAD GADHI</asp:ListItem>
                                    <asp:ListItem>UEGS KUSNAGAR AMGAWAN</asp:ListItem>
                                    <asp:ListItem>GGPS BAMULIYA DANGI</asp:ListItem>
                                    <asp:ListItem>GHSS BANGAWAN</asp:ListItem>
                                    <asp:ListItem>GAYANDEEP M S CHANDAN PIPALIYA</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>--%>



                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded" runat="server" Text="Search" OnClick="btnSubmit_Click" />


                                <a href="SingleTeacherSchool.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>

                    </div>
                </fieldset>
                <div class="row form-group" id="dv_rpt" runat="server">

                    <div class="col-md-12">

                        <fieldset>
                            <legend>Single Teacher School Details</legend>

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
                                        <table id="tbl1" runat="server" class="table table-bordered">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>District</th>
                                                <th>Single Teacher School No.</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Bhopal</td>
                                                <td><a href="#" onclick="showtbl('tbl2')">20</a></td>
                                                <td>5</td>
                                                <td>2</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Raisen</td>
                                                <td><a href="#" onclick="showtbl('tbl3')">10</a></td>
                                                <td>3</td>
                                                <td>1</td>
                                            </tr>
                                        </table>


                                        <table style="display: none" id="tbl2" class="table table-bordered">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Block</th>
                                                <th>Single Teacher School No.</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                            </tr>

                                            <tr>
                                                <td>2</td>
                                                <td>Berasiya</td>
                                                <td><a href="#" onclick="showtbl('tbl5')">8</a></td>
                                                <td>3</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Phanda</td>
                                                <td><a href="#" onclick="showtbl('tbl4')">12</a> </td>
                                                <td>2</td>
                                                <td>1</td>
                                            </tr>
                                        </table>

                                        <table style="display: none" id="tbl3" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Block</th>
                                                <th>Single Teacher School No.</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Badi</td>
                                                <td><a href="#" onclick="showtbl('tbl6')">7</a></td>
                                                <td>2</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Begamganj</td>
                                                <td><a href="#" onclick="showtbl('tbl7')">3</a></td>
                                                <td>1</td>
                                                <td>0</td>
                                            </tr>
                                        </table>

                                        <table style="display: none" id="tbl4" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Sankul</th>
                                                <th>Single Teacher School No.</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                            </tr>

                                            <tr>
                                                <td>1</td>
                                                <td>0512003007 - M.L.B. BHEL, BARKHEDA, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                                <td><a href="#" onclick="showtbl('tbl8')">1</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                            </tr>



                                            <tr>
                                                <td>2</td>
                                                <td>0502003027 - PHANDA, PRINCIPAL, GOVT. HS</td>
                                                <td>11</td>
                                                <td>0</td>
                                                <td>0</td>
                                            </tr>


                                        </table>

                                        <table style="display: none" id="tbl5" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Sankul</th>
                                                <th>Single Teacher School No.</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>0532003003 - GUNGA, BERASIA, PRINCIPAL, GOVT. HSS</td>
                                                <td><a href="#"  onclick="showtbl('tbl9')">1</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>0532003006 - BEO Berasiya</td>
                                                <td>8</td>
                                                <td>3</td>
                                                <td>1</td>
                                            </tr>

                                        </table>


                                        <table style="display: none" id="tbl6" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Sankul</th>
                                                <th>Single Teacher School No.</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>2912003045 - BADI- Govt. Girls H.S.S BADI</td>
                                                <td><a href="#" onclick="showtbl('tbl10')">1</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>2912003045 - BADI- Govt. Boys H.S.S BADI</td>
                                                <td>6</td>
                                                <td>3</td>
                                                <td>1</td>
                                            </tr>

                                        </table>

                                        <table style="display: none" id="tbl7" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Sankul</th>
                                                <th>Single Teacher School No.</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>2922003023 - BEGUMGANJ- Girls H.S.S. BEGUMGANJ</td>
                                                <td><a href="#" onclick="showtbl('tbl10')">1</a></td>
                                                <td>1</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>2922003023 - BEGUMGANJ- Boys H.S.S. BEGUMGANJ</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>1</td>
                                            </tr>
                                        </table>



                                        <table style="display: none" id="tbl8" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Employee Name</th>
                                                <th>Designation</th>
                                                <th>Panel</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                                <th>Present Pos ting Date</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Kamlesh</td>
                                                <td>Teacher</td>
                                                <td>SSS-3</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>15-June-2010</td>
                                            </tr>
                                        </table>


                                        <table style="display: none" id="tbl9" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Employee Name</th>
                                                <th>Designation</th>
                                                <th>Panel</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                                <th>Present Pos ting Date</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Ram</td>
                                                <td>Teacher</td>
                                                <td>SSS-3</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>20-August-2010</td>
                                            </tr>
                                        </table>


                                        <table style="display: none" id="tbl10" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Employee Name</th>
                                                <th>Designation</th>
                                                <th>Panel</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                                <th>Present Pos ting Date</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Ramesh</td>
                                                <td>Teacher</td>
                                                <td>SSS-3</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>15-June-2015</td>
                                            </tr>
                                        </table>


                                        <table style="display: none" id="tbl11" class="table table-bordered table-responsive">
                                            <tr class="card-header">
                                                <th>Sr. No</th>
                                                <th>Employee Name</th>
                                                <th>Designation</th>
                                                <th>Panel</th>
                                                <th>Handicapped</th>
                                                <th>Critical Illeness</th>
                                                <th>Present Pos ting Date</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Aakash</td>
                                                <td>Teacher</td>
                                                <td>SSS-3</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>21-July-2018</td>
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
        }</script>

</asp:Content>

