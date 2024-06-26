<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="JournalVoucher.aspx.cs" Inherits="mis_Finance_JournalVoucher" %>

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
                    <li class="breadcrumb-item active"><a href="PaymentVoucher.aspx" title="click to go on">Journal Voucher</a></li>
                </ol>
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
                                Select Cr.Dr Type/
                                        क्रेडिट डेबिट प्रकार का चयन करें<span style="color: red;"> *</span></label>
                            <select class="form-control select2">
                                <option value="2">Debit</option>
                                <option value="1">Credit</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Ledger(Head Code) /<br />
                                बहीखाता (हेड कोड) का चयन करें<span style="color: red;"> *</span></label>
                            <select class="form-control select2">
                                <option value="1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Current Balance Amount/
   <br />
                                वर्तमान शेष राशि <span style="color: red;"> *</span>
                            </label>
                            <input type="text" class="form-control" value="897644.00" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Amount /<br />
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
                                        <th>Sr. No. /<br />
                                            क्र.सं.
                                        </th>
                                        <th> Ledger(Head Code) /<br />
                                बहीखाता (हेड कोड) </th>
                                        <th>Debit Amount /
                                            <br />
                                            डेबिट राशि </th>
                                        <th>Credit Amount/
                                            <br />
                                            क्रेडिट राशि 
                                        </th>
                                        <th>BillByBill Detail /
                                            <br />
                                            बिलबायबिल विवरण
                                        </th>
                                        <th>Action /
                                            <br />
                                            कार्रवाई
                                        </th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <label>
                            Narration /<br />
                            वर्णन</label>
                        <textarea name="comments" id="comments" rows="5" cols="120" style="font-family: sans-serif; font-size: 1.2em;">
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

