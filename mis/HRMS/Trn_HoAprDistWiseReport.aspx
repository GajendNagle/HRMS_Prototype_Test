<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_HoAprDistWiseReport.aspx.cs" Inherits="mis_HRMS_Trn_HoAprDistWiseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <style>
        .a {
            color: #0000ff;
        }
        th{
            white-space:nowrap;
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
            <img src="https://dpihrms.tserver.co.in/img/PropertyReturnNew.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
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
                                District<br />ज़िला
          
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
                                Department<br />
                                विभाग</label>
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
                                Annual Year 
   <br />
                                वित्तीय वर्ष
                            </label>
                            <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />

                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12 ">
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
                                    <td>
                                        <asp:Button runat="server" Text="50" OnClick="btn1_Click" ID="btn1" BorderStyle="None" CssClass="bg-transparent  text-info" /></td>

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
                        </table></div>
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
                        </table></div>
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
                                        <asp:Button runat="server" Text="70" OnClick="Button5_Click" ID="Button5" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>


                                </tr>

                            </tbody>
                        </table></div>
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
                </div></div>

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
                                    <td> <asp:Button runat="server" Text="40" OnClick="Button7_Click" ID="Button7" BorderStyle="None" CssClass="bg-transparent   text-info" /></td>




                                </tr>
                            </tbody>
                        </table>
                    </div>
                        </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="Fieldset1" visible="false">
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
                        <table id="Table6" class="table table-bordered table-responsive-lg text-center" runat="server">
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
                                    <th>Total Employees Whose APR Not Uploaded
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

                                        <td>25</td>
                                        <td>25</td>
                                        <td>50%</td>




                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>Indore</td>
                                        <td>70</td>

                                        <td>30</td>
                                        <td>40</td>
                                        <td>21%</td>



                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>
                                        <td>Sagar</td>
                                        <td>50</td>

                                        <td>78</td>
                                        <td>50</td>
                                        <td>39%</td>





                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>

                                        <td>Sehore</td>
                                        <td>40</td>

                                        <td>20</td>
                                        <td>20</td>
                                        <td>50%</td>






                                    </tr>
                                </tbody>

                        </table>
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

                                        <td>25</td>
                                        <td>25</td>
                                        <td>50%</td>




                                    </tr>
                                   
                                </tbody>

                        </table></div>
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

                                        <td>30</td>
                                        <td>40</td>
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
                                        <td>50</td>

                                        <td>78</td>
                                        <td>50</td>
                                        <td>39%</td>





                                    </tr>
                                </tbody>

                        </table>
                    </div>
                </div></div>


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

                                        <td>20</td>
                                        <td>20</td>
                                        <td>50%</td>






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
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>   
        function ShowPdf() {
            $('#districtModal').modal('hide');
            document.getElementById('pdfViewer').src = '../Document/DPI-HRMS.pdf';
            $('#pdfModal').modal('show');
        };
        function checkFileSize(inputId, maxSizeInKB, errorMessageId) {
            const fileInput = document.getElementById(inputId);
            const fileSizeMessage = document.getElementById(errorMessageId);
            const maxSizeInBytes = maxSizeInKB * 1024;

            const file = fileInput.files[0];
            //if (file && file.size > maxSizeInBytes) {
            //    fileSizeMessage.innerHTML = '<br>File size exceeds the maximum limit (' + maxSizeInKB + ' KB). Please select a smaller file.';
            //    // Optionally, you could clear the file input here to prevent submitting the oversized file
            //    fileInput.value = '';
            //} else {
            //    fileSizeMessage.textContent = '';
            //}
        }

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
    <%--<script>
        var employeeData = {
            'Bhopal': [
                {
                    "employee": "AB1234-Manish Meena",
                    "sankul": "23354912798 -Bal Bharti School",
                    "office": "23354912798 -Bal Bharti School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24",


                },
                {
                    "employee": "CD5678-Ritu Sharma",
                    "sankul": "34459823721 -New Horizon School",
                    "office": "34459823721 -New Horizon School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"

                },
                {
                    "employee": "EF9012-Rahul Gupta",
                    "sankul": "45563178456 -Little Angels School",
                    "office": "45563178456 -Little Angels School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "GH3456-Sangeeta Patel",
                    "sankul": "56678931234 -Green Valley School",
                    "office": "56678931234 -Green Valley School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "IJ7890-Ravi Kumar",
                    "sankul": "67784251983 -Sunrise Public School",
                    "office": "67784251983 -Sunrise Public School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "KL2345-Swati Verma",
                    "sankul": "78897563214 -Bright Minds School",
                    "office": "78897563214 -Bright Minds School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "MN6789-Ajay Singh",
                    "sankul": "89908674325 -Modern Public School",
                    "office": "89908674325 -Modern Public School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "OP1234-Sunita Sharma",
                    "sankul": "90098765432 -Global Academy",
                    "office": "90098765432 -Global Academy",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "QR5678-Rajesh Tiwari",
                    "sankul": "10011223344 -Vidya Niketan",
                    "office": "10011223344 -Vidya Niketan",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "ST9012-Neha Gupta",
                    "sankul": "11122334455 -Divine Public School",
                    "office": "11122334455 -Divine Public School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                }
            ],
            'Raisen': [
                {
                    "employee": "AB1234-Rakesh Kumar",
                    "sankul": "23354912798 -Govt. Higher Secondary School",
                    "office": "23354912798 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "CD5678-Kavita Singh",
                    "sankul": "34459823721 -Govt. Primary School",
                    "office": "34459823721 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "EF9012-Raj Kumar",
                    "sankul": "45563178456 -Govt. Middle School",
                    "office": "45563178456 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "GH3456-Sapna Patel",
                    "sankul": "56678931234 -Govt. High School",
                    "office": "56678931234 -Govt. High School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "IJ7890-Alok Singh",
                    "sankul": "67784251983 -Govt. Primary School",
                    "office": "67784251983 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "KL2345-Meena Verma",
                    "sankul": "78897563214 -Govt. Middle School",
                    "office": "78897563214 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "MN6789-Suresh Kumar",
                    "sankul": "89908674325 -Govt. Higher Secondary School",
                    "office": "89908674325 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "OP1234-Kiran Sharma",
                    "sankul": "90098765432 -Govt. Primary School",
                    "office": "90098765432 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "QR5678-Sanjay Tiwari",
                    "sankul": "10011223344 -Govt. Middle School",
                    "office": "10011223344 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "ST9012-Aarti Gupta",
                    "sankul": "11122334455 -Govt. Higher Secondary School",
                    "office": "11122334455 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                }
            ],
            'Rajgarh': [
                {
                    "employee": "AB1234-Rajesh Meena",
                    "sankul": "23354912798 -Govt. Higher Secondary School",
                    "office": "23354912798 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "CD5678-Asha Sharma",
                    "sankul": "34459823721 -Govt. Middle School",
                    "office": "34459823721 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "EF9012-Suresh Gupta",
                    "sankul": "45563178456 -Govt. Primary School",
                    "office": "45563178456 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "GH3456-Neeta Patel",
                    "sankul": "56678931234 -Govt. Higher Secondary School",
                    "office": "56678931234 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "IJ7890-Ram Kumar",
                    "sankul": "67784251983 -Govt. Middle School",
                    "office": "67784251983 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "KL2345-Ritu Verma",
                    "sankul": "78897563214 -Govt. Primary School",
                    "office": "78897563214 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "MN6789-Sanjay Kumar",
                    "sankul": "89908674325 -Govt. Higher Secondary School",
                    "office": "89908674325 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                },
                {
                    "employee": "OP1234-Aarti Sharma",
                    "sankul": "90098765432 -Govt. Middle School",
                    "office": "90098765432 -Govt. Middle School",
                    "department": "Education",
                    "designation": "Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "QR5678-Ajay Tiwari",
                    "sankul": "10011223344 -Govt. Primary School",
                    "office": "10011223344 -Govt. Primary School",
                    "department": "Education",
                    "designation": "Assistant Teacher",
                    "year": "2023-24"
                },
                {
                    "employee": "ST9012-Neetu Gupta",
                    "sankul": "11122334455 -Govt. Higher Secondary School",
                    "office": "11122334455 -Govt. Higher Secondary School",
                    "department": "Education",
                    "designation": "Principal",
                    "year": "2023-24"
                }
            ]
        }
        function populateMainTable(data) {
            const mainTableBody = document.querySelector('#mainTable tbody');
            mainTableBody.innerHTML = ''; // Clear existing rows
            if (document.querySelector('#ddlDistrict').value == "All") {
                Object.entries(data).forEach(([district], index) => {
                    const row = `
            <tr ">
                <td>${index + 1}</td>
                <td>${district}</td>
               
                <td><a data-bs-toggle="modal" data-bs-target="#districtModal" onclick="populateModalTable('${district}') " href="#" style="color: blue; font-weight: bold;">${10}</a></td>
                <td>${40}</td>
                <td>${20}%</td>
            </tr>
        `;
                    mainTableBody.innerHTML += row;
                }
                );
            }
            else if (document.querySelector('#ddlDistrict').value != "All") {


                data = Object.keys(data).filter(key => document.querySelector('#ddlDistrict').value.includes(key))
                    .reduce((obj, key) => {
                        obj[key] = data[key];
                        return obj;
                    }, {});


                Object.entries(data).forEach(([district], index) => {

                    const row = `
                        <tr ">
                        <td>${index + 1}</td>
                        <td>${district}</td>
       
                        <td><a data-bs-toggle="modal" data-bs-target="#districtModal" onclick="populateModalTable('${district}') " href="#" style="color: blue; font-weight: bold;">${10}</a></td>
                        <td>${40}</td>
                        <td>${20}%</td>
                        </tr>
                        `;
                    mainTableBody.innerHTML += row;
                }
                );
            }
           

        }
        function checkdist(age) {
            return age[document.querySelector('#ddlDistrict').value];
        }
        function populateModalTable(district) {
            const modalTableBody = document.querySelector('#modalTable tbody');
            modalTableBody.innerHTML = ''; // Clear existing rows

            const districtData = employeeData[district];
            districtData.forEach((item, index) => {
                const row = `
            <tr>
                <td>${index + 1}</td>
                <td>${item.employee}</td>
                <td>${district}</td>
                <td>${item.sankul}</td>
                <td>${item.office}</td>
                <td>${item.department}</td>
                <td>${item.designation}</td>
                <td>${item.year}</td>
                <td><button type="button" class="btn btn-primary" onclick="ShowPdf()"><i class="fa fa-eye" aria-hidden="true"></i></button></td>
            </tr>
        `;
                modalTableBody.innerHTML += row;
            });
            document.getElementById('modalDistrictName').innerText = district;
        }
         //Populate the main table initially
        populateMainTable(employeeData);
    </script>--%>
</asp:Content>

