<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LedgerCreation_Master.aspx.cs" Inherits="mis_Finance_LedgerCreation_Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .hidden {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="Group_Master.aspx" title="click to go on">Ledger Creation</a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div runat="server" id="divOffice">
            <fieldset>
                <legend>Ledger Creation /बही निर्माण</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Ledger Name (English)/<br />
                                बहीखाता का नाम अंग्रेजी में दर्ज करें
                                    <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Ledger Name in English" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Ledger Name(Hindi)</label>/<br />
                            बहीखाता  का नाम हिंदी में दर्ज करें
                            <input type="text" class="form-control" placeholder="Enter Ledger Name in Hindi" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Ledger Code/<br />
                                बहीखाता कोड दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Ledger Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Alias/<br />
                                उपनाम दर्ज करें</label>
                            <input type="text" class="form-control" placeholder="Enter Alias" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Group Name/<br />
                                समूह का नाम दर्ज करें.<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Direct Expenses(Expenses)</option>
                                <option value="2">Indirect Expenses (Expenses)</option>
                                <option value="3">Current Assets (Assets) </option>
                                <option value="4">Bank Accounts(Current Assets)</option>
                                <option value="5">Indirect Incomes (Income)  </option>
                                <option value="6">Direct Incomes (Income)</option>
                                <option value="7">Current Liabilities (Liabilities)</option>
                                <option value="8">Capital Account (Liabilities)</option>
                                <option value="9">Sundry Creditors (Current Liabilities)</option>
                                <option value="10">Sundry Debtors (Current Assets)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Type/<br />
                                प्रकार का चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Other --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Bank Type/<br />
                                बैंक प्रकार का चयन करे</label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Current Account</option>
                                <option value="2">Saving Account</option>
                                <option value="3">Other</option>
                            </select>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Bank Account Details /बैंक के खाते का विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter A/c Holder Name/<br />
                                खाता धारक का नाम दर्ज करें
                            </label>
                            <input type="text" class="form-control" Value="Ram Yadav" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Account No./<br />
                                खाता संख्या दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Account No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter IFSC Code(CAPITAL LETTERS ONLY)/<br />
                                आई.एफ.एस.सी कोड दर्ज करें</label>
                            <input type="text" class="form-control" placeholder="Enter IFSC Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Bank Name/<br />
                                बैंक का नाम दर्ज करें</label>
                            <input type="text" class="form-control" placeholder="Enter Bank Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Bank Branch/<br />
                                बैंक शाखा दर्ज करें</label>
                            <input type="text" class="form-control" placeholder="Enter Bank Branch" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Mailing Details /मेल विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Name/<br />
                                नाम दर्ज करें
                            </label>
                            <input type="text" class="form-control" Value="Ram Yadav" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select State/<br />
                                राज्य दर्ज करें
                            </label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Uttar Pradesh</option>
                                <option value="2">Chhattisgarh</option>
                                <option value="3">Madhya Pradesh</option>
                                <option value="4">Maharashtra</option>
                                <option value="5">Rajasthan</option>
                                <option value="6">Punjab</option>
                                <option value="7">Bihar</option>
                                <option value="8">Haryana</option>
                                <option value="9">Gujarat</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter City/<br />
                                शहर दर्ज करें</label>
                            <input type="text" class="form-control" placeholder="Enter City" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Pincode/<br />
                                पिनकोड दर्ज करें</label>
                            <input type="text" class="form-control" placeholder="Enter Pincode" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Address/<br />
                                पता दर्ज करें</label>
                            <input type="text" class="form-control" placeholder="Enter Address" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Mobile No./<br />
                                मोबाइल नंबर दर्ज करें</label>
                            <input type="text" class="form-control" Value="9878987898" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Email/<br />
                                ईमेल दर्ज करें</label>
                            <input type="text" class="form-control" Value="rr@gmail.com" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Tax Registration Details /कर पंजीकरण विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter PAN(IT) No./<br />
                                पैन (आईटी) नं. दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter PAN(IT) No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Registration Types/<br />
                                पंजीकरण प्रकार चुनें
                            </label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Consumer</option>
                                <option value="2">Unregister</option>
                                <option value="3">Register</option>
                                <option value="4">Composition</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter GST No.(CAPTIAL LETTERS ONLY)/<br />
                                जीएसटी नंबर दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter GST No." />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>GST Details /जीएसटी विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Applicable From/<br />
                                दिनांक से लागू का चयन करें
                            </label>
                            <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" placeholder="2/2/2024" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select GST Applicable/<br />
                                जीएसटी लागू का चयन करें
                                    <span style="color: red;">*</span></label>
                            <select id="reverseCharge" class="form-control select2">
                                <option value="1">No</option>
                                <option value="2">Yes</option>
                            </select>
                        </div>
                    </div>
                </div>
            </fieldset>
             <fieldset id="gstDetails" class="hidden">
                <legend>GST Detail /जीएसटी विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Type Of Supply/<br />
                                आपूर्ति का प्रकार का चयन करें
                            </label>
                           <select class="form-control select2">
                                <option value="1">Service </option>
                                <option value="2">Goods </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select SAC Code/<br />
                                एसएसी कोड का चयन करें
                                    <span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="1">998346 </option>
                                <option value="2">998824 </option>
                                <option value="3">997331</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Taxability /<br />
                                कर योग्यता का चयन करें
                                    <span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="1">No   </option>
                                <option value="2">Yes </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Is reverse charge applicable? /<br />
                                क्या रिवर्स चार्ज लागू है? चयन करें
                                    <span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="1">No   </option>
                                <option value="2">Yes </option>
                            </select>
                        </div>
                    </div></div>
                     <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Is Ineligible for Input Credit?/<br />
                                क्या इनपुट क्रेडिट के लिए अयोग्य है? चयन करें
                                    <span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="1">No   </option>
                                <option value="2">Yes </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Integrated Tax(IGST%)/<br />
                                एकीकृत कर(आई.जी.एस.टी%) दर्ज करें
                                    <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" Value="18%" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Central Tax(CGST%)/<br />
                                केंद्रीय कर (सी.जी.एस.टी%) दर्ज करें
                                    <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" Value="9%" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter State Tax(SGST%)/<br />
                                राज्य कर (एस.जी.एस.टी%) दर्ज करें
                                    <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" Value="9%" />
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Opening Balance /प्रारंभिक जमा</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Inventory Values are Affected/<br />
                                इन्वेंटरी मूल्य प्रभावित का चयन करें
                           <span style="color: red;">*</span>
                            </label>
                            <select class="form-control select2">
                                <option value="1">No</option>
                                <option value="2">Yes</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Maintain Balance BillByBill/<br />
                                बिल-बाय-बिल संतुलन का चयन करें
                                    <span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="1">No</option>
                                <option value="2">Yes</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Cost Center/<br />
                                लागत केंद्र का चयन करें
                                    <span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="1">No</option>
                                <option value="2">Yes</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Dr./Cr.<br />
                                डेबिट क्रेडिट का चयन करें
                            </label>
                            <select class="form-control select2">
                                <option value="2">Credit</option>
                                <option value="1">Debit</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Opening Balance<br />
                                ओपनिंग बैलेंस दर्ज करें
                                    <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" Value="0.00" />
                        </div>
                    </div>
                </div>
            </fieldset>


            <div class="col-md-12">
                <div class="form-group text-center">
                    <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                    <a href="LedgerCreation_Master.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
    $(document).ready(function() {
        $('.select2').select2();

        $('#reverseCharge').change(function() {
            if ($(this).val() == '2') {
                $('#gstDetails').removeClass('hidden');
            } else {
                $('#gstDetails').addClass('hidden');
            }
        });
    });
</script>
</asp:Content>

