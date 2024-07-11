<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentCreation.aspx.cs" Inherits="mis_Development_InstallmentCreation" %>

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
                    <h4 class="card-title">Installment Creation / किस्त निर्माण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Installment Creation / किस्त निर्माण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Code /<br />
                                परियोजना कोड</label>
                            <asp:TextBox ID="txtProjectCode" MaxLength="10" value="P0001" disabled
                                AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Date /<br />
                                परियोजना दिनांक</label>

                            <asp:TextBox ID="txtProjectDate" MaxLength="10" value="11/06/2024" disabled
                                AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Estimated Budget Cost(Approx. In Rs) /<br />
                                अनुमानित राशि
                            </label>

                            <asp:TextBox ID="txtEstimatedBudgetCost" ClientIDMode="Static" MaxLength="10" value="60000.00" disabled
                                AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Approved Cost(Approx. In Rs) /
                  <br />
                                स्वीकृत राशि <span style="color: red">*</span></label>
                            <span class="pull-right">
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
                            </span>
                            <asp:TextBox ID="txtApprovedCost" onkeypress="return validateNum(event);" placeholder="Enter Approved Cost" onchange="lnkbtnActiveorNot()" ClientIDMode="Static" MaxLength="10"
                                AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-sm-3" id="pnlhidebtn" style="margin-top: 43px; display: none;">
                        <div class="form-group">
                            <asp:LinkButton ID="lnkResetApprovedCost" OnClientClick="clearApprovedCostData ();" Text="Reset Approved Cost" CssClass="btn btn-danger btn-block" runat="server"></asp:LinkButton>
                        </div>
                    </div>

                    <div class="col-sm-12">


                        <table class="datatable table table-striped table-bordered table-hover" style="border-collapse: collapse;">
                            <tbody>
                                <tr>
                                    <th>Installment No. /<br />
                                        इन्सटॉलमेंट  नं.</th>
                                    <th>Project Exp. Start Date /<br />
                                        परियोजना एक्सपेक्टेड प्रारंभ दिनांक<span style="color: red">*</span></th>
                                    <th>Project Exp. End Date /<br />
                                        परियोजना एक्सपेक्टेड अंतिम दिनांक<span style="color: red">*</span></th>
                                    <th>Installment (%)/<br />
                                        इन्सटॉलमेंट  (%)<span style="color: red">*</span></th>
                                    <th>Installment Amount /<br />
                                        इन्सटॉलमेंट  अमाउंट</th>
                                </tr>
                                <tr>
                                    <td align="center">1</td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate11" ErrorMessage="Enter 1st Project Exp. Start Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 1st Project Exp. Start Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate11" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. Start Date"
                                            data-provide="datepicker" onpaste="return false ;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate12" ErrorMessage="Enter 1st Project Exp. End Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 1st Project Exp. End Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate12" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. End Date"
                                            data-provide="datepicker" onpaste="return false ;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>

                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic"
                                                ControlToValidate="txtInstallmentPer1" ErrorMessage="Enter 1st Installment(%)"
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 1st Installment(%)'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="a"
                                                Display="Dynamic" runat="server" ControlToValidate="txtInstallmentPer1"
                                                ErrorMessage="Only Numeric allow, 1st Installment Amount "
                                                Text="<i class='fa fa-exclamation-circle' title='Only Numeric allow,  1st Installment Per(%) !'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationExpression="^[0-9]+$">
                                            </asp:RegularExpressionValidator>
                                        </span>
                                        <asp:TextBox ID="txtInstallmentPer1" onchange="calculateInstallmentAmt1();" autocomplete="off" onkeypress="return validateNum(event);"
                                            ClientIDMode="Static" runat="server"
                                            CssClass="form-control" MaxLength="2">
                                        </asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtInstallmentAmount1" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="13"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="center">2</td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate21" ErrorMessage="Enter 2nd Project Exp. Start Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 2nd Project Exp. Start Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate21" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. Start Date"
                                            data-provide="datepicker" onpaste="return false ;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate22" ErrorMessage="Enter 2nd Project Exp. End Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 2nd Project Exp. End Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate22" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. End Date"
                                            data-provide="datepicker" onpaste="return false ;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>

                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic"
                                                ControlToValidate="txtInstallmentPer2" ErrorMessage="Enter 2nd Installment(%)"
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 2nd Installment(%)'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationGroup="a"
                                                Display="Dynamic" runat="server" ControlToValidate="txtInstallmentPer2"
                                                ErrorMessage="Only Numeric allow, 2nd Installment Amount "
                                                Text="<i class='fa fa-exclamation-circle' title='Only Numeric allow,  2nd Installment Per(%) !'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationExpression="^[0-9]+$">
                                            </asp:RegularExpressionValidator>
                                        </span>
                                        <asp:TextBox ID="txtInstallmentPer2" onchange="calculateInstallmentAmt2();" autocomplete="off" onkeypress="return validateNum(event);"
                                            ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="txtInstallmentAmount2" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="13"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="center">3</td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate31" ErrorMessage="Enter 3rd Project Exp. Start Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 3rd Project Exp. Start Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate31" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. Start Date"
                                            data-provide="datepicker" onpaste="return false ;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate32" ErrorMessage="Enter 3rd Project Exp. End Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 3rd Project Exp. End Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate32" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. End Date"
                                            data-provide="datepicker" onpaste="return false ;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>

                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic"
                                                ControlToValidate="txtInstallmentPer3" ErrorMessage="Enter 3rd Installment(%)"
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 3rd Installment(%)'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationGroup="a"
                                                Display="Dynamic" runat="server" ControlToValidate="txtInstallmentPer3"
                                                ErrorMessage="Only Numeric allow, 3rd Installment Amount "
                                                Text="<i class='fa fa-exclamation-circle' title='Only Numeric allow,  3rd Installment Per(%) !'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationExpression="^[0-9]+$">
                                            </asp:RegularExpressionValidator>
                                        </span>
                                        <asp:TextBox ID="txtInstallmentPer3" onchange="calculateInstallmentAmt3();"
                                            autocomplete="off" onkeypress="return validateNum(event);" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="txtInstallmentAmount3" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="13"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="center">4</td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate41" ErrorMessage="Enter 4th Project Exp. Start Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 4th Project Exp. Start Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate41" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. Start Date"
                                            data-provide="datepicker" onpaste="return false;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>
                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Display="Dynamic"
                                                ControlToValidate="txtExpStartDate42" ErrorMessage="Enter 4th Project Exp. End Date "
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 4th Project Exp. End Date'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                        </span>
                                        <asp:TextBox runat="server" autocomplete="off" CssClass="form-control"
                                            ID="txtExpStartDate42" MaxLength="10" data-date-start-date="-0d"
                                            data-date-end-date="+365d" placeholder="Enter Project Exp. End Date"
                                            data-provide="datepicker" onpaste="return false ;"
                                            onkeypress="return false;" data-date-format="dd/mm/yyyy"
                                            data-date-autoclose="true" ClientIDMode="Static">

                                        </asp:TextBox>
                                    </td>

                                    <td>
                                        <span class="pull-right">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic"
                                                ControlToValidate="txtInstallmentPer4" ErrorMessage="Enter 4th Installment(%)"
                                                Text="<i class='fa fa-exclamation-circle' title='Enter 4th Installment(%)'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationGroup="a"
                                                Display="Dynamic" runat="server" ControlToValidate="txtInstallmentPer4"
                                                ErrorMessage="Only Numeric allow, 4th Installment Amount "
                                                Text="<i class='fa fa-exclamation-circle' title='Only Numeric allow,  4th Installment Per(%) !'></i>"
                                                SetFocusOnError="true" ForeColor="Red" ValidationExpression="^[0-9]+$">
                                            </asp:RegularExpressionValidator>
                                        </span>
                                        <asp:TextBox ID="txtInstallmentPer4" onchange="calculateInstallmentAmt4();"
                                            autocomplete="off" onkeypress="return validateNum(event);" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="txtInstallmentAmount4" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="13"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>Total</td>
                                    <td>
                                        <asp:TextBox ID="txtInstallmentPer_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox></td>

                                    <td>
                                        <asp:TextBox ID="txtInstallmentAmount_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="15"></asp:TextBox></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <%-- <div class="row">
                        <div class="col-md-12">
                            <asp:Button runat="server" ID="btnSubmit" OnClientClick="return ValidatePage();" ValidationGroup="a" CssClass="btn btn-success btn-block" Text="Save" />
                            <a href="InstallmentCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>--%>
                    <div class="col-md-12">
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" class="btn btn-success btn-border" />
                        <a href="InstallmentCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
    </script>

</asp:Content>

