<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ForwardedGrievances .aspx.cs" Inherits="mis_Transaction_ForwardedGrievances_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                        <li class="breadcrumb-item"><span>District Wise Forwarded Grievance Report</span></li>
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
                    <h5 class="card-title">Grievances Reject / शिकायतें अस्वीकृत
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <h3 class="fw-bold justify-content-center" style="position: relative; left: 500PX; top: 10PX; color: brown;"></h3>
            <div runat="server" id="show">
                <fieldset>
                    <legend>Grievances Reject / शिकायतें अस्वीकृत</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    District<br />
                                    जिला<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control select2">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>1-Sheopur</asp:ListItem>
                                    <asp:ListItem>2-Morena</asp:ListItem>
                                    <asp:ListItem>3-Bhind</asp:ListItem>
                                    <asp:ListItem>4-Gwalior</asp:ListItem>
                                    <asp:ListItem>5-Datia</asp:ListItem>
                                    <asp:ListItem>6-Shivpuri</asp:ListItem>
                                    <asp:ListItem>7-Guna</asp:ListItem>
                                    <asp:ListItem>8-Ashoknagar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <hr />
                            <div class="form-group">
                                <asp:Button runat="server" type="button" class=" btn w-lg btn-success btn-border" OnClick="Unnamed_Click" Text=" Search" />
                                <a href="ForwardedGrievances .aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div runat="server" id="show2" visible="false">
                <fieldset>
                    <legend>District Wise Forwarded Grievances Details / जिलेवार अग्रेषित शिकायतों का विवरण</legend>
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
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.
                                                    <br />
                                                सरल क्र.
                                            </th>
                                            <th>Grievances No.<br />
                                                शिकायत क्र.
                                            </th>
                                            <th>Employee Name
                                                    <br />
                                                कर्मचारी का नाम
                                            </th>
                                            <th>Type<br />
                                                प्रकार
                                            </th>
                                            <th>Subject<br />
                                                विषय
                                            </th>
                                            <th>Registered Date<br />
                                                पंजीकृत तिथि</th>
                                            <th>Status<br />
                                                स्थिति</th>
                                            <th>Forwarded To<br />
                                                इनको अग्रेषित</th>
                                            <th>Forward Date<br />
                                                अग्रेषित दिनांक
                                            </th>
                                            <th>Forwarded By<br />
                                                द्वारा अग्रेषित किया गया
                                            </th>
                                            <th>Office<br />
                                                कार्यालय</th>
                                            <th>Section<br />
                                                अनुभाग</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblRowNumber">1</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_hdnId" value="8004">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblGrievance">8004</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblName">Indu Dubey [ BR9534 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblShikayat">07/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblForward_Date">18/04/2024</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblForwarded_By">Ashoknagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblRowNumber">2</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl03$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_hdnId" value="69535">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblGrievance">69535</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblName">Dilip Raghuwanshi [ CB9680 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblsubject">Salary</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblShikayat">03/10/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblForward_Date">18/04/2024</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblForwarded_By">Ashoknagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblRowNumber">3</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl04$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_hdnId" value="42994">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblGrievance">42994</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblName">Surya Bhushan Mishra [ AT1251 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblsubject">Salary</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblShikayat">12/01/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblForward_Date">18/03/2024</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblForwarded_By">Panna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblRowNumber">4</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl05$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_hdnId" value="49507">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblGrievance">49507</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblName">Vishwa Nath Prasad Shukla [ AT3128 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblShikayat">06/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblForward_Date">07/02/2024</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblForwarded_By">Panna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblRowNumber">5</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl06$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_hdnId" value="50324">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblGrievance">50324</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblName">Vishwa Nath Prasad Shukla [ AT3128 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblsubject">Promotions</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblShikayat">27/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblForward_Date">07/02/2024</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblForwarded_By">Panna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblRowNumber">6</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl07$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_hdnId" value="69535">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblGrievance">69535</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblName">Dilip Raghuwanshi [ CB9680 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblsubject">Salary</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblShikayat">03/10/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblForward_Date">06/11/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblForwarded_By">Ashoknagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblRowNumber">7</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl08$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_hdnId" value="68053">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblGrievance">68053</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblName">Makundi Lal Ahirwar [ BD2875 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblShikayat">08/09/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblForward_Date">17/09/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblForwarded_By">Tikamgarh</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblRowNumber">8</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl09$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_hdnId" value="63601">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblGrievance">63601</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblName">SWATANTRA TRIPATHI [ CB5618 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblsubject">Salary</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblShikayat">30/06/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblForward_Date">16/09/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblForwarded_By">Singrauli</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblRowNumber">9</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl10$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_hdnId" value="68507">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblGrievance">68507</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblName">Ramakant Sharma [ BC6602 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblsubject">Promotions</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblShikayat">15/09/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblForward_Date">16/09/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblForwarded_By">Singrauli</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblRowNumber">10</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl11$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_hdnId" value="63324">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblGrievance">63324</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblName">Girija Shankar Gupta [ AK1059 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblShikayat">08/06/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblForward_Date">30/07/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblRowNumber">11</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl12$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_hdnId" value="49367">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblGrievance">49367</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblName">Sanjeev Prasad Upadhyay [ BP9421 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblShikayat">29/09/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblForward_Date">23/06/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblRowNumber">12</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl13$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_hdnId" value="51962">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblGrievance">51962</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblName">Shail Gupta [ AS4012 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblShikayat">01/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblForward_Date">23/06/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblRowNumber">13</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl14$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_hdnId" value="13026">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblGrievance">13026</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblName">Sukhendra Prasad Kurmi [ AI1168 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblShikayat">14/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblForward_Date">21/06/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblRowNumber">14</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl15$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_hdnId" value="52005">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblGrievance">52005</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblName">PRIYANKA MEHRA [ CB8880 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblsubject">Deputation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblShikayat">01/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblForward_Date">09/06/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblForwarded_By">Katni</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblRowNumber">15</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl16$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_hdnId" value="49936">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblGrievance">49936</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblName">Veerendra Kumar Jain [ AX9616 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblShikayat">23/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblForward_Date">12/05/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblRowNumber">16</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl17$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_hdnId" value="42368">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblGrievance">42368</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblName">Antar Singh Baror [ AA8398 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblShikayat">05/12/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblForward_Date">08/05/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblRowNumber">17</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl18$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_hdnId" value="51298">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblGrievance">51298</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblName">Ram Singh Thakur [ AA9008 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblShikayat">01/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblForward_Date">08/05/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblRowNumber">18</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl19$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_hdnId" value="52590">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblGrievance">52590</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblName">Binay Kumar Jayswal [ BQ4857 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblShikayat">03/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblForward_Date">08/05/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblForwarded_By">Singrauli</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblRowNumber">19</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl20$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_hdnId" value="52596">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblGrievance">52596</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblName">Kailash Prasad Kushwaha [ BC8156 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblShikayat">03/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblForward_Date">08/05/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblForwarded_By">Singrauli</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl20_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblRowNumber">20</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl21$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_hdnId" value="52604">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblGrievance">52604</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblName">Jagdeesh Prasad Sahu [ BC8232 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblShikayat">03/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblForward_Date">08/05/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblForwarded_By">Singrauli</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl21_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblRowNumber">21</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl22$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_hdnId" value="54690">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblGrievance">54690</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblName">Sameep Kumar Jain [ AB5632 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblShikayat">16/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblForward_Date">08/05/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl22_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblRowNumber">22</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl23$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_hdnId" value="17079">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblGrievance">17079</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblName">Gajanand Patle [ BK2806 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblsubject">Pay fixation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblShikayat">25/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblStatus">Divisional JD</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblForward_Date">11/04/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl23_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblRowNumber">23</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl24$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_hdnId" value="39223">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblGrievance">39223</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblName">Gajanand Patle [ BK2806 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblShikayat">07/09/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblForward_Date">11/04/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl24_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblRowNumber">24</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl25$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_hdnId" value="56648">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblGrievance">56648</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblName">Ravindra Kumar Bisen [ AS5679 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblsubject">Promotions</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblShikayat">15/12/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblForward_Date">11/04/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl25_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblRowNumber">25</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl26$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_hdnId" value="49448">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblGrievance">49448</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblName">Neeraj Singh Dohare [ BU5227 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblShikayat">05/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblForward_Date">21/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl26_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblRowNumber">26</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl27$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_hdnId" value="51647">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblGrievance">51647</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblName">Ramgopal Saini [ BX7139 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblShikayat">01/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblForward_Date">21/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl27_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblRowNumber">27</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl28$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_hdnId" value="52386">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblGrievance">52386</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblName">Nandlal Sahu [ AA5646 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblShikayat">02/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblForward_Date">21/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl28_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblRowNumber">28</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl29$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_hdnId" value="52425">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblGrievance">52425</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblName">Rakeeb Khan [ BW4668 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblShikayat">02/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblForward_Date">21/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl29_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblRowNumber">29</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl30$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_hdnId" value="52967">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblGrievance">52967</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblName">Neeraj Singh Dohare [ BU5227 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblShikayat">04/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblForward_Date">21/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl30_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblRowNumber">30</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl31$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_hdnId" value="53086">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblGrievance">53086</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblName">Neeraj Singh Dohare [ BU5227 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblShikayat">04/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblForward_Date">21/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl31_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblRowNumber">31</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl32$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_hdnId" value="54045">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblGrievance">54045</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblName">Jatan Singh [ AB2380 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblShikayat">10/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblForward_Date">21/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblForwarded_By">Sehore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl32_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblRowNumber">32</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl33$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_hdnId" value="60684">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblGrievance">60684</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblName">Sujeet Kumar Khare [ AY3458 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblShikayat">07/03/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblForward_Date">16/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl33_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblRowNumber">33</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl34$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_hdnId" value="53782">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblGrievance">53782</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblName">Kavita Namdeo [ BW7473 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblShikayat">08/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblForward_Date">14/03/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblForwarded_By">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl34_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblRowNumber">34</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl35$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_hdnId" value="44256">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblGrievance">44256</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblName">Dwarka Prasad Ahirwar [ AH6218 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblShikayat">18/02/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblForward_Date">14/02/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblForwarded_By">Damoh</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl35_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblRowNumber">35</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl36$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_hdnId" value="51436">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblGrievance">51436</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblName">SALMA KHAN [ CA9916 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblShikayat">01/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblForward_Date">02/01/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblForwarded_By">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl36_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblRowNumber">36</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl37$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_hdnId" value="52066">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblGrievance">52066</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblName">Rekha Yadav [ BW6010 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblShikayat">02/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblForward_Date">02/01/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblForwarded_By">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl37_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblRowNumber">37</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl38$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_hdnId" value="53782">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblGrievance">53782</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblName">Kavita Namdeo [ BW7473 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblShikayat">08/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblForward_Date">02/01/2023</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblForwarded_By">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl38_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblRowNumber">38</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl39$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_hdnId" value="36808">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblGrievance">36808</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblName">Khemraj Koli [ BB4278 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblsubject">Absorption related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblShikayat">14/07/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblForward_Date">29/12/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblForwarded_By">Shivpuri</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl39_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblRowNumber">39</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl40$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_hdnId" value="51069">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblGrievance">51069</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblName">Rajendra Prasad Soni [ AV7190 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblShikayat">31/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblForward_Date">21/12/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblForwarded_By">Satna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl40_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblRowNumber">40</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl41$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_hdnId" value="51075">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblGrievance">51075</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblName">Rajendra Prasad Soni [ AV7190 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblShikayat">31/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblForward_Date">21/12/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblForwarded_By">Satna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl41_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblRowNumber">41</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl42$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_hdnId" value="51065">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblGrievance">51065</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblName">Radheshyam Prajapati [ AT2732 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblShikayat">31/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblForward_Date">17/11/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl42_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblRowNumber">42</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl43$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_hdnId" value="54397">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblGrievance">54397</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblName">Kamlesh Tamrakar [ BY7601 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblShikayat">14/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblForward_Date">17/11/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl43_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblRowNumber">43</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl44$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_hdnId" value="54484">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblGrievance">54484</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblName">Vandana Trivedi [ AH8892 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblShikayat">15/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblForward_Date">17/11/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl44_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblRowNumber">44</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl45$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_hdnId" value="52449">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblGrievance">52449</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblName">Priyanka Mehra [ CB8880 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblShikayat">02/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblForward_Date">14/11/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblForwarded_By">Katni</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl45_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblRowNumber">45</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl46$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_hdnId" value="53855">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblGrievance">53855</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblName">Santosh Kumar Mishra [ AN8461 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblShikayat">09/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblStatus">Divisional JD</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblForward_Date">14/11/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblForwarded_By">Katni</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl46_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblRowNumber">46</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl47$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_hdnId" value="53398">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblGrievance">53398</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblName">Ritu Jain [ AM4744 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblShikayat">05/11/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblForward_Date">11/11/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblForwarded_By">Indore</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl47_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblRowNumber">47</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl48$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_hdnId" value="50608">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblGrievance">50608</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblName">Anita Rathore [ BY8209 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblShikayat">30/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblForward_Date">03/11/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblForwarded_By">Shivpuri</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl48_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblRowNumber">48</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl49$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_hdnId" value="40084">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblGrievance">40084</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblName">Pankaj Mani Jharia [ BR7009 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblShikayat">16/09/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblStatus">Divisional JD</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblForward_Date">17/08/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl49_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblRowNumber">49</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl50$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_hdnId" value="44351">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblGrievance">44351</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblName">Santosh Kumar Mishra [ AN8461 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblShikayat">21/02/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblForward_Date">16/05/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblForwarded_By">Katni</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl50_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblRowNumber">50</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl51$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_hdnId" value="4389">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblGrievance">4389</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblName">Jitendra Singh Lilhare [ AU8736 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblShikayat">04/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblForward_Date">07/04/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl51_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblRowNumber">51</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl52$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_hdnId" value="40097">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblGrievance">40097</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblName">Purandar Singh Kshirasagar [ BQ6742 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblsubject">Absorption related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblShikayat">17/09/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblForward_Date">07/04/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl52_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblRowNumber">52</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl53$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_hdnId" value="42907">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblGrievance">42907</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblName">Ashok Choubey [ AD1369 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblsubject">Pay fixation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblShikayat">09/01/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblForward_Date">26/02/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl53_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblRowNumber">53</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl54$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_hdnId" value="43004">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblGrievance">43004</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblName">M.S.Choudhari Choudhry [ AC8914 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblsubject">Pay fixation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblShikayat">12/01/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblForward_Date">26/02/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl54_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblRowNumber">54</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl55$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_hdnId" value="6774">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblGrievance">6774</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblName">Bharat Singh Yadav [ AY6605 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblsubject">Deputation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblShikayat">06/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblForward_Date">14/02/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl55_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblRowNumber">55</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl56$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_hdnId" value="15644">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblGrievance">15644</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblName">Abhilasha Bhangre [ AH3650 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblShikayat">20/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblForward_Date">11/02/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl56_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblRowNumber">56</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl57$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_hdnId" value="38542">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblGrievance">38542</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblName">Ravindra Singh Dixit [ BJ7783 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblShikayat">28/08/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblForward_Date">11/02/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl57_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblRowNumber">57</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl58$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_hdnId" value="13026">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblGrievance">13026</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblName">Sukhendra Prasad Kurmi [ AI1168 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblShikayat">14/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblForward_Date">25/01/2022</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl58_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblRowNumber">58</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl59$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_hdnId" value="41501">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblGrievance">41501</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblName">Devendra Bhargava [ BP1126 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblShikayat">20/10/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblForward_Date">03/01/2022</span>


                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblForwarded_By">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl59_lblSection_Name">RMSA</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblRowNumber">59</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl60$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_hdnId" value="38485">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblGrievance">38485</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblName">Indunath Tiwari [ AY1566 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblShikayat">27/08/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblForward_Date">20/12/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl60_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblRowNumber">60</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl61$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_hdnId" value="35664">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblGrievance">35664</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblName">Govind Singh Patel [ AS2919 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblShikayat">20/06/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblForward_Date">17/11/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblForwarded_By">Narsinghpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl61_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblRowNumber">61</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl62$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_hdnId" value="13026">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblGrievance">13026</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblName">Sukhendra Prasad Kurmi [ AI1168 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblShikayat">14/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblForward_Date">18/10/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl62_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblRowNumber">62</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl63$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_hdnId" value="18132">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblGrievance">18132</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblName">Sudheer Kumar Dwivedi [ AT2737 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblShikayat">31/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblForward_Date">13/10/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblForwarded_By">Panna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl63_lblSection_Name">NSDL</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblRowNumber">63</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl64$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_hdnId" value="28931">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblGrievance">28931</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblName">Gaya Prasad Prajapati [ AT1788 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblShikayat">19/03/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblForward_Date">13/10/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblForwarded_By">Panna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl64_lblSection_Name">NSDL</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblRowNumber">64</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl65$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_hdnId" value="36924">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblGrievance">36924</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblName">Ramakant Gupta [        ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblShikayat">16/07/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblForward_Date">06/10/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblForwarded_By">Umaria</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl65_lblSection_Name">NSDL</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblRowNumber">65</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl66$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_hdnId" value="4389">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblGrievance">4389</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblName">Jitendra Singh Lilhare [ AU8736 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblShikayat">04/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblForward_Date">27/09/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl66_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblRowNumber">66</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl67$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_hdnId" value="38542">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblGrievance">38542</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblName">Ravindra Singh Dixit [ BJ7783 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblShikayat">28/08/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblForward_Date">07/09/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl67_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblRowNumber">67</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl68$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_hdnId" value="17079">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblGrievance">17079</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblName">Gajanand Patle [ BK2806 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblsubject">Pay fixation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblShikayat">25/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblStatus">Divisional JD</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblForward_Date">31/08/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl68_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblRowNumber">68</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl69$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_hdnId" value="13026">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblGrievance">13026</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblName">Sukhendra Prasad Kurmi [ AI1168 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblShikayat">14/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblForward_Date">27/08/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblForwarded_By">Sagar</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl69_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblRowNumber">69</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl70$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_hdnId" value="20721">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblGrievance">20721</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblName">Ram Kumar Saket [ BP7629 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblShikayat">10/02/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblForward_Date">16/08/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblForwarded_By">Sidhi</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl70_lblSection_Name">Est-1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblRowNumber">70</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl71$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_hdnId" value="31805">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblGrievance">31805</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblName">Hargovind Singh Raj [ BN4023 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblShikayat">06/04/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblForward_Date">02/08/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblForwarded_By">Gwalior</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl71_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblRowNumber">71</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl72$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_hdnId" value="23978">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblGrievance">23978</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblName">Ashok Kumar Pandey [ BO2475 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblShikayat">22/02/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblForward_Date">29/07/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblForwarded_By">Umaria</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl72_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblRowNumber">72</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl73$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_hdnId" value="26215">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblGrievance">26215</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblName">Rajendra Kumar Varma [ AG2832 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblShikayat">03/03/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblStatus">Divisional JD</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblForward_Date">23/07/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblForwarded_By">Chhatarpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl73_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblRowNumber">73</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl74$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_hdnId" value="15448">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblGrievance">15448</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblName">NONI LAL KORI [ AR8202 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblsubject">Absorption related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblShikayat">20/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblForward_Date">13/07/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblForwarded_By">Narsinghpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl74_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblRowNumber">74</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl75$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_hdnId" value="35664">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblGrievance">35664</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblName">Govind Singh Patel [ AS2919 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblShikayat">20/06/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblForward_Date">13/07/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblForwarded_By">Narsinghpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl75_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblRowNumber">75</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl76$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_hdnId" value="16945">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblGrievance">16945</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblName">Santosh Sharma [ AA2312 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblShikayat">24/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblForward_Date">21/06/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblForwarded_By">Bhopal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl76_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblRowNumber">76</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl77$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_hdnId" value="25107">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblGrievance">25107</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblName">Chandra Wati Singh [ BT5104 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblShikayat">26/02/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblForward_Date">05/04/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblForwarded_By">Singrauli</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl77_lblSection_Name">RMSA</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblRowNumber">77</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl78$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_hdnId" value="1666">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblGrievance">1666</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblName">A.K. Koshta [ AB6362 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblShikayat">31/12/2020</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblForward_Date">03/04/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblForwarded_By">Jabalpur</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl78_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblRowNumber">78</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl79$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_hdnId" value="21149">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblGrievance">21149</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblName">Chandra Mohan Dhakad [ BW4010 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblsubject">GPF/FBF withdrawal</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblShikayat">12/02/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblForward_Date">04/03/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblForwarded_By">Guna</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl79_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblRowNumber">79</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl80$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_hdnId" value="17079">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblGrievance">17079</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblName">Gajanand Patle [ BK2806 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblsubject">Pay fixation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblShikayat">25/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblStatus">Divisional JD</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblForward_Date">08/02/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl80_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblRowNumber">80</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl81$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_hdnId" value="17079">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblGrievance">17079</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblName">Gajanand Patle [ BK2806 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblsubject">Pay fixation</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblShikayat">25/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblStatus">Divisional JD</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblForward_Date">30/01/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblForwarded_By">Balaghat</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl81_lblSection_Name">Finance</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblRowNumber">81</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl82$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_hdnId" value="12909">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblGrievance">12909</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblName">Manish Kumar Nema [ AK1060 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblShikayat">14/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblForward_Date">29/01/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblForwarded_By">Damoh</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl82_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblRowNumber">82</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl83$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_hdnId" value="2267">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblGrievance">2267</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblName">Narendra Barve [ AO4445 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblShikayat">02/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblForward_Date">23/01/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblForwarded_By">Khandwa</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl83_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblRowNumber">83</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl84$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_hdnId" value="12909">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblGrievance">12909</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblName">Manish Kumar Nema [ AK1060 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblShikayat">14/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>


                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblForward_Date">15/01/2021</span>

                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblForwarded_By">Damoh</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl84_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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

