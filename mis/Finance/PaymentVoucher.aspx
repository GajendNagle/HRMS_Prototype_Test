<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PaymentVoucher.aspx.cs" Inherits="mis_Finance_PaymentVoucher" %>

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
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                        <li class="breadcrumb-item"> <a href="#VoucherCreation" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Voucher Creation</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Payment Voucher</a></li>
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
                        <div class="col-lg-12">
                            <h5 class="card-title">Payment Voucher /भुगतान वाउचर</h5>
                        </div>
                    </div>
                </div>
    <div class="card-body">
        <div runat="server" id="divOffice">
            <fieldset>
                <legend>Payment Voucher /भुगतान वाउचर</legend>

                <div class="row align-items-end">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label style="color: blue;">
                                (Previous Voucher No : H024-25VR001)/<br />
                                (पिछला वाउचर नंबर: H024-25VR001)</label>
                            <%--<textarea rows="4" cols="90" name="comment" form="usrform"></textarea>--%>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end justify-content-between">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Voucher/Bill No./<br />
                                वाउचर/बिल नंबर
                           
                            </label>
                            <div class="form-group  input-group">
                                <input type="text" class="form-control " placeholder="H024-25VR" readonly/>
                                <input type="text" class="form-control " value="002" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Voucher Date<br />
                                वाउचर दिनांक
                           
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
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Basic Pay/Special Pay/Dearness Allowance (10.01.01)  </option>
                                <option value="2">Gratuity Premium Payment (10.01.02)</option>
                                <option value="3">Medical Expense Reimbursement (10.02.01)</option>
                                <option value="4">Travel Expenses (10.03.01)</option>
                                <option value="5">State Bank Of India   (15.01.01)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Current Balance Amount
   <br />
                                वर्तमान शेष राशि <span style="color: red;">*</span>
                            </label>
                          <input type="text" class="form-control" value="897644.00" readonly />
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
                                Enter Amount <br />
                                राशि दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Amount" />
                        </div>
                    </div>

                    <hr />
                    <div class="col-md-12 justify-content-center">
                        <div class="form-group text-center">
                            <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Add</button>
                            <a id="clearfirst" href="PaymentVoucher.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
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

                            <table class="table" id="mainTable">
                                <thead>
                                    <tr align="center" valign="middle">
                                        <th>Sr. No. <br />
                                           क्रमांक
                                        </th>
                                        <th>Ledger(Head Code) <br />
                                            बहीखाता (हेड कोड) </th>
                                        <th>Debit 
                                            <br />
                                            डेबिट</th>
                                        <th>Credit 
                                            <br />
                                            क्रेडिट
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
                                        <td>1</td>
                                        <td>State Bank Of India   (15.01.01)</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
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
                <hr />
                <div class="row">
                    <div class="col-md-6">
                        <label>
                            Narration <br />
                            वर्णन</label>
                        <textarea name="comments" id="comments" rows="1" cols="50" style="font-family: sans-serif; font-size: 1.2em; height:41px;">
</textarea>
                    </div>
                    <div class="col-md-6">
                        <label>
                            Upload Docs <br />
                            दस्तावेज़ अपलोड करें</label>
                            <input type="file" id="fileInput" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                        
                    </div>    </div>
                    <div class="row text-align: right;">
                    <div class="col-md-12 mt-5">
                        <label style="color: blue;">
                            भुगतान से संबंधित इनवॉइस या अन्य दस्तावेज पीडीएफ(PDF) फॉर्मेट में यहाँ अपलोड किया जा सकता है|<br />
                            Maximum Allowed File Size(2MB) 
                        </label>
                    </div></div>
            
                <!-- Add more rows as needed -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Accept</button>
                            <a href="PaymentVoucher.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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

