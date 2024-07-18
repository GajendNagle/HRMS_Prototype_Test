<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="E-ChallanProcess.aspx.cs" Inherits="mis_Transaction_E_ChallanProcess" %>


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
                        <li class="breadcrumb-item"><span>E-Challan Process</span></li>
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
                            E-Challan Process
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
                    <a role="button" href="E-ChallanDetails.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>Back</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>E-Challan Process / ई-चालान प्रक्रिया</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Vehical No<br />
                            वाहन नंबर
                        </label>
                        <asp:DropDownList runat="server" ID="ddlVehicalNo" CssClass="form-control select2">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem Value="1">MP04AB1123</asp:ListItem>
                            <asp:ListItem Value="2">MP04AB2223</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>
                            Select Type<br />
                            प्रकार का चयन करें
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>In Vehical</option>
                            <option>Out Vehical</option>
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <asp:Button runat="server" ID="searchButton" type="button" Text="Search" class="btn btn-outline-success w-lg btn-border" OnClick="searchButton_Click1" />

                        <a href="E-Challan Process.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No.<br />
                                            क्रमांक
                                        </th>
                                        <th>Vehical No.<br />
                                            वाहन नंबर
                                        </th>
                                        <th>Challan No.<br />
                                            चालान नंबर </th>
                                        <th>Route No<br />
                                            रूट नंबर</th>
                                        <th>Driver Name<br />
                                            चालक का नाम</th>
                                        <th>Mobile No.<br />
                                            मोबाइल नंबर</th>
                                        <th>Licence No.<br />
                                            लाइसेंस नंबर</th>
                                        <th>In Time<br />
                                            आगमन का समय</th>
                                        <th>Save/Print</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>MP04AB1123</td>
                                        <td>CH71240002</td>
                                        <td>RTU002</td>
                                        <td>Rakesh Sinha</td>
                                        <td>6567234567</td>
                                        <td>DL14 20110012345</td>
                                        <td>
                                            <input type="time" name="time" class="form-control" /></td>
                                        <td><a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table2" runat="server" visible="false">
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
                                        <th>Sr.No.<br />
                                            क्रमांक
                                        </th>
                                        <th>Vehical No.<br />
                                            वाहन नंबर
                                        </th>
                                        <th>Challan No.<br />
                                            चालान नंबर </th>
                                        <th>Route No<br />
                                            रूट नंबर</th>
                                        <th>Driver Name<br />
                                            चालक का नाम</th>
                                        <th>Mobile No.<br />
                                            मोबाइल नंबर</th>
                                        <th>Licence No.<br />
                                            लाइसेंस नंबर</th>
                                        <th>In Time<br />
                                            आगमन का समय</th>
                                        <th>Save/Print</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>MP04AB2223</td>
                                        <td>CH71240005</td>
                                        <td>RTU003</td>
                                        <td>Raman Mishra</td>
                                        <td>9867874365</td>
                                        <td>DL14 20110014567</td>
                                        <td>
                                            <input type="time" name="time" class="form-control" /></td>
                                        <td><a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></a></td>
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
</asp:Content>

