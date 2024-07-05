<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HR_Designation.aspx.cs" Inherits="mis_HR_Mst_Designation" %>

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
                        <li class="breadcrumb-item">Designation Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से कर्मचारियों के पद का रजिस्ट्रेशन किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Designation Master / पदनाम मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Designation / पदनाम जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Class Name
                                <br />
                                कक्षा नाम का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Class-1">Class-1</option>
                                <option value="Class-2">Class-2</option>
                                <option value="Class-3">Class-3</option>
                                <option value="Class-4">Class-4</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Post Name
                                <br />
                                पोस्ट नाम का चयन करे<span style="color: red">*</span></label>
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
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Select Designation
                                <br />
                                पदनाम का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Regular">Ministry</option>
                                <option value="Sthai Karmi">Teaching</option>
                                <option value="Theka shramik">Executive</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Designation Name (In English)<br />
                                पदनाम दर्ज करें(अंग्रेज़ी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" autocomplete="off" placeholder="Enter Designation " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Designation Name (In Hindi)<br />
                                पदनाम दर्ज करें(हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" autocomplete="off" placeholder="पद का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Short Name
                                <br />
                                संक्षिप्त नाम दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Short Name" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Sequence No.
                                <br />
                                अनुक्रम संख्या दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl05" type="text" class="form-control" placeholder="Enter Sequence No." onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Designation Code No.
                                <br />
                                पदनाम कोड संख्या दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl06" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 ">
                        <div class="form-group">
                            <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                        <a href="Mst_OfficeRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Designation Details / पदनाम विवरण</legend>
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
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                            <br />
                                            सरल क्र.</th>
                                        <th>Class Name
                                            <br>
                                            कक्षा का नाम</th>
                                        <th>Post Name
                                            <br>
                                            पोस्ट का नाम</th>
                                        <th>Designation Type
                                            <br>
                                            पदनाम का प्रकार</th>
                                        <th>Designation Name(In English)<br />
                                            पदनाम (अंग्रेज़ी में)</th>
                                        <th>Designation Name(In Hindi)<br />
                                            पदनाम (हिंदी में)</th>
                                        <th>Short Name
                                            <br>
                                            संक्षिप्त नाम</th>
                                        <th>View Sequence
                                            <br>
                                            अनुक्रम देखें</th>
                                        <th>Designation Code No.
                                            <br>
                                            पदनाम कोड संख्या</th>
                                        <th>Status(Active/InActive)
                                            <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
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
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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

