<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Loc_Habitation.aspx.cs" Inherits="mis_Masters_Location_Masters_Mst_Habitation" %>

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
                            <a href="#LocationMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Location Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Habitation Master Date</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से बसाहट को  Registered  किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Habitation Master / बसाहट मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Habitation / बसाहट जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Division Name /<br />
                                संभाग का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
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
                            <label>Select District Name /<br />
                                जिला का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl01" class="form-control select2">
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
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Block Name /<br />
                                विकासखण्ड का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Gram Panchayat Name/<br />
                                ग्राम पंचायत का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl03" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Amarpur">Amarpur</option>
                                <option value="Ankia">Ankia</option>
                                <option value="Bagda">Bagda</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Barela">Barela</option>
                                <option value="Bichhiya">Bichhiya</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Gadarwara">Gadarwara</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Katni">Katni</option>
                                <option value="Mandla">Mandla</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Seoni">Seoni</option>
                                <option value="Shahpura">Shahpura</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Village Name /<br />
                                गाँव का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl04" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Amarpur">Amarpur</option>
                                <option value="Ankia">Ankia</option>
                                <option value="Bagda">Bagda</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Barela">Barela</option>
                                <option value="Bichhiya">Bichhiya</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Gadarwara">Gadarwara</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Katni">Katni</option>
                                <option value="Mandla">Mandla</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Seoni">Seoni</option>
                                <option value="Shahpura">Shahpura</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Habitation Name (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl05" type="text" class="form-control" autocomplete="off" placeholder="Enter Habitation Name " />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>बसाहट का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl06" type="text" class="form-control" autocomplete="off" placeholder="बसाहट का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Habitation Code No./ बसाहट का कोड दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl07" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
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
                            <button type="button" class="Alert-Confirmation btn btn-success btn-border">Save</button>
                            <a href="Mst_Loc_NagarPalika.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Habitation Details /बसाहट विवरण</legend>
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
                            <table class="table">
                                <tr>
                                    <th>Sr.No. /<br />
                                        सरल क्र.</th>
                                    <th>Division Name /<br />
                                        संभाग का नाम</th>
                                    <th>District Name /<br />
                                        जिला का नाम</th>
                                    <th>Block Name /<br />
                                        विकासखण्ड का नाम</th>
                                    <th>Gram Panchayat Name /<br />
                                        ग्राम पंचायत का नाम</th>
                                    <th>Village Name /<br />
                                        गाँव का नाम</th>
                                    <th>Habitation Name</th>
                                    <th>बसाहट का नाम</th>
                                    <th>Habitation Code No. /<br />
                                        बसाहट कोड संख्या</th>
                                    <th>Status(Active/InActive) /<br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td>Bhopal</td>
                                    <td>Barasia</td>
                                    <td>Amarpur</td>
                                    <td>Amarpur</td>
                                    <td>Geetanjali ward</td>
                                    <td>गीतांजलि वार्ड</td>
                                    <td>01</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>

                                    <td>Dewas</td>
                                    <td>Dewas</td>
                                    <td>Dewas</td>
                                    <td>Patadi</td>
                                    <td>Patadi</td>
                                    <td>Ward no 2</td>
                                    <td>वार्ड नंबर २</td>
                                    <td>02</td>
                                    <td>Active</td>
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

