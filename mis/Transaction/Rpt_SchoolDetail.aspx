<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SchoolDetail.aspx.cs" Inherits="mis_Transaction_Rpt_SchoolDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">


    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">School Report Card</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                        <li class="breadcrumb-item active">School Report Card</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <label class="font-weight-bold">DISE Code<span style="color: red">*</span></label>
                        <input type="text" class="form-control" placeholder="23510817802" />
                    </div>
                    <div class="col-md-6">
                        <label class="font-weight-bold">Confirm DISE Code<span style="color: red">*</span></label>
                        <input type="text" class="form-control" placeholder="23510817802" />
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-12 mt-4">
                        <div class="form-group">
                            <asp:Button runat="server" CssClass="btn btn-success btn-rounded" OnClick="btnSave_Click" Text="View Details" ID="btnSave" />
                        </div>
                    </div>
                </div>
                <div class="row form-group" id="dv_rpt" runat="server">
                    <div class="row mt-2">
                        <div class="col-md-4">
                            <label class="font-weight-bold">District Name<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Bhopal</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-weight-bold">Block Name<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Berasia</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-bold">
                                Management Group<span style="color: red">*</span>
                            </label>

                            <asp:TextBox runat="server" CssClass="form-control">Central Government</asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-4">
                            <label class="font-bold">
                                Management Details<span style="color: red">*</span>
                            </label>
                            <%--<asp:DropDownList ID="ddlMngmntGrpDtls" runat="server" CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>--%>
                            <asp:TextBox runat="server" CssClass="form-control">Jawahar Navodaya Vidyalaya</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-weight-bold">Cateogry<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Primary to Higher Secondary School</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-weight-bold">Cateogry Details<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Class 1 to 12</asp:TextBox>
                        </div>
                        <div class="row ms-1 mt-2">
                            <div class="col-md-4">
                                <label class="font-weight-bold">Urban/Rural<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control">Urban</asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="font-weight-bold">Special School<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control">Yes</asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="font-weight-bold">School-Dise<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control">JNV-23510817802</asp:TextBox>
                            </div>
                        </div>
                        <div runat="server" class="mt-4" id="divTables" visible="false">
                            <fieldset>
                                <legend>Enrollments in the Current Year</legend>
                                <%--<h5 class="fw-normal">Enrollments in Current Year</h5>--%>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr class="card-header text-center">
                                                    <th>Sr. No.</th>
                                                    <th>1st - 5th</th>
                                                    <th>6th - 10th</th>
                                                    <th>9th - 10th</th>
                                                    <th>11th - 12th</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>55</td>
                                                    <td>88</td>
                                                    <td>65</td>
                                                    <td>60</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>85</td>
                                                    <td>33</td>
                                                    <td>45</td>
                                                    <td>58</td>
                                                </tr>
                                                <tr>
                                                    <td class="fw-bold">Total Enrollment</td>
                                                    <td class="fw-bold">140</td>
                                                    <td class="fw-bold">121</td>
                                                    <td class="fw-bold">110</td>
                                                    <td class="fw-bold">118</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>


                            <fieldset class="mt-5">
                                <legend>Active Employees Status</legend>
                                <%--                        <h5 class="fw-normal">Active Employees Panel</h5>--%>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr class="card-header">
                                                    <th>Sr. No.</th>
                                                    <th>Employee</th>
                                                    <th>Name</th>
                                                    <th>Present Posting Date</th>
                                                    <th>Designation</th>
                                                    <th>Panel</th>
                                                    <th>Subject</th>
                                                    <th>Status</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>BD1110</td>
                                                    <td>Santoshi Soni</td>
                                                    <td>03/10/2018</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td></td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>BD1111</td>
                                                    <td>Saraswati Sahu</td>
                                                    <td>03/10/2018</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td></td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>BD1116</td>
                                                    <td>Birendra Kumar Jain</td>
                                                    <td>03/10/2018</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td></td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>BD1211</td>
                                                    <td>Harinarayan Tiwari</td>
                                                    <td>10/01/2019</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>SSS-2 Sanskrit</td>
                                                    <td>Sanskrit-MS Teacher</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>BD1217</td>
                                                    <td>Ram Dayal Raikwar</td>
                                                    <td>01/07/2018</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td></td>
                                                    <td>General</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>BD1969</td>
                                                    <td>Mahindra Kumar Ahiwar</td>
                                                    <td>14/07/2009</td>
                                                    <td>Principal HSS</td>
                                                    <td>PR-HSS</td>
                                                    <td></td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td>BD2633</td>
                                                    <td>Ganesh Prasad Soni</td>
                                                    <td>23/10/2022</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>SSS-2 Social Science</td>
                                                    <td>Social Science- MS Teacher</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>8</td>
                                                    <td>BT6961</td>
                                                    <td>Premnarayan Malviya</td>
                                                    <td>08/06/2010</td>
                                                    <td>Samvida Shikshak-2</td>
                                                    <td>SSS-2 Maths</td>
                                                    <td>Maths-MS Teacher</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>9</td>
                                                    <td>BX9992</td>
                                                    <td>Rajesh Raikwar</td>
                                                    <td>03/10/2018</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td></td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>10</td>
                                                    <td>BY1685</td>
                                                    <td>Brajesh Raikwar</td>
                                                    <td>03/10/2018</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td></td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>11</td>
                                                    <td>BY3335</td>
                                                    <td>Jeeban Lal Ahirwar</td>
                                                    <td>29/12/2016</td>
                                                    <td>Ucch Madhyamik Shikshak</td>
                                                    <td>SSS-1 Sociology</td>
                                                    <td>Civics(HS/HSS Teachers)</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>12</td>
                                                    <td>BZ2439</td>
                                                    <td>Bharat Lal Rajpoot</td>
                                                    <td>03/10/2018</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td></td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>13</td>
                                                    <td>CB9373</td>
                                                    <td>Bhupendra Balmiki</td>
                                                    <td>06/11/2021</td>
                                                    <td>Ucch Madhyamik Shikshak</td>
                                                    <td>SSS-1 Geography</td>
                                                    <td>Geography-HS/HSS Teachers</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>14</td>
                                                    <td>CB9376</td>
                                                    <td>Ram Naresh Yadav</td>
                                                    <td>06/11/2021</td>
                                                    <td>Ucch Madhyamik Shikshak</td>
                                                    <td>SSS-1 Sanskrit </td>
                                                    <td>Sanskrit(HS/HSS Teachers)</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>15</td>
                                                    <td>CB9382</td>
                                                    <td>Vijay Chaturvadi</td>
                                                    <td>06/11/2021</td>
                                                    <td>Ucch Madhyamik Shikshak</td>
                                                    <td>SSS-1 Economics</td>
                                                    <td>Economics(HS/HSS Teachers)</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>16</td>
                                                    <td>CC2552</td>
                                                    <td>Suresh Ahirwar</td>
                                                    <td>15/03/2022</td>
                                                    <td>Ucch Madhyamik Shikshak</td>
                                                    <td>SSS-1 Hindi</td>
                                                    <td>Hindi(HS/HSST)</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>17</td>
                                                    <td>CD2524</td>
                                                    <td>Vibha Yadav</td>
                                                    <td>30/03/2023</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>SSS-2 Maths</td>
                                                    <td>Maths-MS Teachers</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>18</td>
                                                    <td>CD2526</td>
                                                    <td>Mery Kujur</td>
                                                    <td>30/03/2023</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>SSS-2 Hindi</td>
                                                    <td>Hindi-MS Teachers</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>19</td>
                                                    <td>CD2527</td>
                                                    <td>Rani Bansal</td>
                                                    <td>03/10/20</td>
                                                    <td>Ucch Madhyamik Shikshak</td>
                                                    <td>SSS-1 Sanskrit</td>
                                                    <td>Sanskrit(HS/HSS Teacher)</td>
                                                    <td>Active</td>
                                                </tr>
                                                <tr>
                                                    <td>20</td>
                                                    <td>CD3227</td>
                                                    <td>Sadhana Damor</td>
                                                    <td>30/03/2023</td>
                                                    <td>Ucch Madhyamik Shikshak</td>
                                                    <td>SSS-1 Hindi</td>
                                                    <td>Hindi(HS/HSS Teachers)</td>
                                                    <td>Active</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>


                            <fieldset class="mt-5">
                                <legend>Vacancy Status in School</legend>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr class="card-header">
                                                    <th>Sr. No.</th>
                                                    <th>Panel</th>
                                                    <th>Post Code</th>
                                                    <th>Sanctioned Posts</th>
                                                    <th>Working</th>
                                                    <th>Vacant</th>
                                                    <th>Surplus</th>
                                                    <th>Remarks</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>SSS-1 Hindi</td>
                                                    <td>2686558</td>
                                                    <td>5</td>
                                                    <td>4</td>
                                                    <td>1</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>SSS-1 English</td>
                                                    <td>2686565</td>
                                                    <td>7</td>
                                                    <td>3</td>
                                                    <td>4</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>SSS-1 Sanskrit</td>
                                                    <td>2686571</td>
                                                    <td>6</td>
                                                    <td>7</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">1</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>SSS-1 Urdu</td>
                                                    <td>2686577</td>
                                                    <td>10</td>
                                                    <td>9</td>
                                                    <td>1</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>SSS-1 Physics</td>
                                                    <td>2686581</td>
                                                    <td>12</td>
                                                    <td>12</td>
                                                    <td>0</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>SSS-1 Chemistry</td>
                                                    <td>2686584</td>
                                                    <td>8</td>
                                                    <td>8</td>
                                                    <td>0</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td>SSS-1 Maths</td>
                                                    <td>2686559</td>
                                                    <td>9</td>
                                                    <td>10</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">1</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>8</td>
                                                    <td>SSS-1 Biology</td>
                                                    <td>2686562</td>
                                                    <td>8</td>
                                                    <td>10</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">2</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>9</td>
                                                    <td>SSS-1 History</td>
                                                    <td>2686567</td>
                                                    <td>9</td>
                                                    <td>10</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">1</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>10</td>
                                                    <td>SSS-1 Geography</td>
                                                    <td>2686570</td>
                                                    <td>5</td>
                                                    <td>4</td>
                                                    <td>1</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>11</td>
                                                    <td>SSS-1 Sociology</td>
                                                    <td>2686573</td>
                                                    <td>7</td>
                                                    <td>10</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">3</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>12</td>
                                                    <td>SSS-1 Commerce</td>
                                                    <td>2686575</td>
                                                    <td>9</td>
                                                    <td>8</td>
                                                    <td>1</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>13</td>
                                                    <td>SSS-1 Agriculture</td>
                                                    <td>2686579</td>
                                                    <td>12</td>
                                                    <td>11</td>
                                                    <td>1</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>14</td>
                                                    <td>SSS-2 Hindi</td>
                                                    <td>2686580</td>
                                                    <td>11</td>
                                                    <td>13</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">2</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>15</td>

                                                    <td>SSS-2 English</td>
                                                    <td>2686569</td>
                                                    <td>15</td>
                                                    <td>10</td>
                                                    <td>5</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>16</td>
                                                    <td>SSS-2 Sanskrit</td>
                                                    <td>2686556</td>
                                                    <td>10</td>
                                                    <td>15</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">5</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>17</td>
                                                    <td>SSS-2 Urdu</td>
                                                    <td>2686578</td>
                                                    <td>7</td>
                                                    <td>3</td>
                                                    <td>4</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>18</td>
                                                    <td>SSS-2 Maths</td>
                                                    <td>2686566</td>
                                                    <td>10</td>
                                                    <td>6</td>
                                                    <td>4</td>
                                                    <td style="color: #c258ff">0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>19</td>
                                                    <td>SSS-2 Science</td>
                                                    <td>2686582</td>
                                                    <td>8</td>
                                                    <td>12</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">4</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>20</td>
                                                    <td>SSS-2 Social Science</td>
                                                    <td>2686576</td>
                                                    <td>10</td>
                                                    <td>12</td>
                                                    <td>0</td>
                                                    <td style="color: #fa382b" class="fw-bold fs-4">2</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>


                            <fieldset class="mt-5">
                                <legend>Employee History</legend>
                                <%--                        <h5 class="fw-normal">Total Employees in School</h5>--%>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr class="card-header">
                                                    <th>Sr. No.</th>
                                                    <th>Employee Code</th>
                                                    <th>Employee Name</th>
                                                    <th>Designation</th>
                                                    <th>Panel</th>
                                                    <th>Present Posting Date</th>
                                                    <th>DOB</th>
                                                    <th>Age</th>
                                                    <th>Stop Payment Reason Code</th>
                                                    <th>Stop Payment Reason</th>
                                                    <th>Stop By</th>
                                                    <th>Status</th>
                                                    <th>Remark</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>BD1110</td>
                                                    <td>Santoshi Soni</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td>30/10/2018</td>
                                                    <td>12/12/1967</td>
                                                    <td>56</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>BD1111</td>
                                                    <td>Saraswati Sahu</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td>03/10/2018</td>
                                                    <td>24/12/1968</td>
                                                    <td>55</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>4202003011A[BAL-PRIN GBHSS KHARGAPUR]Reason:Stop Payments Date:05-jul-2015 09:49:00 PM</td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>BD1116</td>
                                                    <td>Birendra Kumar Jain</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td>03/10/2018</td>
                                                    <td>14/05/1973</td>
                                                    <td>50</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>BD1211</td>
                                                    <td>Harinarayan Tiwari</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>SSS-2 Sanskrit</td>
                                                    <td>10/01/2019</td>
                                                    <td>15/07/1966</td>
                                                    <td>57</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>BD1217</td>
                                                    <td>Ram Dayal Raikwar</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>01/07/2018</td>
                                                    <td>01/12/1974</td>
                                                    <td>49</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>BD1969</td>
                                                    <td>Mahindra Kumar Ahirwar</td>
                                                    <td>Principal HSS</td>
                                                    <td>PR-HSS</td>
                                                    <td>14/07/2009</td>
                                                    <td>25/12/1968</td>
                                                    <td>55</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td>BD2633</td>
                                                    <td>Ganesg Prasad Soni</td>
                                                    <td>Madhyamik Shikshak</td>
                                                    <td>SSS-2 Social Science</td>
                                                    <td>23/10/2022</td>
                                                    <td>18/05/1966</td>
                                                    <td>57</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>8</td>
                                                    <td>BT6961</td>
                                                    <td>Premnarayan Malviya</td>
                                                    <td>Samvida Shikshak-2</td>
                                                    <td>SSS-2 Maths</td>
                                                    <td>08/06/2010</td>
                                                    <td>14/08/1980</td>
                                                    <td>43</td>
                                                    <td>U</td>
                                                    <td>Unauthorised Absence</td>
                                                    <td>4202003011A[BAL-PRIN GBHSS KHARGAPUR]Reason:Stop Date:03-jul-2023 11:24:00 AM</td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>9</td>
                                                    <td>BX9992</td>
                                                    <td>Rajesh Raikwar</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td>03/10/2018</td>
                                                    <td>28/07/1983</td>
                                                    <td>40</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>4202003011A[BAL-PRIN GBHSS KHARGAPUR]Reason:Stop Payments Date:27-Aug-2015 10:23:00 PM</td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>10</td>
                                                    <td>BY1685</td>
                                                    <td>Brajesh Raikwar</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td>03/10/2018</td>
                                                    <td>07/09/1986</td>
                                                    <td>37</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Active</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                    <tr>
                                                    <td>11</td>
                                                    <td>BY1659</td>
                                                    <td>Chetan Yadav</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td>03/10/2015</td>
                                                    <td>07/09/1983</td>
                                                    <td>36</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>InActive</td>
                                                    <td><input class="form-control" /></td>
                                                </tr>
                                                    <tr>
                                                    <td>12</td>
                                                    <td>BY1623</td>
                                                    <td>Dhannalal Malviya</td>
                                                    <td>Prathmik Shikshak</td>
                                                    <td>SSS-3</td>
                                                    <td>07/08/2018</td>
                                                    <td>07/09/1986</td>
                                                    <td>38</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>InActive</td>
                                                    <td><input class="form-control" /></td>
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

