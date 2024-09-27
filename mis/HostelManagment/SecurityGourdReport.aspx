<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SecurityGourdReport.aspx.cs" Inherits="mis_HostelManagment_SecurityGourdReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Security Guard Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Security Guard Report/सुरक्षा गार्ड रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Security Guard Report/ सुरक्षा गार्ड रिपोर्ट</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Hostel Name/
             <br />
                                हॉस्टल नाम चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">All</option>
                                <option value="1">KGBV Girls Hostel</option>
                                <option value="2">KGBV Boys Hostel</option>
                                <option value="3">KGBV Combine Hostel</option>
                            </select>
                        </div>
                    </div>
                   <div class="col-md-3">
    <div class="form-group">
        <label>
            Select Guard Name/
            <br />
            गार्ड नाम चयन करे<span style="color: red;">*</span></label>
        <select class="form-control select2">
            <option selected="selected" value="0">All</option>
            <option value="1">Vikas Namdev</option>
            <option value="2">Shivraj Goutam</option>
            <option value="3">Ashish Gupta</option>
        </select>
    </div>
</div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                From Date/<br />
                                दिनांक से
     <span style="color: red">*</span></label>
                            <input name="ename" id="fromDB" type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                To Date/<br />
                                दिनांक तक
                                <span style="color: red">*</span></label>
                            <input name="ename" id="toDOB" type="date" class="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="btn w-lg btn-success btn-border"
                                onclick="div()">
                                Search</button>
                            <a href="RPT_StudentWiseEntry.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset id="show" style="display: none;">
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
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No/
                             <br />
                                            सरल क्र.</th>
                                        <th>Hostel Name/
             <br />
                                            हॉस्टल नाम </th>
                                        <th>Date/<br />
                                            दिनांक</th>
                                        <th>Day/<br />
                                            दिन</th>
                                        <th>Security Guard Name/<br />
सुरक्षा गार्ड का नाम</th>
                                        <th>Shift/<br />शिफ्ट</th>
                                        <th>Time /<br /> समय</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>KGBV Girls Hostel</td>
                                        <td>23/08/2024</td>
                                        <th>Friday</th>
                                        <td>Ashish Gupta/<br />
                                            EDP4454445</td>
                                        <td>Evening Shift</td>
                                        <td>03:00pm TO 11:00pm </td>


                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>KGBV Girls Hostel</td>

                                        <td>23/08/2024</td>
                                        <th>Friday</th>
                                        <td>Sita Verma/<br />
                                            EDP4454445</td>
                                        <td>Morning Shift</td>
                                        <td>06:00am TO 03:00pm</td>

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
    <script>
        function div() {

            document.getElementById("show").style.display = (document.getElementById("show").style.display == 'block') ? 'none' : 'block';

        }

    </script>
</asp:Content>

