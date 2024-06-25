<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_BankMaster.aspx.cs" Inherits="mis_Masters_Mst_BankMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

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
                                <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#BankMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                    <span>Bank Master </span></a>
                            </li>
                            <li class="breadcrumb-item">Bank Master</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-8">
                        <h4 class="card-title">Bank Master /
बैंक मास्टर</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">

                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>Bank Master / बैंक मास्टर</legend>
                    <div class="row ">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Bank Name<br />
                                    बैंक का नाम दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Bank Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter IFSC Code<br />
                                    आईएफएससी कोड दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter IFSC Code" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Branch Name<br />
                                    शाखा का नाम दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Branch Name" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Branch Code<br />
                                    शाखा कोड दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Branch Code" />
                            </div>
                        </div>

                        <%--<div class="col-md-1">
                            <div class="form-group">
                                <label>IsActive<i style="color: red;">*</i></label>
                                <br />
                                <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                            </div>
                        </div>--%>

                        <div class="col-md-3 ms-4">
                            <div class="form-group">
                                <label class="form-check-label">
                                    <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                                    Status
						<small>(Active/InActive)</small><br>
                                    स्थिति (सक्रिय/निष्क्रिय)
                                </label>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn   btn-success btn-border w-lg">Save</button>
                                <a href="Mst_BankMaster.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%-- <div id="bankdetail" runat="server" visible="false">--%>
                <fieldset>
                    <legend>Directory Details / 
                       निर्देशिका विवरण</legend>
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
                            <div class="table-responsive ">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Bank Name<br />
                                            बैंक का नाम</th>
                                        <th>IFSC Code<br />
                                            आईएफएससी कोड</th>
                                        <th>Branch Name<br />
                                            शाखा का नाम</th>
                                        <th>Branch Code<br />
                                            शाखा कोड</th>
                                        <th>Status(Active / InActive)
                                            <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action</th>

                                    </tr>
                                    <tr>
                                        <td rowspan="2">1</td>
                                        <td rowspan="2">State Bank of India</td>
                                        <td>SBIN0001308</td>
                                        <td>T.T Nagar Bhopal</td>
                                        <td>001308</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>SBIN0051467</td>
                                        <td>AYODHYA BY PASS ROAD,BHOPAL</td>
                                        <td>051467</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2">3</td>
                                        <td rowspan="2">Punjab National Bank</td>
                                        <td>PUNB0064920</td>
                                        <td>Bhopal</td>
                                        <td>064920</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>PUNB0093210</td>
                                        <td>ARERA COLONY,BHOPAL</td>
                                        <td>093210</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>UCO Bank</td>
                                        <td>UCBA0000136</td>
                                        <td>BHOPAL MAIN BRANCH,BHOPAL</td>
                                        <td>000136</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <%--  </div>--%>
                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li>
                                    <strong>Bank Name</strong>
                                    <ul>
                                        <li>User should be able to enter the <strong>Bank Name </strong>and the text field should accept <strong>Only Alphabet.</strong></li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>IFSC Code</strong>
                                    <ul>
                                        <li>User should be able to enter the <strong>IFSC Code </strong>and the text field should accept <strong>Only Numeric and Alphabet.</strong>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Branch Name</strong>
                                    <ul>
                                        <li>User should be able to enter the <strong>Branch Name </strong>and the text field should accept <strong>Only Alphabet.</strong>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Branch Code</strong>
                                    <ul>
                                        <li>User should be able to enter the <strong>Branch Code</strong>and the text field should accept <strong>Only Numeric.</strong> </li>
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

