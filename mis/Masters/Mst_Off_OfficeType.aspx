<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_OfficeType.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_OfficeType" %>

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
                        <li class="breadcrumb-item"><span>Office Type Master Data</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से  ऑफिस का टाइप स्कूल, इंस्टिट्यूट या ऑफिस है सर्वप्रथम उसको सेलेक्ट किया जाता है उसके उपरांत  ऑफिस का लेवल सलेक्ट करें स्टेट,  डिविजन, डिस्टिक, ब्लॉक, डीडीयू,  जेएसके और स्कूल सिलेक्ट करने के उपरांत ऑफिस का नाम इंग्लिश और हिंदी में  प्रविष्टि कर उसका कोर्ट प्रविष्टि कर सेव किया जाता है जिससे आपका नया ऑफिस मास्टर में दिखने लग जाएगा, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Office Type Master / ऑफिस टाइप मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="bg"></span>
            <fieldset>
                <legend>Add Office Type / कार्यालय प्रकार जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>OSI Type / ओएसआई प्रकार<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control form-select">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Office</asp:ListItem>
                                <asp:ListItem Value="2">School</asp:ListItem>
                                <asp:ListItem Value="3">Institute</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type Level / कार्यालय प्रकार स्तर<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control form-select">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">1-State Level</asp:ListItem>
                                <asp:ListItem Value="2">2-Division Level</asp:ListItem>
                                <asp:ListItem Value="3">3-District Level</asp:ListItem>
                                <asp:ListItem Value="3">4-Block Level</asp:ListItem>
                                <asp:ListItem Value="3">5-DDO </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type Name  (In English)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Office Type" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>कार्यालय प्रकार का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="कार्यालय का प्रकार दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type Code No. / ऑफिस प्रकार कोड संख्या<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Code Number" onkeypress="return lettersOnly();" />
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
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-border">Save</button>
                            <a href="Mst_Loc_NagarPalika.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Office Type Details / कार्यालय प्रकार विवरण</legend>
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
                                    <th>Sr.No. / सरल क्र.</th>
                                    <th>OSI Type / ओएसआई के प्रकार</th>
                                    <th>OSI Type Level / ओएसआई प्रकार स्तर</th>
                                    <th>Office Type Name</th>
                                    <th>कार्यालय प्रकार का नाम</th>
                                    <th>Office Type Code / ऑफिस प्रकार कोड</th>
                                    <th>Status(Active/InActive) /स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>School</td>
                                    <td>School</td>
                                    <td>Test Office</td>
                                    <td>टेस्ट डाटा</td>
                                    <td>54</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Office</td>
                                    <td>State Level</td>
                                    <td>New Office Open Soon</td>
                                    <td>वस</td>
                                    <td>66</td>
                                    <td>InActive</td>
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

