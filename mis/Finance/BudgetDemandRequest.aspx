<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BudgetDemandRequest.aspx.cs" Inherits="mis_Finance_BudgetDemandRequest" %>

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
                        <li class="breadcrumb-item"> <a href="#DemandProcess" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Demand Process</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Budget Demand Request</a></li>
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
                            <h4 class="card-title">Budget Demand Request /
                                बजट मांग राशि अनुरोध</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                     <fieldset>
                        <legend>Budget Demand Request /
                                बजट मांग राशि अनुरोध</legend>
                        <div class="row align-items-end">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>
                                    Select Date <br />
                                        दिनांक का चयन करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="2024-12-10" />
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>
                                         Head Type <br />
                                        हेड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="2">Expense</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>
                                         Ledger Name<br />
                                        बहीखाता नाम का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Basic Pay/Special Pay/Dearness Allowance</option>
                                        <option value="2"> Gratuity Premium Payment</option>
                                        <option value="3">Gratuity Payment</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Amount Request<br />
                                मांग राशि दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" id="numberInput" class="form-control" placeholder="Enter Amount Request" onkeyup="convertNumbers()"/>
                        </div></div>
                   
                             <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                 Amount in Words<br />
                                राशि शब्दों में<span style="color: red;">*</span></label>
                            <input type="text" id="wordOutput" class="form-control" placeholder="Amount in Words" readonly/>
                        </div>
                    </div> 
                            <hr />
                            <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Add</button>
                                <a id="clearfirst" href="BudgetDemandRequest.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        

                        </div>
                    </fieldset>
                        <fieldset id="FS_Details" style="display: none">
                        <legend>Budget Demand Details /
                                बजट मांग राशि विवरण </legend>
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
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No. <br />
                                                    क्रमांक
                                                </th>
                                                <th>Head Type <br />
                                                    हेड प्रकार </th>
                                                <th>Head Code 
                                            <br />
                                                    हेड कोड</th>
                                                <th>Ledger Name 
                                            <br />
                                                   बहीखाता नाम
                                                </th>
                                                <th>Amount Request 
                                            <br />
                                                    राशि मांग
                                                </th>
                                                <th>Action 
                                            <br />
                                                    कार्यवाही
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
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
                                            </tr>
                                          <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Expense</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.02.01</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Medical Expense Reimbursement</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>100054.00</a>
                                                </td>
                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Expense</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10.01.01</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Stationery, Font Copy, Bidding</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>10000.00</a>
                                                </td>
                                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span></span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span></span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a></a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a><b>Total</b></a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>743054.00</a>
                                                </td>
                                                 <td align="center" valign="middle">
                                                    <a></a>
                                                </td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                            <div class="row">
                            <div id="DocAppointment1" class="col-md-4">
                                                    <input type="file" id="fileInput" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>
                             <div class="col-md-6">
                    <div class="form-group text-center">
                      
                        <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border" >Save</button>
                        <a href="BudgetDemandRequest.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div></div>
                </div>

                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
   <script>
       function numberToWords(number) {
           if (number === 0) return 'Zero';

           const units = ['', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine'];
           const teens = ['Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'];
           const tens = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'];
           const scales = ['Thousand', 'Million', 'Billion', 'Trillion'];

           function toWords(num) {
               if (num === 0) return [];
               if (num < 10) return [units[num]];
               if (num < 20) return [teens[num - 10]];
               if (num < 100) return [tens[Math.floor(num / 10)], toWords(num % 10)].flat().filter(Boolean);
               if (num < 1000) return [units[Math.floor(num / 100)], 'Hundred', toWords(num % 100)].flat().filter(Boolean);

               let words = [];
               for (let i = scales.length - 1; i >= 0; i--) {
                   const divisor = Math.pow(1000, i + 1);
                   if (num >= divisor) {
                       const group = Math.floor(num / divisor);
                       words = words.concat(toWords(group), [scales[i]]);
                       num %= divisor;
                   }
               }
               return words.concat(toWords(num)).filter(Boolean);
           }

           return toWords(number).join(' ');
       }

       function convertNumbers() {
           const numberInput = document.getElementById("numberInput");
           const wordOutput = document.getElementById("wordOutput");
           const inputValue = numberInput.value;
           let result;

           // Check if the input is a valid number
           if (/^\d+$/.test(inputValue)) {
               result = numberToWords(parseInt(inputValue));
           } else {
               result = 'Invalid number';
           }

           wordOutput.value = result;
       }
   </script>
</asp:Content>

