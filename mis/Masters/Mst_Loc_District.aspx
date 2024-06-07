<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Loc_District.aspx.cs" Inherits="mis_District_Master" %>

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
                            <span>Master Data</span>
                        </li>
                        <li class="breadcrumb-item">Location Master Data</li>
                        <li class="breadcrumb-item">District Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए जिला को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">District Master / जिला मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add District / जिला जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select State Name /<br /> राज्य का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Nashik">Nashik</option>
                                <option value="West">West</option>
                                <option value="Bengal">Bengal</option>
                                <option value="Telangana">Telangana</option>
                                <option value="Assam">Assam</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Madhya">Madhya Pradesh</option>
                                <option value="Tamil">Tamil</option>
                                <option value="Nadu">Nadu</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Andhra">Andhra Pradesh</option>
                                <option value="Uttar">Uttar Pradesh</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Uttarakhand">Uttarakhand</option>
                                <option value="Goa">Goa</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Arunachal">Arunachal Pradesh</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Himachal">Himachal</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Orissa">Orissa</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Division Name /<br /> संभाग का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Narmadapuram">Narmadapuram</option>
                                <option value="Indore">Indore</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Ujjain">Ujjain</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter District Name (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" autocomplete="off" placeholder=" Enter District Name " />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>जिले का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" autocomplete="off" placeholder="जिले का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter District Code No. /<br /> जिला कोड संख्या दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" placeholder="Enter Code No." />
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
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-border w-lg">Save</button>
                            <a href="Mst_Loc_District.aspx" class="btn btn-outline-danger w-lg btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>District Details / जिला विवरण</legend>
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
                                <tr>
                                    <th>Sr.No. /<br> सरल क्र.</th>
                                    <th>State Name /<br> राज्य का नाम</th>
                                    <th>Division Name /<br> संभाग का नाम</th>
                                    <th>District Name</th>
                                    <th>जिले का नाम</th>
                                    <th>District Code No. /<br>जिला कोड संख्या</th>
                                    <th>Status(Active/InActive) /<br>स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Madhya Pradesh</td>
                                    <td>Bhopal</td>
                                    <td>Bhopal</td>
                                    <td>भोपाल</td>
                                    <td>32</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Madhya Pradesh</td>
                                    <td>Gwalior</td>
                                    <td>Gwalior</td>
                                    <td>ग्वालियर</td>
                                    <td>04</td>
                                    <td>InActive</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
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

