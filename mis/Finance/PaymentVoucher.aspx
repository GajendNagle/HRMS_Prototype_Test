<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PaymentVoucher.aspx.cs" Inherits="mis_Finance_PaymentVoucher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="PaymentVoucher.aspx" title="click to go on">Payment Voucher</a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div runat="server" id="divOffice">
            <fieldset>
                <legend>Payment Voucher /भुगतान वाउचर</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                (Previous Voucher No : H024-25VR442)/<br />
                                (पिछला वाउचर नंबर: H024-25VR442)</label>
                            <textarea rows="4" cols="50" name="comment" form="usrform"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Voucher/Bill No./<br />
                                वाउचर/बिल नंबर
                           
                            </label>
                            <input type="text" class="form-control form-control-inline" value="H024-25VR442" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">

                            <input type="text" class="form-control form-control-inline" placeholder="443" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date/<br />
                                दिनांक
                           
                            </label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Payment Voucher Details /
                                भुगतान वाउचर विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Cr.Dr /
                                        क्रेडिट डेबिट चुनें<span style="color: red;"> *</span></label>
                            <select class="form-control select2">
                                <option value="2">Debit</option>
                                <option value="1">Credit</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Particulars /<br />
                                विवरण चुनें<span style="color: red;"> *</span></label>
                            <select class="form-control select2">
                                <option value="1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Current Balance/
   <br />
                                वर्तमान शेष<span style="color: red;"> *</span>
                            </label>
                            <input type="text" class="form-control" value="897644.00" />
                            <%--<select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Basic Pay/Special Pay/Dearness Allowance</option>
                                        <option value="2"> Gratuity Premium Payment</option>
                                        <option value="3">Gratuity Payment</option>
                                    </select>--%>
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
                            <a id="clearfirst" href="BudgetDemandRequest.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset id="FS_Details" style="display: none">
                <legend>Payment Voucher Details /
                                भुगतान वाउचर विवरण</legend>
                <%-- <div class="row justify-content-end">
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
                        </div>--%>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table class="table table-bordered" id="mainTable">
                                <thead>
                                    <tr>
                                        <th>Sr. No. /<br />
                                            क्र.सं.
                                        </th>
                                        <th>Particulars/<br />
                                            विवरण </th>
                                        <th>Debit /
                                            <br />
                                            डेबिट</th>
                                        <th>Credit /
                                            <br />
                                            क्रेडिट
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
                <%--  <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Expense</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>543000.00</a>
                                                </td>
                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>--%>

                <div class="row">
                    <div class="col-md-12">
                        <label>
                            Narration /<br />
                            वर्णन</label>
                        <textarea name="comments" id="comments" style="font-family: sans-serif; font-size: 1.2em;">
</textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <label>
                            Upload Docs /<br />
                            दस्तावेज़ अपलोड करें</label>
                        <div id="DocAppointment1" class="col-md-4">
                            <input type="file" id="fileInput" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <label>
                            Maximum Allowed File Size(2MB) /<br />
                            दस्तावेज़ अपलोड करें</label>
                    </div>
                </div>
                <!-- Add more rows as needed -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Accept</button>
                            <a href="BudgetDemandRequest.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

