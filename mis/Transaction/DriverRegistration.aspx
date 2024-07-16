<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DriverRegistration.aspx.cs" Inherits="mis_Transaction_DriverRegistration" %>

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
                            <a href="#SchoolManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>School Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Driver Registration </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Driver Registration / चालक पंजीकरण</h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Driver Registration / चालक पंजीकरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle No.
                                <br />
                                वाहन क्रमांक<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">MP04AB1196</option>
                                <option value="1">MP04CD5154</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Driver Name
                                <br />
                                चालक का नाम<span style="color: red">*</span></span>
                            <input class="form-control" type="text" />

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>State Name
                                <br />
                                राज्य का नाम    <span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="--Select--" data-select2-id="3">--Select--</option>
                                <option value="Rajasthan" data-select2-id="14">Rajasthan</option>
                                <option value="Maharashtra" data-select2-id="15">Maharashtra</option>
                                <option value="Nagaland" data-select2-id="16">Nagaland</option>
                                <option value="Nashik" data-select2-id="17">Nashik</option>
                                <option value="West" data-select2-id="18">West</option>
                                <option value="Bengal" data-select2-id="19">Bengal</option>
                                <option value="Telangana" data-select2-id="20">Telangana</option>
                                <option value="Assam" data-select2-id="21">Assam</option>
                                <option value="Tripura" data-select2-id="22">Tripura</option>
                                <option value="Madhya" data-select2-id="23">Madhya Pradesh</option>
                                <option value="Tamil" data-select2-id="24">Tamil</option>
                                <option value="Nadu" data-select2-id="25">Nadu</option>
                                <option value="Gujarat" data-select2-id="26">Gujarat</option>
                                <option value="Sikkim" data-select2-id="27">Sikkim</option>
                                <option value="Andhra" data-select2-id="28">Andhra Pradesh</option>
                                <option value="Uttar" data-select2-id="29">Uttar Pradesh</option>
                                <option value="Punjab" data-select2-id="30">Punjab</option>
                                <option value="Karnataka" data-select2-id="31">Karnataka</option>
                                <option value="Meghalaya" data-select2-id="32">Meghalaya</option>
                                <option value="Uttarakhand" data-select2-id="33">Uttarakhand</option>
                                <option value="Goa" data-select2-id="34">Goa</option>
                                <option value="Haryana" data-select2-id="35">Haryana</option>
                                <option value="Mizoram" data-select2-id="36">Mizoram</option>
                                <option value="Arunachal" data-select2-id="37">Arunachal Pradesh</option>
                                <option value="Bihar" data-select2-id="38">Bihar</option>
                                <option value="Himachal" data-select2-id="39">Himachal </option>
                                <option value="Kerala" data-select2-id="40">Kerala</option>
                                <option value="Jharkhand" data-select2-id="41">Jharkhand</option>
                                <option value="Orissa" data-select2-id="42">Orissa</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Address
    <br />
                                पता<span style="color: red">*</span></span>
                            <input class="form-control" type="text" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Driver Contact Number
    <br />
                                ड्राइवर का संपर्क नंबर<span style="color: red">*</span></span>
                            <input class="form-control" type="text" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Alternate Contact Number
    <br />
                                वैकल्पिक संपर्क नंबर<span style="color: red">*</span></span>
                            <input class="form-control" type="text" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Licence Number
    <br />
                                लाइसेंस क्रमांक<span style="color: red">*</span></span>
                            <input class="form-control" type="text" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Add</button>
                        <a href="RouteToVehicleMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end ">
    <div class="col-md-4 text-end">
        <div class="form-group">
            <button class="btn btn-info btn-rounded w-55">Excel</button>
            <button class="btn btn-info btn-rounded w-55">PDF</button>
        </div>
    </div>
    <div class="col-md-2">
        <div class="form-group">
            <input type="text" id="searchgInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
        </div>
    </div>
</div>
                <div class="row">
    <div class="col-md-12">
        <div class="table-responsive">
            <table class="table table-bordered text-center">
                <thead class="nowrap">
                    <tr>
                    <tr>
                        <th>Sr. No.
     <br />
                            सरल क्र.</th>
                        <th>Vehicle No.
     <br />
                            वाहन क्र.</th>
                        <th>Driver Name

     <br />
                            चालक का नाम</th>
                        <th>Contact Number<br />
     संपर्क नंबर</th> <th>Licence No.

     <br />
                            लाइसेंस क्रमांक</th>

                       
                        <th colspan="3">Action<br />
                            कार्यवाहीं</th>
                    </tr>
                </thead>
                <tr>
                    <td>1</td>

                    <td>MP04AB1196</td>
                    <td>Raj</td>
                    <td>1234567890</td>
                    <td>ABC123</td>
                    <td><a class="btn btn-outline-primary"><i class="fa fa-pen"></i></a>
                        <a class="Alert-Edit btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>MP04CD5154</td>
                    <td>Rajendra</td>
                    <td>1234567890</td>
                    <td>ABC123</td>
                    <td><a class=" btn btn-outline-primary"><i class="fa fa-pen"></i></a>
                        <a class="Alert-Edit btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                </tr>

            </table>
        </div>
    </div>
</div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>

                <div class="row justify-content-end ">
                    <hr />
                    <div class="col-md-12 mt-3">

                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="showTable()">Search</button>
                        <a href="RouteToVehicleMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                    <div class="col-md-4 text-end"  id="tablefd" style="display:none">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" id="searchbtn" style="display:none">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row" id="tableData" style="display:none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                    <tr>
                                        <th>Sr. No.
                     <br />
                                            सरल क्र.</th>
                                        <th>Vehicle No.
                     <br />
                                            वाहन क्र.</th>
                                        <th>Driver Name

                     <br />
                                            चालक का नाम</th>
                                        <th>Contact Number<br />
                                            संपर्क नंबर</th>
                                        <th>Licence No.

                     <br />
                                            लाइसेंस क्रमांक</th>


                                        <th colspan="2">Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>

                                    <td>MP04AB1196</td>
                                    <td>Raj</td>
                                    <td>1234567890</td>
                                    <td>ABC123</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                 <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>MP04CD5154</td>
                                    <td>Rajendra</td>
                                    <td>1234567890</td>
                                    <td>ABC123</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                    <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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
    function showTable() {
        document.getElementById("tableData").style.display = "block";
        document.getElementById("tablefd").style.display = "block";
        document.getElementById("searchbtn").style.display = "block";
    }
</script>
</asp:Content>
