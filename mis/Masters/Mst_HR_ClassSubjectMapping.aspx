<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HR_ClassSubjectMapping.aspx.cs" Inherits="mis_HR_Mst_ClassSubjectMapping" %>

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
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Office Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Class To Subject Mapping Master Data</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से सम्बंधित क्लास से विषय की मैपिंग की जाती हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Class To Subject Mapping Master /<br />
                        कक्षा से विषय मानचित्रण मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Class To Subject Mapping / कक्षा से विषय मानचित्रण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Class Name /<br />
                                कक्षा का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Class- 1st">Class- 1st</option>
                                <option value="Class- 2nd">Class- 2nd</option>
                                <option value="Class- 3rd">Class- 3rd</option>
                                <option value="Class- 4th">Class- 4th</option>
                                <option value="Class- 5th">Class- 5th</option>
                                <option value="Class- 6th">Class- 6th</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Subject Name /<br />
                                विषय का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="English">English</option>
                                <option value="Science">Science</option>
                                <option value="Mathes">Mathes</option>
                                <option value="Social Science">Social Science</option>
                                <option value="Hindi">Hindi</option>
                                <option value="Sanskrit">Sanskrit</option>
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
                <legend>Class To Subject Mapping Details / कक्षा से विषय मानचित्रण विवरण</legend>
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
                                    <th>Sr.No. /<br />
                                        सरल क्र.</th>
                                    <th>Class Name /<br>
                                        कक्षा का नाम</th>
                                    <th>Subject Name /<br />
                                        विषय का नाम<br>
                                    </th>
                                    <th>Effective Date /<br>
                                        प्रभावी तिथि</th>
                                    <th>Status(Active/InActive) /<br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Class - 1st</td>
                                    <td>English</td>
                                    <td>01/04/2022</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Class- 6th </td>
                                    <td>Science</td>
                                    <td>01/04/2022</td>
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

