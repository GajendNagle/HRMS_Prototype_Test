<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentCreation.aspx.cs" Inherits="mis_Development_InstallmentCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Creation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Installment Creation / किस्त निर्माण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">--%>
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
                         <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                     </li>
                     <li class="breadcrumb-item">Installment Creation</li>
                 </ol>
             </div>
         </div>
     </div>
 </div>
 <div class="card card-border-primary">
     <div class="card-header">
         <div class="row">
             <div class="col-lg-6">
                 <h4 class="card-title">Installment Creation / किस्त निर्माण</h4>
             </div>
         </div>
     </div>
     <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Installment Creation Approval/किस्त निर्माण स्वीकृति </legend>
                <div class="row align-items-end">
                    <div class="col-md-6  col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Project Code
             <br />
                                परियोजना कोड<span style="color: red">*</span></label>
                            <select id="Project_Code" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">P00017</option>
                                <option value="B">P00018</option>
                                <option value="C">P00019</option>
                                <option value="D">All</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <hr />
                  <input type="button" value="Search" class="btn btn-success btn-border" 
                      onclick="div()" />
                    <a href="InstallmentCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </fieldset>
            <div id="hide" style="display: none;">
            <fieldset>
                <legend>Installment Creation / किस्त निर्माण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Code
                                <br />
                                परियोजना कोड</label>
                          <input type="text" id="txtProjectCode" maxlength="10" value="P0001" disabled autocomplete="off" class="form-control form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Date
                                <br />
                                परियोजना दिनांक</label>
                          <input type="text" id="txtProjectDate" maxlength="10" value="11/06/2024" disabled autocomplete="off" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Estimated Budget Cost(Approx. In Rs)
                                <br />
                                अनुमानित राशि
                            </label>

                         <input type="text" id="txtEstimatedBudgetCost" maxlength="10" value="60000.00" disabled autocomplete="off" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Approved Cost(Approx. In Rs)
                                <br />
                                स्वीकृत राशि <span style="color: red">*</span></label>
                           <%-- </span>--%><%-- <span class="pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                    ControlToValidate="txtApprovedCost" ErrorMessage="Enter Approved Cost(Approx. In Rs) "
                                    Text="<i class='fa fa-exclamation-circle' title='Enter Approved Cost(Approx. In Rs)'></i>"
                                    SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="a"
                                    Display="Dynamic" runat="server" ControlToValidate="txtApprovedCost"
                                    ErrorMessage="Only Numeric allow, Approved Cost(Approx. In Rs)"
                                    Text="<i class='fa fa-exclamation-circle' title='Only Numeric allow Approved Cost(Approx. In Rs) !'></i>"
                                    SetFocusOnError="true" ForeColor="Red" ValidationExpression="^[0-9]+$">
                                </asp:RegularExpressionValidator>
                            --%>
                        <input type="number" id="txtApprovedCost" placeholder="60000.00" onkeypress="return validateNum(event);" maxlength="10" autocomplete="off" class="form-control">
                        </div>
                    </div>
                    <%-- <div class="col-sm-3" id="pnlhidebtn" style="margin-top: 43px; display: none;">
                        <div class="form-group">
                            <asp:LinkButton ID="lnkResetApprovedCost" OnClientClick="clearApprovedCostData ();" Text="Reset Approved Cost" CssClass="btn btn-danger btn-block" runat="server"></asp:LinkButton>
                        </div>
                    </div>--%>





                    <div class="col-sm-12">
                        <table class="datatable table table-striped table-bordered table-hover" style="border-collapse: collapse;" id="Table1">
                            <tbody>
                                <tr>
                                    <th>Sr.No<br />सरल क्रमांक
                                    </th>
                                    <th>MileStone
                                        <br />
                                       माइल स्टोन</th>
                                    <th>Project Exp. Start Date
                                        <br />
                                        परियोजना एक्सपेक्टेड प्रारंभ दिनांक<span style="color: red">*</span></th>
                                    <th>Project Exp. End Date
                                        <br />
                                        परियोजना एक्सपेक्टेड अंतिम दिनांक<span style="color: red">*</span></th>
                                    <th>Installment (%)<br />
                                        इन्सटॉलमेंट  (%)<span style="color: red">*</span></th>
                                    <th>Installment Amount
                                        <br />
                                        इन्सटॉलमेंट  अमाउंट</th>
                                    <th style="display: none;" id="btnaction1">Action<br />
                                        कार्रवाई</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td align="center">
                                        <select class="form-control select2" id="ddlInstallment" onchange="myaddbtn2()">
                                            <option value="--select--">--Select--</option>
                                            <option value="Foundation">Foundation</option>
                                            <option value="Plinth">Plinth</option>
                                            <option value="Mid level completion">Mid level completion</option>
                                            <option value="Final level completion">Final level completion</option>
                                        </select></td>
                                    <td>
                                        <input type="date" id="c1" class="form-control"></td>
                                    <td>
                                        <input type="date" id="c2" class="form-control"></td>
                                    <td>
                                        <input type="text" id="c3" class="form-control"></td>
                                    <td>
                                        <input type="email" id="c4" class="form-control"></td>
                                    <td style="display: none;" id="btnaction3">

                                        <button type="button" onclick="addData2()" class="btn btn-success">Add</button></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Total</td>
                                    <td>
                                        <asp:TextBox ID="txtInstallmentPer_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="3">0</asp:TextBox></td>

                                    <td>
                                        <asp:TextBox ID="txtInstallmentAmount_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="15">0</asp:TextBox></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-12">
                        <input type="button" name="ctl00$ContentBody$btnSave" value="Save" class="btn btn-success btn-border Alert-Confirmation" />
                        <a href="InstallmentCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset></div>
            <!--modal-->



            <!-- Modal Component -->
            <div class="modal" id="viewModel" tabindex="-1" role="dialog" aria-labelledby="viewModelListLabel1">
                <div class="modal-dialog modal-xl" style="width: 100%;">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalLabel1">Project Details</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Enter Remark /<br />
                                            टिप्पणी दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Remark" />
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="button"
                                            onclick="window.location.href = 'InstallmentCreation.aspx';"
                                            value="Save & Next" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />


                                        <%--<a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>--%>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- Modal Footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>






