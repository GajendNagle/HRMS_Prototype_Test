<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Loc_NagerNigam.aspx.cs" Inherits="mis_Master_BlockMaster" %>

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
                        <li class="breadcrumb-item">Nagar Nigam Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए नगर निगम को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता है
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Nagar Nigam Master / नगर निगम मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Nagar Nigam / नगर निगम जोड़े</legend>
                <div class="row ">
                    <div class="col-md-3 ">
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
                    <div class="col-md-3">
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
                    <div class="col-md-3">
                        <label>Select District Name /<br /> जिला का चयन करे<span style="color: red">*</span></label>
                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Bhopal">Bhopal</option>
                            <option value="Raisen">Raisen</option>
                            <option value="Rajgarh">Rajgarh</option>
                            <option value="Sehore">Sehore</option>
                            <option value="Vidisha">Vidisha</option>
                            <option value="Ashoknagar">Ashoknagar</option>
                            <option value="Shivpuri">Shivpuri</option>
                            <option value="Datia">Datia</option>
                            <option value="Guna">Guna</option>
                            <option value="Gwalior">Gwalior</option>
                            <option value="Harda">Harda</option>
                            <option value="Hoshangabad">Hoshangabad</option>
                            <option value="Betul">Betul</option>
                            <option value="Morena">Morena</option>
                            <option value="Sheopur">Sheopur</option>
                            <option value="Bhind">Bhind</option>
                            <option value="Barwani">Barwani</option>
                            <option value="Burhanpur">Burhanpur</option>
                            <option value="Dhar">Dhar</option>
                            <option value="Indore">Indore</option>
                            <option value="Jhabua">Jhabua</option>
                            <option value="Khandwa">Khandwa</option>
                            <option value="Khargone">Khargone</option>
                            <option value="Alirajpur">Alirajpur</option>
                            <option value="Balaghat">Balaghat</option>
                            <option value="Chhindwara">Chhindwara</option>
                            <option value="Jabalpur">Jabalpur</option>
                            <option value="Katni">Katni</option>
                            <option value="Mandla">Mandla</option>
                            <option value="Narsinghpur">Narsinghpur</option>
                            <option value="Seoni">Seoni</option>
                            <option value="Rewa">Rewa</option>
                            <option value="Satna">Satna</option>
                            <option value="Sidhi">Sidhi</option>
                            <option value="Singroli">Singroli</option>
                            <option value="Chhatarpur">Chhatarpur</option>
                            <option value="Damoh">Damoh</option>
                            <option value="Panna">Panna</option>
                            <option value="Sagar">Sagar</option>
                            <option value="Tikamgarh">Tikamgarh</option>
                            <option value="Shahdol">Shahdol</option>
                            <option value="Umaria">Umaria</option>
                            <option value="Dindori">Dindori</option>
                            <option value="Anuppur">Anuppur</option>
                            <option value="Dewas">Dewas</option>
                            <option value="Mandsaur">Mandsaur</option>
                            <option value="Neemuch">Neemuch</option>
                            <option value="Ratlam">Ratlam</option>
                            <option value="Shajapur">Shajapur</option>
                            <option value="Ujjain">Ujjain</option>

                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>Select Block Name /<br /> विकासखण्ड का चयन करे<span style="color: red">*</span></label>
                        <select name="ctl00$ContentBody$ctl03" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Agar">Agar</option>
                            <option value="Barod">Barod</option>
                            <option value="Nalkheda">Nalkheda</option>
                            <option value="Susner">Susner</option>
                            <option value="Alirajpur">Alirajpur</option>
                            <option value="Bhabra">Bhabra</option>
                            <option value="Katthiwara">Katthiwara</option>
                            <option value="Sondwa">Sondwa</option>
                            <option value="Udaygarh">Udaygarh</option>
                            <option value="Jobat">Jobat</option>
                            <option value="Anuppur">Anuppur</option>
                            <option value="Jaithari">Jaithari</option>
                            <option value="Kotma">Kotma</option>

                        </select>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Nagar Nigam Name (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Nagar Nigam Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>नगर निगम का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl05" type="text" class="form-control" autocomplete="off" placeholder="नगर निगम का नाम दर्ज करे " />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">

                            <label>Enter Nagar Nigam Code No. /<br /> नगर निगम कोड संख्या<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl06" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
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
                            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg">Save</button>
                            <a href="Mst_Loc_Assembly.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Nagar Nigam Details / नगर निगम विवरण</legend>
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
                                    <th>Sr.No. /<br />सरल  क्र.</th>
                                    <th>State Name /<br /> राज्य का नाम</th>
                                    <th>Division Name /<br /> संभाग का नाम</th>
                                    <th>District Name /<br /> जिला का नाम</th>
                                    <th>Block Name /<br /> विकासखण्ड का नाम</th>
                                    <th>Nagar Nigam Name</th>
                                    <th>नगर निगम का नाम</th>
                                    <th>Nagar Nigam Code No. /<br /> नगर निगम कोड संख्या</th>
                                    <th>Status(Active / InActive) /<br /> स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Madhya Pradesh</td>
                                    <td>Indore</td>
                                    <td>Indore</td>
                                    <td>Phanda</td>
                                    <td>Mandideep</td>
                                    <td>मंडीदीप</td>
                                    <td>24</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Madhya Pradesh</td>
                                    <td>Ujjain</td>
                                    <td>Ujjain</td>
                                    <td>Berasia</td>
                                    <td>Berasia</td>
                                    <td>बैरसिया</td>
                                    <td>42</td>
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

