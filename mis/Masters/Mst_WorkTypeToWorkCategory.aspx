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
                        <li class="breadcrumb-item"><a href="#developmentMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">Civil Construction Master Data
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
                                Select Work Type Name
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
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="document.getElementById('table1').style.display='table'">Search</button>
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
                                        <th>
                                            <div class="nowrap">
                                                <input type="checkbox" style="font-size: small;" id="checkAll" onclick="toggleAll(this)">
                                                <label for="checkAll">All</label>
                                            </div>
                                        </th>
                                        <th>Work Subcategory Name<br />
                                            कार्य उपश्रेणी का नाम</th>

                                        <th>View Report
                 <br />
                                        </th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td scope="col">
                                        <input type="checkbox" id="CheckBox1" />
                                    </td>
                                    <td>भवन सुधार कार्य</td>
                                    <td class="nowrap"><span class="Alert-View btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target="#firsttimeModel"></i></span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td scope="col">
                                        <input type="checkbox" id="CheckBox2" />
                                    </td>
                                    <td>नया भवन निर्माण कार्य</td>
                                    <td class="nowrap"><span class="Alert-View btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target="#firsttimeModel"></i></span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td scope="col">
                                        <input type="checkbox" id="CheckBox3" />
                                    </td>
                                    <td>भवन मरम्मत कार्य</td>
                                    <td class="nowrap"><span class="Alert-View btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target="#firsttimeModel"></i></span></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>


            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" id="firsttimeModel" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV">
                            <h4 class="modal-title" id="myLargeModalLabel1"></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Work Subcategory Details / कार्य उपश्रेणी विवरण</legend>

                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <label>
                                            Work Subcategory Name
                                           <br />
                                            कार्य उपश्रेणी का नाम
                                        </label>
                                        <select class="select2" onchange="showHideRemarkView()" id="ddlSubcategory">
                                            <option>Select</option>
                                            <option value="1">इमारत मरम्मत</option>
                                            <option value="2">हेंडपंप खनन</option>
                                            <option value="3">CC सड़क निर्माण</option>
                                        </select>

                                    </div>
                                </div>

                                <div class="row form-group" id="modaltable" style="display: none">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-center">
                                                <thead class="nowrap">
                                                    <tr>
                                                        <th>Sr.No.
                                                            <br />
                                                            क्रमांक</th>

                                                        <th>Work Subcategory Name<br />
                                                            कार्य उपश्रेणी का नाम</th>

                                                        <th>Action
                                                            <br />
                                                            कार्यवाही
                                                        </th>
                                                    </tr>
                                                </thead>

                                                <tr>
                                                    <td>1</td>
                                                    <td>इमारत मरम्मत</td>
                                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="row form-group" id="modaltable1" style="display: none">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-center">
                                                <thead class="nowrap">
                                                    <tr>
                                                        <th>Sr.No.
                            <br />
                                                            क्रमांक</th>

                                                        <th>Work Subcategory Name<br />
                                                            कार्य उपश्रेणी का नाम</th>

                                                        <th>Action
                            <br />
                                                            कार्यवाही
                                                        </th>
                                                    </tr>
                                                </thead>

                                                <tr>
                                                    <td>1</td>
                                                    <td>हेंडपंप खनन</td>
                                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function toggleAll(source) {
            var checkboxes = document.querySelectorAll('table input[type="checkbox"]');
            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i] != source)
                    checkboxes[i].checked = source.checked;
            }
        }
    </script>

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlSubcategory = document.getElementById('ddlSubcategory');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlSubcategory.value == "1") {
                //remarkView.style.display = "initial";
                modaltable.style.display = "block";
                modaltable1.style.display = "none";
            }
            else if (ddlSubcategory.value == "2") {
                modaltable1.style.display = "block";
                modaltable.style.display = "none";
            }
            else {
                modaltable.style.display = "none";
                modaltable1.style.display = "none";
            }
        }
    </script>

</asp:Content>

