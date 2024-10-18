<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LedgerCreation_Master.aspx.cs" Inherits="mis_Finance_LedgerCreation_Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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
                        <li class="breadcrumb-item"><a href="#FinanceACMaster" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance A/C Master</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Ledger Creation</a></li>
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
                            <h4 class="card-title">Ledger Creation / बही खाता निर्माण </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div runat="server" id="divOffice">
                        <fieldset>
                            <legend>Ledger Creation /बही खाता निर्माण</legend>

                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Ledger Name in English<br />
                                            बहीखाता का नाम अंग्रेजी में दर्ज करें
                                    <span style="color: red;">*</span></label>
                                        <input type="text" class="form-control" placeholder="Enter Ledger Name in English" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Ledger Name in Hindi<br />
                                            बहीखाता  का नाम हिंदी में दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Ledger Name in Hindi" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Ledger Code<br />
                                            बहीखाता कोड दर्ज करें<span style="color: red;">*</span></label>
                                        <input type="text" class="form-control" placeholder="Enter Ledger Code" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Ledger Alias<br />
                                            बहीखाता उपनाम दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Alias" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Group Name<br />
                                            ग्रुप सूचि से ग्रुप का चयन करें<span style="color: red;">*</span></label>
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
                                <%-- <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Type/<br />
                                प्रकार का चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Other --</option>
                            </select>
                        </div>
                    </div>--%>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Bank Type<br />
                                            सूची से बैंक प्रकार का चयन करे
                                        </label>
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
                                            Enter A/c Holder Name in English<br />
                                            खाता धारक का नाम अंग्रेजी में दर्ज करें
                                        </label>
                                        <input type="text" class="form-control" placeholder="Enter A/c Holder Name" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Bank Account No.<br />
                                            खाता संख्या दर्ज करें
                                        </label>
                                        <input type="text" class="form-control" placeholder="Enter Account No." />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter IFSC Code(CAPITAL LETTERS ONLY)<br />
                                            आई.एफ.एस.सी कोड दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter IFSC Code" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Bank Name in English<br />
                                            बैंक का नाम अंग्रेजी में दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Bank Name" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Bank Branch Name in English<br />
                                            बैंक शाखा का नाम दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Bank Branch Name in English" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Mailing Details /मैलिंग विवरण</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Mailing Name in English<br />
                                            मैलिंग नाम दर्ज करें
                                        </label>
                                        <input type="text" class="form-control" placeholder="Enter Name in English" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select State Name in English<br />
                                            राज्य के नाम का चयन करे
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
                                            Enter City Name in English<br />
                                            शहर का नाम दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter City Name in English" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Pincode in English<br />
                                            पिनकोड दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Pincode in English" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Enter Address in English<br />
                                            पता दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Address in English" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Mobile No.<br />
                                            मोबाइल नंबर दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Mobile No." />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Email I'D in English<br />
                                            ईमेल दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Email in English" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Tax Registration Details / पंजीकरण विवरण</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter PAN(IT) No.<br />
                                            पैन (आईटी) नं. दर्ज करें
                                        </label>
                                        <input type="text" class="form-control" placeholder="Enter PAN(IT) No." />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Registration Types<br />
                                            पंजीकरण प्रकार चुनें
                                        </label>
                                        <select class="form-control select2">
                                            <option selected="selected" value="0">--Select --</option>
                                            <option value="1">Consumer</option>
                                            <option value="2">Unregistered</option>
                                            <option value="3">Register</option>
                                            <option value="4">Composition</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter GST No.(CAPTIAL LETTERS ONLY)<br />
                                            जी.एस.टी नंबर दर्ज करें<span style="color: red;">*</span></label>
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
                                            Select GST Applicable From<br />
                                            जी.एस.टी लागू होने की दिनांक का चयन करें
                                        </label>
                                        <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" placeholder="2/2/2024" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select GST Applicable<br />
                                            जी.एस.टी का प्रकार चयन करें
                                    <span style="color: red;">*</span></label>
                                        <select id="reverseCharge" class="form-control select2">
                                            <option value="1">No</option>
                                            <option value="2">Yes</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <fieldset id="gstDetails" class="hidden">
                                <legend>GST Detail /जी.एस.टी विवरण</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Type Of Supply<br />
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
                                                Select SAC/HSN Code<br />
                                                ए.स.एसी/एच.एस.एन कोड का चयन करें
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
                                                Select Taxability <br />
                                                टैक्स योग्यता का चयन करें
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
                                                Select Is reverse charge applicable? <br />
                                क्या रिवर्स चार्ज लागू है? चयन करें
                                    <span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option value="1">No   </option>
                                                <option value="2">Yes </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Is Ineligible for Input Credit?<br />
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
                                                Enter Integrated Tax(IGST%)<br />
                                                एकीकृत टैक्स(आई.जी.एस.टी%) 
                                    <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="18%" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Central Tax(CGST%)<br />
                                                सेन्ट्रल टैक्स (सी.जी.एस.टी%) 
                                    <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="9%" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter State Tax(SGST%)<br />
                                                राज्य टैक्स (एस.जी.एस.टी%) 
                                    <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="9%" readonly />
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </fieldset>
                        <fieldset>
                            <legend>Opening Balance /प्रारंभिक शेष </legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Inventory Values are Affected<br />
                                            इन्वेंटरी प्रभावित का चयन करें
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
                                            Select Maintain Balance BillByBill<br />
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
                                            Select Cost Center<br />
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
                                            डेबिट / क्रेडिट का चयन करें
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
                                            प्रारंभिक शेष राशि दर्ज करें
                                    <span style="color: red;">*</span></label>
                                        <input type="text" class="form-control" value="0.00" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <hr />

                        <div class="col-md-12">
                            <div class="form-group text-center">
                                <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                                <a href="LedgerCreation_Master.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        $(document).ready(function () {
            $('.select2').select2();

            $('#reverseCharge').change(function () {
                if ($(this).val() == '2') {
                    $('#gstDetails').removeClass('hidden');
                } else {
                    $('#gstDetails').addClass('hidden');
                }
            });
        });
</script>
</asp:Content>

