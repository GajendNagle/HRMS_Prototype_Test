<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HR_Designation.aspx.cs" Inherits="mis_HR_Mst_Designation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Designation Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=HRMaster" title="click to go on">HR Masters</a></li>
                        <li class="breadcrumb-item active">Designation Master</li>
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
                    <legend>Designation Master</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Class Name <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Class-1">Class-1</option>
                                    <option value="Class-2">Class-2</option>
                                    <option value="Class-3">Class-3</option>
                                    <option value="Class-4">Class-4</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Post Name <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Regular/Permanent">Regular/Permanent</option>
                                    <option value="Fixed Employee">Fixed Employee</option>
                                    <option value="Contigent Employee">Contigent Employee</option>
                                    <option value="Samvida Employee">Samvida Employee</option>
                                    <option value="Theka Shramik">Theka Shramik</option>
                                    <option value="Outsource Employee">Outsource Employee</option>
                                    <option value="Deputation Employee">Deputation Employee</option>
                                    <option value="Contractual Employee">Contractual Employee</option>
                                    <option value="Daily Wage's Employee">Daily Wage's Employee</option>
                                    <option value="Dally Wages Federation">Dally Wages Federation</option>
                                    <option value="Job Rate Employee">Job Rate Employee</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Type<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Regular">Ministry</option>
                                    <option value="Sthai Karmi">Teaching</option>
                                    <option value="Theka shramik">Executive</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation  Name (In English)<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" autocomplete="off" placeholder="Enter Designation " />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>पदनाम (हिंदी में)<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" autocomplete="off" placeholder="पद का नाम दर्ज करे" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Short Name<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Short Name" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Sequence No.<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl05" type="text" class="form-control" placeholder="Enter Sequence No." onkeypress="return lettersOnly();" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Designation Code No.<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl06" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                            </div>
                        </div>
                        <div class="col-md-1 mt-3">
                            <div class="form-group">
                                <label>IsActive<span style="color: red">*</span></label>
                                <br />
                                <input id="ContentBody_ctl07" type="checkbox" name="ctl00$ContentBody$ctl07" checked="checked" />
                            </div>
                        </div>
                        <%--     <div class="col-md-1 mt-4">
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            </div>
                        </div>
                        <div class="col-md-1 mt-4">
                            <div class="form-group">
                                <a href="Mst_HR_Designation.aspx" class="btn btn-block btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>--%>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <button type="button" class=" Alert-Save btn btn-success btn-rounded">Save</button>
                                <a href="Mst_DepartmentWiseLeaveApproval.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Designation Master Details </legend>
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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Class Name</th>
                                        <th>Post Name</th>
                                        <th>Designation Type</th>
                                        <th>Designation Name</th>
                                        <th>पदनाम </th>
                                        <th>Short Name</th>
                                        <th>View Sequence </th>
                                        <th>Designation Code No. </th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Class-1  </td>
                                        <td>Regular </td>
                                        <td>Ministry </td>
                                        <td>General Manager</td>
                                        <td>महाप्रबंधक</td>
                                        <td>GM</td>
                                        <td>1</td>
                                        <td>66444</td>

                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Class-2 </td>
                                        <td>Samvidha </td>
                                        <td>Executive </td>
                                        <td>Manager </td>
                                        <td>प्रबंधक</td>
                                        <td>M</td>
                                        <td>2</td>
                                        <td>84451</td>
                                        <td>InActive</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Class-2 </td>
                                        <td>Commissioner</td>
                                        <td>Executive</td>
                                        <td>Manager</td>
                                        <td>प्रबंधक</td>
                                        <td>M</td>
                                        <td>3</td>
                                        <td>45655</td>
                                        <td>InActive</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--<fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li>
                                    <strong>Class Name</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Class Name </strong>from the dropdown and the data will be populated from the <strong>Class Master</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Post  Name</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Post  Name </strong>from the dropdown and the data will be populated from the <strong>Post  Master</strong>.</li>
                                    </ul>

                                </li>
                                 <li>
                                    <strong>Designation Type</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Designation Type</strong> from the dropdown and the data will be populated from the <strong>Designation Type Master</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Designation Name (In English)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Designation Name  in English </strong>and the text field should accept <strong>only English letters.</strong> </li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>पदनाम  का नाम (हिंदी में)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Designation Name  in Hindi</strong> and the text field should accept <strong>only Hindi letters.</strong> </li>
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

