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
                        <li class="breadcrumb-item">Driver / Attender Registration</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Driver Registration</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end">
                    <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" id="btnBack"
                        onclick="funBack()"><i class="bx bx-plus label-icon align-middle  me-2"></i>View Details</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset id="RegDetail">
                <legend>Driver/Attender Registration / चालक/सहायक पंजीकरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Vehicle No.
                                <br />
                                वाहन संख्या चुनें.<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">MP04AB1196</option>
                                <option value="1">MP04CD5154</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Registration Type
                                <br />
                                पंजीकरण प्रकार का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control" id="dropdown1" onchange="toggleSection1()">
                                <option value="0">--Select--</option>
                                <option value="1">Driver</option>
                                <option value="2">Attender</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Enter <span class="Driver">Driver</span> Name(In English)
                                <br />
                                <span class="Reg">चालक</span> का नाम अंग्रेजी में दर्ज करें<span style="color: red">*</span></span>
                            <input class="form-control" type="text" placeholder="Enter Name(In English)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Enter <span class="Driver">Driver</span>  Name(In Hindi)
                                <br />
                                <span class="Reg">चालक</span> का नाम हिंदी में दर्ज करें<span style="color: red">*</span></span>
                            <input class="form-control" type="text" placeholder="Enter Name(In Hindi)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select State Name
                                <br />
                                राज्य का नाम चुनें  <span style="color: red">*</span></span>
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
                    <div class="col-md-6">
                        <div class="form-group">
                            <span>Enter Full Address
    <br />
                                पूर्ण पता दर्ज करें<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtDealerAddress" type="text" maxlength="100" class="form-control" placeholder="Enter Full Address" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Enter <span class="Driver">Driver</span>  Contact Number
    <br />
                                <span class="Reg">चालक</span> का संपर्क नंबर दर्ज करें<span style="color: red">*</span></span>
                            <input class="form-control" type="text" placeholder="Enter Contact Number" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Enter Alternate Contact Number
    <br />
                                अन्य संपर्क नंबर दर्ज करें<span style="color: red">*</span></span>
                            <input class="form-control" type="text" placeholder="Enter Alternate Contact Number" />
                        </div>
                    </div>
                    <div class="col-md-3" id="section1" style="display: none">
                        <div class="form-group">
                            <span>Enter Driving Licence No.
    <br />
                                ड्राइविंग लाइसेंस नं. दर्ज करें<span style="color: red">*</span></span>
                            <input class="form-control" type="text" placeholder="Enter Licence Number" />
                        </div>
                    </div>
                    <div class="col-md-3" id="section2" style="display: none">
                        <div class="form-group">
                            <span>Select Driving Licence Expirey Date
                                <br />
                               ड्राइविंग लाइसेंस की समाप्ति तिथि चुनें<span style="color: red">*</span></span>
                            <input class="form-control" type="date" placeholder="Enter Licence Number" />
                        </div>
                    </div>
                    <div class="col-md-3" id="section3" style="display: none">
                        <div class="form-group">
                            <span>Upload Driving Licence Image
             <br />
                              ड्राइविंग लाइसेंस की छवि अपलोड करें<span style="color: red">*</span></span>
                            <input class="form-control" type="file" placeholder="Enter Licence Number" />
                        </div>
                    </div>
                    <div class="col-md-3" id="section4" style="display: none">
                        <div class="form-group">
                            <span>Upload Driving Profile Image
                                <br />
                               ड्राइविंग प्रोफ़ाइल छवि अपलोड करें<span style="color: red">*</span></span>
                            <input class="form-control" type="file" placeholder="Enter Licence Number" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Add</button>
                        <a href="RouteToVehicleMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="dtls">
                <legend>Details / विवरण</legend>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                    <tr>
                                        <th>Sr. No.
                                         <br />
                                            क्रमांक</th>
                                        <th>Vehicle No.
                                             <br />
                                            वाहन क्रमांक</th>
                                        <th>Registration Type<br />
                                            पंजीकरण प्रकार</th>
                                        <th>Driver Name
                                         <br />
                                            चालक का नाम</th>
                                        <th>Contact Number<br />
                                            संपर्क नंबर</th>
                                        <th>Driving Licence No.

                                         <br />
                                            ड्राइविंग लाइसेंस नं.</th>


                                        <th colspan="3">Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>

                                    <td>MP04AB1196</td>
                                    <td>Attender</td>
                                    <td>Raj</td>
                                    <td>1234567890</td>
                                    <td>ABC123</td>
                                    <td><a class="btn btn-outline-primary"><i class="fa fa-pen"></i></a>
                                        <a class="Alert-Edit btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>MP04CD5154</td>
                                    <td>Driver</td>
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
            <fieldset id="InfoRpt" class="d-none">
                <legend>Driver/Attender Report / चालक/सहायक रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Registration Type
                                <br />
                                पंजीकरण प्रकार का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control" id="RegType" onchange="textchange()">
                                <option value="0">--Select--</option>
                                <option value="1">Driver</option>
                                <option value="2">Attender</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Vehicle No.
                                <br />
                                वाहन संख्या चुनें.<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">MP04AB1196</option>
                                <option value="1">MP04CD5154</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-success btn-border  w-lg">Search</button>
                        <a href="RouteToVehicleMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="FsDetails" class="d-none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" id="searchbtn">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row" id="tableData">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                    <tr>
                                        <th>Sr. No.
                     <br />
                                            क्रमांक</th>
                                        <th>Vehicle No.
                     <br />
                                            वाहन क्रमांक</th>
                                        <th>Registration Type<br />
                                            पंजीकरण प्रकार</th>
                                        <th>Driver Name

                     <br />
                                            चालक का नाम</th>
                                        <th>Contact Number<br />
                                            संपर्क नंबर</th>
                                        <th>Driving Licence No.

                     <br />
                                            ड्राइविंग लाइसेंस नं.</th>


                                        <th colspan="2">Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>MP04AB1196</td>
                                    <td>Attender</td>
                                    <td>Raj</td>
                                    <td>1234567890</td>
                                    <td>ABC123</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>MP04CD5154</td>
                                    <td>Driver</td>
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
        //document.getElementsByClassName("Driver").innerText = "block";
        function showTable() {
            document.getElementById("tableData").style.display = "block";
            document.getElementById("tablefd").style.display = "block";
            document.getElementById("searchbtn").style.display = "block";
        }

        function textchange() {
            if ($("#Reg").val() == "1") {
                $(".Driver").each(function () { this.innerText = 'Driver ' });
                $(".Reg").each(function () { this.innerText = 'चालक' });
            }
            else {
                $(".Driver").each(function () { this.innerText = 'Attender' });
                $(".Reg").each(function () { this.innerText = 'सहायक' });
            }

        }

        var a = 1
        function funBack() {
            document.querySelector('#FsDetails').classList.toggle('d-none');
            document.querySelector('#RegDetail').classList.toggle('d-none');
            document.querySelector('#dtls').classList.toggle('d-none');
            document.querySelector('#InfoRpt').classList.toggle('d-none');
            if (a == 1) {

                document.querySelector('#btnBack').innerHTML = '<i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back';
                a = 2;
            }
            else {
                document.querySelector('#btnBack').innerHTML = "<i class='bx bx-plus label-icon align-middle  me-2'></i>View Details";
                a = 1;
            }

        }
    </script>
    <script>

        function toggleSection1() {
            var dropdown1 = document.getElementById("dropdown1");
            var section1 = document.getElementById("section1");
            var section2 = document.getElementById("section2");
            var section3 = document.getElementById("section3");
            var section4 = document.getElementById("section4");
            if (dropdown1.value === "1") {
                section1.style.display = "block";
                section2.style.display = "block";
                section3.style.display = "block";
                section4.style.display = "block";
            } else if (dropdown1.value === "2") {
                section1.style.display = "none";
                section1.style.display = "none";
                section2.style.display = "none";
                section3.style.display = "none";
                section4.style.display = "block";

            } else {
                section1.style.display = "none";
                section2.style.display = "none";
                section3.style.display = "none";
                section4.style.display = "none";
            }
        }

    </script>
</asp:Content>
