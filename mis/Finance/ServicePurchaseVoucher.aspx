<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ServicePurchaseVoucher.aspx.cs" Inherits="mis_Finance_ServicePurchaseVoucher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <style>
        .backColor {
            background-color: #fffed9;
        }
    </style>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            //background-color: #f9f3d9; /* Light yellow background */
        }

        table, th, td {
            border: 1px solid #272a3a;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        .total {
            background-color: #ececec;
            font-weight: bold;
        }

        .round-off {
            color: red;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 5px;
            box-sizing: border-box;
        }

        .hidden {
            display: none;
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
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#VoucherCreation" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Voucher Creation</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Payment Voucher</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="modal fade" id="examplesModal" tabindex="-1" aria-labelledby="examplesModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl ">
                <div class="modal-content">
                    <div class="modal-header">

                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <legend>Cheque Details /चेक विवरण	</legend>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <div class="table-responsive">

                                        <table class="table">
                                            <thead>
                                                <tr align="center" valign="middle">
                                                    <th>Sr. No.
                            <br />
                                                        क्र.सं.
                                                    </th>
                                                    <th>Cheque/ DD No/RTGS/NEFT
                            <br />
                                                        चेक/डीडी नंबर/आरटीजीएस/एनईएफटी</th>
                                                    <th>Cheque/ DD Date
                            <br />
                                                        चेक/डीडी दिनांक </th>
                                                    <th>Amount
        <br />
                                                        राशि </th>

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>111</td>
                                                    <td>10/09/2024</td>
                                                    <td>445.00</td>
                                                </tr>
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
        <div class="modal fade" id="examplesEditModal" tabindex="-1" aria-labelledby="examplesModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl ">
                <div class="modal-content">
                    <div class="modal-header">

                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <legend>Cheque-wise Details /चेक-वार विवरण	</legend>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Enter Cheque/ DD No/RTGS/NEFT<br />
                                            चेक/डीडी नंबर/आरटीजीएस/एनईएफटी दर्ज करें<span style="color: red;">*</span></label>
                                        <input type="text" class="form-control" value="0.00" id="txtCheque" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Cheque/ DD Date<br />
                                            चेक/डीडी दिनांक का चयन करें<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" ID="txtChequeDDDate" CssClass="form-control" AutoComplete="off" data-provide="datepicker" data-date-end-date="0d" data-date-autoclose="true" data-date-format="dd/mm/yyyy" placeholder="DD/MM/YYYY"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>
                                            Enter Amount
               <br />
                                            राशि दर्ज करें<span style="color: red;">*</span></label>
                                        <input type="text" class="form-control" value="0.00" id="txtEditamount" />
                                    </div>
                                </div>
                                <div class="col-md-2" style="margin-top: 50px;">
                                    <button type="button" class="btn btn-success btn-border  Alert-Save">Add</button>
                                    <%--<div class="form-group text-center">
                                    </div>--%>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <div class="table-responsive">

                                        <table class="table">
                                            <thead>
                                                <tr align="center" valign="middle">
                                                    <th>Sr. No./
                            <br />
                                                        क्र.सं.
                                                    </th>
                                                    <th>Cheque/ DD No/RTGS/NEFT
                    <br />
                                                        चेक/डीडी नंबर/आरटीजीएस/एनईएफटी</th>
                                                    <th>Cheque/ DD Date
                    <br />
                                                        चेक/डीडी दिनांक </th>
                                                    <th>Amount
                                                        <br />
                                                        राशि </th>
                                                    <th>Action
                                                        <br />
                                                        कार्रवाई </th>


                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>111</td>
                                                    <td>10/09/2024</td>
                                                    <td>445.00</td>
                                                    <td><i class="fa fa-trash"></i></td>
                                                </tr>
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
        <div class="container-fluid">
            <div class="card card-border-primary backColor">
                <div class="card-header backColor">
                    <div class="row">
                        <div class="col-md-10">
                            <h5 class="card-title">Service Purchase Voucher</h5>
                        </div>
                        <div class="col-md-2" style="text-align: end;">
                            <button type="button" class="btn btn-outline-info w-lg btn-border">Add Ledger</button>

                        </div>

                    </div>
                </div>
                <div class="card-body">
                    <div runat="server" id="divOffice">
                        <fieldset>
                            <legend>Service Purchase Voucher</legend>
                            <div class="row justify-content-between">
                                <div class="col-md-3">
                                    <div class="">
                                        <label>
                                            Voucher No./<br />
                                            वाउचर नंबर
                           
                                        </label>
                                        <div class=" input-group">
                                            <input type="text" class="form-control " placeholder="HO23-24VR" readonly />
                                            <input type="text" class="form-control " />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label>
                                        Enter Supplier's Invoice No./<br />
                                        आपूर्तिकर्ता का चालान नं. दर्ज करें</label>
                                    <input type="text" class="form-control" id="txtSupplierInvoice" placeholder="Enter Supplier's Invoice No." />
                                </div>
                                <div class="col-md-3">
                                    <label>
                                        Select Supplier's Invoice Date/<br />
                                        आपूर्तिकर्ता की चालान दिनांक का चयन करे</label>
                                    <asp:TextBox runat="server" ID="txtSupplierInvoiceDate" CssClass="form-control" AutoComplete="off" data-provide="datepicker" data-date-end-date="0d" data-date-autoclose="true" data-date-format="dd/mm/yyyy" placeholder="DD/MM/YYYY"></asp:TextBox>

                                </div>
                                <div class="col-md-2">
                                    <div class="">
                                        <label>
                                            Select Date/<br />
                                            दिनांक का चयन करें
                           
                                        </label>
                                        <asp:TextBox runat="server" ID="txtVoucherDate" CssClass="form-control" AutoComplete="off" data-provide="datepicker" data-date-end-date="0d" data-date-autoclose="true" data-date-format="dd/mm/yyyy" placeholder="DD/MM/YYYY"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Ledger(Head Code)/
                                            <br />
                                            बहीखाता (हेड कोड) का चयन करें<span style="color: red;"> *</span></label>
                                        <select class="form-control select2" id="selectLedger" onchange="blncamount()">
                                            <option selected="selected" value="0">--Select --</option>
                                            <option value="1">[ DT 01.124 ]  आई जी एस टी / IGST</option>
                                            <option value="2">[ 50.02 ]  सुरक्षा निधि / SECURITY FUND</option>
                                            <option value="3">[ 50.09 ]  ई.एम.डी. (तेंदूपत्ता से पृथक) / EMD (SEPARATED FROM TENDU LEAVES)</option>
                                            <option value="4">[ 51.02 ]  वन विकास उपस्कर / FOREST DEVELOPMENT EQUIPMENT</option>
                                            <option value="5">[ 55.02 ]  टी.डी.एस. ऑन जी.एस.टी. / TDS ON GST</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>
                                            Current Balance Amount/<br />

                                            वर्तमान शेष राशि <span style="color: red;">*</span>
                                        </label>
                                        <input type="text" class="form-control" value="0.00" id="txtblnc" readonly />
                                    </div>
                                </div>
                            </div>
                            <fieldset>
                                <legend>Supplier Detail /
                                आपूर्तिकर्ता विवरण</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Supplier Name/<br />

                                                आपूर्तिकर्ता का नाम दर्ज करें<span style="color: red;">*</span>
                                            </label>
                                            <input type="text" class="form-control" placeholder="Enter Supplier Name" id="txtSupplierName" />
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Supplier Address/<br />
                                                आपूर्तिकर्ता का पता दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" placeholder="Enter Supplier Address" id="txtamount" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select State/
             <br />
                                                राज्य का चयन करें<span style="color: red;"> *</span></label>
                                            <select class="form-control select2" id="ddlstate" onchange="blncamount()">
                                                <option selected="selected" value="0">--Select --</option>
                                                <option value="1">Andhra Pradesh - Hyderabad</option>
                                                <option value="2">Arunachal Pradesh - Itanagar</option>
                                                <option value="3">Assam - Dispur</option>
                                                <option value="4">Bihar - Patna</option>
                                                <option value="5">Gujarat - Gandhinagar</option>
                                                <option value="6">Goa - Panaji</option>
                                                <option value="7">Haryana - Chandigarh</option>
                                                <option value="8">Himachal Pradesh - Shimla</option>
                                                <option value="9">Jammu & Kashmir - Srinagar</option>
                                                <option value="10">Karnataka</option>
                                                <option value="11">Madhya Pradesh - Bhopal</option>
                                                <option value="12">Manipur - Imphal</option>
                                                <option value="13">Meghalaya - Shillong</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter City/<br />
                                                शहर दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" placeholder="Enter City" id="txtCity" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Registration Types/
                                                <br />
                                                पंजीकरण प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                            <select class="form-control select2" id="ddlRegistrationTypes" onchange="blncamount()">
                                                <option selected="selected" value="0">--Select --</option>
                                                <option value="1">Composition</option>
                                                <option value="2">Consumer</option>
                                                <option value="3">Regular</option>
                                                <option value="4">Regular</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter GST No.(CAPITAL LETTERS ONLY)/
                                                <br />
                                                जीएसटी नंबर (केवल बड़े अक्षरों में) दर्ज करें<span style="color: red;"> *</span></label>
                                            <input type="text" class="form-control" placeholder="Enter GST No." id="txtGSTNo" />
                                        </div>
                                    </div>

                                </div>
                            </fieldset>
                            <div class="row">
                                <div class="col-md-6"></div>
                                <div class="col-md-6">
                                    <fieldset>
                                        <legend>Amount Detail (DR)/ राशि विवरण (डीआर)</legend>
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>
                                                        Select Ledger/
         <br />
                                                        बहीखाता का चयन करें<span style="color: red;"> *</span></label>
                                                    <select class="form-control select2" id="ddlLedger">
                                                        <option selected="selected" value="0">--Select --</option>
                                                        <option value="1">[ DT 01.124 ]  आई जी एस टी / IGST</option>
                                                        <option value="2">[ 50.02 ]  सुरक्षा निधि / SECURITY FUND</option>
                                                        <option value="3">[ 50.09 ]  ई.एम.डी. (तेंदूपत्ता से पृथक) / EMD (SEPARATED FROM TENDU LEAVES)</option>
                                                        <option value="4">[ 51.02 ]  वन विकास उपस्कर / FOREST DEVELOPMENT EQUIPMENT</option>
                                                        <option value="5">[ 55.02 ]  टी.डी.एस. ऑन जी.एस.टी. / TDS ON GST</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>
                                                        Enter Amount/<br />

                                                        राशि दर्ज करें<span style="color: red;">*</span>
                                                    </label>
                                                    <input type="text" class="form-control" value="0.00" id="txtAmount" />
                                                </div>
                                            </div>
                                            <div class="col-md-1" style="margin-top: 50px;">
                                                <button type="button" id="addBtn" class="btn btn-success btn-border  Alert-Save" onclick="addData()">Add</button>
                                                <div class="form-group text-center">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table id="taxTable">
                                                    <%-- <tr id="securityFundRow" class="hidden">
                                                        <td id="hdledger"></td>
                                                        <td>
                                                            <input type="text" value="0" id="tramount" ></td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td>CGST</td>
                                                        <td>
                                                            <input type="text" id="cgst" onchange="calculateGrandTotal();" value="0"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>SGST</td>
                                                        <td>
                                                            <input type="text" id="sgst" onchange="calculateGrandTotal();" value="0"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>IGST</td>
                                                        <td>
                                                            <input type="text" id="igst" onchange="calculateGrandTotal();" value="0"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Round off</td>
                                                        <td>
                                                            <input type="text" id="roundoff" onchange="calculateGrandTotal();" value="0"></td>
                                                    </tr>
                                                </table>
                                            </div>


                                            <p class="round-off">Suggested Round Off: 0.00</p>

                                            <table>
                                                <tr class="total">
                                                    <td>GRAND TOTAL :</td>
                                                    <td>
                                                        <input type="text" value="0.00" id="grandTotal" readonly></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                        Narration/
                                        <br />
                                        वर्णन</label>
                                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    <%--<textarea name="comments" id="comments" rows="1" cols="50" style="font-family: sans-serif; font-size: 1.2em; height: 41px;"></textarea>--%>
                                </div>

                            </div>

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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        document.getElementById('addBtn').addEventListener('click', function () {
            debugger
            //var ledger = document.getElementById('ledger').value;
            var ddl2 = document.getElementById("ddlLedger").selectedOptions[0].childNodes[0].data;
            var amount = document.getElementById('txtAmount').value;


            if (ddl2 && amount) {
                debugger
                // Create a new row
                var table = document.getElementById('taxTable');
                var newRow = table.insertRow(0); // Add at the beginning (optional)

                //var cell1 = newRow.insertCell(0);
                let cell1ID = newRow.insertCell(0);
                var cell2 = newRow.insertCell(1);

                let deleteButton = document.createElement('a');
                deleteButton.innerHTML = '<i class="fa fa-trash"></i>';
                deleteButton.classList.add('Alert-Delete');
                deleteButton.href = '#';
                cell1ID.appendChild(deleteButton);

                // Add event listener for delete button
                deleteButton.addEventListener('click', function (e) {
                    e.preventDefault();
                    tbody.deleteRow(newRow.rowIndex - 1);
                    calculateGrandTotal();
                });



                cell1ID.innerHTML += '&nbsp' + ddl2;
                cell2.innerHTML = '<input type="text" id="tramount" onchange="calculateGrandTotal();" value="' + amount + '">';
            } else {
                alert('Please select a ledger and enter an amount.');
            }
            $("#ddlLedger").val('0').trigger('change');
            document.getElementById('txtAmount').value = '0.00';
            calculateGrandTotal();
        });

        // Function to calculate the Grand Total
        function calculateGrandTotal() {
            debugger
            var tramount = parseFloat(document.getElementById('tramount').value) || 0;
            var cgst = parseFloat(document.getElementById('cgst').value) || 0;
            var sgst = parseFloat(document.getElementById('sgst').value) || 0;
            var igst = parseFloat(document.getElementById('igst').value) || 0;
            var roundoff = parseFloat(document.getElementById('roundoff').value) || 0;

            var grandTotal = tramount + cgst + sgst + igst + roundoff;


            document.getElementById('grandTotal').value = grandTotal.toFixed(2);
        }

        document.getElementById('tramount').addEventListener('input', calculateGrandTotal);
        document.getElementById('cgst').addEventListener('input', calculateGrandTotal);
        document.getElementById('sgst').addEventListener('input', calculateGrandTotal);
        document.getElementById('igst').addEventListener('input', calculateGrandTotal);
        document.getElementById('roundoff').addEventListener('input', calculateGrandTotal);

    </script>
    <script>
        $(document).ready(function () {
            $('#ddlSubCategory').select2({
                dropdownParent: $('#examplesEditModal') 
            });
        });
        $(document).ready(function () {
            $('#ddlCategory').select2({
                dropdownParent: $('#examplesEditModal') // Make sure to replace '#myModal' with the actual modal ID
            });
        });

        $('#txtVoucherDate').datepicker({
            autoclose: true,
            format: 'dd/mm/yyyy'
        });
        $('#txtSupplierInvoiceDate').datepicker({
            autoclose: true,
            format: 'dd/mm/yyyy'
        });
        function blncamount() {
            debugger
            const txtblncInput = document.getElementById('txtblnc');
            const txtSupplierName = document.getElementById('txtSupplierName');

            const selectedValue = document.getElementById('selectLedger').value; // Get the selected value
            let ddl2 = document.getElementById("selectLedger").selectedOptions[0].childNodes[0].data;
            txtSupplierName.value = ddl2;
            if (selectedValue === '1') {
                txtblncInput.value = '5236599cr'; // Set value for this option

            } else if (selectedValue === '2') {
                txtblncInput.value = '987898.00'; // Set value for this option
            }
            else if (selectedValue === '3') {
                txtblncInput.value = '356987.00'; // Set value for this option
            }
            else if (selectedValue === '4') {
                txtblncInput.value = '758964.00'; // Set value for this option
            }
            else if (selectedValue === '5') {
                txtblncInput.value = '660066.00'; // Set value for this option
            }
            // ... similar logic for other options ...
            else {
                txtblncInput.value = ''; // Set a default value for other options
            }
        }

    </script>
</asp:Content>

