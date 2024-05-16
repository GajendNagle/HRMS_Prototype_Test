<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolSetupMaster.aspx.cs" Inherits="mis_Report_SchoolSetupMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">School Setup Master</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                    <li class="breadcrumb-item active">School Setup Report</li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-body">
                <fieldset>
                    <legend>School Setup Master</legend>
                    <div class="row">
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">Financial Year<span style="color: red">*</span></label>
                            <asp:DropDownList ID="FinancialYear" runat="server" CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>2024-25</asp:ListItem>
                                <asp:ListItem>2023-24</asp:ListItem>
                                <asp:ListItem>2022-23</asp:ListItem>
                                <asp:ListItem>2021-22</asp:ListItem>
                                <asp:ListItem>2020-21</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" AutoPostBack="true" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" ID="ddlDistrict">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                <asp:ListItem Value="2">Vidisha</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">Block Name</label>
                            <asp:DropDownList ID="ddlBlock" runat="server" AutoPostBack="true"
                                CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">
                                Management Group
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
                    </div>
                    <div class="row">
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">
                                Management Details
                            </label>
                            <asp:DropDownList ID="ddlMngmntGrpDtls" runat="server" CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="col-md-3 mt-3">
                            <label class="font-bold">School Category</label>
                            <asp:DropDownList runat="server" OnSelectedIndexChanged="ddlSchoolCategory_SelectedIndexChanged1" AutoPostBack="true" ID="ddlSchoolCategory" CssClass="form-control select2 fs-4">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">01-Primary School</asp:ListItem>
                                <asp:ListItem Value="2">02-Upper primary School</asp:ListItem>
                                <asp:ListItem Value="3">03-Secondary School</asp:ListItem>
                                <asp:ListItem vlaue="4">04-Higher Secondary School</asp:ListItem>
                                <asp:ListItem vlaue="5">05-Pre-Primary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">School Sub Category Details</label>
                            <asp:DropDownList runat="server" ID="ddlSchoolSubCateDtls" CssClass="form-control select2 fs-4">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">School/Dise</label>
                            <asp:DropDownList runat="server" ID="ddlSchool" CssClass="form-control select2 fs-4">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md mt-4 text-center">
                            <asp:Button Text="Search" runat="server" ID="btnSearch" class="btn btn-outline-success shadow btn-rounded" OnClick="btnSearch_Click" />
                            <a class="btn btn-outline-danger shadow btn-rounded m-3" href="SchoolSetupMaster.aspx">Clear</a>
                        </div>

                    </div>


                </fieldset>


                <fieldset runat="server" id="div_details" visible="false">
                    <legend>Details</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr class="card-header">
                                        <th style="width: 8%;">S. No.</th>
                                        <th>Subject</th>
                                        <th>Class 11/12</th>
                                        <th>Sanction Post</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Hindi</td>
                                        <td>
                                            <input class="form-control" value="50" /></td>
                                        <td>
                                            <input class="form-control" value="23" /></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>English</td>
                                        <td>
                                            <input class="form-control" value="50" /></td>
                                        <td>
                                            <input class="form-control" value="34" /></td>

                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Sans</td>
                                        <td>
                                            <input class="form-control" value="40" /></td>
                                        <td>
                                            <input class="form-control" value="20" /></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Urdu</td>
                                        <td>
                                            <input class="form-control" value="35" /></td>
                                        <td>
                                            <input class="form-control" value="30" /></td>


                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Physics</td>
                                        <td>
                                            <input class="form-control" value="45" /></td>
                                        <td>
                                            <input class="form-control" value="40" /></td>


                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Chemistry</td>
                                        <td>
                                            <input class="form-control" value="55" /></td>
                                        <td>
                                            <input class="form-control" value="50" /></td>

                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Maths</td>
                                        <td>
                                            <input class="form-control" value="70" /></td>
                                        <td>
                                            <input class="form-control" value="60" /></td>

                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Biology </td>
                                        <td>
                                            <input class="form-control" value="60" /></td>

                                        <td>
                                            <input class="form-control" value="40" /></td>
                                    </tr>

                                    <tr>
                                        <td>9</td>
                                        <td>History</td>
                                        <td>
                                            <input class="form-control" value="33" /></td>
                                        <td>
                                            <input class="form-control" value="20" /></td>

                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Political Science</td>
                                        <td>
                                            <input class="form-control" value="37" /></td>
                                        <td>
                                            <input class="form-control" value="33" /></td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Geography</td>
                                        <td>
                                            <input class="form-control" value="45" /></td>
                                        <td>
                                            <input class="form-control" value="40" /></td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>Economics</td>
                                        <td>
                                            <input class="form-control" value="45" /></td>
                                        <td>
                                            <input class="form-control" value="35" /></td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>Sociology</td>
                                        <td>
                                            <input class="form-control" value="36" /></td>
                                        <td>
                                            <input class="form-control" value="18" /></td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>Commerce</td>
                                        <td>
                                            <input class="form-control" value="36" /></td>
                                        <td>
                                            <input class="form-control" value="23" /></td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>Agriculture</td>
                                        <td>
                                            <input class="form-control" value="25" /></td>
                                        <td>
                                            <input class="form-control" value="22" /></td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>Home Science</td>
                                        <td>
                                            <input class="form-control" value="28" /></td>
                                        <td>
                                            <input class="form-control" value="14" /></td>
                                    </tr>
                                    <tr class="card-header">
                                        <td colspan="2">Total 11/12 class Enrollment Count</td>
                                        <td>690</td>
                                        <td>502</td>
                                    </tr>

                                </table>


                                <br />
                                <br />
                                <%--<div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr class="card-header">
                                            <th style="width: 8%;">S. No.</th>
                                            <th>Class 12</th>
                                            <th>Enrolment Count</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Hindi</td>
                                            <td>49</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>English</td>
                                            <td>50</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Sans</td>
                                            <td>44</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Urdu</td>
                                            <td>39</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Physics</td>
                                            <td>46</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Chemistry</td>
                                            <td>53</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Maths</td>
                                            <td>72</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>Biology </td>
                                            <td>58</td>
                                        </tr>

                                        <tr>
                                            <td>9</td>
                                            <td>History</td>
                                            <td>44</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>Political Science</td>
                                            <td>55</td>
                                        </tr>
                                        <tr>
                                            <td>11</td>
                                            <td>Geography</td>
                                            <td>65</td>
                                        </tr>
                                        <tr>
                                            <td>12</td>
                                            <td>Economics</td>
                                            <td>44</td>
                                        </tr>
                                        <tr>
                                            <td>13</td>
                                            <td>Sociology</td>
                                            <td>25</td>
                                        </tr>
                                        <tr>
                                            <td>14</td>
                                            <td>Commerce</td>
                                            <td>26</td>
                                        </tr>
                                        <tr>
                                            <td>15</td>
                                            <td>Agriculture</td>
                                            <td>25</td>
                                        </tr>
                                        <tr>
                                            <td>16</td>
                                            <td>Home Science</td>
                                            <td>54</td>
                                        </tr>
                                        <tr class="card-header">
                                            <td colspan="2">Total 12 class Enrollment Count</td>
                                            <td>749</td>
                                        </tr>
                                    </table>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </fieldset>



            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

