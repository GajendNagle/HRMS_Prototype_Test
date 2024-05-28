<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_DistrictWiseAcr.aspx.cs" Inherits="mis_Transaction_Rpt_DistrictWiseAcr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        /* #btn1{
             border:none;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                    </u>
                </p>
                <%--<h6 style="font-size: 15px; margin-left: 25px">PART-1 Basic Information(भाग एक- सामान्य जानकारी)</h6>--%>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="ConfedicialReportNotes.aspx" title="click to go on">Annual Confidential Report (ACR)</a></li>
                        <li class="breadcrumb-item active">Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <a class="nav-link  text-white " href="ConfedicialReportNotes.aspx" role="button"><b class="font-16 font-bold "><i class="fa fa-home "></i></b></a>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee ACR </b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ConfedicialReport.aspx">Employee Apply ACR</a></li>
                                    <li><a class="dropdown-item" href="EmployeeDetails.aspx">Resend/Print Application </a></li>
                                </ul>
                            </li>
                            <a class="nav-link text-white" href="ReportingOfficerFill.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Fill By Reporting  Officer</b></a>
                            <a class="nav-link text-white" href="AcceptingAuthorityFilled.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Reviewing Fill Accepting Authority </b></a>


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Rpt_EmployeeACR.aspx">Employee ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_ReportingOfficer.aspx">Reporting Officer ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_AcceptingAuthority.aspx">Accepting Authority ACR Report</a></li>
                                    <li><a class="dropdown-item" href="Rpt_DistrictWiseAcr.aspx">District Wise ACR Report</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />
            <fieldset runat="server" id="DDL">
                <legend>District Wise ACR Report</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District
                              
                    <span class="fa-pull-right" style="color: red">*</span>
                            </label>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="txtUniqueID" Display="Dynamic"></asp:RequiredFieldValidator>

                            <asp:DropDownList runat="server" ID="txtUniqueID" class="form-control select2" autocomplete="off" AutoPostBack="true" OnSelectedIndexChanged="txtUniqueID_SelectedIndexChanged">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Sagar</asp:ListItem>
                                <asp:ListItem>Sehore</asp:ListItem>

                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="col-md-3 mt-4">
                        <%--   <div class="form-group">--%>
                        <asp:Button runat="server" type="button" class="Alert-Save2 btn btn-success btn-rounded " Text="Search" OnClick="Unnamed_Click" />

                        <a href="Rpt_DistrictWiseAcr.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                    </div>

                </div>

            </fieldset>
            <br />


            <fieldset runat="server" visible="false" id="show">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>District Name</th>

                                        <th>Financial Year</th>
                                        <th>Total Numbers</th>

                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="4" OnClick="Unnamed_Click1" ID="btn1" BorderStyle="None" CssClass="bg-white  text-info" /></td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>Indore</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="6" OnClick="Button1_Click" ID="Button1" BorderStyle="None" CssClass="bg-white  text-info  " /></td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>
                                        <td>Sagar</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="6" OnClick="Button2_Click" ID="Button2" BorderStyle="None" CssClass="bg-white  text-info" /></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>
                                        <td>Sehore</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="6" OnClick="Button3_Click" ID="Button3" BorderStyle="None" CssClass="bg-white  text-info" /></td>




                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" visible="false" id="show1">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table6" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>District Name</th>

                                        <th>Financial Year</th>
                                        <th>Total Numbers</th>

                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="4" OnClick="Button4_Click" ID="Button4" BorderStyle="None" CssClass="bg-white  text-info" /></td>




                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" visible="false" id="show2">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput9" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table7" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>District Name</th>

                                        <th>Financial Year</th>
                                        <th>Total Numbers</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Indore</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="6" OnClick="Button5_Click" ID="Button5" BorderStyle="None" CssClass="bg-white  text-info" /></td>

                                    </tr>



                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" visible="false" id="show3">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput11" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table8" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>District Name</th>

                                        <th>Financial Year</th>
                                        <th>Total Numbers</th>

                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Sagar</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="6" OnClick="Button6_Click" ID="Button6" BorderStyle="None" CssClass="bg-white  text-info" /></td>

                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" visible="false" id="show4">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput10" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table9" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No</th>
                                        <th>District Name</th>
                                        <th>Financial Year</th>
                                        <th>Total Numbers</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Sehore</td>
                                        <td>2023-2024</td>
                                        <td>
                                            <asp:Button runat="server" Text="6" OnClick="Button7_Click" ID="Button7" BorderStyle="None" CssClass="bg-white  text-info" /></td>

                                    </tr>


                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>

            <fieldset runat="server" id="Fieldset1" visible="false">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>Employee Unique ID</th>
                                        <th>Sankul Code </th>
                                        <th>Financial Year</th>




                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>

                                        <td>AC4453/Ram  Thakur </td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>

                                        <td>2023-2024</td>




                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>BI4453/Siya Gupta</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>

                                        <td>AC4659/Gopal Varma</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>

                                        <td>2023-2024</td>




                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>

                                        <td>BI4563/Nidhi Mishra</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>





                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>

            <fieldset runat="server" id="Fieldset2" visible="false">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput6" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table5" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>Employee Unique ID</th>
                                        <th>Sankul Code </th>
                                        <th>Financial Year</th>



                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>BI4453/Kamlesh Soni</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>

                                        <td>AC4659/Umashankar Agrawal</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>

                                        <td>2023-2024</td>




                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>

                                        <td>BI4563/Abhilasha Sahu</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>
                                    </tr>


                                    <tr valign="middle">
                                        <td>4</td>

                                        <td>BI5593/Gayatri Nagwanshi</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>
                                    </tr>

                                    <tr valign="middle">
                                        <td>5</td>

                                        <td>Bk8573/Mohammad Rafi</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                        <td>2023-2024</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>6</td>

                                        <td>BY8573/Neeraj Saxena</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                        <td>2023-2024</td>
                                    </tr>





                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="Fieldset3" visible="false">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput7" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table3" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>Employee Unique ID</th>
                                        <th>Sankul Code </th>
                                        <th>Financial Year</th>


                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>BI4453/Varsha Palsule</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>

                                        <td>AC4659/Suman Kant Jain</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>

                                        <td>2023-2024</td>




                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>

                                        <td>BI4563/Dilip Raghuwanshi</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>
                                    </tr>


                                    <tr valign="middle">
                                        <td>4</td>

                                        <td>BI5593/Dilip Raghuwanshi</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>
                                    </tr>

                                    <tr valign="middle">
                                        <td>5</td>

                                        <td>Bk8573/SWATANTRA TRIPATHI </td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                        <td>2023-2024</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>6</td>

                                        <td>BY8573/Ramakant Sharma</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                        <td>2023-2024</td>
                                    </tr>


                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="Fieldset4" visible="false">
                <legend>Details</legend>

                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput8" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table4" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No</th>
                                        <th>Employee Unique ID</th>
                                        <th>Sankul Code </th>
                                        <th>Financial Year</th>



                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>BI4453/Shail Gupta </td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>

                                        <td>AC4659/PRIYANKA MEHRA </td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>

                                        <td>2023-2024</td>




                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>

                                        <td>BI4563/Veerendra Kumar Jain </td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>
                                    </tr>


                                    <tr valign="middle">
                                        <td>4</td>

                                        <td>BI5593/Antar Singh Baror</td>
                                        <td>GOVT. HSS SHYAMPUR-23010804504	</td>
                                        <td>2023-2024</td>
                                    </tr>

                                    <tr valign="middle">
                                        <td>5</td>

                                        <td>Bk8573/Ram Singh Thakur </td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                        <td>2023-2024</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>6</td>

                                        <td>BY8573/Jagdeesh   Sahu</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                        <td>2023-2024</td>
                                    </tr>

                                </tbody>

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

