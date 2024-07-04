<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeVarificationReport.aspx.cs" Inherits="mis_Masters_EmployeeVarificationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
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
                                <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#EmployeeReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                    <span>Employee Report</span></a>
                            </li>
                            <li class="breadcrumb-item"><span>Employee Verification Report</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <img src="/img/Employee%20Registration.png" style="height: 70px">
            </div>
        </div>
        <div class="card card-border-primary ">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-6">
                        <h4 class="card-title">Employee Verification Report / कर्मचारी सत्यापन विवरण</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Employee Verification / कर्मचारी सत्यापन
                    </legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    District
                                    <br />
                                    जिला <span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlApprove">
                                    <option value="0">--Select--</option>
                                    <option value="51">Agar Malwa</option>
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
                        <hr />
                        <div class="col-md-12 form-group">
                            <button onclick="myFunction()" id="searchButton" type="button" class="btn btn-outline-success w-lg btn-border">Search</button>
                            <a runat="server" id="A1" href="EmployeeVarificationReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="showdetails" style="display: none;">
                    <legend>Verification Details / सत्यापन विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12" id="appid">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.
                                                <br />
                                                सरल क्र.</th>
                                            <th>Employee's name with ID
                                                <br />
                                                आई डी सहित कर्मचारी का नाम</th>
                                            <th>Designation
                                                <br />
                                                पद</th>

                                            <th>Sankul Name
                                                <br />
                                                संकुल का नाम
                                            </th>
                                            <th>School Name
                                                <br />
                                                स्कूल का नाम</th>
                                            <th>View More
                                                <br />
                                                अधिक विवरण देखे</th>
                                            <th>Status
                                                <br />
                                                स्थिति</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Shri A.K. Ranjan-0001</td>
                                        <td>LDC</td>
                                        <td>23356245856 - Crist Academy School</td>
                                        <td>23354932167 - Delhi Public School</td>
                                        <td class="text-center"><a class="Alert-Edit"><i class="fa fa-pen"></i></a> | <a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Approved</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Omprakash-0012</td>
                                        <td>UDC</td>
                                        <td>23354912798 - Bal Bharti School</td>
                                        <td>23568546215 - Sarasvati Vidhya Mandir</td>
                                        <td  class="text-center"><a class="Alert-Edit"><i class="fa fa-pen"></i></a> | <a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                      <td>Approved</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="des">
                    <legend>Description / विवरण</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Designation Type</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Designation Type </strong>from dropdown. Data populated from <strong>Designation Type master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Designation</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation </strong>from the dropdown and the data will be populated from the <strong>Designation Master</strong> and data cascade from <strong>Designation Type Master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Verification Status</strong>
                                    <ul>
                                        <li>In the <strong>verification drop</strong> down, the drop down of pending reject and approval opens. On clicking on pending, the approval option opens, through which the concerned employees can be verified.
                                            <br />
                                            The related drop down is used for the information of the rejected and approved employee.</li>
                                    </ul>
                                </li>
                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li><strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li><strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> .</li>
                                    </ul>
                                </li>

                                <li><strong>View more</strong>
                                    <ul>
                                        <li>User should be able to click on View button.</li>
                                        <li>After clicking on the View button selected <strong>Employee's
                                        </strong>details will be shown on the pop up screen.</li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>
                <!-- sample modal content -->
                <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header" id="myDIV">
                                <h4 class="modal-title" id="myLargeModalLabel1">Registration Details / पंजीकरण का विवरण</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">

                                <fieldset>
                                    <legend>PERSONAL INFORMATION / व्यक्तिगत जानकारी</legend>
                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Employee Unique ID 
                                                    <br />
                                                    कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="5859685" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    First Name 
                                                    <br />
                                                    प्रथम नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Shyam" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Middle Name 
                                                    <br />
                                                    मध्य नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kumar" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Last Name 
                                                    <br />
                                                    उपनाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Verma" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Father's/Husband Name 
                                                    <br />
                                                    पिता/पति का नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kunal Verma" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Post 
                                                    <br />
                                                    पद<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Regular/Permanemt" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Designation 
                                                    <br />
                                                    पद का नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Administrator" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Subject 
                                                    <br />
                                                    विषय<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Chemistry" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    School Name 
                                                    <br />
                                                    स्कूल का नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="GB Convent School" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Sankul 
                                                    <br />
                                                    संकुल<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Reema Vidhya" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Date of Birth 
                                                    <br />
                                                    जन्मतिथि<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/07/1999" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Gender 
                                                    <br />
                                                    लिंग<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Male" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Height 
                                                    <br />
                                                    ऊंचाई<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6.4" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Category 
                                                    <br />
                                                    वर्ग<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="General" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Religion 
                                                    <br />
                                                    धर्म<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Hindu" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Identification Mark 
                                                    <br />
                                                    पहचान चिह्न<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Mole on Face" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Blood Group 
                                                    <br />
                                                    ब्लड ग्रुप<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="O+" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Handicapped (PWD) 
                                                    <br />
                                                    विकलांग (पीडब्ल्यूडी)<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Handicape Type 
                                                    <br />
                                                    विकलांगता प्रकार<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Low vision" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Handicape Percentage 
                                                    <br />
                                                    विकलांगता प्रतिशत<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="30%" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Critical Illness 
                                                    <br />
                                                    गंभीर बीमारी<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    PAN No. 
                                                    <br />
                                                    पैन नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="SDEKK5695G" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Aadhaar No. 
                                                    <br />
                                                    आधार नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="362596836495" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Samagra ID No. 
                                                    <br />
                                                    समग्र आईडी नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="654651545454" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Employee Treasury Code 
                                                    <br />
                                                    कर्मचारी कोष कोड<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="56958369" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Hobbies 
                                                    <br />
                                                    हॉबी<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Dancing, Singing" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Certification Date 
                                                    <br />
                                                    प्रमाणीकरण दिनांक<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/01/2023" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Mobile No.
                                                    <br />
                                                    मोबाइल नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6589562358" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Email ID. 
                                                    <br />
                                                    ईमेल आईडी<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly="" autocomplete="off" placeholder="example123@gmail.com" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Whether the First Page of E-Service Book is Certified 
                                                    <br />
                                                    ई-सेवा पुस्तिका का प्रथम पृष्ठ प्रमाणित है या नहीं<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Address / पता</legend>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <fieldset>
                                                <legend>Present Address / वर्तमान पता
                                                </legend>
                                                <div class="row align-items-end">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Address line 1 
                                                                <br />
                                                                पता लाइन 1<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Address line 2 
                                                                <br />
                                                                पता लाइन 2<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                State 
                                                                <br />
                                                                राज्य<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Division 
                                                                <br />
                                                                संभाग<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                District 
                                                                <br />
                                                                जिला<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                City 
                                                                <br />
                                                                शहर<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Pincode 
                                                                <br />
                                                                पिन कोड<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">

                                            <div class="form-group">
                                                <input type="checkbox" id="vehicle1" name="vehicle1" checked value="Bike">
                                                <b>Permanent Address same as Present Address</b>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <fieldset>
                                                <legend>Permanent Address / स्थायी पता
                                                </legend>
                                                <div class="row align-items-end">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Address line 1 
                                                                <br />
                                                                पता लाइन 1<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Address line 2 
                                                                <br />
                                                                पता लाइन 2<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                State 
                                                                <br />
                                                                राज्य<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Division 
                                                                <br />
                                                                संभाग<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                District 
                                                                <br />
                                                                जिला<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                City 
                                                                <br />
                                                                शहर<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Pincode 
                                                                <br />
                                                                पिन कोड<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Marital Status and Spouse Details / वैवाहिक स्थिति एवं जीवनसाथी का विवरण</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Married 
                                                    <br />
                                                    विवाहित<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Spouse Name 
                                                    <br />
                                                    जीवनसाथी का नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Ruchita " />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Is Spouse Government Employee
                                                    <br />
                                                    क्या पति/पत्नी सरकारी कर्मचारी हैं?<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Departmnet Name 
                                                    <br />
                                                    विभाग का नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Office Address 
                                                    <br />
                                                    कार्यालय का पता<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="52, Arera Hills, Bhopal" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Education Qualification / शैक्षणिक योग्यता</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Qualification 
                                                    <br />
                                                    योग्यता<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Post Graduate" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Science 
                                                    <br />
                                                    विज्ञान<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Science" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Board / Univercity name 
                                                    <br />
                                                    बोर्ड/यूनिवर्सिटी का नाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Makhanlal Chaturvedi" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Passing Year 
                                                    <br />
                                                    पासिंग ईयर <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="2022" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Grade / Percentage
                                                    <br />
                                                    क्षेणी / प्रतिशत
                                                    <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="99%" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>First Appointment Details / प्रथम नियुक्ति विवरण</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    First Appointment Order Date
                                                    <br />
                                                    प्रथम नियुक्ति आदेश दिनांक<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20.12.2021" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    First Appointment Department
                                                    <br />
                                                    प्रथम नियुक्ति विभाग<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Employee’s Designation Type<br />
                                                    कर्मचारी का पदनाम प्रकार<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Teaching" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    First Appointment Designation
                                                    <br />
                                                    प्रथम नियुक्ति पदनाम<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Teacher" />
                                            </div>
                                        </div>

                                        <div class="col-md-3 mt-4">
                                            <div class="form-group">
                                                <label>
                                                    First Appointment Pay scale
                                                    <br />
                                                    प्रथम नियुक्ति वेतनमान<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20600" />
                                            </div>
                                        </div>
                                        <div class="col-md-3 mt-4">
                                            <div class="form-group">
                                                <label>
                                                    Parent Department
                                                    <br />
                                                    मूल विभाग<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="-" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    School/Institute/Office Address of First Posting
                                                    <br />
                                                    प्रथम पोस्टिंग के स्कूल/संस्थान/कार्यालय का पता<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="101 Arera Hills, Bhopal" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Recent Appointment Department<br />
                                                    हाल ही में नियुक्ति विभाग<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="IT" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Samvilian Order No.
                                                    <br />
                                                    संविलियन आदेश क्रमांक<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="569894545" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Samvilian Order Date
                                                    <br />
                                                    संविलियन आदेश दिनांक<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2022" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Employee Retirement Date
                                                    <br />
                                                    कर्मचारी सेवानिवृत्ति दिनांक<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2082" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Whether Working/Posted in Other Department on Deputation/Transfer
                                                    <br />
                                                    क्या प्रतिनियुक्ति/स्थानांतरण पर अन्य विभाग में कार्यरत/तैनात है<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Working in Other Department/Organization on Deputation Transfer
                                                    <br />
                                                    प्रतिनियुक्ति स्थानान्तरण पर अन्य विभाग/संगठन में कार्यरत<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Current Appointment Details / वर्तमान नियुक्ति विवरण</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Payroll Office Type 
                                                    <br />
                                                    पेरोल कार्यालय का प्रकार<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Type of Post 
                                                    <br />
                                                    पद का प्रकार<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Teaching" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Class 
                                                    <br />
                                                    कक्षा<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Class 3" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Pay Commission 
                                                    <br />
                                                    वेतन आयोग
                                                    <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Second Pay Commission" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Grade Pay 
                                                    <br />
                                                    ग्रेड पे
                                                    <span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="8700" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Pay Scale 
                                                    <br />
                                                    वेतनमान<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="15600-39100" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Level 
                                                    <br />
                                                    स्तर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Level - 3" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Basic Pay 
                                                    <br />
                                                    मूल वेतन<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="15600-39100" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Employee Department 
                                                    <br />
                                                    कर्मचारी विभाग<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="DPI" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Current Appointment Joining Date 
                                                    <br />
                                                    वर्तमान नियुक्ति में शामिल होने का दिनांक<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="12.12.2023" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Bank Account Details / बैंक के खाते का विवरण</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    IFSC Code 
                                                    <br />
                                                    आईएफएससी कोड<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="BARB0ASHOKA" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    EPF No. 
                                                    <br />
                                                    ईपीएफ नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="4646416464165" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    GPF No. 
                                                    <br />
                                                    जीपीएफ नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6546541564641" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    NPS No. 
                                                    <br />
                                                    एनपीएस नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="5614654465445" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Group Insurance No. 
                                                    <br />
                                                    समूह बीमा संख्या<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="45334343546G" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    Gratuity No. 
                                                    <br />
                                                    ग्रेच्युटी संख्या<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="45454146546" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    EGLS No. 
                                                    <br />
                                                    ईजीएलएस नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="65595662131" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    EDLI No. 
                                                    <br />
                                                    ईडीएलआई नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="846451151564" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>
                                                    ESIC No. 
                                                    <br />
                                                    ईएसआईसी नंबर<span style="color: red">*</span></label>
                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="4644641464646" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <div class="row align-items-end justify-content-center">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Verification Status 
                                                <br />
                                                सत्यापन स्थिति<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Verified" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <button type="button" class="btn btn-success  Alert-Empverify btn-border w-lg" data-bs-dismiss="modal">Save</button>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->

                </div>
                <!-- /.modal -->
            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1" role="dialog" id="bootstrapModalreg">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Reject Remark</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Remark</label>
                            <asp:TextBox ID="TextBoxreg2" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-danger Alert-Reject" data-bs-dismiss="modal">Reject</button>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="bootstrapModalreg1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;">//आहरण संवितरण अधिकारी की अनुशंसा//</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered" style="border: 1px solid">
                                <tr>
                                    <th>सरल क्रमांक</th>
                                    <th>
                                        <center>अधिकारी की अनुशंसा</center>
                                    </th>
                                </tr>
                                <tr>
                                    <td>1.</td>
                                    <td>
                                        <label style="padding: 10px; text-align: justify;">
                                            प्रमाणित किया जाता है कि श्री/श्रीमती/कु <strong>R.K. Dubey</strong> कार्यालय अंतर्गत <strong>UDC </strong>पद पर पदस्थ है। इन्होंने दिनांक <strong>21/03/2024</strong> को कार्यभार ग्रहण किया है। संबंधित द्वारा दी गई जानकारी का               
 
                                             मिलान कार्यालयीन अभिलेख से कर लिया गया है एवं जानकारी सही पाई गई है। श्री/ श्रीमती/कुका नाम Education Portal पर जोड़ने एवं यूनिक आईडी प्रदान करने की अनुशंसा की जाती है।             
             
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>
                                        <label style="padding: 10px; text-align: justify;">
                                            प्रमाणित किया जाता है कि श्री/श्रीमती/कु <strong>Pradeep Mishra</strong> कार्यालय अंतर्गत <strong>UDC </strong>पद पर पदस्थ है। इन्होंने दिनांक <strong>21/03/2024</strong> को कार्यभार ग्रहण किया है। संबंधित द्वारा दी गई जानकारी का                
                                             मिलान कार्यालयीन अभिलेख से कर लिया गया है एवं जानकारी सही पाई गई है। श्री/ श्रीमती/कुका नाम Education Portal पर जोड़ने एवं यूनिक आईडी प्रदान करने की अनुशंसा की जाती है।           
        
                                        </label>
                                    </td>
                                </tr>
                            </table>


                            <div class="row justify-content-center" id="divbtn1">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <button type="button" class="Alert-SaveOrder  btn btn-success btn-rounded">Approve</button>
                                        <button type="button" class="btn btn-danger btn-rounded waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
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
        function myFunction() {
            var dropdown = document.getElementById("ddlApprove");
            var searchButton = document.getElementById("searchButton");
            var dataSection = document.getElementById("showdetails");           
            if (dropdown.value != "0") {
                dataSection.style.display = "block";
            } else {
                dataSection.style.display = "none";
            }
        }
        window.onload = function () {
            document.getElementById("showdetails").style.display = "none";
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Success').click(function () {
                    Swal.fire({
                        type: 'success',
                        title: 'Good job!',
                        text: 'Something went wrong!',
                        timer: 2000
                    })
                });

                $('.Alert-Empverify').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Verify Employee ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Employee Verified Successfully!',
                                timer: 2000
                            }
                            )
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);

    </script>
    <script>
        // Function to open the Bootstrap modal
        function openBootstrapModalreg() {
            $('#bootstrapModalreg').modal('show');
        }
        function openBootstrapModalreg1() {
            $('#bootstrapModalreg1').modal('show');
        }

    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-SaveOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Approve Successfully!',
                                timer: 2000

                            }
                            )
                            var x = document.getElementById('ShowOrders');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>
