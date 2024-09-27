<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MileStoneReport.aspx.cs" Inherits="mis_Masters_MileStoneReport" %>

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
                        <li class="breadcrumb-item">MileStone Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-9 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Milestone Report / माइल स्टोन रिपोर्ट
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
                <div class="col-xl-3 col-md-12 text-end">
                    <a role="button" href="Mst_MilestoneCategory.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back</a>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Milestone Report / माइल स्टोन रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>
                                Select MileStone Type
            <br />
                                माइल स्टोन प्रकार का चयन करे<span style="color: red">*</span></label>
                            <select id="ddlMilestoneType" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Technical </option>
                                <option value="2">Financial</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>
                                Enter Milestone Name (in English)
                                <br />
                                माइलस्टोन का नाम अंग्रेजी में दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Milestone Name" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>
                                Enter Milestone Name (in Hindi)
                        <br />
                                माइलस्टोन का नाम हिंदी में दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="माइलस्टोन का नाम हिंदी में दर्ज करें" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="col-md-12">
                    <button type="button" class="btn btn-outline-success btn-border  w-lg"
                        onclick="showHideRemarkView()">
                        Search</button>
                    <a href="Mst_MileStoneReport.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none">
                <legend>Milestone Details / माइलस्टोन विवरण</legend>
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
                                        <%-- <th>Milestone Subcategory<br />
                               माइलस्टोन की उपश्रेणी</th>--%>
                                        <th>Status(Active/InActive)
                                            <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
    <br />
                                            कार्यवाहीं</th>
                                        <%--<th>View Report</th>--%>
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

            <fieldset id="table2" style="display: none">
                <legend>Milestone Details / माइलस्टोन विवरण</legend>
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
                                        <%-- <th>Milestone Subcategory<br />
                               माइलस्टोन की उपश्रेणी</th>--%>
                                        <th>Status(Active/InActive)
                                            <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
    <br />
                                            कार्यवाहीं</th>
                                        <%--<th>View Report</th>--%>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Technical</td>
                                        <td>Planning</td>
                                        <%--<td>Building Repair</td>--%>
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                        <%--<td><a href="MileStoneReport.aspx"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></a></td>--%>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Technical</td>
                                        <td>Structural Framing</td>
                                        <%--<td>Hand Pump Mining</td>--%>
                                        <td>Active</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>

                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Financial</td>
                                        <td>Establishing Fund</td>
                                        <%--<td>Hand Pump Mining</td>--%>
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

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlMilestoneType = document.getElementById('ddlMilestoneType');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlMilestoneType.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";
                table2.style.display = "none"
            }
            else if (ddlMilestoneType.value == "2") {
                table2.style.display = "block";
                table1.style.display = "none";
            }
            else {
                table1.style.display = "none";
                table2.style.display = "none";
            }
        }
    </script>
</asp:Content>

