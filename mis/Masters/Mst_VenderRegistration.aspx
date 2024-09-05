<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_VenderRegistration.aspx.cs" Inherits="mis_Masters_Mst_VenderRegistration" %>

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#developmentMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">Development Master Data
                        </a></li>
                        <li class="breadcrumb-item">Vender Registration Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए कार्य श्रेणी को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Vender Registration Master / विक्रेता पंजीकरण मास्टर
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
                <legend>Add Vender Registration / विक्रेता पंजीकरण जोड़े</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">

                            <label>
                                Select State Name<br />
                                राज्य का चयन करें
                            </label>
                            <select class="select2">
                                <option>Select</option>
                                <option>Madhya Pradesh</option>
                                <option>Andhra Pradesh</option>
                                <option>Haryana</option>
                                <option>Assam</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter GSTIN No.<br />
                                जीएसटीआईएन नंबर दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter GSTIN No." />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter PAN No.<br />
                                पैन नंबर दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter GSTIN No." />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Firm Name<br />
                                फर्म का नाम दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Firm Name" />
                        </div>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Firm Mail Id<br />
                                फर्म मेल आईडी दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter  Firm Mail Id" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Firm Address<br />
                                फर्म का पता दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Firm Address" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Pin Code No<br />
                                पिन कोड नंबर दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Pin Code No" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Contact Person Name<br />
                                संपर्क व्यक्ति का नाम दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Contact Person Name" />
                        </div>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Contact Person No.<br />
                                संपर्क व्यक्ति का नंबर दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Contact Person No." />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Firm Registration Copy(Doc-Uploaded)<br />
                                फर्म पंजीकरण प्रतिलिपि
                            </label>
                            <input type="file" class="form-control" placeholder="Enter Contact Person No." />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Firm GSTIN Registration Copy(Doc-Uploaded)<br />
                                फर्म जीएसटीआईएन पंजीकरण प्रतिलिपि
                            </label>
                            <input type="file" class="form-control" placeholder="Enter Contact Person No." />
                        </div>
                    </div>
                </div>

            </fieldset>

            <fieldset>
                <legend>Firm Bank Account Details / फर्म बैंक खाता विवरण</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Enter Account Holder Name
                         <br />
                            खाताधारक का नाम दर्ज करें</label>
                        <input type="text" class="form-control" placeholder="Enter Account Holder Name" />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Enter Bank Account No.
 <br />
                            बैंक खाता नंबर दर्ज करें.</label>
                        <input type="text" class="form-control" placeholder="Enter Bank Account No." />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Enter IFSC Code
                        <br />
                            IFSC कोड दर्ज करें</label>
                        <input type="text" class="form-control" placeholder="Enter IFSC Code" />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Bank Name
                            <br />
                            बैंक का चयन करें</label>
                        <select class="select2">
                            <option>Select</option>
                            <option>Bank of Baroda</option>
                            <option>Bank Of India</option>
                            <option>Union Bank of India</option>
                            <option>Axis Bank</option>
                        </select>
                    </div>
                </div>
            </fieldset>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg" onclick="document.getElementById('table1').style.display='table'">Save</button>
                    <a href="Mst_VenderRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

