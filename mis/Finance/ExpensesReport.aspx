<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ExpensesReport.aspx.cs" Inherits="mis_Finance_ExpensesReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="PaymentVoucher.aspx" title="click to go on">Expenses Report</a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Expenses Report/
                                व्यय रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                      <div class="card-body">
                    <fieldset>
                        <legend>Expenses Report/
                                व्यय रिपोर्ट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select From Date /
                                        दिनांक से चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select To Date /
                                        दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="date1" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Head Type /<br />
                                        हेड टाइप चुनें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                        <option value="1">Income</option>
                                    </select>
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
                                        <option value="2">JD Office</option>
                                        <option value="3">DEO Office</option>
                                        <option value="4">Block Office</option>
                                        <option value="5">Sankul</option>
                                        <option value="6">School</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Office Name/<br />
                                        ऑफिस नाम का चयन करें<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Jabalpur</option>
                                        <option value="2">Indore</option>
                                        <option value="3">Bhopal</option>
                                        <option value="4">Gwalior</option>
                                        <option value="5">Hoshangabad</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Submit</button>
                                <a id="clearfirst" href="BudgetAllocationReport.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Expenses Report/
                                व्यय रिपोर्ट </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-sm btn-rounded w-55" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-sm btn-rounded w-55" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <h5>मध्य प्रदेश राज्य लघु वनोपज (व्यापार एवं विकास) सहकारी संघ मर्यादित
                            </h5>
                        </div>
                        <div class="row justify-content-center mt-0">
                            <h5>[Head Office]
                            </h5>
                        </div>
                        <div class="row justify-content-center mt-0">
                            <h5>01-04-2024  To 31-06-2023 भुगतान का विवरण
                            </h5>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr>
                                               <th> मुख्य लेखा शीर्ष</th>
                                               <th> विवरण</th>
                                               <th> लेखा शीर्ष</th>
                                               <th> विवरण</th>
                                               <th> उपलेखा शीर्ष</th>
                                               <th> विवरण</th>
                                               <th> बजट अनुमान</th>
                                               <th> बजट आवंटन</th>
                                               <th> बजट आवंटन हेतु शेष राशि(7-8)</th>
                                               <th> गत माह तक व्‍यय</th>
                                               <th> वर्तमान माह तक व्‍यय</th>
                                               <th> कुल व्यय</th>
                                               <th> शेष राशि</th>
                                               <th> बजट अनुमान से अधिक व्यय</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                               <td>1</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>4</td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>7</td>
                                                <td>8</td>
                                                <td>9</td>
                                                <td>10</td>
                                                <td>11</td>
                                                <td>12 </td>
                                                <td> </td> 
                                            </tr>
                                            <tr role="row" class="odd">
                                              <td>10</td>
                                                <td>संघ मुख्यालय </td>
                                                <td>10.01</td>
                                                <td>वेतन भत्ता</td>
                                                <td>10.01.01</td>
                                                <td>मुल वेतन</td>
                                                <td>1040130000.00</td>
                                                <td>943242199.00</td>
                                                <td>19229055.00</td>
                                                <td>0.00</td>
                                                <td>10000000.00</td>
                                                <td>66554897.00 </td>
                                                <td> 10000000.00</td> 
                                                <td> 10000000.00</td> 
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
</asp:Content>