</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script>
        function lnkbtnActiveorNot() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {
                document.getElementById("pnlhidebtn").style.display = "block";
                document.getElementById("txtApprovedCost").readOnly = true;
            }
            else {
                document.getElementById("pnlhidebtn").style.display = "none";
                document.getElementById("txtApprovedCost").readOnly = false;
            }

        }
        function clearApprovedCostData() {
            debugger;
            document.getElementById("txtApprovedCost").readOnly = false;
            document.getElementById("txtApprovedCost").value = "";
            document.getElementById("pnlhidebtn").style.display = "none";
            document.getElementById("txtInstallmentPer1").value = "";
            document.getElementById("txtInstallmentPer2").value = "";
            document.getElementById("txtInstallmentPer3").value = "";
            document.getElementById("txtInstallmentPer4").value = "";
            document.getElementById("txtInstallmentAmount1").value = "";
            document.getElementById("txtInstallmentAmount2").value = "";
            document.getElementById("txtInstallmentAmount3").value = "";
            document.getElementById("txtInstallmentAmount4").value = "";
            document.getElementById("txtInstallmentPer_Total").value = "";
            document.getElementById("txtInstallmentAmount_Total").value = "";

        }
        function calculateInstallmentAmt1() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }

                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }
                var result1 = "", sumall_per = "", sum_total = "";
                if (x1 != "0") {
                    result1 = ((parseFloat(x) * parseFloat(x1)) / 100);
                    document.getElementById("txtInstallmentAmount1").value = parseFloat(result1).toFixed(2);


                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(result1) + parseFloat(y2) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {
                        var x1_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x1_minus - x1);

                        var result1_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result1_minus - result1);

                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer1").value = "";
                        document.getElementById("txtInstallmentAmount1").value = "";
                    }

                }
                else {
                    sumall_per = (parseInt(0) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount1").value = "";
                    sum_total = (parseFloat(0) + parseFloat(y2) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }


            }
            else {
                alert("First Enter Approved Cost.");
                document.getElementById("txtInstallmentPer1").value = "";
                document.getElementById("txtInstallmentAmount1").value = "";
            }

        }
        function calculateInstallmentAmt2() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }

                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }

                var result2 = "", sumall_per = "", sum_total = "";

                if (x2 != "0") {
                    result2 = ((parseFloat(x) * parseFloat(x2)) / 100);
                    document.getElementById("txtInstallmentAmount2").value = parseFloat(result2).toFixed(2);

                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(y1) + parseFloat(result2) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {
                        var x2_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x2_minus - x2);

                        var result2_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result2_minus - result2);

                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer2").value = "";
                        document.getElementById("txtInstallmentAmount2").value = "";
                    }
                }
                else {
                    sumall_per = (parseInt(x1) + parseInt(0) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount2").value = "";
                    sum_total = (parseFloat(y1) + parseFloat(0) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }
            }
            else {
                alert("First Enter Approved Cost.");
                document.getElementById("txtInstallmentPer2").value = "";
                document.getElementById("txtInstallmentAmount2").value = "";
            }

        }
        function calculateInstallmentAmt3() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }


                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }

                var result3 = "", sumall_per = "", sum_total = "";

                if (x3 != "0") {
                    result3 = ((parseFloat(x) * parseFloat(x3)) / 100);
                    document.getElementById("txtInstallmentAmount3").value = parseFloat(result3).toFixed(2);

                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(result3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {
                        var x3_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x3_minus - x3);

                        var result3_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result3_minus - result3);

                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer3").value = "";
                        document.getElementById("txtInstallmentAmount3").value = "";
                    }
                }
                else {
                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(0) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount3").value = "";
                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(0) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }
            }
            else {
                alert("First Enter Approved Cost.");

                document.getElementById("txtInstallmentPer3").value = "";
                document.getElementById("txtInstallmentAmount3").value = "";
            }

        }
        function calculateInstallmentAmt4() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }

                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }
                var result4 = "", sumall_per = "", sum_total = "";

                if (x4 != "0") {
                    result4 = ((parseFloat(x) * parseFloat(x4)) / 100);
                    document.getElementById("txtInstallmentAmount4").value = parseFloat(result4).toFixed(2);

                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(y3) + parseFloat(result4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {

                        var x4_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x4_minus - x4);

                        var result4_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result4_minus - result4);


                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer4").value = "";
                        document.getElementById("txtInstallmentAmount4").value = "";
                    }
                }
                else {
                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(0));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount4").value = "";
                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(y3) + parseFloat(0));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }
            }
            else {
                alert("First Enter Approved Cost.");
                document.getElementById("txtInstallmentPer4").value = "";
                document.getElementById("txtInstallmentAmount4").value = "";
            }

        }
    </script>--%>
    <script>
        function addData2() {
            // Get input values
            let name = document.getElementById("ddlInstallment").value;
            let email = document.getElementById("c1").value;
            let mobile = document.getElementById("c2").value;
            let PreviousGradea = document.getElementById("c3").value;
            let PreviousGradeb = document.getElementById("c4").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById('Table1');

            // Check if the maximum limit is reached
            if (table.rows.length >= 10) {
                alert("Maximum 10 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }

            // Insert data into cells of the new row
            let newRow = table.insertRow(table.rows.length - 1);
            newRow.insertCell(0).innerHTML = table.rows.length - 2; // Column 0: Row number
            newRow.insertCell(1).innerHTML = name; // Column 1: Name
            newRow.insertCell(2).innerHTML = email; // Column 2: Email
            newRow.insertCell(3).innerHTML = mobile; // Column 3: Mobile
            newRow.insertCell(4).innerHTML = PreviousGradea; // Column 4: Previous Grade A
            newRow.insertCell(5).innerHTML = PreviousGradeb; // Column 5: Previous Grade B
            let InstallmentPer_Total = document.getElementById('<%=txtInstallmentPer_Total.ClientID %>').value
            let InstallmentAmount_Total = document.getElementById('<%=txtInstallmentAmount_Total.ClientID %>').value
            document.getElementById('<%=txtInstallmentPer_Total.ClientID %>').value = + PreviousGradea + + InstallmentPer_Total
            document.getElementById('<%=txtInstallmentAmount_Total.ClientID %>').value = + PreviousGradeb + + InstallmentAmount_Total
            clearInputs3();
        }
        function clearInputs3() {
            debugger;
            // Clear input fields
            //document.getElementById("ddlClass").Items.Insert(0, new ListItem("--Select--", "0"));
            document.getElementById("ddlInstallment").selectedIndex = 0;
            $('#ddlInstallment').trigger('change');
            //document.getElementById("a1").value = "";
            //document.getElementById("a2").value = "";
            //document.getElementById("a3").value = "";
            //document.getElementById("workdescription3").value = "";


            let email = document.getElementById("c1").value = "";
            let mobile = document.getElementById("c2").value = "";
            let PreviousGradea = document.getElementById("c3").value = "";
            let PreviousGradeab = document.getElementById("c4").value = "";


        }
    </script>
    <script>function myaddbtn2() {
            var ForwordTo = document.getElementById("ddlInstallment").value;
            if (ForwordTo != "0") {
                document.getElementById("btnaction3").style.display = "table-cell";

                document.getElementById("btnaction1").style = "display:table-cell";
            }
        }</script>

     <%-- <script>
          function div(){
              document.getElementById("hide").style.display = "block";
          }

      </script>--%>
    <script>
        function div() {
            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';
        }
    </script>
</asp:Content>

