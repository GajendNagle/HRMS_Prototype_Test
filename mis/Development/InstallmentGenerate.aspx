<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentGenerate.aspx.cs" Inherits="mis_Development_InstallmentGenerate" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Generate</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Installment Generate / किस्त जनरेट
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Installment Generate / किस्त जनरेट</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Project Year<br />
                            प्रोजेक्ट वर्ष का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>2024</option>
                            <option>2023</option>
                            <option>2022</option>
                            <option>2021</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Project No<br />
                            प्रोजेक्ट नंबर का चयन करें<span style="color: red;">*</span>
                        </label>
                        <select class="form-control select2" id="ddlProjectNo" onchange="showHideRemarkView()">
                            <option>Select</option>
                            <option value="1">PWDMP001</option>
                            <option value="2">PWDMP002</option>
                            <option value="3">PWDMP003</option>
                            <option value="4">PWDMP004</option>
                        </select>
                    </div>

                    <div class="col-md-3" style="display: none;" id="ddlOfficeN">
                        <label>
                            Select Office Name<br />
                            कार्यालय का चयन करें
                        </label>
                        <select class="form-control select2">
                            <option>BEO</option>
                            <option>DEO</option>
                            <option>JD</option>
                            <option>HO</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Work Category
                                <br />
                            कार्य श्रेणी का चयन करें<span style="color: red">*</span></label>

                        <select class="form-control select2">
                            <option>Select</option>
                            <option>स्कूल मरम्मत/निर्माण</option>
                            <option>पेयजल व्यवस्था</option>
                            <option>स्कूल मार्ग निर्माण</option>
                        </select>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Enter Order No.<br />
                            ऑर्डर संख्या दर्ज करें<span style="color: red">*</span>
                        </label>
                        <input type="text" class="form-control" placeholder="Enter Order No." />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Order Date<br />
                            आर्डर की तारीख<span style="color: red">*</span>
                        </label>
                        <input type="text" class="form-control" placeholder="Enter Order No." />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Save</button>
                        <a href="InstallmentGenerate.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                <br />
                                            क्रमांक</th>
                                        <th>Project Year<br />
                                            परियोजना वर्ष</th>
                                        <th>Project<br />
                                            परियोजना</th>
                                        <th>Work Type<br />
                                            कार्य प्रकार
                                        </th>
                                        <th>Order No.<br />
                                            आदेश संख्या</th>
                                        <th>Order Date<br />
                                            आर्डर की तारीख</th>
                                        <th>Action<br />
                                            कार्यवाही</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>2022</td>
                                    <td>Dpi</td>
                                    <td>स्कूल निर्माण</td>
                                    <td>OR456</td>
                                    <td>10/03/2021</td>
                                    <td><a role="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Add</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" id="myDIV2">
                    <h4 class="modal-title" id="myLargeModalLabel2">Details / विवरण</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Details / विवरण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">

                                <label>
                                    Enter Area Name<br />
                                    क्षेत्र का नाम दर्ज करें</label>
                                <input type="date" class="form-control" id="txtAreaN" />
                            </div>

                            <div class="col-md-3">
                                <label>
                                    Select Work Category
            <br />
                                    कार्य श्रेणी का चयन करें<span style="color: red">*</span></label>

                                <select class="form-control select2" id="ddlWorkCat">
                                    <option>Select</option>
                                    <option>स्कूल मरम्मत/निर्माण</option>
                                    <option>पेयजल व्यवस्था</option>
                                    <option>स्कूल मार्ग निर्माण</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label>
                                    Select Work Subcategory
                                        <br />
                                    कार्य उपश्रेणी का चयन करें<span style="color: red">*</span></label>

                                <select class="form-control select2" id="ddlSubCat">
                                    <option>Select</option>
                                    <option>इमारत मरम्मत</option>
                                    <option>हेंडपंप खनन</option>
                                    <option>CC सड़क निर्माण</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label>
                                    Enter Work Area<br />
                                    कार्य क्ष्रेत्र दर्ज करें</label>
                                <input type="text" class="form-control" placeholder="Enter Work Area" id="txtWorkArea" />
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <label>
                                    Unit<br />
                                    यूनिट</label>
                                <input type="text" class="form-control" placeholder="Enter Work Area" id="txtunit" />
                            </div>

                            <div class="col-md-3">
                                <label>
                                    Enter Installment No.<br />
                                    इन्सटॉलमेंट नंबर दर्ज करें</label>
                                <input type="text" class="form-control" placeholder="Enter Installment No." id="txtInstallmentNo" />
                            </div>

                            <div class="col-md-3">
                                <label>
                                    Cost Amount<br />
                                    लागत राशि</label>
                                <input type="text" class="form-control" value="20000" readonly="readonly" id="txtCostAmt" />
                            </div>

                            <div class="col-md-3">
                                <label>
                                    Select Installment %<br />
                                    इन्सटॉलमेंट प्रतिशत का चयन करें</label>
                                <select class="form-control select2" id="ddlInstallment" onchange="OnChange()">
                                    <option>Select</option>
                                    <option value="10%">10%</option>
                                    <option value="20%">20%</option>
                                    <option value="30%">30%</option>
                                    <option value="40%">40%</option>
                                </select>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3" id="txtReleaseAmt" style="display: none;">
                                <label>
                                    Release Amount<br />
                                    रिलीज़ राशि</label>
                                <input type="text" class="form-control" value="23546" readonly="readonly" id="txtRelease" />
                            </div>

                            <div class="col-md-4">
                                <label>
                                    Enter Remark<br />
                                    टिप्पणी दर्ज करें</label>
                                <input type="text" class="form-control" placeholder="Enter Remark" id="txtRemark" />
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-6">
                                <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="addData2()">Add</button>
                                <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Clear</button>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="Fieldset1" style="display: none">
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center" id="Table1">
                                        <thead class="nowrap">
                                            <tr>
                                                <th>Sr.No.
 <br />
                                                    क्रमांक</th>
                                                <th>Area Name<br />
                                                    क्षेत्र का नाम</th>
                                                <th>Work Category<br />
                                                    कार्य श्रेणी</th>
                                                <th>Work Sub Category
 <br />
                                                    कार्य उप श्रेणी</th>
                                                <th>Work Area
                                <br />
                                                    कार्य क्षेत्र
                                                </th>
                                                <th>Unit<br />
                                                    यूनिट
                                                </th>
                                                <th>Installment No.
                                            <br />
                                                    इन्सटॉलमेंट नंबर
                                                </th>
                                                <th>Cost Amount
                                <br />
                                                    लागत राशि
                                                </th>
                                                <th>Installment %
     <br />
                                                    इन्सटॉलमेंट प्रतिशत</th>
                                                <th>Release Amount<br />
                                                    रिलीज़ राशि
                                                </th>
                                                <th>Remark<br />
                                                    टिप्पणी</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbody"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg">Final Save</button>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlProjectNo = document.getElementById('ddlProjectNo');

            if (ddlProjectNo.value == "1") {
                ddlOfficeN.style.display = "block";

            }
            else if (ddlProjectNo.value == "2") {
                ddlOfficeN.style.display = "block";

            }
            else if (ddlProjectNo.value == "3") {
                ddlOfficeN.style.display = "block";

            }
            else if (ddlProjectNo.value == "4") {
                ddlOfficeN.style.display = "block";

            }
            else {
                ddlOfficeN.style.display = "none";
            }
        }
    </script>

    <script type="text/javascript">
        function OnChange() {
            var ddlInstallment = document.getElementById('ddlInstallment');
            var txtReleaseAmt = document.getElementById('txtReleaseAmt'); // Make sure this element exists

            txtReleaseAmt.style.display = 'block';

        }
    </script>


    <script>
        function addData2() {
            debugger;
            document.getElementById("Fieldset1").style.display = 'block';
            let name = document.getElementById("txtAreaN").value;
            let email = document.getElementById("ddlWorkCat").value;
            let mobile = document.getElementById("ddlSubCat").value;
            let PreviousGradea = document.getElementById("txtWorkArea").value;
            let PreviousGradeab = document.getElementById("txtunit").value;
            let PreviousGradec = document.getElementById("txtInstallmentNo").value;
            let PreviousGraded = document.getElementById("txtCostAmt").value;
            let PreviousGradee = document.getElementById("ddlInstallment").value;
            let Gradea = document.getElementById("txtRelease").value;
            let Gradeb = document.getElementById("txtRemark").value;
            <%--let Gradec = document.getElementById("ddlGram").value;
            let Graded = document.getElementById("ddlproprty").value;
            let Gradee = document.getElementById("txtValue").value;
            let Gradef = document.getElementById("ddlpropertyowner").value;
            //let Gradeg = document.getElementById("<%=ownername.ClientID%>").value;
            let Gradeh = document.getElementById("ddlPropertySource").value;
            let Gradei = document.getElementById("txtPurchase").value;
            let Gradej = document.getElementById("monumber").value;
            let Gradeklplp = document.getElementById("address").value;
            let Gradeklplphvj = document.getElementById("Income").value;
            let Gradeklplphvasdsj = document.getElementById("Accusation").value;--%>

            // Get the table and insert a new row at the end
            let table = document.getElementById('Table1');
            let newRow = table.getElementsByTagName('tbody')[0].insertRow();
            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = table.rows.length - 1;
            newRow.insertCell(1).innerHTML = name;
            newRow.insertCell(2).innerHTML = email;
            newRow.insertCell(3).innerHTML = mobile;
            newRow.insertCell(4).innerHTML = PreviousGradea;
            newRow.insertCell(5).innerHTML = PreviousGradeab;
            newRow.insertCell(6).innerHTML = PreviousGradec;
            newRow.insertCell(7).innerHTML = PreviousGraded;
            newRow.insertCell(8).innerHTML = PreviousGradee;
            newRow.insertCell(9).innerHTML = Gradea;
            newRow.insertCell(10).innerHTML = Gradeb;
            //newRow.insertCell(11).innerHTML = Gradec;
            //newRow.insertCell(12).innerHTML = Graded;
            //newRow.insertCell(13).innerHTML = Gradee;
            //newRow.insertCell(14).innerHTML = Gradef;
            //newRow.insertCell(15).innerHTML = Gradeg;
            //newRow.insertCell(16).innerHTML = Gradeh;
            //newRow.insertCell(17).innerHTML = Gradei;
            //newRow.insertCell(18).innerHTML = Gradej;
            //newRow.insertCell(19).innerHTML = Gradeklplp;
            //newRow.insertCell(20).innerHTML = Gradeklplphvj;
            //newRow.insertCell(21).innerHTML = Gradeklplphvasdsj;

            //const actionButtonTd = newRow.cells[20];
            //actionButtonTd.innerHTML += sghsgfhg;
            //newRow.insertCell(21);
            //const actionButtonTd = newRow.cells[21];
            //actionButtonTd.innerHTML += aidfujfh;
            // Add action field
            //newRow.insertCell(22);
            //const actionButtonTd = newRow.cells[22];
            //actionButtonTd.innerHTML += '<a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a>';

            // Clear input fields after adding the row
            clearInputs2();
        };

        // Function to clear input fields after adding a row
        function clearInputs2() {
            let name = document.getElementById("txtAreaN").value;
            let email = document.getElementById("ddlWorkCat").value;
            let mobile = document.getElementById("ddlSubCat").value;
            let PreviousGradea = document.getElementById("txtWorkArea").value;
            let PreviousGradeab = document.getElementById("txtunit").value;
            let PreviousGradec = document.getElementById("txtInstallmentNo").value;
            let PreviousGraded = document.getElementById("txtCostAmt").value;
            let PreviousGradee = document.getElementById("ddlInstallment").value;
            let Gradea = document.getElementById("txtRelease").value;
            let Gradeb = document.getElementById("txtRemark").value;

            //document.getElementById("ddlPropertySource").value = "";
            //document.getElementById("txtPurchase").value = "";
            //document.getElementById("monumber").value = "";
            //document.getElementById("address").value = "";
        }
    </script>
</asp:Content>

