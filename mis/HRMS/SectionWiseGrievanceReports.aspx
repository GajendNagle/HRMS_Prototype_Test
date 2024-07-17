<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SectionWiseGrievanceReports.aspx.cs" Inherits="mis_HRMS_SectionWiseGrievanceReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
    <style>
        #ACR_Details_Graph .highcharts-data-label text {
            color: white !important;
            font-size: 0.65rem !important;
            font-weight: bold !important;
            text-align: center !important;
            fill: white !important;
            text-decoration: none !important;
        }

        .anchor {
            color: cornflowerblue;
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GrievanceReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Section wise Pending Reports</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                <img src="../../img/Grievance%20Logo.png" style="height: 60px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card   card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Section wise Pending Report / अनुभागवार लंबित रिपोर्ट</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Section Wise Pending Status / अनुभागवार की लंबित स्थिति</legend>
                <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Section Name<br />
                                अनुभाग का नाम<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlRegistrationType" CssClass="form-control">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">RMSA</asp:ListItem>
                                <asp:ListItem Value="2">Est-1</asp:ListItem>
                                <asp:ListItem Value="3">Est-2</asp:ListItem>
                                <asp:ListItem Value="4">Est-3</asp:ListItem>
                                <asp:ListItem Value="5">Est-4</asp:ListItem>
                                <asp:ListItem Value="6">CAFMS</asp:ListItem>
                                <asp:ListItem Value="7">Finance</asp:ListItem>
                                <asp:ListItem Value="8">Grant</asp:ListItem>
                                <asp:ListItem Value="9">NSDL</asp:ListItem>
                                <asp:ListItem Value="10">CPI</asp:ListItem>
                                <asp:ListItem Value="11">Legal</asp:ListItem>
                                <asp:ListItem Value="12">Mis</asp:ListItem>
                                <asp:ListItem Value="13">Physical education</asp:ListItem>
                                <asp:ListItem Value="14">Akadmik</asp:ListItem>
                                <asp:ListItem Value="15">CM-RISE</asp:ListItem>
                                <asp:ListItem Value="16">Planning</asp:ListItem>
                                <asp:ListItem Value="17">TMC</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-12">
                    <hr />
                        <div class="form-group">
                            <button onclick="showtbl(GetTblBySelectValue())" class=" btn w-lg btn-success btn-border" type="button">Search</button>
                            <a href="SectionWiseGrievanceReports.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="row form-group" id="dv_rpt" runat="server">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Section Wise Pending Details / अनुभागवार लंबित विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="tbl1">
                                            <tr class="text-center">
                                                <th>Sr No.
                                                        <br />
                                                    सरल क्रमांक </th>
                                                <th>Section
                                                        <br />
                                                    अनुभाग  </th>
                                                <th>Registered Grievaces
                                                        <br />
                                                    पंजीकृत शिकायतें </th>
                                                <th>Locked Grievances<br />
                                                    लॉक शिकायतें </th>
                                                <th>Forwarded Grievances
                                                        <br />
                                                    अग्रेषित शिकायतें </th>
                                                <th>Disposed Grievances
                                                        <br />
                                                    डिस्पोज़्ड शिकायतें </th>
                                                <th>Rejected Grievances<br />
                                                    अस्वीकृत  शिकायतें </th>
                                                <th>Pending Grievances
                                                        <br />
                                                    लंबित शिकायतें </th>
                                            </tr>
                                            <tr class="text-center">
                                                <td>1.</td>
                                                <td>CM-RISE</td>
                                                <td>4</td>
                                                <td>4</td>
                                                <td>4</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>4</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2.</td>
                                                <td>Est-1</td>
                                                <td>73</td>
                                                <td>73</td>
                                                <td>73</td>
                                                <td>59</td>
                                                <td>9</td>
                                                <td>5</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3.</td>
                                                <td>Est-2</td>
                                                <td>297</td>
                                                <td>297</td>
                                                <td>297</td>
                                                <td>75</td>
                                                <td>1</td>
                                                <td>221</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4.</td>
                                                <td>Est-3</td>
                                                <td>52</td>
                                                <td>52</td>
                                                <td>52</td>
                                                <td>26</td>
                                                <td>8</td>
                                                <td>18</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5.</td>
                                                <td>Est-4</td>
                                                <td>10</td>
                                                <td>10</td>
                                                <td>10</td>
                                                <td>3</td>
                                                <td>0</td>
                                                <td>7</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>6.</td>
                                                <td>Finance</td>
                                                <td>17</td>
                                                <td>17</td>
                                                <td>17</td>
                                                <td>6</td>
                                                <td>0</td>
                                                <td>11</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>7.</td>
                                                <td>Mis</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                            </tr>

                                            <tr class="text-center">
                                                <td>8.</td>
                                                <td>New Cadre</td>
                                                <td>128</td>
                                                <td>128</td>
                                                <td>128</td>
                                                <td>60</td>
                                                <td>3</td>
                                                <td>65</td>
                                            </tr>


                                            <tr class="text-center">
                                                <td>9.</td>
                                                <td>NSDL</td>
                                                <td>49</td>
                                                <td>49</td>
                                                <td>49</td>
                                                <td>17</td>
                                                <td>0</td>
                                                <td>32</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>10.</td>
                                                <td>RMSA</td>
                                                <td>16</td>
                                                <td>16</td>
                                                <td>16</td>
                                                <td>6</td>
                                                <td>2</td>
                                                <td>8</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>11.</td>
                                                <td>TMC</td>
                                                <td>143</td>
                                                <td>143</td>
                                                <td>143</td>
                                                <td>33</td>
                                                <td>0</td>
                                                <td>10</td>
                                            </tr>
                                        </table>
                                        <%--<div  style="display: none" ></div>--%>
                                        <table class="table table-bordered" style="display: none" id="tbl2">
                                            <tr class="text-center card-header">
                                                <th>Sr No.
                                                        <br />
                                                    सरल क्रमांक </th>
                                                <th>Office
                                                        <br />
                                                    ऑफिस </th>
                                                <th>Registered Grievaces
                                                        <br />
                                                    पंजीकृत शिकायतें </th>
                                                <th>Locked Grievances
                                                        <br />
                                                    लॉक शिकायतें </th>
                                                <th>Forwarded Grievances 
                                                        <br />
                                                    अग्रेषित शिकायतें </th>
                                                <th>Disposed Grievances
                                                        <br />
                                                    डिस्पोज़्ड शिकायतें</th>
                                                <th>Rejected Grievances
                                                        <br />
                                                    अस्वीकृत  शिकायतें </th>
                                                <th>Pending Grievances 
                                                        <br />
                                                    लंबित शिकायतें </th>
                                                <th>Section 
                                                        <br />
                                                    सेक्शन </th>
                                            </tr>
                                            <tr class="text-center">
                                                <td>1.</td>
                                                <td><a class="anchor" href="#" style="color: #00bcd4; font-weight: bold">Ashoknagar</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>Finance</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl3')" style="color: #00bcd4; font-weight: bold">Bhopal</a></td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>Finance</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3.</td>
                                                <td><a class="anchor" href="#" style="color: #00bcd4; font-weight: bold">Gwalior</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>Finance</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl3')" style="color: #00bcd4; font-weight: bold">Harda</a></td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>Finance</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5.</td>
                                                <td><a class="anchor" href="#" style="color: #00bcd4; font-weight: bold">Indore</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>Finance</td>
                                            </tr>

                                        </table>
                                        <table class="table table-bordered" style="display: none" id="tbl3">
                                            <tr class="text-center card-header">
                                                <th>Sr No. 
                                                        <br />
                                                    सरल क्रमांक </th>
                                                <th>Section
                                                        <br />
                                                    सेक्शन  </th>
                                                <th>Grievance No.
                                                        <br />
                                                    शिकायत  क्रमांक  </th>
                                                <th>Employee Name 
                                                        <br />
                                                    कर्मचारी का नाम </th>
                                                <th>Type 
                                                        <br />
                                                    प्रकार</th>
                                                <th>Subject
                                                        <br />
                                                    विषय </th>
                                                <th>Status<br />
                                                    स्थिति </th>
                                            </tr>
                                            <tr class="text-center">
                                                <td>1.</td>
                                                <td>Finance</td>
                                                <td>1216</td>
                                                <td>Bihari Sharma [Ucch Madhyamik Shikshak]</td>
                                                <td>Financial Related</td>
                                                <td>Other Claims</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2.</td>
                                                <td>Finance</td>
                                                <td>63601</td>
                                                <td>Chandrakant Tripathi [Ucch Madhtamic Shikshak]</td>
                                                <td>Financial Related</td>
                                                <td>Salery</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3.</td>
                                                <td>Finance</td>
                                                <td>40513</td>
                                                <td>Saurabh Paliwal [Lecturer]</td>
                                                <td>Financial Related</td>
                                                <td>Other Claims</td>
                                                <td>Disposed</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4.</td>
                                                <td>Finance</td>
                                                <td>35919</td>
                                                <td>Param Sukh Kevat [Principal H S]</td>
                                                <td>Financial Related</td>
                                                <td>Other Claims</td>
                                                <td>DEO Harda</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5.</td>
                                                <td>Finance</td>
                                                <td>49936</td>
                                                <td>Virendra Kumar Jain [Madhyamik Shikshak]</td>
                                                <td>Others</td>
                                                <td>Others</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>

                                        </table>

                                        <table class="table table-bordered" style="display: none" id="tbl4">
                                            <tr class="text-center card-header">
                                                <th>Sr No.
            <br />
                                                    सरल क्रमांक </th>
                                                <th>Office
            <br />
                                                    ऑफिस </th>
                                                <th>Registered Grievaces
            <br />
                                                    पंजीकृत शिकायतें </th>
                                                <th>Locked Grievances
            <br />
                                                    लॉक शिकायतें </th>
                                                <th>Forwarded Grievances 
            <br />
                                                    अग्रेषित शिकायतें </th>
                                                <th>Disposed Grievances
            <br />
                                                    डिस्पोज़्ड शिकायतें</th>
                                                <th>Rejected Grievances
            <br />
                                                    अस्वीकृत  शिकायतें </th>
                                                <th>Pending Grievances 
            <br />
                                                    लंबित शिकायतें </th>
                                                <th>Section 
            <br />
                                                    सेक्शन </th>
                                            </tr>
                                            <tr class="text-center">
                                                <td>1.</td>
                                                <td><a class="anchor" href="#" style="color: #00bcd4; font-weight: bold">Chhatarpur</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>NSDL</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl6')" style="color: #00bcd4; font-weight: bold">Gwalior</a></td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>NSDL</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3.</td>
                                                <td><a class="anchor" href="#" style="color: #00bcd4; font-weight: bold">Mandsaur</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>NSDL</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl6')" style="color: #00bcd4; font-weight: bold">Rajgarh</a></td>
                                                <td>2</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>NSDL</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl6')" style="color: #00bcd4; font-weight: bold">Singrauli</a></td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>NSDL</td>
                                            </tr>

                                        </table>

                                        <table class="table table-bordered" style="display: none" id="tbl5">
                                            <tr class="text-center card-header">
                                                <th>Sr No.
                                                        <br />
                                                    सरल क्रमांक </th>
                                                <th>Office
                                                        <br />
                                                    ऑफिस </th>
                                                <th>Registered Grievaces
                                                        <br />
                                                    पंजीकृत शिकायतें </th>
                                                <th>Locked Grievances
                                                        <br />
                                                    लॉक शिकायतें </th>
                                                <th>Forwarded Grievances 
                                                        <br />
                                                    अग्रेषित शिकायतें </th>
                                                <th>Disposed Grievances
                                                        <br />
                                                    डिस्पोज़्ड शिकायतें</th>
                                                <th>Rejected Grievances
                                                        <br />
                                                    अस्वीकृत  शिकायतें </th>
                                                <th>Pending Grievances 
                                                        <br />
                                                    लंबित शिकायतें </th>
                                                <th>Section 
                                                        <br />
                                                    सेक्शन </th>
                                            </tr>
                                            <tr class="text-center">
                                                <td>1.</td>
                                                <td><a class="anchor" href="#" style="color: #00bcd4; font-weight: bold">Betul</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>CPI</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl7')" style="color: #00bcd4; font-weight: bold">Bhopal</a></td>
                                                <td>2</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>CPI</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3.</td>
                                                <td><a class="anchor" href="#" style="color: #00bcd4; font-weight: bold">Burhanpur</a></td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>CPI</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl7')" style="color: #00bcd4; font-weight: bold">Chhindwara</a></td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>CPI</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5.</td>
                                                <td><a class="anchor" href="#" onclick="showtbl('tbl7')" style="color: #00bcd4; font-weight: bold">Indore</a></td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>CPI</td>
                                            </tr>

                                        </table>

                                        <table class="table table-bordered" style="display: none" id="tbl6">
                                            <tr class="text-center card-header">
                                                <th>Sr No. 
            <br />
                                                    सरल क्रमांक </th>
                                                <th>Section
            <br />
                                                    सेक्शन  </th>
                                                <th>Grievance No.
            <br />
                                                    शिकायत  क्रमांक  </th>
                                                <th>Employee Name 
            <br />
                                                    कर्मचारी का नाम </th>
                                                <th>Type 
            <br />
                                                    प्रकार</th>
                                                <th>Subject
            <br />
                                                    विषय </th>
                                                <th>Status<br />
                                                    स्थिति </th>
                                            </tr>
                                            <tr class="text-center">
                                                <td>1.</td>
                                                <td>NSDL</td>
                                                <td>55641</td>
                                                <td>Kunj Sharma [Ucch Madhyamik Shikshak]</td>
                                                <td>Financial Related</td>
                                                <td>Salary</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2.</td>
                                                <td>NSDL</td>
                                                <td>63401</td>
                                                <td>SWATANTRA TRIPATHI [Ucch Madhtamic Shikshak]</td>
                                                <td>Financial Related</td>
                                                <td>Salery</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3.</td>
                                                <td>NSDL</td>
                                                <td>85465</td>
                                                <td>Chandrakant Paliwal [Lecturer]</td>
                                                <td>Financial Related</td>
                                                <td>Other Claims</td>
                                                <td>Disposed</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4.</td>
                                                <td>NSDL</td>
                                                <td>99856</td>
                                                <td>Param Sukh Kevat [Principal H S]</td>
                                                <td>Financial Related</td>
                                                <td>Other Claims</td>
                                                <td>DEO Harda</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5.</td>
                                                <td>NSDL</td>
                                                <td>49936</td>
                                                <td>Virendra Kumar Jain [Madhyamik Shikshak]</td>
                                                <td>Others</td>
                                                <td>Others</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>

                                        </table>
                                        <table class="table table-bordered" style="display: none" id="tbl7">
                                            <tr class="text-center card-header">
                                                <th>Sr No. 
                                                        <br />
                                                    सरल क्रमांक </th>
                                                <th>Section
                                                        <br />
                                                    सेक्शन  </th>
                                                <th>Grievance No.
                                                        <br />
                                                    शिकायत  क्रमांक  </th>
                                                <th>Employee Name 
                                                        <br />
                                                    कर्मचारी का नाम </th>
                                                <th>Type 
                                                        <br />
                                                    प्रकार</th>
                                                <th>Subject
                                                        <br />
                                                    विषय </th>
                                                <th>Status<br />
                                                    स्थिति </th>
                                            </tr>
                                            <tr class="text-center">
                                                <td>1.</td>
                                                <td>CPI</td>
                                                <td>75412</td>
                                                <td>Pradeep Sharma [Ucch Madhyamik Shikshak]</td>
                                                <td>Financial Related</td>
                                                <td>Other Claims</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2.</td>
                                                <td>CPI</td>
                                                <td>21224</td>
                                                <td>Neeta Bihari [Ucch Madhtamic Shikshak]</td>
                                                <td>Financial Related</td>
                                                <td>Salery</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3.</td>
                                                <td>CPI</td>
                                                <td>55441</td>
                                                <td>Shirbendra  Kevat [Lecturer]</td>
                                                <td>Others</td>
                                                <td>Salary</td>
                                                <td>Disposed</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>4.</td>
                                                <td>CPI</td>
                                                <td>12548</td>
                                                <td>Himmat Singh Meena [Principal H S]</td>
                                                <td>Financial Related</td>
                                                <td>Other Claims</td>
                                                <td>DEO Harda</td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>5.</td>
                                                <td>CPI</td>
                                                <td>78542</td>
                                                <td>Rajkishor Kumar [Madhyamik Shikshak]</td>
                                                <td>Financial Related</td>
                                                <td>Others</td>
                                                <td>Commissioner, Public Instructions</td>
                                            </tr>
                                        </table>
                                    </div>
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
    <script>

        function GetTblBySelectValue() {
            var ddlvalue = document.getElementById('<%= ddlRegistrationType.ClientID%>').value
            if (ddlvalue == "7") {
                return "tbl2"
            } else if (ddlvalue == "9") {
                return "tbl4"
            } if (ddlvalue == "10") {
                return "tbl5"
            }
            else {
                return "tbl1"
            }
        }
    </script>
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

