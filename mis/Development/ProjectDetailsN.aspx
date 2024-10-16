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
                                Select Division (Code) /
                                <br />
                                संभाग (कोड) का चयन करें<span style="color: red; font-weight: bold">*</span></label>
                            <select class="form-control select2">
                                <option value="0">Select</option>
                                <option value="3">Chambal-(01)</option>
                                <option value="3">Gwalior-(02)</option>
                                <option value="3">Ujjain-(03)</option>
                                <option value="3">Indore-(04)</option>
                                <option value="3">Bhopal-(05)</option>

                            </select>

                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select District (Code) /
                           <br />
                                जिला (कोड) का चयन करें<span style="color: red; font-weight: bold">*</span></label>
                            <select class="form-control select2">
                                <option value="0">Select</option>
                                <option value="3">Sheopur-(01)</option>
                                <option value="3">Morena-(02)</option>
                                <option value="3">Bhind-(03)</option>

                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Block (Code) /
                           <br />
                                विकास खंड (कोड) का चयन करें<span style="color: red; font-weight: bold">*</span></label>
                            <select class="form-control select2">
                                <option value="0">Select</option>
                                <option value="3">Berasia-(209)</option>
                                <option value="3">Phanda Gramin-(210)</option>
                                <option value="3">Phanda-(211)</option>

                            </select>

                        </div>
                    </div>
                </div>

                <div class="row align-items-end">
                    <%--                         <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select OIS Type
                          <br />
                                OIS प्रकार का चयन करें
                            </label>
                            <span style="color: red; font-weight: bold">*</span>
                            <select class="form-control select2" id="ddlProjectNo">
                                <option>Select</option>
                                <option value="1">Office</option>
                                <option value="2">Institude</option>
                                <option value="3">School</option>
                            </select>
                        </div>
                    </div>--%>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Project Location  /<br />
                                परियोजना स्थान का चयन करें
                            </label>
                            <span style="color: red; font-weight: bold">*</span>
                            <select class="form-control select2" id="ddlProjectNo1">
                                <option>Select</option>
                                <option value="1">GOVT HSS MAHARANA PRATAP </option>
                                <option value="2">GOVT HSS BOYS, KOTRA SULTANABAD </option>
                                <option value="3">GOVT HSS EX, SUBHASH,SHIVAJI </option>
                                <option value="3">GOVT HSS KHAJURI KALAN </option>
                                <option value="3">GOVT HSS NAYSAMAND</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                               Select Project Group /
             <br />
                                प्रोजेक्ट समूह का चयन करें<span style="color: red">*</span></label>

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
                                Select Project Category /
    <br />
                                प्रोजेक्ट श्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>इमारत मरम्मत</option>
                                <option>हेंडपंप खनन</option>
                                <option>CC सड़क निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <%--         <div class="col-md-3">
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
                    </div>--%>
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
                                        <th>Project Group
 <br />
                                            प्रोजेक्ट समूह</th>
                                        <th>Project Category
                                <br />
                                            प्रोजेक्ट श्रेणी
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

            <fieldset id="table3">
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
                            <table class="table table-bordered text-start">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                <br />
                                            क्रमांक</th>
                                        <th>Project Order No.<br />
                                            परियोजना आदेश संख्या</th>
                                        <th>Project Order Date<br />
                                            परियोजना आदेश  तिथि</th>
                                        <th>Offiice Name<br />
                                            कार्यालय का नाम</th>
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

                                        <th>MileStone Document
                   <br />
                                            माइलस्टोन दस्तावेज़
                                        </th>


                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>POR2024CV001</td>
                                    <td>02/05/2023</td>
                                    <td>GOVT HSS MAHARANA PRATAP</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Bhopal M.p.</td>
                                    <td class="text-end">60000.00</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal"><i class="ri-eye-line"></i></button>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal1"><i class="ri-eye-line"></i></button>
                                    </td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>POR2024CV002</td>
                                    <td>06/10/2023</td>
                                    <td>GOVT HSS BOYS, KOTRA SULTANABAD </td>
                                    <td>पेयजल व्यवस्था</td>
                                    <td>हेंडपंप खनन</td>
                                    <td>Bhopal M.p.</td>
                                    <td class="text-end">60000.00</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal"><i class="ri-eye-line"></i></button>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal1"><i class="ri-eye-line"></i></button>
                                    </td>

                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>POR2024CV002</td>
                                    <td>06/10/2023</td>
                                    <td>GOVT HSS EX, SUBHASH,SHIVAJI </td>
                                    <td>स्कूल मार्ग निर्माण</td>
                                    <td>CC सड़क निर्माण</td>
                                    <td>Bhopal M.p.</td>
                                    <td class="text-end">60000.00</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal"><i class="ri-eye-line"></i></button>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal1"><i class="ri-eye-line"></i></button>
                                    </td>

                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>


    <div class="modal fade" id="examplesModal" tabindex="-1" aria-labelledby="examplesModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl ">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Technical Document /तकनीकी दस्तावेज़	</legend>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center" id="Table1">
                                        <thead class="nowrap">
                                            <tr>
                                                <th>Sr.No.
                                            <br />
                                                    क्रमांक</th>
                                                <th>Document Type<br />
                                                    दस्तावेज़ प्रकार</th>
                                                <th>Document Type Details<br />
                                                    दस्तावेज़ प्रकार विवरण</th>
                                                <th>Upload Document
                                            <br />
                                                    दस्तावेज़ अपलोड करें</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Financial</td>

                                                <td>Budget Approval</td>

                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-eye"></i></a>

                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Financial</td>

                                                <td>Tender Copy</td>

                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-eye"></i></a>

                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Technical</td>

                                                <td>Map</td>

                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-eye"></i></a>

                                            </tr>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="examplesModal1" tabindex="-1" aria-labelledby="examplesModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl ">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Milestones   /माइलस्टोन 	</legend>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center" id="Table8">
                                        <thead class="nowrap">
                                            <tr>
                                                <th>Sr.No.
                                            <br />
                                                    क्रमांक</th>
                                                <th>Work  Name<br />
                                                    कार्य  का नाम</th>
                                                <th>Work Completion Date<br />
                                                    कार्य पूरा करने की दिनांक</th>
                                                <th>Work Completion %
                            <br />
                                                    प्रतिशत
                                                </th>
                                                <th>Payment %<br />
                                                    भुगतान प्रतिशत
                                                </th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>इमारत मरम्मत</td>

                                                <td>17/09/2024</td>
                                                <td>20%</td>
                                                <td>10%</td>



                                            </tr>



                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                </div>
            </div>
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

