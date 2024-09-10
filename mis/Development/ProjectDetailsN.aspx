<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectDetailsN.aspx.cs" Inherits="mis_Development_ProjectDetailsN" %>

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
                        <%--   <li class="breadcrumb-item">
                 <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
             </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Project Details / परियोजना विवरण
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
                <legend>Project Details / परियोजना विवरण</legend>

                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Work Category
             <br />
                                कार्य श्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>स्कूल मरम्मत/निर्माण</option>
                                <option>पेयजल व्यवस्था</option>
                                <option>स्कूल मार्ग निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Work Subcategory
    <br />
                                कार्य उपश्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>इमारत मरम्मत</option>
                                <option>हेंडपंप खनन</option>
                                <option>CC सड़क निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Status
                                <br />
                                स्थिति<span style="color: red">*</span></label>

                            <select class="form-control select2" id="ddlStatus">
                                <option>Select</option>
                                <option value="1">Pending</option>
                                <option value="2">Approval</option>
                                <option value="3">All</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="ShowHide()">Search</button>
                        <a href="ProjectDetailsN.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none">
                <legend>Details / विवरण</legend>
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
                                        <th>Project No.<br />
                                            परियोजना संख्या</th>
                                        <th>Project Request Date<br />
                                            परियोजना अनुरोध तिथि</th>
                                        <th>Work Category
 <br />
                                            कार्य श्रेणी</th>
                                        <th>Work Sub Category
                                <br />
                                            कार्य उप श्रेणी
                                        </th>
                                        <th>Address
                                <br />
                                            पता
                                        </th>
                                        <th>Cost Amount
                                <br />
                                            लागत राशि
                                        </th>
                                        <th>Technical Document
                                <br />
                                            तकनीकी दस्तावेज़
                                        </th>

                                        <th>Status<br />
                                            स्थिति</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>POR2024CV001</td>
                                    <td>02/05/2023</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td>Pending</td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>POR2024CV002</td>
                                    <td>06/10/2023</td>
                                    <td>पेयजल व्यवस्था</td>
                                    <td>हेंडपंप खनन</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td>Pending</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table2" style="display: none">
                <legend>Details / विवरण</legend>
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
                                        <th>Project No.<br />
                                            परियोजना संख्या</th>
                                        <th>Project Request Date<br />
                                            परियोजना अनुरोध तिथि</th>
                                        <th>Work Category
                                            <br />
                                            कार्य श्रेणी</th>
                                        <th>Work Sub Category
                               <br />
                                            कार्य उप श्रेणी
                                        </th>
                                        <th>Address
                               <br />
                                            पता
                                        </th>
                                        <th>Cost Amount
                               <br />
                                            लागत राशि
                                        </th>
                                        <th>Technical Document
                               <br />
                                            तकनीकी दस्तावेज़
                                        </th>

                                        <th>Status<br />
                                            स्थिति</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>POR2024CV001</td>
                                    <td>02/05/2023</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td>Approval</td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>POR2024CV002</td>
                                    <td>06/10/2023</td>
                                    <td>पेयजल व्यवस्था</td>
                                    <td>हेंडपंप खनन</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td>Approval</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table3" style="display: none">
                <legend>Details / विवरण</legend>
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
                                        <th>Project No.<br />
                                            परियोजना संख्या</th>
                                        <th>Project Request Date<br />
                                            परियोजना अनुरोध तिथि</th>
                                        <th>Work Category
                                <br />
                                            कार्य श्रेणी</th>
                                        <th>Work Sub Category
                   <br />
                                            कार्य उप श्रेणी
                                        </th>
                                        <th>Address
                   <br />
                                            पता
                                        </th>
                                        <th>Cost Amount
                   <br />
                                            लागत राशि
                                        </th>
                                        <th>Technical Document
                   <br />
                                            तकनीकी दस्तावेज़
                                        </th>

                                        <th>Status<br />
                                            स्थिति</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>POR2024CV001</td>
                                    <td>02/05/2023</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td>Approval</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>POR2024CV002</td>
                                    <td>06/10/2023</td>
                                    <td>पेयजल व्यवस्था</td>
                                    <td>हेंडपंप खनन</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td>Approval</td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>POR2024CV002</td>
                                    <td>06/10/2023</td>
                                    <td>स्कूल मार्ग निर्माण</td>
                                    <td>CC सड़क निर्माण</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td>Pending</td>
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

    <script>
        function ShowHide() {
            var ddlStatus = document.getElementById('ddlStatus')
            if (ddlStatus.value == "1") {
                table1.style.display = "block";
                table2.style.display = "none";
            }
            else if (ddlStatus.value == "2") {
                table2.style.display = "block";
                table1.style.display = "none";
            }

            else if (ddlStatus.value == "3") {
                table3.style.display = "block";
                table2.style.display = "none";
                table1.style.display = "none";
            }

            else {
                table1.style.display = "none";
                table2.style.display = "none";
                table3.style.display = "none";
            }
        }
    </script>
</asp:Content>

