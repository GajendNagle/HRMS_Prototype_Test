<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoucherEditRightProcess.aspx.cs" Inherits="mis_Finance_VoucherEditRightProcess" %>

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
                        <li class="breadcrumb-item"><a href="#FinanceVoucherMaster" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance Creation</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Voucher Edit Rights Process</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Voucher Edit Rights Process / वाउचर संपादन अधिकार प्रक्रिया</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Voucher Edit Rights Process / वाउचर संपादन अधिकार प्रक्रिया</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Edit Rights type/<br />
                                संपादन अधिकार प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlEditRightstype" onchange="OfficeNDVoucher()">
                                <option value="0">--Select--</option>
                                <option value="1">Office Wise</option>
                                <option value="2">Voucher Wise</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" id="FinancialYear" style="display: none">
                        <div class="form-group">
                            <label>
                                Financial Year/<br />
                                वार्षिक प्रतिवेदन अवधि वर्ष <span style="color: red">*</span>
                            </label>
                            <asp:DropDownList runat="server" ID="ddlyera" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>2020-2021</asp:ListItem>
                                <asp:ListItem>2021-2022</asp:ListItem>
                                <asp:ListItem>2022-2023</asp:ListItem>
                                <asp:ListItem>2023-2024</asp:ListItem>
                                <asp:ListItem>2024-2025</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" id="OfficeType" style="display: none">
                        <div class="form-group">
                            <label>
                                Select Office Type/
                                <br />
                                कार्यालय का प्रकार का चयन करें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlofficetype" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Head Office</asp:ListItem>
                                <asp:ListItem>JOINT DIRECTORS</asp:ListItem>
                                <asp:ListItem>DISTRICT EDUCATION OFFICERS</asp:ListItem>
                                <asp:ListItem>BLOCK EDUCATION OFFICERS</asp:ListItem>
                                <asp:ListItem>SANKUL/AEO</asp:ListItem>
                                <asp:ListItem>SCHOOL</asp:ListItem>
                                <asp:ListItem>Principal Secretary</asp:ListItem>
                                <asp:ListItem>Secretary</asp:ListItem>
                                <asp:ListItem>Deputy Secretary</asp:ListItem>
                                <asp:ListItem>CPI</asp:ListItem>
                                <asp:ListItem>CRSK</asp:ListItem>
                                <asp:ListItem>DPI</asp:ListItem>
                                <asp:ListItem>Collector</asp:ListItem>
                                <asp:ListItem>CEO, ZP</asp:ListItem>
                                <asp:ListItem>DPC</asp:ListItem>
                                <asp:ListItem>BRC</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" id="OfficeName" style="display: none">
                        <div class="form-group">
                            <label>
                                Select Office Name/
                                <br />
                                कार्यालय का नाम का चयन करें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlofficeName" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Jabalpur</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                                <asp:ListItem>Hoshangabad</asp:ListItem>
                                <asp:ListItem>Betul</asp:ListItem>
                                <asp:ListItem>Chhindwara</asp:ListItem>
                                <asp:ListItem>Seoni</asp:ListItem>
                                <asp:ListItem>Balaghat</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-info btn-border w-lg" onclick="TableHideshow()">Search</button>
                        <a href="VoucherEditRightProcess.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset> 
            <fieldset id="fldiv" style="display:none">
                <legend>Voucher Edit Rights Process / वाउचर संपादन अधिकार प्रक्रिया</legend>

                <div class="row">
                    <div class="col-md-12" id="Table1" style="display: none">
                        <table class="table table-bordered table-responsive-lg text-center " runat="server">
                            <thead>
                                <tr valign="middle">
                                    <th>S.No./<br />
                                        सरल.क्र </th>
                                    <th>Office Name/<br />
                                        कार्यालय का नाम</th>
                                    <th style="width: 19%;">Edit Day/<br />
                                        दिन संपादित करें</th>
                                    <th>Audit/<br />
                                        ऑडिट</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr valign="middle">
                                    <td>1
                                    </td>
                                    <td cssclass="fw-bold text-center">Bhopal</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>


                                </tr>
                                <tr valign="middle">
                                    <td>2</td>
                                    <td cssclass="fw-bold text-center">Jabalpur</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                                <tr valign="middle">
                                    <td>3</td>
                                    <td cssclass="fw-bold text-center">Hoshangabad</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                                <tr valign="middle">
                                    <td>4</td>
                                    <td cssclass="fw-bold text-center">Betul</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                                <tr valign="middle">
                                    <td>5</td>
                                    <td cssclass="fw-bold text-center">Chhindwara</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                                <tr valign="middle">
                                    <td>6</td>
                                    <td cssclass="fw-bold text-center">Seoni</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>


                                </tr>
                                <tr valign="middle">
                                    <td>7
                                    </td>
                                    <td cssclass="fw-bold text-center">Balaghat</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>


                                </tr>
                                <tr valign="middle">
                                    <td>8</td>
                                    <td cssclass="fw-bold text-center">Gwalior</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                            </tbody>
                        </table>


                    </div>
                    <div class="col-md-12" id="Table2" style="display: none">
                        <table class="table table-bordered table-responsive-lg text-center " runat="server">
                            <thead>
                                <tr valign="middle">
                                    <th>S.No./<br />
                                        सरल.क्र </th>
                                    <th>Office Name/<br />
                                        कार्यालय का नाम</th>
                                    <th>Voucher Name/<br />
                                        वाउचर का नाम</th>
                                    <th style="width: 19%;">Edit Day/<br />
                                        दिन संपादित करें</th>
                                    <th>Audit/<br />
                                        ऑडिट</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr valign="middle">
                                    <td>1
                                    </td>
                                    <td cssclass="fw-bold text-center">Bhopal</td>
                                    <td cssclass="fw-bold text-center">Bank Receipt</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>


                                </tr>
                                <tr valign="middle">
                                    <td>2</td>
                                    <td cssclass="fw-bold text-center">Jabalpur</td>
                                    <td cssclass="fw-bold text-center">Case payment</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>


                                </tr>
                                <tr valign="middle">
                                    <td>3</td>
                                    <td cssclass="fw-bold text-center">Hoshangabad</td>
                                    <td cssclass="fw-bold text-center">CaseSale Voucher</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                                <tr valign="middle">
                                    <td>4</td>
                                    <td cssclass="fw-bold text-center">Betul</td>
                                    <td cssclass="fw-bold text-center">CC Sale Voucher</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                                <tr valign="middle">
                                    <td>5</td>
                                    <td cssclass="fw-bold text-center">Chhindwara</td>
                                    <td cssclass="fw-bold text-center">Contra</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                                <tr valign="middle">
                                    <td>6</td>
                                    <td cssclass="fw-bold text-center">Seoni</td>
                                    <td cssclass="fw-bold text-center">CreditNote Voucher</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>


                                </tr>
                                <tr valign="middle">
                                    <td>7
                                    </td>
                                    <td cssclass="fw-bold text-center">Balaghat</td>
                                    <td cssclass="fw-bold text-center">CreditSale Voucher</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>


                                </tr>
                                <tr valign="middle">
                                    <td>8</td>
                                    <td cssclass="fw-bold text-center">Jabalpur</td>
                                    <td cssclass="fw-bold text-center">Daily Production From Plant</td>
                                    <td>
                                        <input type="text" class="form-control"></td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" data-val="true" value="true"></td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="col-md-12" id="btnsave" style="display: none">
                        <hr />
                        <button type="button" class="Alert-Confirmation1 btn btn-outline-success btn-border w-lg" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                        <a href="VoucherEditRightProcess.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function OfficeNDVoucher() {
            var EditRightstype = document.getElementById("ddlEditRightstype").value;
            if (EditRightstype == "1") {
                document.getElementById('FinancialYear').style.display = "block";
                document.getElementById('OfficeType').style.display = "block";
                document.getElementById('OfficeName').style.display = "none";
            }
            else if (EditRightstype == "2") {

                document.getElementById('FinancialYear').style.display = "block";
                document.getElementById('OfficeType').style.display = "block";
                document.getElementById('OfficeName').style.display = "block";
            }
            else {
                document.getElementById('FinancialYear').style.display = "none";
                document.getElementById('OfficeType').style.display = "none";
                document.getElementById('OfficeName').style.display = "none";
            }
        }
        function TableHideshow() {
            var EditRightstype = document.getElementById("ddlEditRightstype").value;
            if (EditRightstype == "1") {
                document.getElementById('Table1').style.display = "block";
                document.getElementById('Table2').style.display = "none";
                document.getElementById('btnsave').style.display = "block";
                document.getElementById('fldiv').style.display = "block";
            }
            else if (EditRightstype == "2") {
                document.getElementById('Table2').style.display = "block";
                document.getElementById('Table1').style.display = "none";
                document.getElementById('btnsave').style.display = "block";
                document.getElementById('fldiv').style.display = "block";
            }
            else {
                document.getElementById('Table1').style.display = "none";
                document.getElementById('Table2').style.display = "none";
                document.getElementById('btnsave').style.display = "none";
                document.getElementById('fldiv').style.display = "none";
            }
        }
        $('.Alert-Confirmation1').click(function () {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to save this record ?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085D6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes'
                // animation: false,
                // customClass: {
                //     popup: 'animated tada'
                // }
            }).then((result) => {
                if (result.value) {
                    //document.getElementById('Table1').style.display = "none";
                    //document.getElementById('Table2').style.display = "none";
                    //document.getElementById('btnsave').style.display = "none";
                    Swal.fire({
                        type: 'success',
                        title: 'Success!',
                        text: 'Record Saved Successfully!',
                        timer: 2000
                        
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }
                    )
                }
            })
        });
    </script>
</asp:Content>

