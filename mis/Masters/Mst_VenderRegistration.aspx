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
                    <%--   <li class="breadcrumb-item">
                    <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                </li>--%>
                    <li class="breadcrumb-item">
                        <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                    </li>
                    <li class="breadcrumb-item">Vender Registration</li>
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
                <legend>Vender Registration / विक्रेता पंजीकरण</legend>

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
                                संस्था का नाम दर्ज करें
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
                                संस्था का मेल आईडी दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter  Firm Mail Id" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Firm Address<br />
                                संस्था का पता दर्ज करें
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
                               Upload Firm Registration<br />
                                संस्था का पंजीकरण अपलोड करें
                            </label>
                            <input type="file" class="form-control" placeholder="Enter Contact Person No." />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Upload Firm GSTIN Registration<br />
                                संस्था का जीएसटीआईएन पंजीकरण अपलोड करें
                            </label>
                            <input type="file" class="form-control" placeholder="Enter Contact Person No." />
                        </div>
                    </div>
                </div>

            </fieldset>

            <fieldset>
                <legend>Firm Bank Account Details / संस्था बैंक खाता विवरण</legend>

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
                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                    <a href="Mst_VenderRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </div>

            <fieldset>
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
                                        <th>State Name<br />
                                            राज्य का नाम</th>
                                        <th>GSTIN No.<br />
                                            जीएसटीआईएन नं.</th>
                                        <th>PAN No.
                            <br />
                                            पैन नंबर</th>
                                        <th>Firm Name
                                            <br />
                                            संस्था का नाम</th>
                                        <th>Firm Address
                                            <br />
                                            संस्था का पता</th>
                                        <th>Pin Code No.
                                            <br />
                                            पिन कोड नं.</th>
                                        <th>Contact Person Name
                                            <br />
                                            संपर्क व्यक्ति का नाम</th>
                                        <th>Firm Registration Copy
                                            <br />
                                            संस्था का पंजीकरण प्रतिलिपि</th>
                                        <th>Firm GSTIN Registration Copy
                                            <br />
                                            संस्था का जीएसटीआईएन पंजीकरण प्रतिलिपि</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Madhaya Pradesh</td>
                                    <td> 22AAAAA0000A1Z5</td>
                                    <td>ABCTY1234D</td>
                                    <td>SFA Technology</td>
                                    <td>Kasturba Nagar near Chetak Bridge</td>
                                    <td>462021</td>
                                    <td>Rajendra Sharma</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" aria-hidden="true" onclick="openimg()"></i></span></td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openimg()"></i></span></td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                               
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
    function openimg() {
        // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
        var pdfUrl = '../../img/Regis.Copy.jpeg';
        // Open the PDF in a new window or tab
        window.open(pdfUrl, '_blank');
        }
    </script>
</asp:Content>

