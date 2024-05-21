<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Loc_Division.aspx.cs" Inherits="mis_Master_DivisionMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Division Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=LocationMaster" title="click to go on">Location Masters</a></li>
                        <li class="breadcrumb-item active">Division Master</li>
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
                    <legend>Division Master</legend>

                    <div class="row">
                        <div class="col-md-3 form-group">
                            <label class="font-bold">State Name <span style="color: red">*</span></label>
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
                                <option value="Bihar">Bihar</option>
                                <option value="Himachal">Himachal </option>
                                <option value="Kerala">Kerala</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Orissa">Orissa</option>

                            </select>
                        </div>
                        <div class="col-md-3">
                            <label class="font-weight-bold">Division Name (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="Enter Division Name" />
                        </div>
                        <div class="col-md-3">
                            <label class="font-weight-bold">संभाग का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" autocomplete="off" placeholder="संभाग का नाम दर्ज करे" />
                        </div>
                        <div class="col-md-2">
                            <label class="font-weight-bold">Division Code No.<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" placeholder="Enter Code No." />
                        </div>
                        <div class="col-md-1">
                            <label class="font-weight-bold">IsActive</label>
                            <br />
                            <input id="ContentBody_ctl04" type="checkbox" name="ctl00$ContentBody$ctl04" checked="checked" />
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md-3 form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_Loc_Division.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Division Details</legend>

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
                                        <th>State Name</th>
                                        <th>Division Name</th>
                                        <th>संभाग का नाम</th>
                                        <th> Division Code No.</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Madhya Pradesh</td>
                                        <td>Bhopal</td>
                                        <td>भोपाल</td>
                                        <td>01</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Madhya Pradesh</td>
                                        <td>Gwalior</td>
                                        <td>ग्वालियर</td>
                                        <td>02</td>
                                        <td>InActive</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--   <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li>
                                    <strong>State Name</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>State Name </strong>from the dropdown and the data will be populated from the <strong>State Master</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Division Name (In English)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Division Name in English </strong>and the text field should accept <strong>only English letters.</strong> </li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>संभाग का नाम (हिंदी में)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Division Name in Hindi</strong> and the text field should accept <strong>only Hindi letters.</strong> </li>
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
                                    <strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
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

