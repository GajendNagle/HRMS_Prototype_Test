﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="JournalVoucher.aspx.cs" Inherits="mis_Finance_JournalVoucher" %>

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
                        <li class="breadcrumb-item">
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                        <li class="breadcrumb-item"> <a href="#VoucherCreation" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Voucher Creation</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Journal Voucher</a></li>
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
                            <h5 class="card-title">Journal Voucher / जर्नल वाउचर</h5>
                        </div>
                    </div>
                </div>


     <div class="card-body">
        <div runat="server" id="divOffice">
            <fieldset>
                <legend>Journal Voucher /जर्नल वाउचर</legend>
                <div class="row align-items-end justify-content-between">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label style="color: blue;">
                                (Previous Voucher No : H024-25VR001)
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end justify-content-between">
                    <div class="col-md-6">
                        <label>
                            Voucher /Bill No <span style="color: red;"> *</span>
                        </label>
                        <div class="form-group  input-group">
                            <input type="text" class="form-control " value="H024-25VR" />
                            <input type="text" class="form-control " value="1" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Voucher Date 
                            </label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                        </div>
                    </div>
                </div>
                    <fieldset>
                <legend> Voucher Details /
                                 वाउचर विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Cr./Dr. Type<br />
                                        क्रेडिट/ डेबिट प्रकार का चयन करें<span style="color: red;"> *</span></label>
                            <select class="form-control select2">
                                <option value="2">Debit</option>
                                <option value="1">Credit</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Ledger(Head Code) <br />
                                बहीखाता (हेड कोड) का चयन करें<span style="color: red;"> *</span></label>
                            <select class="form-control select2">
                                <option value="1">Select</option>
                                <option value="2">Basic Pay/Special Pay/Dearness Allowance (10.01.01)</option>
                                <option value="3">Gratuity Premium Payment (10.01.02) </option>
                                <option value="4">Medical Expense Reimbursement (10.02.01)</option>
                                <option value="5">Travel Expenses (10.03.01)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Current Balance Amount
   <br />
                                वर्तमान शेष राशि <span style="color: red;"> *</span>
                            </label>
                            <input type="text" class="form-control" value="897644.00" readonly/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Amount <br />
                                राशि दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Amount" />
                        </div>
                    </div>

                    <hr />
                    <div class="col-md-12 justify-content-center">
                        <div class="form-group text-center">
                            <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Add</button>
                            <a id="clearfirst" href="JournalVoucher.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
                  <div id="FS_Details" style="display: none">
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="mainTable">
                                <thead>
                                    <tr align="center" valign="middle">
                                        <th>Sr. No. <br />
                                            क्रमांक
                                        </th>
                                        <th> Ledger(Head Code) <br />
                                बहीखाता (हेड कोड) </th>
                                        <th>Debit Amount 
                                            <br />
                                            डेबिट राशि </th>
                                        <th>Credit Amount
                                            <br />
                                            क्रेडिट राशि 
                                        </th>
                                        <th>BillByBill Detail 
                                            <br />
                                            बिलबायबिल विवरण
                                        </th>
                                        <th>Action 
                                            <br />
                                            कार्यवाही
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <label>
                            Narration /<br />
                            वर्णन</label>
                        <textarea name="comments" id="comments" rows="1" cols="50" style="font-family: sans-serif; font-size: 1.2em; height:40px;">
</textarea>
                    </div>
                </div>
                <!-- Add more rows as needed -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Accept</button>
                            <a href="JournalVoucher.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
            </fieldset>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

