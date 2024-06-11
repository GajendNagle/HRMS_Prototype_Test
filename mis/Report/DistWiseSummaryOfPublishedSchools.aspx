<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistWiseSummaryOfPublishedSchools.aspx.cs" Inherits="mis_Report_DistWiseSummaryOfPublishedSchools" %>

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
    <a href="#SchoolDirectoryDashboard" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
</li>
<li class="breadcrumb-item">
    <a href="#OISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
        <span>OIS Setup Reports</span></a>
</li>
                     <li class="breadcrumb-item">
    <a href="#Reports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
        <span>Reports</span></a>
</li>
                     <li class="breadcrumb-item"><span>District-Wise Publish Schools</span></li>
                 </ol>
             </div>
         </div>
     </div>
 </div>

 
   <%--  <div class="row page-titles mb-4">--%>
    
        
   <div class="card card-border-primary">
       <div class="card-header">
           <div class="row align-items-end">
               <div class="col-lg-6">
                   <h5 class="card-title">District-Wise Publish Schools
                   </h5>
               </div>
           </div>
       </div>
       <div class="card-body">


                <fieldset>
                    <legend>District-Wise Publish Schools</legend>
                    <div class="row form-group">
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlDistrict" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                <asp:ListItem Value="2">Raisen</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group</label>
                                <span class="fa-pull-right"></span>
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
                                <label class="font-bold">Management Group Detail</label>
                                <span class="fa-pull-right"></span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlmngmntgrpdtls">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Category</label>
                                <span class="fa-pull-right"></span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" OnSelectedIndexChanged="ddlSchoolCat_SelectedIndexChanged" AutoPostBack="true" ID="ddlSchoolCat">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem>Primary School</asp:ListItem>
                                    <asp:ListItem>Upper primary School</asp:ListItem>
                                    <asp:ListItem>Secondary School</asp:ListItem>
                                    <asp:ListItem>Higher Secondary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Category Details</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolCatdtls">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12">
    <div class="form-group">
<asp:Button Text="District-Wise Publish Schools" runat="server" ID="Button1" class="btn w-lg btn-success btn-border" ValidationGroup="a" OnClick="btnSearch_Click1" />
           <a class="btn btn-outline-danger w-lg btn-border" href="DistWiseSummaryOfPublishedSchools.aspx">Clear</a>
    </div>
</div>
        
                     <%--   <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <asp:Button Text="District-Wise Publish Schools" runat="server" ID="btnSearch" class="btn w-lg btn-success btn-border" ValidationGroup="a" OnClick="btnSearch_Click1" />
                            </div>
                        </div>
                    </div>--%>
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
                                                <th colspan="4">New Schools to be opened</th>
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
