﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>

<script runat="server">

</script>

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
                            <span>Master Data</span>
                        </li>
                        <li class="breadcrumb-item">Development Master Data</li>
                        <li class="breadcrumb-item">Work Subcategory Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए कार्य उपश्रेणी को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Work Subcategory Master / कार्य उपश्रेणी मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Add Work Subcategory / कार्य उपश्रेणी जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Work Category /
             <br />
                                कार्य की श्रेणी का चयन करें<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">स्कूल मरम्मत/निर्माण</option>
                                <option value="B">पेयजल व्यवस्था</option>
                                <option value="C">स्कूल मार्ग निर्माण</option>
                                <option value="D">अन्य कार्य</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Work Subcategory
                                <br />
                                (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Work Subcategory" onkeypress="return hindiOnly();" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                कार्य की उपश्रेणी दर्ज करें
                                <br />
                                (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="कार्य की उपश्रेणी दर्ज करें" onkeypress="return hindiOnly();" />
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
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                        <a href="Mst_WorkSubcategory.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Work Subcategory Details / कार्य उपश्रेणी विवरण</legend>
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
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <tr>
                                    <th>Sr.No. /<br />
                                        क्रमांक</th>
                                    <th>Work Category /
                                        <br />
                                        कार्य की श्रेणी
                                    </th>
                                    <th>Work Subcategory </th>
                                    <th>कार्य की उपश्रेणी </th>
                                    <%--   <th>State Code No. /<br />
                                        राज्य कोड संख्या</th>--%>
                                    <th>Status(Active/InActive)
       <br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>School Repair/Construction</td>
                                    <td>Building Repair</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Drinking Water System</td>
                                    <td>Hand Pump Mining</td>
                                    <td>हेंडपंप खनन</td>
                                    <td>InActive</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Drinking Water System</td>
                                    <td>Water Tank construction</td>
                                    <td>पानी की टंकी निर्माण</td>
                                    <td>InActive</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>School Road Construction</td>
                                    <td>CC Road Construction</td>
                                    <td>CC Road निर्माण</td>
                                    <td>InActive</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
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
