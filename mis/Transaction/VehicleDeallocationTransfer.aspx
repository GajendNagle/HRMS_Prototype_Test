<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleDeallocationTransfer.aspx.cs" Inherits="mis_Transaction_VehicleDeallocationTransfer" %>

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
                            <a href="#TransportManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Transport Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle DeAllocation Transfer</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row align-item-end">
        <div class="col-lg-12 text-end">
            <a href="VehicleDeallocationReport.aspx" class="btn btn-info" role="button">Vehicle Deallocation Report</a>
            <a href="TransfertoAllotment.aspx" class="btn btn-info" role="button">Transfer to Allotment Report</a>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Vehicle DeAllocation Transfer / वाहन आवंटन स्थानांतरण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset id="dataSearchEmp">
                <legend>Vehicle DeAllocation Transfer / वाहन आवंटन स्थानांतरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Vehicle Number
                                <br />
                                गाड़ी नंबर का चयन करें<span style="color: red">*</span></span>
                            <asp:DropDownList runat="server" class="form-control select2" ID="ddlVehicleNumber">
                                <asp:ListItem Value="0" Text="--Select--" />
                                <asp:ListItem Value="1" Text="MP04HC4163" />
                                <asp:ListItem Value="2" Text="MP04CG9580" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <button type="button" class=" btn btn-outline-info btn-border w-lg" onclick="document.getElementById('SearchTable').style.display = 'block'">Search</button>
                            <a href="VehicleDeallocationTransfer.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
                <%--          <div class="row">
                 <div class="col-md-6">
                        <div class="form-group">
                            <button type="button" class=" btn btn-outline-success btn-border w-lg" onclick="document.getElementById('EmployeeDetailsData').style.display = 'block'">Search</button>
                                <a href="VehicleDeallocationTransfer.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div></div>--%>
                <div>
                    <fieldset id="SearchTable" style="display: none">
                        <legend>Vehicle Allotment Details/ वाहन आवंटन विवरण</legend>
                        <div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="datatable table table-bordered dataTable no-footer" cellspacing="0" rules="all" border="1" style="border-collapse: collapse; text-align: center;" role="grid" aria-describedby="ctl00_ContentBody_grvVehicleAllotment_info">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-sort="ascending" aria-label="S.No.: activate to sort column descending" style="width: 33.2373px;">S.No.<br />
                                                        सरल क्र.</th>
                                                    <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-sort="ascending" aria-label="S.No.: activate to sort column descending" style="width: 33.2373px;">Employee Name With Code<br />
                                                        कर्मचारी का नाम कोड सहित</th>
                                                    <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Order Date: activate to sort column ascending" style="width: 55.9921px;">Order Date
                                            <br />
                                                        आदेश की तारीख</th>
                                                    <%-- <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Office Type: activate to sort column ascending" style="width: 56.2197px;">Office Type<br />
                                                कार्यालय का प्रकार</th>--%>
                                                    <th scope="col" style="width: 59.7542px;">District
                                                <br />
                                                        जिला </th>
                                                    <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Vehicle Number: activate to sort column ascending" style="width: 80.355px;">Vehicle Number<br />
                                                        गाड़ी का नंबर</th>

                                                    <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Designation: activate to sort column ascending" style="width: 74.4084px;">Designation<br />
                                                        पद का नाम  </th>
                                                    <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Order Number: activate to sort column ascending" style="width: 72.0267px;">Order Number
                                            <br />
                                                        आदेश क्रमांक</th>
                                                    <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Vehicle Type: activate to sort column ascending" style="width: 64.3204px;">Vehicle Type<br />
                                                        वाहन का प्रकार</th>
                                                    <%--<th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Driver Name: activate to sort column ascending" style="width: 60.4976px;">Driver Name<br />
                                                चालक का नाम</th>
                                            <th scope="col" aria-controls="ctl00_ContentBody_grvVehicleAllotment" rowspan="1" colspan="1" aria-label="Order Document: activate to sort column ascending" style="width: 86.4988px;">View Document<br />
                                                दस्तावेज़ देखें</th>--%>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row">
                                                    <td>
                                                        <span>1</span>
                                                    </td>
                                                    <td>
                                                        <span>E0561-Raj</span>
                                                    </td>
                                                    <td>
                                                        <span>13/06/2024</span>
                                                    </td>

                                                    <%--  <td>
                                                <span>Head Office</span>
                                            </td>--%>
                                                    <td>
                                                        <span>Barwani</span>
                                                    </td>
                                                    <td>
                                                        <span>MP04CB4473</span>
                                                    </td>
                                                    <td>
                                                        <span>Joint Director</span>
                                                    </td>
                                                    <td>
                                                        <span>56565656</span>
                                                    </td>
                                                    <td>
                                                        <span>MARUTI 800</span>
                                                    </td>
                                                    <%-- <td>
                                                <span>LAKSHMI NARAYAN</span>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-primary">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                </button>
                                            </td>--%>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </fieldset>

            <fieldset>
                <legend>Vehicle Process / वाहन प्रक्रिया</legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Select Vehicle Process
                                <br />
                                वाहन प्रक्रिया का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control select2 select2-hidden-accessible" id="dropdown" onchange="DIVShow()">
                                <option>--Select--</option>
                                <option value="1">Tranfer To Allotement Employee</option>
                                <option value="2">Vehicle DeAllocation</option>
                            </select>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fieldset4" style="display: none">
                <div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Enter Employee ID
                                <br />
                                    कर्मचारी की आई.डी. दर्ज करें 
                                
                                
                                <span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$ddlOfficeType" placeholder="Enter Employee ID" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <button type="button" class=" btn btn-outline-info btn-border w-lg" onclick="document.getElementById('fieldset3').style.display = 'block'">Search</button>
                                <a href="VehicleDeallocationTransfer.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="fieldset3" style="display: none">
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Enter Employee Name With Code
                                    <br />
                                    आई डी सहित कर्मचारी का नाम दर्ज करें<span style="color: red">*</span></span>
                                <input type="text" maxlength="20" class="form-control" readonly="readonly" value="E0561-Raj" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Select District
                                    <br />
                                    जिला का चयन करें<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ddlDistrict" disabled="disabled" id="ContentBody_ddlDistrict" class="form-control">
                                    <option value="0">--Select--</option>
                                    <option value="51" selected="selected">Agar Malwa</option>
                                    <option value="49">Alirajpur</option>
                                    <option value="47">Anuppur</option>
                                    <option value="46">Ashoknagar</option>
                                    <option value="45">Balaghat</option>
                                    <option value="28">Barwani</option>
                                    <option value="35">Betul</option>
                                    <option value="3">Bhind</option>
                                    <option value="32">Bhopal</option>
                                    <option value="48">Burhanpur</option>
                                    <option value="9">Chhatarpur</option>
                                    <option value="43">Chhindwara</option>
                                    <option value="12">Damoh</option>
                                    <option value="5">Datia</option>
                                    <option value="23">Dewas</option>
                                    <option value="25">Dhar</option>
                                    <option value="41">Dindori</option>
                                    <option value="7">Guna</option>
                                    <option value="4">Gwalior</option>
                                    <option value="36">Harda</option>
                                    <option value="26">Indore</option>
                                    <option value="39">Jabalpur</option>
                                    <option value="24">Jhabua</option>
                                    <option value="38">Katni</option>
                                    <option value="29">Khandwa</option>
                                    <option value="27">Khargone</option>
                                    <option value="42">Mandla</option>
                                    <option value="19">Mandsaur</option>
                                    <option value="2">Morena</option>
                                    <option value="37">Narmadapuram</option>
                                    <option value="40">Narsinghpur</option>
                                    <option value="18">Neemuch</option>
                                    <option value="52">Niwari</option>
                                    <option value="10">Panna</option>
                                    <option value="34">Raisen</option>
                                    <option value="30">Rajgarh</option>
                                    <option value="20">Ratlam</option>
                                    <option value="14">Rewa</option>
                                    <option value="11">Sagar</option>
                                    <option value="13">Satna</option>
                                    <option value="33">Sehore</option>
                                    <option value="44">Seoni</option>
                                    <option value="16">Shahdol</option>
                                    <option value="22">Shajapur</option>
                                    <option value="1">Sheopur</option>
                                    <option value="6">Shivpuri</option>
                                    <option value="17">Sidhi</option>
                                    <option value="50">Singrauli</option>
                                    <option value="8">Tikamgarh</option>
                                    <option value="21">Ujjain</option>
                                    <option value="15">Umaria</option>
                                    <option value="31">Vidisha</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Select DDO/Sankul Code
                                    <br />
                                    डीडीओ/संकुल कोड का चयन करें<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ddlOfficeType" disabled="disabled" class="form-control" tabindex="-1" aria-hidden="true">
                                    <option value="0" selected="selected">23090107701</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Select Designation
                                    <br />
                                    पद का नाम का चयन करें<span style="color: red">*</span></span>
                                <select name="ctl00$ContentBody$ddlOfficeType" disabled="disabled" class="form-control " tabindex="-1" aria-hidden="true">
                                    <option value="0">--Select--</option>
                                    <option value="--Select--" data-select2-id="9">--Select--</option>
                                    <option value="Additional Director" data-select2-id="44">Additional Director</option>
                                    <option value="Joint Director" data-select2-id="45" selected="selected">Joint Director</option>
                                    <option value="Deputy Director" data-select2-id="46">Deputy Director</option>
                                    <option value="Asstt Director" data-select2-id="47">Asstt Director</option>
                                    <option value="Regional Librarian" data-select2-id="48">Regional Librarian</option>
                                    <option value="Planning Officer" data-select2-id="49">Planning Officer</option>
                                    <option value="Director (ELTI)" data-select2-id="50">Director (ELTI)</option>
                                    <option value="Director(SISE)" data-select2-id="51">Director(SISE)</option>
                                    <option value="Principal (PGBT)" data-select2-id="52">Principal (PGBT)</option>
                                    <option value="Principal (DIET)" data-select2-id="53">Principal (DIET)</option>
                                    <option value="Principal HSS" data-select2-id="54">Principal HSS</option>
                                    <option value="Principal HS" data-select2-id="55">Principal HS</option>
                                    <option value="Lecturer" data-select2-id="56">Lecturer</option>
                                    <option value="HM(MS)" data-select2-id="57">HM(MS)</option>
                                    <option value="Teacher (UDT)" data-select2-id="58">Teacher (UDT)</option>
                                    <option value="Music Teacher" data-select2-id="59">Music Teacher</option>
                                    <option value="Tabla Teacher" data-select2-id="60">Tabla Teacher</option>
                                    <option value="Craft Teacher" data-select2-id="61">Craft Teacher</option>
                                    <option value="HM(PS)" data-select2-id="62">HM(PS)</option>
                                    <option value="Asstt Teacher(LDT)" data-select2-id="63">Asstt Teacher(LDT)</option>
                                    <option value="Varistha Adhyapak" data-select2-id="64">Varistha Adhyapak</option>
                                    <option value="Adhyapak" data-select2-id="65">Adhyapak</option>
                                    <option value="Sahayak Adhyapak" data-select2-id="66">Sahayak Adhyapak</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <fieldset id="fieldset1" style="display: none">

                        <legend>VEHICLE ALLOTMENT / वाहन आवंटन </legend>


                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Enter Order Number
                                <br />
                                        आदेश क्रमांक दर्ज करें<span style="color: red">*</span></span>
                                    <input type="text" maxlength="20" id="ctl00_ContentBody_txtOrederNumber" class="form-control" placeholder="Enter Order Number" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Enter Order Date
                                <br />
                                        आदेश की तारीख दर्ज करें<span style="color: red">*</span></span>
                                    <input type="date" class="form-control" data-provide="datepicker" data-date-end-date="0d" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Enter Order Copy
                                <br />
                                        आदेश प्रति दर्ज करें<span style="color: red">*</span></span>
                                    <input type="text" maxlength="20" id="ctl00_ContentBody_txtOrederNumber" class="form-control" placeholder="Enter Order Copy" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Enter Driver Name
                                <br />
                                        चालक का नाम दर्ज करें<span style="color: red">*</span></span>
                                    <input name="ctl00$ContentBody$txtDrivername" type="text" maxlength="50" id="ctl00_ContentBody_txtDrivername" class="form-control" placeholder="Enter Driver Name" onpaste="return false;" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <span>Enter Driver's Mobile Number
                                <br />
                                        चालक का मोबाईल नंबर दर्ज करें<span style="color: red">*</span></span>
                                    <input name="ctl00$ContentBody$txtDriverContactNo" type="text" maxlength="10" id="ctl00_ContentBody_txtDriverContactNo" class="form-control" placeholder="Enter Driver Contact No." onpaste="return false;" autocomplete="off" />
                                </div>
                            </div>
                            <%--   <div class="col-md-3">
                        <div class="form-group">
                            <span>Upload File
                                <br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span></span>
                            <input type="file" name="ctl00$ContentBody$orderFileUploader" id="ctl00_ContentBody_orderFileUploader" class="form-control">
                        </div>
                    </div>--%>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <span>Enter Remark
             <br />
                                        टिप्पणी दर्ज करें
                                <span style="color: red">*</span></span>
                                    <textarea rows="1" class="form-control"></textarea>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="button" id="toggleButton" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                                    <a href="VehicleDeallocationTransfer.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </fieldset>

            <fieldset id="fieldset2" style="display: none">
                <legend>Vehicle DeAllotment / वाहन आवंटन</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>DeAllotment Order Number
                                <br />
                                डीआवंटन आदेश क्रमांक<span style="color: red">*</span></span>
                            <input type="text" maxlength="20" id="ctl00_ContentBody_txtOrederNumber" class="form-control" placeholder="Enter Order Number" onpaste="return false;" onkeypress="return isNumberKey(txt, evt)" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>DeAllotment Order Date
                                <br />
                                डीआवंटन आदेश की तारीख<span style="color: red">*</span></span>
                            <input type="date" class="form-control" data-provide="datepicker" data-date-end-date="0d" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Remark
                                <br />
                                टिप्पणी<span style="color: red">*</span></span>
                            <textarea name="ctl00$ContentBody$txtVehicleExpensesDetails" rows="1" cols="60" id="ctl00_ContentBody_txtVehicleExpensesDetails" class="form-control" placeholder="Enter Vehicle Expenses Details" onkeyup="countChars(this);"></textarea>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <span>DeAllotment Document
                                <br />
                                डीआवंटन दस्तावेज़<span style="color: red">*</span></span>
                            <input type="file" name="ctl00$ContentBody$orderFileUploader" id="ctl00_ContentBody_orderFileUploader" class="form-control">
                        </div>
                    </div>
                    <hr />
                    <div class="row justify-content-center">
                        <div class="col-md-12 text-center">
                            <button type="button" id="toggleButton" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="VehicleDeallocationTransfer.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function DIVShow() {
            var value = document.getElementById("dropdown").value;
            if (value === "1") {
                document.getElementById('fieldset1').style.display = "block";
                document.getElementById('fieldset2').style.display = "none";

                document.getElementById('fieldset4').style.display = "block";
            } else if (value === "2") {
                document.getElementById('fieldset1').style.display = "none";
                document.getElementById('fieldset2').style.display = "block";

                document.getElementById('fieldset4').style.display = "none";
            } else {
                document.getElementById('fieldset1').style.display = "none";
                document.getElementById('fieldset2').style.display = "none";

                document.getElementById('fieldset4').style.display = "none";
            }
        }
    </script>
</asp:Content>

