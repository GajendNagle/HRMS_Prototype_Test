<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_OfficeRegistration.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_OfficeRegistration" %>

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
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Office Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">Office Registration Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से ऑफिस को  Registered  किया जाता हैं | यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-7">
                    <h4 class="card-title">Office Registration Master / 
कार्यालय पंजीकरण मास्टर
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Add Office Registration /कार्यालय पंजीकरण जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select State Name /<br />
                                राज्य का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Odisha">Odisha</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Telangana">Telangana</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="Uttarakhand">Uttarakhand</option>
                                <option value="West Bengal">West Bengal</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Division Name /<br />
                                संभाग का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Indore">Indore</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Ujjain">Ujjain</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Katni">Katni</option>
                                <option value="Satna">Satna</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Mandsaur">Mandsaur</option>
                                <option value="Neemuch">Neemuch</option>
                                <option value="Ratlam">Ratlam</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Khandwa">Khandwa</option>
                                <option value="Morena">Morena</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District Name /<br />
                                जिले का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Indore">Indore</option>
                                <option value="Ujjain">Ujjain</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Katni">Katni</option>
                                <option value="Satna">Satna</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Mandsaur">Mandsaur</option>
                                <option value="Neemuch">Neemuch</option>
                                <option value="Ratlam">Ratlam</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Khandwa">Khandwa</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Block Name /<br />
                                विकासखण्ड का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl03" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Phanda">Phanda</option>
                                <option value="Berasia">Berasia</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Sehore">Sehore</option>
                                <option value="Raisen">Raisen</option>
                                <option value="Harda">Harda</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Dewas">Dewas</option>
                                <option value="Ujjain">Ujjain</option>
                                <option value="Indore">Indore</option>
                                <option value="Khandwa">Khandwa</option>
                                <option value="Khargone">Khargone</option>
                                <option value="Dhar">Dhar</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                select Office Type /<br />
                                कार्यालय का चयन करे<span style="color: red;"> *</span></label>
                            <select name="ctl00$ContentBody$ctl04" class="form-control">
                                <option value=" -Select-">-Select-</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                <option value="Bhopal">SANKUL/AEO</option>
                                <option value="Bhopal">SCHOOL</option>
                                <option value="Principal Secretary">Principal Secretary</option>
                                <option value="Secretary">Secretary</option>
                                <option value="Deputy Secretary">Deputy Secretary</option>
                                <option value="CPI">CPI</option>
                                <option value="CRSK">CRSK</option>
                                <option value="DPI">DPI</option>
                                <option value="Collector">Collector</option>
                                <option value="CEO, ZP">CEO, ZP</option>
                                <option value="DPC">DPC</option>
                                <option value="BRC">BRC</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Office Name (In English)<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl05" type="text" class="form-control" placeholder="Enter Office Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>कार्यालय नाम (हिंदी में)<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl06" type="text" class="form-control" placeholder="कार्यालय का नाम दर्ज करे" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Address (Line 1) /<br />
                                पता (लाइन 1) दर्ज करे<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl07" type="text" class="form-control" placeholder="Address (Line 1)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Address (Line 2) /<br />
                                पता (लाइन 2) दर्ज करे<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl08" type="text" class="form-control" placeholder="Address (Line 2)" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Pin Code /<br />
                                पिन कोड दर्ज करे<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl09" type="text" class="form-control" placeholder="Enter Pin Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office In charge Name /<br />
                                कार्यालय प्रभारी का चयन करे<span style="color: red;">*</span></label>
                            <select name="ctl00$ContentBody$ctl10" class="form-control select2">
                                <option value=" -Select-">-Select-</option>
                                <option value="010 - Ram Singh">010 - Ram Singh</option>
                                <option value="020 - Gyan Singh">020 - Gyan Singh</option>
                                <option value="030 - BrajMohan ">030 - BrajMohan </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Official Mail Id /<br />
                                आधिकारिक मेल आईडी दर्ज करे<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl11" type="text" class="form-control" placeholder="Enter Official Mail id" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Office Contact No. /<br />
                                कार्यालय संपर्क नं. दर्ज करे</label>
                            <input name="ctl00$ContentBody$ctl12" type="text" class="form-control" placeholder="Enter Office Contact No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Office GST No /<br />
                                कार्यालय जीएसटी नं दर्ज करे<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl13" type="text" class="form-control" placeholder="Enter Office GST No" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Office Code /<br />
                                कार्यालय कोड दर्ज करे<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl14" type="text" class="form-control" placeholder="Enter Office Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Effective Date /<br />
                                प्रभावी तिथि दर्ज करे<span style="color: red;">*</span></label>
                            <input type="date" class="form-control" data-date-format="dd/MM/yyyy" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Enter Location Details / 
स्थान विवरण दर्ज करें</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Latitude /<br />
                                अक्षरेखा दर्ज करे</label>
                            <input name="ctl00$ContentBody$ctl15" type="text" class="form-control" placeholder="Enter Latitude" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Longitude /<br />
                                देशान्तर दर्ज करे</label>
                            <input name="ctl00$ContentBody$ctl16" type="text" class="form-control" placeholder="Enter Longitude" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="form-check-label">
                                <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                        <a href="Mst_OfficeRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Office Registration Details /कार्यालय पंजीकरण विवरण</legend>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <tr>
                                    <th>Sr.No. /<br />
                                        सरल क्र.</th>
                                    <th>Office Type /<br />
                                        कार्यालय का प्रकार</th>
                                    <th>Office Name /<br />
                                        कार्यालय का नाम</th>
                                    <th>Office Code /<br />
                                        कार्यालय का कोड</th>
                                    <th>Office Incharge Name /<br />
                                        कार्यालय प्रभारी का नाम</th>
                                    <th>Status(Active/InActive) /<br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>View Details/<br />
                                        विवरण देखें</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Head office</td>
                                    <td>HO</td>
                                    <td>43</td>
                                    <td>Mr. ABC</td>
                                    <td>Active</td>
                                    <td><i class="fa fa-eye"></i></td>
                                    <td><i class="fa fa-pen"></i>| <i class="fa fa-trash"></i></td>
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
</asp:Content>

