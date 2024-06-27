<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="School_SurplusGMS .aspx.cs" Inherits="mis_Transaction_School_SurplusGMS_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #dv_rpt {
            display: none;
        }

        .head {
            justify-content: space-around;
            margin: 10px;
            margin-bottom: 800px;
            font-weight: 400;
            font-size: 20px;
            color: white;
        }

            .head:hover {
                color: red;
                text-decoration: underline;
            }

        title {
            background-color: brown;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<header class="bg-Secondary">
        <h2 class="fw-normal"><a href="#">Surplus Teachers Management System</a></h2>
    </header>
    <div class="mb-3">
        <div class="row nav">
            <div class="col-md-12 justify-content-around">
                <a class="head" href="../Default.aspx">Home</a>
                <a class="head" href="ZeroTeacher.aspx">Zero Teachers </a>
                <a class="head" href="SingleTeacherManagementSystem.aspx">Single Teachers</a>
                <a class="head" href="SurplusTeacherManagementSystem.aspx">Surplus Status</a>
            </div>
        </div>
    </div>
    <center>
        <h3 class="alert alert-success">School Details along with Surplus Teachers
        </h3>
    </center>
    <div class="card mt-3 shadow ">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
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

                        <li class="breadcrumb-item"><span>School Details along with Surplus Teachers</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">School Details along with Surplus Teachers / स्कूल का विवरण और अतिरिक्त शिक्षकों की जानकारी</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School Details /स्कूल का विवरण </legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                DISE Code<br />
                                डाईस कोड<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="23510817802" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Confirm DISE Code<br />
                                डाईस कोड की पुष्टि करें
                                <span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="23510817802" />
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()" value="" id="btnSave">View Detail</button>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="dv_rpt">
                <legend>School Details Along With Surplus Teachers / स्कूल का विवरण और अतिरिक्त शिक्षकों की जानकारी</legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                District Name<br />
                                जिले का नाम<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Agar Malwa</asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Block Name<br />
                                ब्लॉक का नाम<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Agar</asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Management Type<br />
                                प्रबंधन प्रकार<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">School Education Department</asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                School<br />
                                स्कूल<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">GMS GHANIKHEDI</asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                DISE Code<br />
                                डाईस कोड<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">23510817101</asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Cateogry<br />
                                वर्ग<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Middle School (Class 6 to 8)</asp:TextBox>
                        </div>
                    </div>
                </div>
                <fieldset class="mt-5  ">
                    <legend>Panel-Wise Teacher's Surplus Details / पैनल-वार शिक्षक अधिशेष विवरण</legend>

                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr class="card-header">
                                        <th>Panel Name<br />
                                            पैनल नाम</th>
                                        <th>Sanctioned Posts<br />
                                            स्वीकृत पद</th>
                                        <th>Working<br />
                                            कार्यरत</th>
                                        <th>Proposed Surplus<br />
                                            प्रस्तावित अधिशेष</th>
                                        <th>Marked Surplus<br />
                                            चिह्नित अधिशेष</th>
                                    </tr>
                                    <tr>
                                        <td>SSS-2 Social Science</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>SSS-3</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset class="mt-5  ">
                    <legend>All Employee With Surplus Details / अधिशेष विवरण वाले सभी कर्मचारी</legend>
                    <p>Custom Search Builder</p>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr class="card-header">
                                        <th>Name<br />
                                            नाम</th>
                                        <th>Designation<br />
                                            पद</th>
                                        <th>Panel<br />
                                            पैनल</th>
                                        <th>Handicapped<br />
                                            विकलांग</th>
                                        <th>Critical Illeness<br />
                                            गंभीर बीमारी</th>
                                        <th>Present Posting<br />
                                            वर्तमान पद</th>
                                        <th>AgeInYear<br />
                                            आयु (वर्षों में)</th>
                                        <th>Surplus<br />
                                            अधिशेष</th>
                                    </tr>
                                    <tr>
                                        <td>Kalu Singh Rathore[AAZ7951]</td>
                                        <td>Madhyamik Shishak</td>
                                        <td>SSS-2 Social Science</td>
                                        <td></td>
                                        <td>No Critical Illeness</td>
                                        <td>21/06/2016</td>
                                        <th>57</th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Rukmani Bai Dhanka[AZ7959]</td>
                                        <td>Prathamik Shishak</td>
                                        <td>SSS-3</td>
                                        <td></td>
                                        <td>No Critical Illeness</td>
                                        <td>26/05/2018</td>
                                        <th>61</th>
                                        <th></th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {

            document.getElementById("dv_rpt").style.display = "block";
        }
    </script>
</asp:Content>

