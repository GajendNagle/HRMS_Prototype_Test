<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoucherMaster.aspx.cs" Inherits="mis_Finance_VoucherMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

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
                        <li class="breadcrumb-item active"><a title="click to go on">Voucher Master</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Voucher Master / वाउचर मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Voucher / वाउचर जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Effective Date/<br />
                                प्रभावी दिनांक का चयन करें<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" ID="txtEffectiveDate" CssClass="form-control" AutoComplete="off" data-provide="datepicker" data-date-end-date="0d" data-date-autoclose="true" data-date-format="dd/mm/yyyy" placeholder="DD/MM/YYYY"></asp:TextBox>

                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Voucher Name
                                <br />
                                वाउचर का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input name="txtVoucherName" type="text" class="form-control" autocomplete="off" placeholder="Enter Voucher Name" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Voucher Code 
                                <br />
                                वाउचर कोड दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Voucher Code" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Voucher Series 
                                <br />
                                वाउचर सीरीज दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Voucher Series " onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Voucher Series Type 
                                <br />
                                वाउचर सीरीज प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlLedger">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Auto</option>
                                <option value="2">Manual</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>

                        <a href="VoucherMaster.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <%--<fieldset>
                <legend>Post Details / पोस्ट विवरण</legend>
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
                                <tr>
                                    <th>Sr.No.
                                        <br />
                                        सरल क्र.</th>
                                    <th>Post Name(In English)<br />
                                        पद का नाम(अंग्रेज़ी में)
                                    </th>
                                    <th>Post Name (In Hindi)<br />
                                        पद  का  नाम(हिंदी में)
                                    </th>
                                    <th>Post Code No.
                                        <br />
                                        पोस्ट कोड संख्या</th>
                                    <th>Status(Active/InActive)<br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action
                                            <br />
                                        कार्यवाहीं</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Regular</td>
                                    <td>नियमित</td>
                                    <td>01</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Samvidha</td>
                                    <td>संविधा</td>
                                    <td>02</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('#txtEffectiveDate').datepicker({
            autoclose: true,
            format: 'dd/mm/yyyy'
        });
    </script>
</asp:Content>

