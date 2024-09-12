<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectApprovalLetter.aspx.cs" Inherits="mis_Development_ProjectApprovalLetter" %>

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
                        <li class="breadcrumb-item">Project Approval Letter Generated</li>
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
                            Project Approval Letter Generated / परियोजना स्वीकृति पत्र तैयार किया गया
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
                <legend>Project Approval Letter Generated / परियोजना स्वीकृति पत्र तैयार किया गया</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Project No
                            <br />
                                प्रोजेक्ट नंबर का चयन करें
                            </label>
                            <span style="color: red; font-weight: bold">*</span>
                            <select class="form-control select2" id="ddlProjectNo">
                                <option>Select</option>
                                <option value="1">PWDMP001</option>
                                <option value="2">PWDMP002</option>
                                <option value="3">PWDMP003</option>
                                <option value="4">PWDMP004</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick=" showHideRemarkView()">Search</button>
                        <a href="ProjectApprovalLetter.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                        <th>Place Name<br />
                                            स्थान का नाम</th>
                                        <th>Address
                                            <br />
                                            पता
                                        </th>
                                        <th>Work Category<br />
                                            कार्य श्रेणी</th>
                                        <th>Work Sub Category
                                         <br />
                                            कार्य उपश्रेणी</th>
                                        <th>Cost Amount<br />
                                            लागत राशि</th>
                                        <th>Area Details<br />
                                            क्षेत्र विवरण
                                        </th>
                                        <th>Vender Name<br />
                                            विक्रेता का नाम</th>
                                        <th>GSTIN No.<br />
                                            जीएसटीआईएन नंबर
                                        </th>
                                        <th>PAN NO.<br />
                                            पैन नंबर</th>
                                        <th>Contact Person Name<br />
                                            संपर्क व्यक्ति का नाम
                                        </th>
                                        <th>Contact Person No.<br />
                                            संपर्क व्यक्ति का नंबर
                                        </th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>2023</td>
                                    <td>Bhopal</td>
                                    <td>Rachna Nagar Bhopal</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>30000</td>
                                    <td>600 square cm.</td>
                                    <td>Rajiv Mishra</td>
                                    <td>22AAAAA0000A1Z5</td>
                                    <td>AFZPK7190K</td>
                                    <td>Suresh Yadav</td>
                                    <td>8923456789</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Final Order</legend>

                <div class="row align-items-end">
                    <div class="col-md-4">
                        <label>
                            Enter Final Order No.<br />
                            अंतिम आदेश संख्या दर्ज करें
                        </label>
                        <input type="text" class="form-control" placeholder="Enter Final Order No." />
                    </div>

                    <div class="col-md-4">
                        <label>
                            Order Date<br />
                            आर्डर की तारीख
                        </label>
                        <input type="date" class="form-control" />
                    </div>

                    <div class="col-md-4">
                        <label>
                            Upload Order Document<br />
                            ऑर्डर दस्तावेज़ अपलोड करें
                        </label>
                        <input type="file" class="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="openPDF()">Generated Letter</button>
                        <a href="ProjectApprovalLetter.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlProjectNo = document.getElementById('ddlProjectNo');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlProjectNo.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";

            }
            else if (ddlProjectNo.value == "2") {
                table1.style.display = "block";

            }

            else if (ddlProjectNo.value == "3") {
                table1.style.display = "block";

            }
            else {
                table1.style.display = "none";
            }
        }
    </script>

    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../../img/blankpdf.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    
</asp:Content>

