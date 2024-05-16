<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_OfficeRegistration.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_OfficeRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Office Registration Master</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                    <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=OfficeMaster" title="click to go on">Office Masters</a></li>
                    <li class="breadcrumb-item active">Office Registration Master</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Office Registration Master</legend>

                <div class="row">
                    <div class="col-md-3 form-group">
                        <label class="font-bold">State Name <span style="color: red">*</span></label>
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
                    <div class="col-md-3">
                        <label class="font-bold">Division Name <span style="color: red">*</span></label>
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
                    <div class="col-md-3">
                        <label class="font-bold">District Name<span style="color: red">*</span></label>
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
                    <div class="col-md-3">
                        <label class="font-bold">Block Name<span style="color: red">*</span></label>
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

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Office Type<span style="color: red;"> *</span></label>
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
                            <label class="font-bold">Office Name (In English)<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl05" type="text" class="form-control" placeholder="Enter Office Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">कार्यालय नाम (हिंदी में)<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl06" type="text" class="form-control" placeholder="कार्यालय का नाम दर्ज करे" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Address (Line 1)<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl07" type="text" class="form-control" placeholder="Address (Line 1)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Address (Line 2)</label>
                            <input name="ctl00$ContentBody$ctl08" type="text" class="form-control" placeholder="Address (Line 2)" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl09" type="text" class="form-control" placeholder="Enter Pin Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Office In charge Name<span style="color: red;">*</span></label>

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
                            <label class="font-bold">Official Mail id<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl11" type="text" class="form-control" placeholder="Enter Official Mail id" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Office Contact No.</label>
                            <input name="ctl00$ContentBody$ctl12" type="text" class="form-control" placeholder="Enter Office Contact No." />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Office GST No<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl13" type="text" class="form-control" placeholder="Enter Office GST No" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Office Code<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ctl14" type="text" class="form-control" placeholder="Enter Office Code" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Effective Date<span style="color: red;">*</span></label>
                            <input type="date" class="form-control" data-date-format="dd/MM/yyyy" />
                        </div>
                    </div>



                </div>

            </fieldset>

            <fieldset>
                <legend>Location Details</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Latitude</label>
                            <input name="ctl00$ContentBody$ctl15" type="text" class="form-control" placeholder="Enter Latitude" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Longitude</label>
                            <input name="ctl00$ContentBody$ctl16" type="text" class="form-control" placeholder="Enter Longitude" />
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">

                            <label class="font-bold">Is Active</label>
                            <br />
                            <input id="ContentBody_ctl17" type="checkbox" name="ctl00$ContentBody$ctl17" checked="checked" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-rounded" />
                            <a href="Mst_OfficeRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Office Registration Details</legend>
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
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Office Type</th>
                                    <th>Office Name</th>
                                    <th>Office Code </th>
                                    <th>Office Incharge Name </th>
                                    <th>Status</th>
                                    <th>View More</th>
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

