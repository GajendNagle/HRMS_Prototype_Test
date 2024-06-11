<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_InstituteManagement.aspx.cs" Inherits="Rpt_InstituteManagement" %>

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
    <a href="#SchoolDirectoryDashboard" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
</li>
<li class="breadcrumb-item">
    <a href="#OISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('OISSetup')">
        <span>OIS Setup Reports</span></a>
</li>
<%--                     <li class="breadcrumb-item">
    <a href="#Reports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Reports')">
        <span>Reports</span></a>
</li>--%>
                     <li class="breadcrumb-item"><span>Institute Report</span></li>
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
                  <h5 class="card-title">Institute Report
              </div>
          </div>
      </div>
      <div class="card-body">

 
                <fieldset>
                    <legend>Institute Report Detail</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="font-bold">Division Name<span class="fa-pull-right" style="color: red">*</span> </label>

                            <asp:DropDownList runat="server" ID="ddlDivistionName" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlDistrictName" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrictName_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Block Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlBlockName" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Institute Type<span style="color: red;"> *</span></label>
                                <asp:DropDownList CssClass="form-select select2" ReadOnly="true" runat="server">
                                    <asp:ListItem>-Select-</asp:ListItem>
                                    <asp:ListItem>Maharshi Pathanjali Sanskrit Sansthan,Bhopal</asp:ListItem>

                                    <asp:ListItem>DIET,Bhopal</asp:ListItem>
                                    <asp:ListItem>Other  Institute/ College,Bhopal</asp:ListItem>
                                    <asp:ListItem>Libraives,Bhopal</asp:ListItem>
                                    <asp:ListItem>Kasturba Gandhi Balika  Vidyalaya,Bhopal</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Institute/ U-Dise Code</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolDiseCode">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>234502OBS02-Maharshi Pathanjali Sanskrit Sansthan,Bhopal</asp:ListItem>
                                    <asp:ListItem>234507OBS01-DIET,Bhopal</asp:ListItem>
                                    <asp:ListItem>234510OBT01-Other  Institute/ College,Bhopal</asp:ListItem>
                                    <asp:ListItem>232807OBS02-Libraives,Bhopal</asp:ListItem>
                                    <asp:ListItem>232816OBS02-Kasturba Gandhi Balika  Vidyalaya,Bhopal</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroup" OnSelectedIndexChanged="ddlManagementGroup_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>State Government</asp:ListItem>
                                    <asp:ListItem>Central Government</asp:ListItem>
                                    <asp:ListItem>Government Aided</asp:ListItem>
                                    <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group Details</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroupDetails">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Designation type</label>
                                <span style="color: red;">*</span>

                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" ErrorMessage="Select Designation " InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDesignation" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlDesignation">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>Teaching</asp:ListItem>
                                    <asp:ListItem>Executive</asp:ListItem>
                                    <asp:ListItem>Ministry</asp:ListItem>
                                    <asp:ListItem>Clerical</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">financial year</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="dropdownlist1">
                                    <asp:ListItem Value="0">--select-</asp:ListItem>
                                    <asp:ListItem>2019-2020</asp:ListItem>
                                    <asp:ListItem>2020-2021</asp:ListItem>
                                    <asp:ListItem>2021-2022</asp:ListItem>
                                    <asp:ListItem>2022-2023 </asp:ListItem>
                                    <asp:ListItem>2023-2024</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <hr />
                                                       <div class="col-md-12"  runat="server" id="btnSave">
    <div class="form-group">
   <asp:Button  runat="server"  class="btn w-lg btn-success btn-border" Text="search" OnClick="Unnamed_Click2" ID="btnSubmit" />
           <a class="btn btn-outline-danger w-lg btn-border" href="Rpt_InstituteManagement.aspx">Clear</a>
    </div>
</div>
                       <%-- <div class="col-md-3 text-center mt-4">
                            <div class="form-group">
                                <asp:Button runat="server" class="alert-save btn btn-success btn-rounded" Text="search" OnClick="Unnamed_Click2" />
                                <a href="Rpt_InstituteManagement.aspx" class="btn btn-danger  btn-rounded">clear</a>
                            </div>
                        </div>--%>
                    </div>
                </fieldset>
                <br />
                <fieldset id="show" runat="server" visible="false">
                    <legend>Detail</legend>
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
                                <table id="tbl2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                  
                </fieldset>
                <br />
                <fieldset id="show1" runat="server" visible="false">
                    <legend>Detail</legend>
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
                                <table id="tbl3" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Block MIS Coordinator</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                   
                </fieldset>
                <br />
                <fieldset id="show2" runat="server" visible="false">
                    <legend>Detail</legend>
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
                                <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Samvida Hostal Adhikshak</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    
                </fieldset>
                <br />
                <fieldset id="show3" runat="server" visible="false">
                    <legend>Detail</legend>
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
                                <table id="Table2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Ardh Kushal Karigar(SSW)</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                
                </fieldset>
                <div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

