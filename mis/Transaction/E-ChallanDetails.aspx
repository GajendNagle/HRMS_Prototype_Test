<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="E-ChallanDetails.aspx.cs" Inherits="mis_Transaction_E_ChallanDetails" %>

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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Gatekeeper" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Gatekeeper Transport System</span></a>
                        <li class="breadcrumb-item"><span>E-Challan Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary ">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-9 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            E-Challan Details
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Empty
                            </marquee>
                        </div>

                    </div>
                </div>
                <div class="col-xl-3 col-md-12 text-end">
                    <a role="button" href="E-ChallanProcess.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>Add E-Challan Process</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>E-Challan Details / ई-चालान विवरण</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Date<span style="color: red">*</span><br />
                            दिनांक
                        </label>
                        <asp:TextBox runat="server" TextMode="Date" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label>
                            Select Type<span style="color: red">*</span><br />
                            प्रकार का चयन करें
                        </label>
                        <asp:DropDownList runat="server" ID="ddlType" CssClass="form-control select2">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem Value="1">In Vehical</asp:ListItem>
                            <asp:ListItem Value="2">Out Vehical</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <asp:Button runat="server" ID="searchButton" type="button" Text="Search" class="btn btn-outline-success w-lg btn-border" OnClick="searchButton_Click" />

                        <a href="E-ChallanDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="InTimeDetails" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                    </div>

                    <div class="col-md-2">
                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>

                                        <th>Sr.No
                    <br />
                                            क्रमांक
                                        </th>
                                        <th>Vehicle No.<br />
                                            वाहन नंबर</th>
                                        <th>Driver Name<br />
                                            चालक का नाम
                                        </th>
                                        <th>Mobile No<br />
                                            मोबाइल नंबर
                                        </th>
                                        <th>In Time<br />
                                            आगमन का समय
                                        </th>
                                        <th>E-Challan
                                <br />
                                            ई-चालान
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>MP04AB1145</td>
                                        <td>Rohit Sharma</td>
                                        <td>9984653265</td>
                                        <td>9:05 AM</td>
                                        <td><a role="button" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true" onclick="openPDF()"></i></a></td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>MP04AB8834</td>
                                        <td>Shekhar Mishra</td>
                                        <td>8812456587</td>
                                        <td>9:15 AM</td>
                                        <td><a role="button" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true" onclick="openPDF()"></i></a></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="OutTimeDetails" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>

                                        <th>Sr.No
        <br />
                                            क्रमांक
                                        </th>
                                        <th>Vehicle No.<br />
                                            वाहन नंबर</th>
                                        <th>Driver Name<br />
                                            चालक का नाम
                                        </th>
                                        <th>Mobile No<br />
                                            मोबाइल नंबर
                                        </th>
                                        <th>Out Time<br />
                                            प्रस्थान का समय
                                        </th>
                                        <th>E-Challan
                    <br />
                                            ई-चालान
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>MP04AB1145</td>
                                        <td>Rohit Sharma</td>
                                        <td>9984653265</td>
                                        <td>5:05 PM</td>
                                        <td><a role="button" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true" onclick="openPDF()"></i></a></td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>MP04AB8834</td>
                                        <td>Shekhar Mishra</td>
                                        <td>8812456587</td>
                                        <td>5:18 PM</td>
                                        <td><a role="button" class="btn btn-primary"><i class="fa fa-print" aria-hidden="true" onclick="openPDF()"></i></a></td>
                                    </tr>

                                </tbody>
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
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../../img/Transport%20Managment.pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
</asp:Content>

