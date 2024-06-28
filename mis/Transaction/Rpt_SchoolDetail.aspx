<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SchoolDetail.aspx.cs" Inherits="mis_Transaction_Rpt_SchoolDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-md-12">
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
                            <a href="#SchoolReports" id="employeeBreadcrumb" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchoolDirectory')">
                                <span>School Reports</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>School Detail Report Card</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">School Report Card / स्कूल रिपोर्ट कार्ड</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row align-items-end">
                        <div class="col-md-6">
                            <label>
                                DISE Code<br />
                                डाईस कोड<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="23510817802" />
                        </div>
                        <div class="col-md-6">
                            <label>
                                Confirm DISE Code<br />
                                डाईस कोड की पुष्टि करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="23510817802" />
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col-12 mt-4">
                            <div class="form-group">
                                <asp:Button runat="server" CssClass="btn w-lg btn-outline-success btn-border" OnClick="btnSave_Click" Text="View Details" ID="btnSave" />
                            </div>
                        </div>
                    </div>
                    <fieldset id="dv_rpt" runat="server">
                        <legend>Details / विवरण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        District Name<br />
                                        जिले का नाम <span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control">Bhopal</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Block Name<br />
                                        ब्लॉक का नाम <span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control">Berasia</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Management Group<br />
                                        प्रबंधन समूह<span style="color: red">*</span>
                                    </label>
                                    <asp:TextBox runat="server" CssClass="form-control">Central Government/केंद्र सरकार</asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row align-items-end" id="dv_rpt1" runat="server">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Management Details<br />
                                        प्रबंधन विवरण<span style="color: red">*</span>
                                    </label>
                                    <asp:TextBox runat="server" CssClass="form-control">Jawahar Navodaya Vidyalaya</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Cateogry<br />
                                        वर्ग<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control">Primary to Higher Secondary School</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Cateogry Details<br />
                                        वर्ग विवरण<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control">Class 1 to 12</asp:TextBox>
                                </div>
                            </div>
                            <%-- <div class="row align-items-end" id="dv_rpt2" runat="server">--%>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Urban / Rural<br />
                                        शहरी / ग्रामीण<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control">Urban</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Special School<br />
                                        विशेष विद्यालय<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control">Yes</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        School-Dise<br />
                                        स्कूल-डाईस<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control">JNV-23510817802</asp:TextBox>
                                </div>
                            </div>
                            <%--</div>--%>
                            <div runat="server" class="mt-4 col-12" id="divTables" visible="false">
                                <fieldset>
                                    <legend>Enrollments in the Current Year / वर्तमान वर्ष में नामांकन</legend>
                                    <%--<h5 class="fw-normal">Enrollments in Current Year</h5>--%>
                                    <div class="row align-items-end">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr class="card-header text-center">
                                                            <th>Sr. No.<br />
                                                                सरल क्र.</th>
                                                            <th>1st - 5th<br />
                                                                पहली-पांचवीं</th>
                                                            <th>6th - 10th<br />
                                                                छठी-दसवीं </th>
                                                            <th>9th - 10th<br />
                                                                9वीं-10वीं</th>
                                                            <th>11th - 12th<br />
                                                                11वीं-12वीं</th>
                                                        </tr>
                                                    </thead>
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
                                    <legend>Active Employees Status / सक्रिय कर्मचारी स्थिति</legend>
                                    <%--                        <h5 class="fw-normal">Active Employees Panel</h5>--%>
                                    <div class="row align-items-end">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <tr class="card-header">
                                                        <th>Sr. No.<br />
                                                            सरल क्र.</th>
                                                        <th>Employee<br />
                                                            कर्मचारी</th>
                                                        <th>Name<br />
                                                            नाम</th>
                                                        <th>Present Posting Date<br />
                                                            वर्तमान पोस्टिंग दिनांक</th>
                                                        <th>Designation<br />
                                                            पदनाम</th>
                                                        <th>Panel<br />
                                                            पैनल</th>
                                                        <th>Subject<br />
                                                            विषय</th>
                                                        <th>Status<br />
                                                            स्थिति</th>
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
                                    <legend>Vacancy Status in School / विद्यालय में रिक्ति की स्थिति</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <tr class="card-header">
                                                        <th>Sr. No.<br />
                                                            सरल क्र.</th>
                                                        <th>Panel<br />
                                                            पैनल</th>
                                                        <th>Post Code<br />
                                                            पोस्ट कोड</th>
                                                        <th>Sanctioned Posts<br />
                                                            स्वीकृत पद</th>
                                                        <th>Working<br />
                                                            कार्यरत</th>
                                                        <th>Vacant<br />
                                                            रिक्त</th>
                                                        <th>Surplus<br />
                                                            अतिरिक्त</th>
                                                        <th>Remarks<br />
                                                            टिप्पणी</th>
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
                                                        <td style="color: #fa382b">1</td>
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
                                                        <td style="color: #fa382b">1</td>
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
                                                        <td style="color: #fa382b">2</td>
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
                                                        <td style="color: #fa382b">1</td>
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
                                                        <td style="color: #fa382b">3</td>
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
                                                        <td style="color: #fa382b">2</td>
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
                                                        <td style="color: #fa382b">5</td>
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
                                                        <td style="color: #fa382b">4</td>
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
                                                        <td style="color: #fa382b">2</td>
                                                        <td>
                                                            <input class="form-control" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </fieldset>


                                <fieldset class="mt-5">
                                    <legend>Employee History / कर्मचारी इतिहास</legend>
                                    <%--                        <h5 class="fw-normal">Total Employees in School</h5>--%>
                                    <div class="row align-items-end">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <tr class="card-header">
                                                        <th>Sr. No.<br />
                                                            सरल क्र.</th>
                                                        <th>Employee Code<br />
                                                            कर्मचारी कोड</th>
                                                        <th>Employee Name<br />
                                                            कर्मचारी का नाम</th>
                                                        <th>Designation<br />
                                                            पद </th>
                                                        <th>Panel<br />
                                                            पैनल</th>
                                                        <th>Present Posting Date<br />
                                                            वर्तमान पोस्टिंग तिथि</th>
                                                        <th>DOB<br />
                                                            जन्म दिनांक</th>
                                                        <th>Age<br />
                                                            आयु</th>
                                                        <th>Stop Payment Reason Code<br />
                                                            भुगतान रोकने का कारण कोड</th>
                                                        <th>Stop Payment Reason<br />
                                                            भुगतान रोकने का कारण</th>
                                                        <th>Stopped By<br />
                                                            द्वारा रोका गया</th>
                                                        <th>Status<br />
                                                            स्थिति</th>
                                                        <th>Remark<br />
                                                            टिप्पणी</th>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td>BD1217</td>
                                                        <td>Ram Dayal Raikwar</td>
                                                        <td>Madhyamik Shikshak</td>
                                                        <td>SSS-3</td>
                                                        <td>01/07/2018</td>
                                                        <td>01/12/1974</td>
                                                        <td>49</td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td>Active</td>
                                                        <td>
                                                            <input class="form-control" /></td>
                                                    </tr>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td></td>
                                                        <td>Unauthorised Absence</td>
                                                        <td>4202003011A[BAL-PRIN GBHSS KHARGAPUR]Reason:Stop Date:03-jul-2023 11:24:00 AM</td>
                                                        <td>Active</td>
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
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
                                                        <td>
                                                            <input class="form-control" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </fieldset>
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

