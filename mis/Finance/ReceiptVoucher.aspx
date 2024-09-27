<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ReceiptVoucher.aspx.cs" Inherits="mis_Finance_ReceiptVoucher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <style>
        .backColor {
            background-color: #fffed9;
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
                        <li class="breadcrumb-item active"><a title="click to go on">Receipt Voucher</a></li>
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
                            <legend>Cost Centre Details /लागत केंद्र विवरण	</legend>
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
                                                    <th>Category
                            <br />
                                                        श्रेणी </th>
                                                    <th>Sub Category
                            <br />
                                                        उपश्रेणी </th>
                                                    <th>Amount
        <br />
                                                        राशि </th>

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>17.04 C M Charan Paduka Scheme</td>
                                                    <td>17.04.01 C M Charan Paduka Scheme</td>
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
                            <legend>Cost Centre Details /लागत केंद्र विवरण	</legend>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Category<br />
                                            श्रेणी का चयन करें<span style="color: red;">*</span></label>
                                        <select class="form-control select2" id="ddlCategory">
                                            <option value="17.04 C M Charan Paduka Scheme">17.04 C M Charan Paduka Scheme</option>
                                            <option value="Employees Other Staff">Employees Other Staff</option>
                                            <option value="Petrol Expenses">Petrol Expenses</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Sub Category<br />
                                            श्रेणी का चयन करें<span style="color: red;">*</span></label>
                                        <select class="form-control select2" id="ddlSubCategory">
                                            <option value="17.04.01 C M Charan Paduka Scheme">17.04.01 C M Charan Paduka Scheme</option>
                                            <option value="Shri Yogendra Kumar Sirsam">Shri Yogendra Kumar Sirsam</option>
                                            <option value="Shri Bhan Singh">Shri Bhan Singh</option>
                                        </select>
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
                                                    <th>Category/
                            <br />
                                                        श्रेणी </th>
                                                    <th>Sub Category/
                            <br />
                                                        उपश्रेणी </th>
                                                    <th>Amount/
        <br />
                                                        राशि </th>
                                                    <th>Action/
        <br />
                                                        कार्रवाई </th>

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>17.04 C M Charan Paduka Scheme</td>
                                                    <td>17.04.01 C M Charan Paduka Scheme</td>
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
                        <div class="col-lg-12">
                            <h5 class="card-title">Receipt Voucher / प्राप्ति वाउचर</h5>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div runat="server" id="divOffice">
                        <fieldset>
                            <legend>Receipt Voucher / प्राप्ति वाउचर</legend>
                            <div class="row align-items-end justify-content-between">
                                <div class="col-md-6">
                                    <div class="">
                                        <label style="color: blue;">
                                            (Previous Voucher No : H024-25VR001)
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="justify-content-end text-end">
                                        <label>
                                            Create Voucher against transaction failed payment voucher
                                        </label>
                                        <input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" class="checkbox-align-right" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end justify-content-between">
                                <div class="col-md-2">
                                    <label>
                                        Voucher /Bill No./<br />
                                        वाउचर/बिल नंबर
                                    </label>
                                    <div class="input-group">
                                        <input type="text" class="form-control " placeholder="H024-25VR" readonly />
                                        <input type="text" class="form-control " />
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="">
                                        <label>
                                            Select Voucher Date/<br />
                                            वाउचर दिनांक का चयन करें
                                        </label>
                                        <asp:TextBox runat="server" ID="txtVoucherDate" CssClass="form-control" AutoComplete="off" data-provide="datepicker" data-date-end-date="0d" data-date-autoclose="true" data-date-format="dd/mm/yyyy" placeholder="DD/MM/YYYY"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <fieldset>
                                <legend>Voucher Details /
                                 वाउचर विवरण</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>
                                                Select Cr.Dr Type/<br />
                                                क्रेडिट डेबिट प्रकार का चयन करें<span style="color: red;">*</span></label>
                                            <select class="form-control select2" id="ddlCrDrType">
                                                <option value="Debit">Debit</option>
                                                <option value="Credit">Credit</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Select Ledger(Head Code)/
                                                <br />
                                                बहीखाता (हेड कोड) का चयन करें<span style="color: red;"> *</span></label>
                                            <select class="form-control select2" id="selectLedger" onchange="blncamount()">
                                                <option selected="selected" value="0">--Select --</option>
                                                <option value="1">Basic Pay/Special Pay/Dearness Allowance (10.01.01)  </option>
                                                <option value="2">Gratuity Premium Payment (10.01.02)</option>
                                                <option value="3">Medical Expense Reimbursement (10.02.01)</option>
                                                <option value="4">Travel Expenses (10.03.01)</option>
                                                <option value="5">State Bank Of India   (15.01.01)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>
                                                Current Balance Amount/
   <br />
                                                वर्तमान शेष राशि <span style="color: red;">*</span>
                                            </label>
                                            <input type="text" class="form-control" value="0.00" id="txtblnc" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>
                                                Enter Amount/
                                                <br />
                                                राशि दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" id="txtamount" class="form-control" value="0.00" placeholder="Enter Amount" />
                                        </div>
                                    </div>

                                    <div class="col-md-1">
                                        <button type="button" class="btn btn-success btn-border  Alert-Save" onclick="addData()">Add</button>

                                        <div class="form-group text-center">
                                        </div>
                                    </div>

                                </div>

                                <div class="row align-items-end">
                                    <div class="col-md-12">
                                        <div class="table-responsive">

                                            <table class="table" id="mainTable">
                                                <thead>
                                                    <tr align="center" valign="middle">
                                                        <th>Sr. No./
                    <br />
                                                            क्र.सं.
                                                        </th>
                                                        <th>Cr./Dr. Type/
                    <br />
                                                            क्रेडिट/ डेबिट प्रकार </th>
                                                        <th>Ledger(Head Code)/
                    <br />
                                                            बहीखाता (हेड कोड) </th>
                                                        <th>Current Balance Amount/
                                                            <br />
                                                            वर्तमान शेष राशि </th>
                                                        <th>Debit Amount/
                                                            <br />
                                                            डेबिट राशि 
                                                        </th>
                                                        <th>Credit Amount/
                                                            <br />
                                                            क्रेडिट राशि 
                                                        </th>
                                                        <th>Bill By Bill Detail/
                                                            <br />

                                                            बिल दर बिल विवरण
                                                        </th>
                                                        <th>Cost Centre/
                                                            <br />
                                                            लागत केंद्र
                                                        </th>
                                                        <th style="text-align: center;">Action/
                                                            <br />
                                                            कार्रवाई
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbody2">

                                                    <tr id="grandTotalRow">
                                                        <td colspan="2"></td>
                                                        <td><strong>Total</strong></td>
                                                        <td>0.00</td>
                                                        <!-- Total Balance will go here -->
                                                        <td>0.00</td>
                                                        <!-- Total Amount will go here -->
                                                        <td>0.00</td>
                                                        <!-- Total Amount will go here -->
                                                        <td colspan="3"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>


                            </fieldset>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                        Narration/
                                                <br />
                                        वर्णन</label>
                                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                </div>

                            </div>
                            <div class="row text-align: right;">
                                <div class="col-md-4">
                                    <label>
                                        Upload Docs/
         <br />
                                        दस्तावेज़ अपलोड करें</label>
                                    <input type="file" id="fileInput" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                </div>
                                <div class="col-md-12 mt-1">
                                    <label style="color: blue;">
                                        Only JPEG/PNG/JPG/PDF/DOC/DOCX Formats are allowed.<br />
                                        Maximum Allowed File Size(2MB) 
                                    </label>
                                </div>
                            </div>

                            <!-- Add more rows as needed -->

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Accept</button>
                                        <a href="ReceiptVoucher.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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

        $(document).ready(function () {
            $('#ddlSubCategory').select2({
                dropdownParent: $('#examplesEditModal') // Make sure to replace '#myModal' with the actual modal ID
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

        function blncamount() {

            const txtblncInput = document.getElementById('txtblnc');

            const selectedValue = document.getElementById('selectLedger').value; // Get the selected value

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
                txtblncInput.value = '0.00'; // Set a default value for other options
            }
        }

        function addData() {
            let ddl1 = document.getElementById("ddlCrDrType").value;
            let ddl2 = document.getElementById("selectLedger").selectedOptions[0].childNodes[0].data;
            console.log(ddl2);

            let ddl3 = parseFloat(document.getElementById("txtblnc").value);
            let ddl4 = parseFloat(document.getElementById("txtamount").value);




            let table = document.getElementById('mainTable');
            let tbody = table.getElementsByTagName('tbody')[0];

            let newRow = tbody.insertRow(tbody.rows.length - 1);




            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = tbody.rows.length - 1;
            newRow.insertCell(1).innerHTML = ddl1;
            newRow.insertCell(2).innerHTML = ddl2;
            newRow.insertCell(3).innerHTML = ddl3.toFixed(2);

            if (ddl1 === 'Debit') {
                debugger
                newRow.insertCell(4).innerHTML = ddl4.toFixed(2);
                newRow.insertCell(5).innerHTML = '0.00';
            } else if (ddl1 === 'Credit') {
                newRow.insertCell(4).innerHTML = '0.00';
                newRow.insertCell(5).innerHTML = ddl4.toFixed(2);
            }


            // View Button
            //newRow.insertCell(5).innerHTML = '<a class="Alert-Edit"><i class="fa fa-eye"></i></a>';

            let BillByBillButtonTd = newRow.insertCell(6);
            //BillByBillButtonTd.innerHTML = '<a class="Alert-Edit"><i class="fa fa-eye"></i></a>|&nbsp';

            let BillByBillButton = document.createElement('a');
            BillByBillButton.innerHTML = '<a class="Alert-Edit"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target="#examplesModal"></i></a>&nbsp|&nbsp<i class="fa fa-edit" data-bs-toggle="modal" data-bs-target="#examplesEditModal"></i>';
            BillByBillButton.classList.add('Alert-Edit');
            BillByBillButton.href = '#';
            BillByBillButtonTd.appendChild(BillByBillButton);
            // Cost Button
            // newRow.insertCell(6).innerHTML = '<a class="Alert-Edit"><i class="fa fa-edit"></i></a>';

            let CostButtonTd = newRow.insertCell(7);
            //CostButtonTd.innerHTML = '<a class="Alert-Edit"><i class="fa fa-eye"></i></a>|&nbsp';

            let CostButton = document.createElement('a');
            CostButton.innerHTML = '<a class="Alert-Edit"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target="#examplesModal"></i></a>&nbsp|&nbsp<i class="fa fa-edit" data-bs-toggle="modal" data-bs-target="#examplesEditModal"></i>';
            CostButton.classList.add('Alert-Edit');
            CostButton.href = '#';
            CostButtonTd.appendChild(CostButton);

            // Edit and Delete Buttons
            let actionButtonTd = newRow.insertCell(8);
            actionButtonTd.innerHTML = '<a class="Alert-Edit"><i class="fa fa-edit"></i></a>&nbsp|&nbsp';

            let deleteButton = document.createElement('a');
            deleteButton.innerHTML = '<i class="fa fa-trash"></i>';
            deleteButton.classList.add('Alert-Delete');
            deleteButton.href = '#';
            actionButtonTd.appendChild(deleteButton);

            // Add event listener for delete button
            deleteButton.addEventListener('click', function (e) {
                e.preventDefault();
                tbody.deleteRow(newRow.rowIndex - 1);  // Adjust to delete correctly
                updateGrandTotal();
            });

            updateGrandTotal();
            // Reset input fields after adding the row
            $("#selectLedger").val('0').trigger('change');  // Reset dropdown
            document.getElementById('txtblnc').value = '0.00';  // Reset balance input
            document.getElementById('txtamount').value = '0.00';  // Reset amount input

            // Update grand total

        }

        // Function to calculate and update the grand total
        function updateGrandTotal() {
            let table = document.getElementById('mainTable');
            let tbody = table.getElementsByTagName('tbody')[0];
            let totalBalance = 0;
            let totalAmount = 0;
            let totalCAmount = 0;

            // Loop through the rows, except the last one (grand total row)
            for (let i = 0; i < tbody.rows.length - 1; i++) {
                let balance = parseFloat(tbody.rows[i].cells[3].innerHTML);  // Balance column
                let amount = parseFloat(tbody.rows[i].cells[4].innerHTML);   // Amount column
                let Camount = parseFloat(tbody.rows[i].cells[5].innerHTML);   // Amount column

                totalBalance += balance;
                totalAmount += amount;
                totalCAmount += Camount;
            }

            // Update the grand total row (last row in the table)
            let grandTotalRow = tbody.rows[tbody.rows.length - 1];
            grandTotalRow.cells[2].innerHTML = totalBalance.toFixed(2);  // Update total balance
            grandTotalRow.cells[3].innerHTML = totalAmount.toFixed(2);   // Update total amount
            grandTotalRow.cells[4].innerHTML = totalCAmount.toFixed(2);   // Update total amount

        }



    </script>
</asp:Content>

