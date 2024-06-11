<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SchoolSetup.aspx.cs" Inherits="mis_HRMS_Rpt_SchoolSetup" %>

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
               
                     <li class="breadcrumb-item"><span>School Setup Report</span></li>
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
                  <h5 class="card-title">School Setup Report
                  </h5>
              </div>
          </div>
      </div>
      <div class="card-body">


 
        <div class="card-header card-border-info">
            <div class="row form-group m-2">
                <div class="col-md-3">
                    <label class="font-bold text-dark">OIS Type/<br />ओ.आई.एस प्रकार<span style="color: red">*</span></label>
                    <asp:DropDownList ID="ddlOISType" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlOISType_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                        <asp:ListItem Value="1">Office</asp:ListItem>
                        <asp:ListItem Value="2">Institute</asp:ListItem>
                        <asp:ListItem Value="3" Selected="True">School</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <%--<div class="card-body">
   --%>         <fieldset>
                <legend>School Setup Report</legend>
                <div class="row form-group">
                    <div class="col-md-3">
                        <label class="font-bold">Division Name/<br />संभाग का नाम <span style="color: red">*</span></label>
                        <asp:DropDownList ID="ddlDivision" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Gwalior</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">District Name/<br />
जिले का नाम<span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" AutoPostBack="true" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" ID="ddlDistrict">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Block Name/<br />विकासखण्ड का नाम</label>
                        <asp:DropDownList ID="ddlBlock" runat="server" AutoPostBack="true"
                            CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">
                            Management Group/<br />प्रबंधन समूह 
                        </label>
                        <asp:DropDownList ID="ddlMngmntGrp" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMngmntGrp_SelectedIndexChanged"
                            CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">Central Government</asp:ListItem>
                            <asp:ListItem Value="2">Government Aided</asp:ListItem>
                            <asp:ListItem Value="3">State Government</asp:ListItem>
                            <asp:ListItem Value="4">Private Unaided (Recognized)</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">
                            Management Details/<br />प्रबंधन विवरण 
                        </label>
                        <asp:DropDownList ID="ddlMngmntGrpDtls" runat="server" CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Category/<br />श्रेणी </label>
                        <asp:DropDownList runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" ID="ddlCategory" CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">Primary</asp:ListItem>
                            <asp:ListItem Value="2">Upper Primary</asp:ListItem>
                            <asp:ListItem Value="3">Secondary</asp:ListItem>
                            <asp:ListItem Value="4">Upper-Secondary</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3 ">
                        <label class="font-bold">Category Details/<br />
श्रेणी विवरण</label>
                        <asp:DropDownList runat="server" Disabled="true" ID="ddlCateDtls" CssClass="form-control ">
                            <%--<asp:ListItem Value="0">--Select--</asp:ListItem>--%>
                            <%--<asp:ListItem Value="1">1st to 5th </asp:ListItem>--%>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-weight-bold">School-Dise Code/<br />
स्कूल-डिस कोड<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
       <hr />
       <div class="col-md-12">
    <div class="form-group">
   <asp:Button  runat="server"  class="btn w-lg btn-success btn-border" OnClick="btnSave_Click" Text="View Details" ID="btnSave" />
           <a class="btn btn-outline-danger w-lg btn-border" href="Rpt_SchoolSetup.aspx">Clear</a>
    </div>
</div>
           


            <%--    <div class="row justify-content-center">
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <asp:Button runat="server" CssClass="btn btn-success btn-rounded" OnClick="btnSave_Click" Text="View Details" ID="btnSave" />
                        </div>
                    </div>
                </div>--%>

            </fieldset>


            <fieldset runat="server" id="div_details" visible="false">
                <legend>Details</legend>
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
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="2">No of Sanctioned Post</th>
                                    <th colspan="2">No of Working Post</th>
                                    <th colspan="2">No of Vacant Post</th>
                                    <th colspan="2">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Private Unaided (Recognized)</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>40</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>5</td>
                                    <td>5</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Gwalior</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Guna</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Kendriya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>55</td>
                                    <td>15</td>
                                    <td>5</td>
                                    <td>15</td>
                                    <td>10</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="divUpperPrimary" visible="false">
                <legend>Details</legend>
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
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="7" class="text-center">No of Sanctioned Post</th>
                                    <th colspan="7" class="text-center">No of Working Post</th>
                                    <th colspan="7" class="text-center">No of Vacant Post</th>
                                    <th colspan="7" class="text-center">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Jawahar Navodaya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>25</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Raisen</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Sagar</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Minority Affairs Dept.</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>32</td>
                                    <td>12</td>
                                    <td>8</td>
                                    <td>6</td>
                                    <td>2</td>
                                    <td>15</td>
                                    <td>6</td>
                                    <td>3</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>6</td>
                                    <td>2</td>
                                    <td>16</td>
                                    <td>5</td>
                                    <td>4</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="divSecondary" visible="false">
                <legend>Details</legend>
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
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="7" class="text-center">No of Sanctioned Post</th>
                                    <th colspan="7" class="text-center">No of Working Post</th>
                                    <th colspan="7" class="text-center">No of Vacant Post</th>
                                    <th colspan="7" class="text-center">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Private Unaided (Recognized)</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>25</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Gwalior</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Guna</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Jawahar Navodaya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>65</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="divUprSec" visible="false">
                <legend>Details</legend>
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
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="7" class="text-center">No of Sanctioned Post</th>
                                    <th colspan="7" class="text-center">No of Working Post</th>
                                    <th colspan="7" class="text-center">No of Vacant Post</th>
                                    <th colspan="7" class="text-center">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Kendriya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>25</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Gwalior</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Guna</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Minority Affairs Dept.</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>15</td>
                                    <td>15</td>
                                    <td>5</td>
                                    <td>15</td>
                                    <td>10</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

