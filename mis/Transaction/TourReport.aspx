<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TourReport.aspx.cs" Inherits="mis_Transaction_TourReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="col-md-12">
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
                        <a href="#Tour" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>Tour</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Tour Report</span></li>
                </ol>
            </div>
        </div>
    </div>

    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">Tour Report / 
                                  यात्रा रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">

                    <fieldset>
                        <legend>Get To Details / विवरण प्राप्त करें</legend>

                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        From Date/
                                   दिनांक से<span style="color: red">*</span></label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="txtFrom" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox TextMode="Date" runat="server" ID="txtFrom" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        To Date/
                              दिनांक तक<span style="color: red">*</span></label>
                                    <asp:TextBox TextMode="Date" runat="server" ID="txtToDate" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <hr />
                        <div class="row align-items-end">
                            <div class="col-md-12">

                                <asp:Button runat="server" type="button" OnClick="Unnamed_Click" Text="Search" class="btn w-lg btn-success btn-border" />
                                <a href="TourReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>

                    </fieldset>
                    <fieldset runat="server" visible="false" id="TourDetails">

                        <legend>Tour Details/यात्रा विवरण
                        </legend>
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
                                    <table class="table table-bordered" style="white-space: nowrap">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.<br />
                                                    सरल क्र.
                                                </th>
                                                <th>Employee Code/Name<br />
                                                    कर्मचारी कोड या नाम
                                                </th>
                                                <th>Office Name<br />
                                                    ऑफिस का नाम
                                                </th>
                                                <th>Tour Type<br />
                                                    यात्रा का प्रकार
                                                </th>
                                                <th>Tour Start From
            <br />
                                                    यात्रा प्रारंभ
                                                </th>
                                                <th>Tour Destination<br />
                                                    यात्रा समाप्त
                                                </th>
                                                <th>Duration<br />
                                                    अवधि
                                                </th>
                                                <th>No.Of Days<br />
                                                    दिनों की संख्या
                                                </th>
                                                <th>Status<br />
                                                    स्थिति
                                                </th>
                                                <th>Tour Purpose<br />
                                                    यात्रा का उद्देश्य</th>
                                                <th>Reject Remark<br />
                                                    अस्वीकृत रिमार्क
                                                </th>
                                            </tr>
                                        </thead>

                                        <tr>
                                            <td>1</td>
                                            <td>BI3468-Ramesh Bamniya</td>
                                            <td>NA</td>
                                            <td>official </td>
                                            <td>Bhopal</td>
                                            <td>Indore</td>
                                            <td>13/07/2024 - 15/07/2024</td>
                                            <td>3</td>
                                            <td>Pending</td>
                                            <td>Trainning</td>
                                            <td>NA</td>
                                        </tr>

                                        <tr>
                                            <td>2</td>
                                            <td>BI3468-Shekhar Verma</td>
                                            <td>NA</td>
                                            <td>official </td>
                                            <td>Bhopal</td>
                                            <td>Indore</td>
                                            <td>13/05/2024 - 16/05/2024</td>
                                            <td>4</td>
                                            <td>Pending</td>
                                            <td>Test</td>
                                            <td>NA</td>
                                        </tr>

                                        <tr>
                                            <td>3</td>
                                            <td>BI3468-Suraj Rajput</td>
                                            <td>NA</td>
                                            <td>official </td>
                                            <td>Bhopal</td>
                                            <td>Indore</td>
                                            <td>12/02/2024 - 15/02/2024</td>
                                            <td>4</td>
                                            <td>Pending</td>
                                            <td>NA</td>
                                            <td>NA</td>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

