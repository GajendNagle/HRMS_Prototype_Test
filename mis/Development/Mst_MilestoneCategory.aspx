<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_MilestoneCategory.aspx.cs" Inherits="mis_Masters_Mst_MilestoneCategory" %>

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
                            <a href="#developmentMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">MileStone Category Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से माइल स्टोन को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-9 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            MileStone Category / माइल स्टोन श्रेणी
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
               <%-- <div class="col-xl-3 col-md-12 text-end">
                    <a role="button" href="MileStoneReport.aspx" class="btn btn-primary rounded-pill">View Report</a>
                </div>--%>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Add MileStone Category / माइल स्टोन श्रेणी जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select MileStone Type
     <br />
                                माइल स्टोन प्रकार का चयन करे<span style="color: red">*</span></label>
                            <select id="Project" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">Technical </option>
                                <option value="B">Financial</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Milestone Category
                                <br />
                                माइलस्टोन की श्रेणी दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Milestone Category" />
                        </div>
                    </div>

                    <%-- <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Milestone Subcategory
                                <br />
                                माइलस्टोन की उपश्रेणी दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Milestone Category" />
                        </div>
                    </div>--%>

                    <div class="col-md-3">
                        <div class="form-group">
                            <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
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
                        <button type="button" class=" btn btn-outline-success btn-border  w-lg">Save</button>
                        <a href="Mst_MilestoneCategory.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>

            </fieldset>

            <fieldset>
                <legend>Milestone Category Details / माइलस्टोन श्रेणी विवरण</legend>
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
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
             <br />
                                            क्रमांक</th>
                                        <th>Milestone Type<br />
                                            माइलस्टोन का प्रकार</th>
                                        <th>Milestone Category<br />
                                            माइलस्टोन की श्रेणी</th>
                                        <th>Status(Active/InActive)
             <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
                 <br />
                                            कार्यवाहीं</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Technical</td>
                                        <td>Planning</td>
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Technical</td>
                                        <td>Structural Framing</td>
                                       
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>

                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Financial</td>
                                        <td>Establishing Fund</td>
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>

                                    </tr>
                                </thead>
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

