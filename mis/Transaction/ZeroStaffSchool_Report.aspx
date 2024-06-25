<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ZeroStaffSchool_Report.aspx.cs" Inherits="mis_Transaction_ZeroStaffSchool_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
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
                    <%--                     <li class="breadcrumb-item">
    <a href="#Reports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Reports')">
        <span>Reports</span></a>
</li>--%>
                    <li class="breadcrumb-item"><span>Zero Staff School Report</span></li>
                </ol>
            </div>
        </div>
    </div>


    <%--  <div class="row page-titles mb-4">--%>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h5 class="card-title">Zero Staff School Report/जीरो स्टाफ स्कूल रिपोर्ट</h5>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Staff Details/स्टाफ विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District Name<br />
                                जिले का नाम<span style="color: red">*</span></label>
                            <span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                    ErrorMessage="Select District Name" InitialValue="0" ForeColor="Red"
                                    Text="<i class='fa fa-exclamation-circle' title='Select District Name !'></i>"
                                    ControlToValidate="ddlDistrict" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict" AutoPostBack="true">
                                <asp:ListItem Value="0">--Bhopal--</asp:ListItem>
                                <asp:ListItem Value="1">Chhatarpur</asp:ListItem>
                                <asp:ListItem Value="2">Betul</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Block Name<br />
                                विकासखण्ड का नाम</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" AutoPostBack="true" ID="ddlBlock">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Seoni</asp:ListItem>
                                <asp:ListItem>Chhapara</asp:ListItem>
                                <asp:ListItem>Kurai</asp:ListItem>
                                <asp:ListItem>Barghat</asp:ListItem>
                                <asp:ListItem>Ghansor</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Management Group
                                <br />
                                प्रबंधन समूह </label>

                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGrp" AutoPostBack="true">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
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
                            <label>Management Details<br />
                                प्रबंधन विवरण  </label>

                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolManagementDtls">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Category<br />
                                श्रेणी</label>

                            <asp:DropDownList CssClass="form-control select2" runat="server" AutoPostBack="true" ID="ddlSchoolCat">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
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
                                Category Details<br />
                                श्रेणी विवरण</label>
                            <asp:DropDownList class="form-control select2" ID="ddlCategarydtl" runat="server">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12" runat="server" id="btnSave">
                        <div class="form-group">
                            <asp:Button runat="server" class="btn w-lg btn-success btn-border" Text="Save" ID="btnSubmit" />
                            <a class="btn btn-outline-danger w-lg btn-border" href="ZeroStaffSchool_Report.aspx">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div class="row form-group" id="dv_rpt" runat="server">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Zero Staff School Details/शून्य स्टाफ स्कूल विवरण</legend>
                        <div class="row">

                            <div class="col-md-12">
                                <div class="table-responsive">

                              

                                <%--table district Start--%>

                                <table class="table table-bordered " id="tblDistrict">
                                    <thead>
                                        <tr style="white-space:nowrap;">
                                            <th>Sr. No
                                                <br />
                                                क्र. संख्या</th>
                                            <th>District
                                                <br />
                                                जिला</th>
                                            <th>Block
                                                <br />
                                                ब्लॉक</th>
                                            <th>Management Group
                                                <br />
                                                प्रबंधन समूह</th>
                                            <th>Management Details
                                                <br />
                                                प्रबंधन विवरण</th>
                                            <th>Category Details
                                                <br />
                                                श्रेणी विवरण</th>
                                            <th>School Name
                                                <br />
                                                स्कूल का नाम</th>
                                            <th>Total Enrollment
                                                <br />
                                                कुल नामांकन</th>
                                            <th>Sanction Teachers
                                                <br />
                                                स्वीकृत शिक्षक</th>
                                            <th>Currently Working
                                                <br />
                                                वर्तमान में काम कर रहे</th>
                                        </tr>

                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Seoni</td>
                                        <td>Central Government</td>
                                        <td>Details</td>
                                        <td>Secondary School</td>
                                        <td>23510807601 PS RAIPURIYA</td>
                                        <td>100</td>
                                        <td>55</td>
                                        <td>62</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Raisen</td>
                                        <td>Seoni</td>
                                        <td>State Government</td>
                                        <td>Details</td>
                                        <td>Primary School</td>
                                        <td>23510807601 BARAI M. S.</td>
                                        <td>100</td>
                                        <td>55</td>
                                        <td>62</td>
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
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

