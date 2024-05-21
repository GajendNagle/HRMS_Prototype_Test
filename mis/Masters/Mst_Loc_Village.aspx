﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Loc_Village.aspx.cs" Inherits="mis_Masters_LocationMasters_Mst_Village" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Village Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=LocationMaster" title="click to go on">Location Masters</a></li>
                        <li class="breadcrumb-item active">Village Master</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>Village Master</legend>

                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Division Name<span style="color: red">*</span></label>
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

                                <label class="font-bold">District Name<span style="color: red">*</span></label>
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

                                <label class="font-bold">Block Name<span style="color: red">*</span></label>
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

                                <label class="font-weight-bold">Gram Panchayat Name<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl03" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Amarpur">Amarpur</option>
                                    <option value="Ankia">Ankia</option>
                                    <option value="Bagda">Bagda</option>
                                    <option value="Rtua">Rtua</option>
                                    <option value="Lamakheda">Lamakheda</option>
                                    <option value="Eetkhedi">Eetkhedi</option>
                                    <option value="Pipariya">Pipariya</option>
                                    <option value="Phanda">Phanda</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">

                                <label class="font-weight-bold">Village Name (In English)<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Village Name " />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">

                                <label class="font-weight-bold">गाँव का नाम (हिंदी में)<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl05" type="text" class="form-control" autocomplete="off" placeholder="गाँव का नाम दर्ज करे" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">

                                <label class="font-weight-bold">Village Code No.<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl06" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">

                                <label class="font-weight-bold">Is Active</label>
                                <br />
                                <input id="ContentBody_ctl07" type="checkbox" name="ctl00$ContentBody$ctl07" checked="checked" />
                            </div>
                        </div>

                        <div class="col-md-3 mt-4">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_Loc_Village.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Village Details</legend>
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
                                        <th>Division Name</th>
                                        <th>District Name</th>
                                        <th>Block Name</th>
                                        <th>Gram Panchayat</th>
                                        <th>Village Name</th>
                                        <th>गाँव का नाम</th>
                                        <th>Village Code No.</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>Barasia</td>
                                        <td>Amarpur</td>
                                        <td>Amarpur</td>
                                        <td>अमरपुर</td>
                                        <td>337</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Dewas</td>
                                        <td>Dewas</td>
                                        <td>Dewas</td>
                                        <td>Patadi</td>
                                        <td>Patadi</td>
                                        <td>पतादी</td>
                                        <td>794</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>

               <%-- <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li>
                                    <strong>Division Name</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>District Name</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Block Name</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Block Name </strong>from the dropdown and the data will be populated from the <strong>Block Master</strong> and data cascade from <strong>Division Master</strong> and <strong>District Master</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Gram Panchayat</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Gram Panchayat Name </strong>from the dropdown and the data will be populated from the <strong>Gram Panchayat Master</strong>  and data cascade from <strong>State Master </strong>and <strong>Division Master</strong> and <strong>Block Master</strong> .</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Village  Name (In English)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Village  Name in English </strong>and the text field should accept <strong>only English letters.</strong> </li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>गाँव का नाम (हिंदी में)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Village  Name in Hindi</strong> and the text field should accept <strong>only Hindi letters.</strong> </li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>Code No.</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Code Number</strong> and the text field should accept<strong> only numerical values</strong>.</li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>Is Active (Checkbox)</strong>
                                    <ul>
                                        <li>If <strong>Is Active (Checkbox)</strong> is checked then need to show in every dependent <strong>Report / Dropdown Field / In Calculations</strong>.</li>
                                        <li><strong>Is Active checkbox</strong> is always be <strong>Checked/Active</strong>.</li>
                                        <li>The user must have the right to check or uncheck the Is Active Checkbox. </li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>Save</strong>
                                    <ul>
                                        <li>User should be able to click on save button.</li>
                                        <li>On save button click form field should be validated. </li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?"  "Do you want to save this record?").</li>
                                        <li>If click on <strong>Yes</strong> – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                        <li>If click on <strong>NO</strong> the data will not be saved and will return to the same page. </li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button. </li>
                                        <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>


                                <li>
                                    <strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>
                                    </ul>
                                </li>


                                <li>
                                    <strong>Action (Edit)</strong>
                                    <ul>
                                        <li>On Clicking The Edit Icon - A Pop Up Message Will Open -Popup Message - Do You Want To Update The Form?</li>
                                        <li>On Choose Yes Button, The Form Will Come In The Editable Format.</li>
                                        <li>After Editing The Form, On Clicking The Update Button,( A Pop Up Message Will Open. )- Message- Do You Want To Update.</li>
                                        <li>Choose YES - Popup Message - Data Updated Successfully.</li>
                                        <li>On Doing Cancel,</li>
                                        <li>The data will not be edited.</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Action (Delete)</strong>
                                    <ul>
                                        <li>If User Wants To Delete Any Data - Then User Can Clicking The Delete Icon</li>
                                        <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The Data?</li>
                                        <li>On Doing YES,</li>
                                        <li>The Data Will Be Deleted And The Popup Message Will Be Shown</li>
                                        <li>Popup Message - Data Deleted Successfully.</li>
                                        <li>On Doing Cancel,</li>
                                        <li>The data will not be deleted.</li>

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>--%>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

