﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HR_PayCommission.aspx.cs" Inherits="mis_HR_Mst_PayCommission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Pay Commission Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=HRMaster" title="click to go on">HR Masters</a></li>
                        <li class="breadcrumb-item active">Pay Commission Master</li>
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
                    <legend>Pay Commission Master</legend>
                    <div class="row form-group">
                        <div class="col-md-3">
                            <label>Pay Commission Type<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Grade Pay">Grade Pay</option>
                                <option value="Level Pay">Level Pay</option>

                            </select>
                        </div>


                        <div class="col-md-3">
                            <label>Pay Commission<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="Enter Pay Commission" />
                        </div>

                        <div class="col-md-3">
                            <label>Mapped With DA<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>

                            </select>
                        </div>

                        <div class="col-md-3">
                            <label>Effective Date<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$TextBox1" type="date" id="ContentBody_TextBox1" class="form-control" placeholder="Select Date..." />
                        </div>



                    </div>
                    <div class="row form-group">

                        <div class="col-md-3">
                            <label>Pay Commission Code No.<i style="color: red;">*</i></label>
                            <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                        </div>
                        <div class="col-md-3">
                            <label>Sequence  No.<i style="color: red;">*</i></label>
                            <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" placeholder="Enter Sequence No." onkeypress="return lettersOnly();" />
                        </div>
                        <div class="col-md-1 mt-3">
                            <label>IsActive<i style="color: red;">*</i></label>
                            <br />
                            <input id="ContentBody_ctl05" type="checkbox" name="ctl00$ContentBody$ctl05" checked="checked" />
                        </div>
                        <div class="col-md-1 mt-4 py-2">

                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                        </div>
                        <div class="col-md-1 mt-4 py-2">
                            <a href="Mst_HR_PayCommission.aspx" class="btn btn-block btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Pay Commission Details </legend>
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
                                        <th>Pay Commission Type</th>
                                        <th>Pay Commission</th>
                                        <th>Mapped With DA</th>

                                        <th>Effective Date</th>

                                        <th>Pay Commission Code No.</th>
                                        <th>Sequence No.</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Grade Pay</td>
                                        <td>6th Pay</td>
                                        <td>Yes</td>

                                        <td>01/04/2022</td>

                                        <td>06</td>
                                        <td>1</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Level Pay</td>
                                        <td>7th Pay</td>
                                        <td>Yes</td>

                                        <td>01/04/2022</td>
                                        <td>07</td>
                                        <td>2</td>

                                        <td>Active</td>
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
                                    <strong>Pay Commission Type</strong>

                                    <ul>
                                        <li>User should be able to select<strong> Pay Commission Type </strong>from dropdown. </li>
                                        <li>There are only two types of pay commission type, <strong>grade pay</strong> and <strong>level pay </strong>so, there is no need to make it a master. </li>
                                        <li>While creating the page, the pay commission type will be shown in static dropdown.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Pay Commission</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Pay Commission </strong>and the text field should accept <strong>Alphanumeric characters only.</strong> </li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Mapped With DA</strong>

                                    <ul>
                                        <li>User should be able to select<strong> Mapped With DA </strong>from dropdown. </li>
                                        <li>To map with <strong>Dearness Allowance</strong>, if <strong>Yes</strong> then it will be mapped to Dearness Allowance and if <strong>No</strong> then it will not be mapped to Dearness Allowance.</li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>Code No.</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Code Number</strong> and the text field should accept<strong> only numerical values</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Effective Date</strong>

                                    <ul>
                                        <li>User should be able to enter or select the <strong>Effective Date</strong>  and the text field should accept<strong> only date format</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Sequence No.</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Sequence Number</strong> and the text field should accept<strong> only numerical values</strong>.</li>
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

