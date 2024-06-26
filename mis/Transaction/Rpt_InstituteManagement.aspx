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
                          <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#RptOISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchoolDirectory')">
                              <span>OIS Setup Reports</span></a>
                      </li>

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
                  <h5 class="card-title">Institute Report Detail/संस्थान रिपोर्ट विवरण
                  </h5>
              </div>
          </div>
      </div>
      <div class="card-body">


            <fieldset>
                <legend>Institute Report Detail/संस्थान रिपोर्ट विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>Select Division Name<br /> संभाग का नाम चुनें<span style="color: red">*</span> </label>

                        <asp:DropDownList runat="server" ID="ddlDivistionName" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>Select District Name<br /> जिले का नाम चुनें<span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" ID="ddlDistrictName" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrictName_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Raisen</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>Select Block Name<br /> ब्लॉक का नाम चुनें<span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" ID="ddlBlockName" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                            <label>Select Institute Type<br />संस्थान का प्रकार चुनें<span style="color: red;"> *</span></label>
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
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Institute U-Dise Code<br />संस्थान यू-डाइस कोड चुनें<span style="color: red;">*</span></label>
                        
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
                            <label>Select Management Group<br />प्रबंधन समूह का चयन करें<span style="color: red;">*</span></label>
                            
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
                            <label>Select Management Group Details<br />प्रबंधन समूह विवरण चुनें<span style="color: red;">*</span></label>
                         
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroupDetails">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Designation type<br />पद प्रकार का चयन करें<span style="color: red;">*</span></label>
                         

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
                            <label> Select financial year<br />वित्तीय वर्ष चुनें<span style="color: red;">*</span></label>
                         
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
                    <div class="col-md-12" runat="server" id="btnSave">
                        <div class="form-group">
                            <asp:Button runat="server" class="btn w-lg btn-outline-success btn-border" Text="search" OnClick="Unnamed_Click2" ID="btnSubmit" />
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
                <legend>Detail/विवरण</legend>
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
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <table id="tbl2" class="table table-bordered table-responsive-lg text-center" runat="server">
                            <thead>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                    <th>Sr.No./क्र.सं.</th>
                                    <th>Designation/पद </th>
                                    <th>Sanchion Post/सांचियोन पोस्ट</th>
                                    <th>Working Post/वर्किंग पोस्ट</th>
                                    <th>Vacant Post/रिक्त पद</th>
                                    <th>Surplus Post/अधिशेष पोस्ट</th>
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
                <legend>Detail/विवरण</legend>
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
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <table id="tbl3" class="table table-bordered table-responsive-lg text-center" runat="server">
                            <thead>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                    
                                    <th>Sr.No./क्र.सं.</th>
                                    <th>Designation/पद </th>
                                    <th>Sanchion Post/सांचियोन पोस्ट</th>
                                    <th>Working Post/वर्किंग पोस्ट</th>
                                    <th>Vacant Post/रिक्त पद</th>
                                    <th>Surplus Post/अधिशेष पोस्ट</th>
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
                <legend>Detail/विवरण</legend>
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
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                            <thead>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                    <th>Sr.No./क्र.सं.</th>
                                    <th>Designation/पद </th>
                                    <th>Sanchion Post/सांचियोन पोस्ट</th>
                                    <th>Working Post/वर्किंग पोस्ट</th>
                                    <th>Vacant Post/रिक्त पद</th>
                                    <th>Surplus Post/अधिशेष पोस्ट</th>
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
                <legend>Detail/विवरण</legend>
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
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <table id="Table2" class="table table-bordered table-responsive-lg text-center" runat="server">
                            <thead>
                                <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                     <th>Sr.No./क्र.सं.</th>
                                    <th>Designation/पद </th>
                                    <th>Sanchion Post/सांचियोन पोस्ट</th>
                                    <th>Working Post/वर्किंग पोस्ट</th>
                                    <th>Vacant Post/रिक्त पद</th>
                                    <th>Surplus Post/अधिशेष पोस्ट</th>
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

