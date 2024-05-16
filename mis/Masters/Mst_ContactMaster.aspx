﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_ContactMaster.aspx.cs" Inherits="mis_HoLevel_Mst_ContactMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Directory Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=OfficeMaster" title="click to go on">Office Masters</a></li>
                        <li class="breadcrumb-item active">Directory Master</li>
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
                    <legend>Directory Master</legend>
                    <div class="row ">
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label class="font-bold">District Name<span style="color: red">*</span></label>
                                <select class="form-control select2">
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
                                <label>Office Type<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Head Office</option>
                                    <option value="Bhopal">District Office</option>
                                    <option value="Bhopal">Division Office</option>
                                    <option value="Bhopal">Block Office</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Type of Post<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="DEO">DEO</option>
                                    <option value="Bhopal">District Project coordinator</option>
                                    <option value="Bhopal">District IT coordinator</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Name<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Name" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Email Address<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Email Address" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Mobile No.<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Mobile No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Landline No.<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Landline No." />
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label>IsActive<i style="color: red;">*</i></label>
                                <br />
                                <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                            </div>
                        </div>
                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn   btn-success btn-rounded">Save</button>
                                <a href="Mst_ContactUs.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Directory Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive table-bordered">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>District</th>
                                        <th>Office Type</th>
                                        <th>Type of Post</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Mobile No.</th>
                                        <th>Landline No.</th>
                                        <th>Status</th>
                                        <th>Action</th>

                                    </tr>
                                    <tr>
                                        <td rowspan="3">1</td>
                                        <td rowspan="3">Bhopal</td>
                                        <td rowspan="3">Head Office</td>
                                        <td>DEO</td>
                                        <td>Aman Patidar</td>
                                        <td>aman@gmail.com</td>
                                        <td>9876543215</td>
                                        <td>0755-323658</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>District IT coordinator</td>
                                        <td>Ankit Gurjar</td>
                                        <td>Ankit@gmail.com</td>
                                        <td>5959589654</td>
                                        <td>0755-899989</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>

                                        <td>District IT coordinator</td>
                                        <td>Subhas Morya</td>
                                        <td>Shubh@gmail.com</td>
                                        <td>9895652145</td>
                                        <td>0755-565565</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2">2</td>
                                        <td rowspan="2">Indore</td>
                                        <td rowspan="2">District Office</td>
                                        <td>District IT coordinator</td>
                                        <td>Rohan singh</td>
                                        <td>Rohan@gmail.com</td>
                                        <td>8523654782</td>
                                        <td>0731-856354</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>District Project coordinator</td>
                                        <td>Abhishek Rajput</td>
                                        <td>Abhi@gmail.com</td>
                                        <td>6532659852</td>
                                        <td>0731-741582</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li>
                                    <strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>State Master </strong>and <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Office Type</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Office Type </strong>from the dropdown and the data will be populated from the <strong>Office Master</strong>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Type of Post</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Type of Post </strong>from the dropdown and the data will be populated from the <strong>Post Master</strong>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Landline No.</strong>
                                    <ul>
                                        <li>User should be able to enter the <strong>Landline No.</strong>and the text field should accept <strong>Only Numeric</strong> </li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Mobile No.</strong>
                                    <ul>
                                        <li>User should be able to enter the <strong>Mobile No.</strong>and the text field should accept <strong>Only Numeric</strong> </li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Email Address</strong>
                                    <ul>
                                        <li>User should be able to enter the <strong>Email Address</strong>and the text field should accept <strong>only Email Formate</strong> </li>
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
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

