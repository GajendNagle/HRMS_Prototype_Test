<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_DepartmentEnquiry.aspx.cs" Inherits="mis_Transaction_Rpt_DepartmentEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table thead th {
            vertical-align: bottom;
            border-bottom: none !important;
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
                            <a href="#DepartmentalEnquiry" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Departmental Enquiry</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Department Enquiry Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
            <img src="../../img/Departmental%20Enquiry.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)" /><u>
            </u>
        </p>
    </div>

    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary" id="divDataofAU5693" runat="server">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Departmental Enquiry List<br />
                                विभागीय पूछताछ सूची</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <%--<nav class="navbar navbar-expand-lg topbar ">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#"></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiryNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग अनुसंधान
                                        </b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiryList.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग अनुसंधान सूची
                                        </b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="Rpt_DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग अनुसंधान रिपोर्ट
                                        </b></a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />--%>
                    <fieldset>
                        <legend>Department Enquiry Report / विभाग पूछताछ रिपोर्ट</legend>
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

                        <div class="row form-group">
                            <div class="col-md-12">
                                <table id="tblList" class="table table-bordered table-responsive-lg text-center">
                                    <thead>
                                        <tr class="align-text-top">
                                            <th rowspan="2">Sr.No./<br />
                                                सरल क्र.</th>
                                            <th rowspan="2">Enquiry Order No. /<br />
                                                विभाग आदेश क्र.</th>
                                            <th rowspan="2">Enquiry Order Date /<br />
                                                विभाग आदेश दिनांक</th>
                                            <th colspan="2">Remark /<br />
                                                रिमार्क</th>
                                            <th rowspan="2">Close Order No./<br />
                                                निराकरण आदेश क्र.</th>
                                            <th rowspan="2">Close Order Date/<br />
                                                निराकरण आदेश दिनांक</th>
                                        </tr>
                                        <tr>
                                            <th>Open Remark</th>
                                            <th>Close Remark<br />
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>652325</td>
                                            <td>01/01/2024</td>
                                            <td>उपरोक्त कार्यवाही की जा रही है</td>
                                            <td>Nil</td>
                                            <td>Nil</td>
                                            <td>Nil</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>652555</td>
                                            <td>05/01/2024</td>
                                            <td>Nil</td>
                                            <td>न्यायालय के आदेश पर कर्मचारियों
                                        <br />
                                                को सभी दोषों से मुक्त किया जाता है</td>
                                            <td>768594</td>
                                            <td>10/01/2024</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

