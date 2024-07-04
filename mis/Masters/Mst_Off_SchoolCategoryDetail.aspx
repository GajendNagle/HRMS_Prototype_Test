<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_SchoolCategoryDetail.aspx.cs" Inherits="mis_Masters_Mst_SchoolCategoryDetail" %>

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
                        <li class="breadcrumb-item"><span>School Category Detail Master Data
                        </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से स्कूल की श्रेणी के विवरण का रजिस्ट्रेशन किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-7">
                    <h4 class="card-title">School Category Detail Master / स्कूल श्रेणी विवरण मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add School Category Detail / स्कूल श्रेणी विवरण जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select School Category
                                <br />
                                स्कूल श्रेणी का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control">
                                <option value="-select-">-select-</option>
                                <option value="Pre-Primary School">Pre-Primary School</option>
                                <option value="Primary School">Primary School</option>
                                <option value="Upper primary School">Upper primary School</option>
                                <option value="Secondary School">Secondary School</option>
                                <option value="Higher Secondary School">Higher Secondary School</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter School Category Detail
                                <br />
                                स्कूल श्रेणी विवरण दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="Enter School Category Detail" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Category Detail Code No.
                                <br />
                                श्रेणी विवरण कोड संख्या दर्ज करे<span style="color: red">*</span></label>
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
                                        <th>Sr.No. <br />
                                            सरल क्र.</th>
                                        <th>School Category <br />
                                            स्कूल श्रेणी</th>
                                        <th>School Category Detail <br />
                                            स्कूल श्रेणी विवरण</th>
                                        <th>Category Detail Code No. <br />
                                            श्रेणी विवरण कोड संख्या</th>
                                        <th>Status(Active/InActive) <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Primary School</td>
                                    <td>Primary only with grades 1 to 5 (PRY)</td>
                                    <td>1</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Upper primary School</td>
                                    <td>Upper Primary with grades 1 to 8 (PRY-UPR) </td>
                                    <td>2</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Higher Secondary School</td>
                                    <td>Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</td>
                                    <td>3</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Upper Primary School</td>
                                    <td>Upper Primary only with grades 6 to 8 (UPR)</td>
                                    <td>4</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Higher Secondary School </td>
                                    <td>Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</td>
                                    <td>5</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Secondary School</td>
                                    <td>Secondary with grades 1 to 10 (PRY-UPR-SEC)</td>
                                    <td>6</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Secondary School</td>
                                    <td>Secondary with grades 6 to 10 (UPR-SEC)</td>
                                    <td>7</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Secondary School</td>
                                    <td>Secondary only with grades 9 & 10 (SEC)</td>
                                    <td>8</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Higher Secondary School</td>
                                    <td>Higher Secondary with grades 9 to 12 (SEC-HSEC)</td>
                                    <td>10</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Higher Secondary School</td>
                                    <td>Hr. Sec. /Jr. College only with grades 11 & 12 (HSEC)</td>
                                    <td>11</td>
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

