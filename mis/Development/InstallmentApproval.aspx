<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentApproval.aspx.cs" Inherits="mis_Development_InstallmentCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #divprint {
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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Approval</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                <%--इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |--%>
            </marquee>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Installment Approval / किस्त स्वीकृति</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Installment Approval / किस्त स्वीकृति</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Type <br />
                                कार्यालय के प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--  <option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">School</option>
                                <option value="3">Sankul</option>
                                <option value="3">BEO</option>
                                <option value="3">DEO</option>
                                <option value="3">JD</option>
                                <option value="3">HO</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name <br />
                                कार्यालय के नाम का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--<option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">Maharishi Mahavidyalaya</option>

                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Code <br />
                                परियोजना कोड</label>
                            <input type="Text" id="PCode" name="birthday" class="form-control" value="P0001" disabled autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Date <br />
                                परियोजना दिनांक</label>
                            <input type="Text" id="PDate" name="birthday" class="form-control" value="11/06/2024" disabled autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Estimated Budget Cost(Approx. In Rs) <br />
                                अनुमानित राशि
                            </label>
                            <input type="text" id="Budget" name="birthday" class="form-control" value="60000.00" disabled autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Installment Number <br />
                                किस्त संख्या चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--<option value="--Select--">--Select--</option>--%>

                                <option value="A">द्वितीय किस्त</option>
                                <option value="A">तृतीय किस्त</option>
                                <option value="A">चतुर्थी किस्त</option>
                                <option value="A">पञ्चमी किस्त</option>

                            </select>
                        </div>
                    </div>

                    <%--  <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Approved Cost(Approx. In Rs) /
                  <br />
                                स्वीकृत राशि <span style="color: red">*</span></label>
                            <input type="Text" id="txtApprovedCost" name="birthday" class="form-control" autocomplete="off" onchange="lnkbtnActiveorNot()">
                        </div>
                    </div>--%>


                    <div class="col-sm-3" id="pnlhidebtn" style="margin-top: 20px; display: none;">
                        <div class="form-group">

                            <input type="submit" onclientclick="clearApprovedCostData ();" value="Reset Approved Cost" class="btn btn-danger btn-block" />

                        </div>
                    </div>

                    <div class="col-sm-12">


                        <table class="datatable table table-striped table-bordered table-hover" style="border-collapse: collapse;">
                            <tbody>
                                <tr>
                                    <th>Installment No. <br />
                                        इन्सटॉलमेंट  नं.</th>
                                    <th>Project Exp. Start Date <br />
                                        परियोजना एक्सपेक्टेड प्रारंभ दिनांक<span style="color: red">*</span></th>
                                    <th>Project Exp. End Date <br />
                                        परियोजना एक्सपेक्टेड अंतिम दिनांक<span style="color: red">*</span></th>

                                    <th>Installment Amount <br />
                                        इन्सटॉलमेंट  अमाउंट</th>
                                    <th>Status <br />
                                        स्थिति</th>
                                    <th>Action <br />
                                        क्रिया
                                    </th>
                                </tr>
                                <tr>
                                    <td align="center">1</td>
                                    <td>

                                        <input type="date" id="txtExpStartDate11" name="birthday" placeholder="Enter Project Exp. Start Date" class="form-control">
                                    </td>
                                    <td>
                                        <input type="date" id="txtExpStartDate12" name="birthday" class="form-control">
                                    </td>


                                    <td>
                                        <input type="Text" id="txtInstallmentAmount1" name="birthday" class="form-control" disabled></td>
                                    <td>

                                        <label id="demo">Pending</label>

                                    </td>
                                    <td>
                                        <input type="button" onclick="myFunction()" value="Approve" class="btn btn-success btn-border" id="disableButton" />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>Total</td>


                                    <td>
                                        <asp:TextBox ID="txtInstallmentAmount_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="15" disabled></asp:TextBox></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-md-3">

                        <div class="row">
                            <div class="col-md-6">
                                <button type="button" class="Alert-Confirmation btn btn-success btn-border" value="Save" data-bs-dismiss="modal">Save</button>

                            </div>
                        </div>
                    </div>

                </div>

            </fieldset>


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
    <script>
        function calculateInstallmentAmt1() {

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

        // Get a reference to the button and textbox
        const disableButton = document.getElementById('disableButton');
        const txtInstallmentPer2 = document.getElementById('txtInstallmentPer2');

        // Add event listener to the button
        disableButton.addEventListener('click', function () {
            // Disable the textbox
            txtInstallmentPer2.disabled = false;
        });


        const disableButton1 = document.getElementById('disableButton1');
        const txtInstallmentPer3 = document.getElementById('txtInstallmentPer3');

        // Add event listener to the button
        disableButton1.addEventListener('click', function () {
            // Disable the textbox
            txtInstallmentPer3.disabled = false;
        });

        const disableButton2 = document.getElementById('disableButton2');
        const txtInstallmentPer4 = document.getElementById('txtInstallmentPer4');

        // Add event listener to the button
        disableButton2.addEventListener('click', function () {
            // Disable the textbox
            txtInstallmentPer4.disabled = false;
        });
    </script>

    <script>
        function myFunction() {


            document.getElementById("demo").innerHTML = "Approve";

        }
        function myFunction1() {


            document.getElementById("demo1").innerHTML = "Approve";

        }
        function myFunction2() {


            document.getElementById("demo2").innerHTML = "Approve";

        }
        function myFunction3() {


            document.getElementById("demo3").innerHTML = "Approve";

        }
    </script>



</asp:Content>

