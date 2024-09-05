<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_WorkTypeToWorkCategory.aspx.cs" Inherits="mis_Masters_Mst_WorkTypeToWorkCategory" %>

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
                        <li class="breadcrumb-item"><a href="#developmentMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">Development Master Data
                        </a></li>
                        <li class="breadcrumb-item">Work Type To Work Category Mapping</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए कार्य श्रेणी को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Work Type To Work Category Mapping / कार्य प्रकार से कार्य श्रेणी मैपिंग
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
            </div>
        </div>

        <div class="card-body">

            <fieldset>
                <legend>Add Work Type To Work Category Mapping / कार्य प्रकार से कार्य श्रेणी मैपिंग जोड़े</legend>

                <div class="row align-items-end">
                   
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Work Type
    <br />
                                कार्य प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="select2">
                                <option>Select</option>
                                <option>स्कूल निर्माण</option>
                                <option>सी.सी रोड कार्य</option>
                                <option>हैंडपंप कार्य</option>

                            </select>
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
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg" onclick="document.getElementById('table1').style.display='table'">Search</button>
                        <a href="Mst_WorkTypeToWorkCategory.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>

            </fieldset>

            <fieldset id="table1" style="display: none;">
                <legend>Work Type Details / कार्य प्रकार का विवरण</legend>
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
                                        <th>Work Type (In English)<br />
                                            कार्य का प्रकार(अंग्रेजी में)</th>
                                        <th>Work Type (In Hindi)<br />
                                            कार्य का प्रकार(हिंदी में)</th>
                                        <th>Status(Active/InActive)
             <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
                 <br />
                                            कार्यवाहीं</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>School/Construction</td>
                                        <td>स्कूल मरम्मत/निर्माण</td>
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>C.C road work</td>
                                        <td>सी.सी रोड कार्य</td>
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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

