﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HR_PayCommission.aspx.cs" Inherits="mis_HR_Mst_PayCommission" %>

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
                            <a href="#HRMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>HR Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">Pay Commission Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                 इस पेज के माध्यम से कर्मचारियों को देय pay commission का रजिस्ट्रेशन किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Pay Commission Master / वेतन आयोग मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Pay Commission / वेतन आयोग जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Pay Commission Type /<br />
                                वेतन आयोग का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Grade Pay">Grade Pay</option>
                                <option value="Level Pay">Level Pay</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Pay Commission /<br />
                                वेतन आयोग दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="Enter Pay Commission" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Mapped With DA /<br />डीए के साथ मैप का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Effective Date /<br />
                                प्रभावी तिथि दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$TextBox1" type="date" id="ContentBody_TextBox1" class="form-control" placeholder="Select Date..." />
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Enter Pay Commission Code No. /<br />
                            वेतन आयोग कोड संख्या दर्ज करें<span style="color: red;">*</span></label>
                        <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                    </div>
                    <div class="col-md-3">
                        <label>
                            Enter Sequence  No. /<br />
                            अनुक्रम संख्या दर्ज करें<span style="color: red;">*</span></label>
                        <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" placeholder="Enter Sequence No." onkeypress="return lettersOnly();" />
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
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                        <a href="Mst_OfficeRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Pay Commission Details /वेतन आयोग विवरण</legend>
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
                                    <th>Sr.No. /<br />सरल क्र.
                                    </th>
                                    <th>Pay Commission Type /<br />वेतन आयोग प्रकार
                                    </th>
                                    <th>Pay Commission /<br />वेतन आयोग
                                    </th>
                                    <th>Mapped With DA /<br />डीए के साथ मैप
                                    </th>
                                    <th>Effective Date /<br />प्रभावी तिथि
                                    </th>
                                    <th>Pay Commission Code No. /<br />वेतन आयोग कोड संख्या
                                    </th>
                                    <th>Sequence No. /<br />अनुक्रम संख्या
                                    </th>
                                    <th>Status(Active/InActive) /<br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
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
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
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

