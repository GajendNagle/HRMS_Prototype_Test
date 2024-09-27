<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_HoAprDistWiseReport.aspx.cs" Inherits="mis_HRMS_Trn_HoAprDistWiseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <style>
        .a {
            color: #0000ff;
        }

        th {
            white-space: nowrap;
        }
         div.form-group{
            margin: 0px 0px 0px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--   <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/PropertyReturnNew.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=APRMS" title="click to go on">APRMS</a></li>
                    <li class="breadcrumb-item active">Head Office APRMS</li>
                </ol>
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
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li>
                                <a class="nav-link  text-white " href="HOAPRNotes.aspx" role="button">
                                    <b class="font-16 font-bold "><i class="fa fa-home "></i>
                                    </b>

                                </a>

                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Fill APR</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_HoAprFill.aspx">Fill APR Form</a></li>
                                    <li><a class="dropdown-item" href="PrintAPRForm.aspx">Print APR Form</a></li>
                                    <li><a class="dropdown-item" href="UploadAPRForm.aspx">Upload APR Form</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Reports</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_HoAprDistWiseReport.aspx">APR District Wise Reports</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />--%>
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
                            <a href="#EmpAPRMS" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee APRMS</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>APRMS District Wise Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row align-content-end">
        <div class="col-md-5 ">
            <img src="https://dpihrms.tserver.co.in/img/PropertyReturnNew.png" style="height: 70px">
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5>APRMS District Wise Report/
              APRMS जिलावार रिपोर्ट
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset runat="server" id="DDL">
                <legend>Annual Property Returns District Wise Report/वार्षिक संपत्ति रिटर्न रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District<br />
                               जिले का नाम का चयन करें
          
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select  Department<br />
                                विभाग का नाम का चयन करें</label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select All--</option>
                                <option value="1">Commissioner, Public Instructions </option>
                                <option value="4">Commissioner, Tribal Development</option>
                                <option value="3">Rajya Shiksha Kendra (SSA Directorate)</option>
                                <option value="2">State Council of Education Research &amp; Training</option>
                                <option value="7">Madhya Pradesh Madhyamik Shiksha Abhiyaan Samiti </option>
                                <option value="6">State Open School</option>
                                <option value="8">MP Board of Secondary Education</option>
                                <option value="10">SC Development </option>
                                <option value="11">Education</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                               Select Annual Year<br />
                               वार्षिक वर्ष का चयन करें
                            </label>
                            <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />

                        </div>
                    </div>
                    <div class="col-md-12 ">
                        <hr />
                        <div class="form-group ">
                            <asp:Button runat="server" type="button" class="Alert-Save2 btn w-lg btn-success btn-border" Text="Search" OnClick="Unnamed_Click" />
                            <a href="Trn_HoAprDistWiseReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset runat="server" visible="false" id="show">
                <legend>Details/विवरण</legend>

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
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" class="text-white">
                                        <th>Sr.No<br />
                                            सरल क्र.</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>

                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td> <asp:Button runat="server" Text="50" OnClick="btn1_Click" ID="btn1" BorderStyle="None" CssClass="bg-transparent  text-info" /></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>Indore</td>
                                        <td>
                                            <asp:Button runat="server" Text="70" OnClick="Button1_Click" ID="Button1" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>
                                        <td>Sagar</td>
                                        <td>
                                            <asp:Button runat="server" Text="78" OnClick="Button2_Click" ID="Button2" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>
                                        <td>Sehore</td>
                                        <td>
                                            <asp:Button runat="server" Text="40" OnClick="Button3_Click" ID="Button3" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" visible="false" id="show1">
                <legend>Details/विवरण</legend>
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

                            <table id="Table2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" class="text-white">
                                        <th>Sr.No<br />
                                            सरल क्र.</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>

                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>
                                            <asp:Button runat="server" Text="50" OnClick="Button4_Click" ID="Button4" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" visible="false" id="show2">
                <legend>Details/विवरण</legend>
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
                            <table id="Table3" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" class="text-white">
                                        <th>Sr.No<br />
                                            सरल क्र.</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>

                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Indore</td>
                                        <td>
                                            <asp:Button runat="server" Text="70" OnClick="Button5_Click" ID="Button5" BorderStyle="None" CssClass="bg-transparent text-info" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" visible="false" id="show3">
                <legend>Details/विवरण</legend>
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

                            <table id="Table4" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" class="text-white">
                                        <th>Sr.No<br />
                                            सरल क्र.</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>
                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>Sagar</td>
                                        <td>
                                            <asp:Button runat="server" Text="78" OnClick="Button6_Click" ID="Button6" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" visible="false" id="show4">
                <legend>Details/विवरण</legend>
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
                            <
                        <table id="Table5" class="table table-bordered table-responsive-lg text-center" runat="server">
                            <thead>
                                <tr valign="middle" class="text-white">
                                    <th>Sr.No<br />
                                        सरल क्र.</th>
                                    <th>District Name<br />
                                        जिले का नाम</th>
                                    <th>Total Employees<br />
                                        कुल कर्मचारी </th>
                                    <%--<th>प्रिंट</th--%>
                                </tr>
                            </thead>
                            <tbody>
                                <tr valign="middle">
                                    <td>1</td>
                                    <td>Sehore</td>
                                    <td>
                                        <asp:Button runat="server" Text="40" OnClick="Button7_Click" ID="Button7" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="Fieldset2" visible="false">
                <legend>Details/विवरण</legend>

                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table id="Table7" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr>
                                        <th>Sr.No<br />
                                            सरल.क्र</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>
                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <th>Total Employees Whose APR Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड किया गया है</th>
                                        <th>Total Employees Whose APR Not Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड नहीं किया गया है</th>
                                        <th>Performance %<br />
                                            प्रदर्शन %</th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td>50</td>
                                            <td><a role="button"  class="bg-transparent   text-info"  onclick="myEmpTable(25, 'Bhopal');">25</a></td>
                                            <td><a   role="button"  class="bg-transparent   text-info" onclick="myEmpTable(25, 'Bhopal', 'Not');">25</a></td>
                                            <td>50%</td>
                                        </tr>
                                    </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="Fieldset3" visible="false">
                <legend>Details/विवरण</legend>

                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table id="Table8" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr>
                                        <th>Sr.No<br />
                                            सरल.क्र</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>
                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <th>Total Employees Whose APR Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड किया गया है</th>
                                        <th>Total Employees Whose APR Not Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड नहीं किया गया है</th>
                                        <th>Performance %<br />
                                            प्रदर्शन %</th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>


                                            <td>Indore</td>
                                            <td>70</td>
                                            <td><a  role="button"  class="bg-transparent   text-info" onclick="myEmpTable(30, 'Indore');">30</a></td>
                                            <td><a  role="button"  class="bg-transparent   text-info" onclick="myEmpTable(40, 'Indore', 'Not');">40</a></td>
                                            <td>21%</td>
                                        </tr>
                                    </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="Fieldset4" visible="false">
                <legend>Details/विवरण</legend>

                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table id="Table9" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr>
                                        <th>Sr.No<br />
                                            सरल.क्र</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>
                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <th>Total Employees Whose APR Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड किया गया है</th>
                                        <th>Total Employees Whose APR Not Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड नहीं किया गया है</th>
                                        <th>Performance %<br />
                                            प्रदर्शन %</th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Sagar</td>
                                            <td>78</td>
                                            <td><a  role="button"  class="bg-transparent   text-info" onclick="myEmpTable(30, 'Sagar');">30</a></td>
                                            <td><a  role="button"  class="bg-transparent   text-info" onclick="myEmpTable(48, 'Sagar', 'Not');">48</a></td>
                                            <td>38.46%</td>
                                        </tr>
                                    </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="Fieldset5" visible="false">
                <legend>Details/विवरण</legend>

                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table id="Table10" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr>
                                        <th>Sr.No<br />
                                            सरल.क्र</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>
                                        <th>Total Employees<br />
                                            कुल कर्मचारी </th>
                                        <th>Total Employees Whose APR Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड किया गया है</th>
                                        <th>Total Employees Whose APR Not Uploaded<br />
                                            कुल कर्मचारी जिनका एपीआर अपलोड नहीं किया गया है</th>
                                        <th>Performance %<br />
                                            प्रदर्शन %</th>

                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Sehore</td>
                                            <td>40</td>
                                            <td><a  role="button"  class="bg-transparent   text-info" onclick="myEmpTable(20, 'Sehore');">20</a> </td>
                                            <td><a  role="button"  class="bg-transparent   text-info" onclick="myEmpTable(20, 'Sehore','Not')">20</a> </td>
                                            <td>50%</td>
                                        </tr>
                                    </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fsEmpInfo" style="display:none">
                <legend>Employee Information /कर्मचारी की जानकारी</legend>

                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table id="EmpInfo" class="table table-bordered table-responsive-lg text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No<br />
                                            सरल.क्र</th>
                                        <th>District Name<br />
                                            जिले का नाम</th>
                                        <th>Block Name<br />
                                            ब्लॉक का नाम</th>
                                        <th>Employee Name<br />
                                            कर्मचारी नाम</th>
                                        <th>OIS Code<br />
                                            OIS कोड</th>
                                        <th id="EmpInfoView">View</th>


                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                    <tbody id="EmpInfoBody">
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
<script>
    const Blocks = {
        //"Raisen": ["Badi", "Begamganj", "Obedullaganj", "Sanchi", "Silwani", "Udaipura"],
        //"Rajgarh": ["Biaora", "Jirapur", "Khilchipur", "Narsinghgarh"],
        //"Vidisha": ["Basoda", "Kurwai", "Lateri", "Sironj", "Vidisha"],
        "Sehore": ["Ashta", "Budhni", "Ichhawar", "Jawar", "Nasrullaganj", "Rehti", "Sehore"],
        "Bhopal": ["Berasia", "Phanda"],
        "Indore": ["Dr.Ambedkar Nagar(MHOW)", "Sanwer", "Depalpur", "Indore"],
        "Sagar": ["Bina", "Deori", "Jaisinagar", "Kesli", "Khurai", "Malthone", "Rahatgarh", "Rehli", "Sagar", "Shahgarh"],
    };
    const FilePath = ["../Document/APRMS_APRReport.pdf", "../Document/APRMS_Not_Applicable.pdf"]
    const OIS = ["23354912798 -Bal Bharti School", "34459823721 -New Horizon School", "45563178456 -Little Angels School", "56678931234 -Green Valley School", "67784251983 -Sunrise Public School	", "78897563214 -Bright Minds School", "89908674325 -Modern Public School"];
    const names = ["UV3456-Vikram Singh", "WX7890-Anita Verma", "YZ1234-Amit Kumar", "AB5678-Priya Sharma", "CD9012-Rajesh Mehta", "EF2345-Suman Singh", "GH6789-Krishna Patel", "IJ0123-Sanjay Gupta", "KL4567-Pooja Sharma", "MN8901-Vinay Kumar", "OP2345-Maya Patel", "QR6789-Vivek Singh", "ST0123-Swati Gupta", "UV4567-Rakesh Sharma", "WX8901-Neha Patel", "YZ2345-Rahul Singh", "AB6789-Anjali Verma", "CD0123-Rajat Gupta", "EF4567-Kavita Sharma", "AB1234-Manish Meena", "CD5678-Ritu Sharma", "EF9012-Rahul Gupta", "GH3456-Sangeeta Patel", "IJ7890-Ravi Kumar", "VT3465-Khari Mohan", "VT3464-Naya Adwani", "VT3463-Ishaan Mallik", "VT3462-Atharv Shriwastav", "VT3461-Kanan Yadav", "VT3460-Jai Radhor", "VT3467-Amar Dewan", "VT3468-Dhruv Mathur", "VT3469-Aarna Sahu", "VT3470-Agastya Patel", "VT3471-Reyansh Shingh", "VT3472-Tenzin Ali", "VT3473-Jiya Gandhi", "VT3474-Nila Prajapati", "VT3475-Indu Mohan", "VT3476-Sahana Shah"];

    function myEmpTable(rows, district, flag = 'Yes') {
        document.getElementById('fsEmpInfo').style.display = 'block';
        const tableBody = document.getElementById('EmpInfoBody');

        tableBody.innerHTML = ''; 
        const blockOptions = Blocks[district] || [district];
        const OIScode = OIS;
        if (flag == 'Yes') {
            document.getElementById('EmpInfoView').style.display = 'table-cell'

            for (var i = 1; i < rows + 1; i++) {
                const tr = document.createElement('tr');
                const randomBlock = blockOptions.length ? blockOptions[Math.floor(Math.random() * blockOptions.length)] : '';
                const randomnames = names.length ? names[Math.floor(Math.random() * names.length)] : '';
                const randomOIS = OIScode.length ? OIScode[Math.floor(Math.random() * OIScode.length)] : '';
                const randomFile = FilePath.length ? FilePath[Math.floor(Math.random() * FilePath.length)] : '';
                tr.innerHTML = `
                    <td>${i}</td>
                    <td>${district}</td>
                    <td>${randomBlock}</td>
                    <td>${randomnames}</td>
                    <td>${randomOIS}</td>
                    <td><a role="button"  class="btn btn-outline-info btn-border w-lg" href="${randomFile}" target="_blank">View</a></td>
                   
                `;
                tableBody.appendChild(tr);
            }
        }
        else {
            document.getElementById('EmpInfoView').style.display = 'none'
            for (var i = 1; i < rows + 1; i++) {
                const tr = document.createElement('tr');
                const randomBlock = blockOptions.length ? blockOptions[Math.floor(Math.random() * blockOptions.length)] : '';
                const randomOIS = OIScode.length ? OIScode[Math.floor(Math.random() * OIScode.length)] : '';
                const randomnames = names.length ? names[Math.floor(Math.random() * names.length)] : '';
                tr.innerHTML = `
                  <td>${i}</td>
                  <td>${district}</td>
                  <td>${randomBlock}</td>
                  <td>${randomnames}</td>
                  <td>${randomOIS}</td>
                  `;
                tableBody.appendChild(tr);
            }
        }
    }
   
</script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script>        
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });
    </script>
    
</asp:Content>

