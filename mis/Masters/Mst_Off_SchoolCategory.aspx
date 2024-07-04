<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_SchoolCategory.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_SchoolCategory" %>

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
                        <li class="breadcrumb-item"><span>School Category Master Data</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम  से स्कूल की श्रेणी का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">School Category Master / स्कूल श्रेणी मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add School Category /स्कूल श्रेणी जोड़े </legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Category Name (In English)<br />
                                श्रेणी का नाम दर्ज करे(अंग्रेज़ी में) <span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" autocomplete="off" placeholder="Enter Category Name " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Category Name (In Hindi)<br />
                                श्रेणी का नाम दर्ज करे(हिंदी में) <span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="श्रेणी का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter School Category Code No.<br />
                                स्कूल श्रेणी कोड संख्या दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
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
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-border">Save</button>
                            <a href="Mst_Loc_NagarPalika.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>School Category Details / स्कूल श्रेणी विवरण</legend>
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
                                            <th>Category Name(In English)<br>श्रेणी का  नाम (अंग्रेज़ी में)</th>
                                            <th>Category Name(In Hindi)<br />
                                                श्रेणी का  नाम (हिंदी में)</th>
                                            <th>School Category Code No.
                                                <br />
                                                स्कूल श्रेणी कोड संख्या</th>
                                            <th>Status(Active/InActive)
                                                <br />
                                                स्थिति (सक्रिय/निष्क्रिय)</th>
                                            <th>Action
                                        <br />
                                                कार्यवाहीं</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Primary Class</td>
                                        <td>प्राथमिक कक्षा</td>
                                        <td>01</td>
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Higher Secondary</td>
                                        <td>उच्च माध्यमिक</td>
                                        <td>02</td>
                                        <td>Active</td>
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

