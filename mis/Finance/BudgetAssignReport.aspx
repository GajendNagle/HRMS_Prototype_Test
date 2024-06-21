﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BudgetAssignReport.aspx.cs" Inherits="mis_Finance_BudgetAssignReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                       <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="Group_Master.aspx" title="click to go on">Budget Assign Report</a></li>
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
                            <h4 class="card-title">Budget Assign Report /
                                बजट असाइनमेंट रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Budget Assign Report /
                                बजट असाइनमेंट रिपोर्ट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date /<br />
                                        दिनांक से चुनें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2023-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date /<br />
                                        दिनांक तक चुनें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Office Type/
   <br />
                                         ऑफिस टाइप का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Head Office</option>
                                        <option value="2"> JD Office</option>
                                        <option value="3">DEO Office</option>
                                        <option value="4">Block Office</option>
                                        <option value="5">Sankul</option>
                                        <option value="6">School</option>
                                    </select>
                                </div>
                            </div>
                             <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name/<br />
                                ऑफिस नाम का चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Jabalpur</option>
                                        <option value="2"> Indore</option>
                                        <option value="3">Bhopal</option>
                                        <option value="4">Gwalior</option>
                                        <option value="5">Hoshangabad</option>
                                    </select>
                        </div>
                    </div>

                            <hr />
                            <div class="col-md-12 justify-content-center">
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                    <a id="clearfirst" href="BudgetAssignProcess.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Budget Assign Report /
                                बजट असाइनमेंट रिपोर्ट </legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr>
                                                <th>Sr. No. /<br />
                                                    क्र.सं.
                                                </th>
                                                <th>Assign Date/<br />
                                                    दिनांक निर्दिष्ट</th>
                                                <th>Letter No. /
                                            <br />
                                                    पत्र क्रमांक</th>
                                                <th>No. of DFO /
                                            <br />
                                                    डी.एफ.ओ की संख्या 
                                                </th>
                                                <th>Total Assign Limit /
                                            <br />
                                                    कुल नियत सीमा
                                                </th>
                                                <th>Action /
                                            <br />
                                                    कार्रवाई 
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>2023-12-10</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>2024-25/0809</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>1</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>222975.00</a>
                                                </td>
                                                 <td><a href="#"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>2023-06-10</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>2024-25/0810</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>1</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>69487.00</a>
                                                </td>
                                                 <td><a href="#"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>2023-04-1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>2024-25/0811</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>1</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>54487.00</a>
                                                </td>
                                                 <td><a href="#"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
                                            </tr>
                                           
                                            <!-- Add more rows as needed -->
                                        </tbody>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
</asp:Content>
