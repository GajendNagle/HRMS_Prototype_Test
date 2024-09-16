<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectRequestApproval.aspx.cs" Inherits="mis_Development_ProjectRequestApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #Approval {
            font-weight: normal;
            font-size: unset;
        }
    </style>
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
                        <li class="breadcrumb-item">Project Request Approval</li>
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
                            Project Request Approval / परियोजना अनुरोध अनुमोदन
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
                <legend>Project Request Approval / परियोजना अनुरोध अनुमोदन</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select From Date
                                <br />
                                प्रारंभिक दिनांक का चयन करें<span style="color: red">*</span></label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select To Date
        <br />
                                अंतिम दिनांक का चयन करें<span style="color: red">*</span></label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Work Category
            <br />
                                कार्य श्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>विद्यालय का रख-रखाव कार्य	</option>
                                <option>पेयजल व्यवस्था</option>
                                <option>स्कूल मार्ग निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Work Subcategory
                                <br />
                                कार्य उपश्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>इमारत मरम्मत</option>
                                <option>हेंडपंप खनन</option>
                                <option>सी.सी. सड़क निर्माण</option>
                            </select>
                        </div>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg"
                            onclick="document.getElementById('table1').style.display='block'">
                            Search</button>
                        <a href="ProjectRequestApproval.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                        <th>MileStone Document
                                            <br />
                                            माइलस्टोन  दस्तावेज़
                                        </th>
                                        <th>Action
                 <br />
                                            कार्यवाहीं</th>
                                        <%--th>Status<br />
                                            स्थिति</th>--%>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>POR2024CV001</td>
                                    <td>02/05/2023</td>
                                    <td>विद्यालय का रख-रखाव कार्य</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Bhopal M.p.</td>
                                    <td>60000.00</td>
                                  <%--  <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>--%>
                                    <td class="nowrap"><a class="btn btn-outline-info"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target="#firsttimeModel"></i></a></td>

                                    <td class="nowrap"><span class="btn btn-success" id="Approval" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approval</span>
                                        <span class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg">Forward</span>
                                        <span class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3">Reject</span>
                                    </td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="modal" tabindex="-1" role="dialog" id="firsttimeModel" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV">
                            <h4 class="modal-title" id="myLargeModalLabel1">Project Request Details / परियोजना अनुरोध विवरण</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

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
                                                    <th>Cost Amount
                               <br />
                                                        लागत राशि
                                                    </th>
                                                    <th>Technical Document
                               <br />
                                                        तकनीकी दस्तावेज़
                                                    </th>

                                                </tr>
                                            </thead>

                                            <tr>
                                                <td>1</td>
                                                <td>POR2024CV001</td>
                                                <td>09/05/2023</td>
                                                <td>स्कूल मरम्मत/निर्माण</td>
                                                <td>इमारत मरम्मत</td>
                                                <td>60000.00</td>
                                                <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>

            </div>

            <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV1">
                            <h4 class="modal-title" id="myLargeModalLabel">Project Approval Details / परियोजना अनुमोदन विवरण</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Project Approval Details / परियोजना अनुमोदन विवरण</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">

                                        <label>
                                            Select Office Type<br />
                                            कार्यालय के प्रकार का चयन करें</label>
                                        <select class="form-control select2">
                                            <option value="0">All</option>
                                            <option value="3">School</option>
                                            <option value="3">Sankul</option>
                                            <option value="3">BEO</option>
                                            <option value="3">DEO</option>
                                            <option value="3">JD</option>
                                            <option value="3">HO</option>

                                        </select>
                                    </div>
                                     <div class="col-md-3">

                                        <label>
                                            Select Office Name <br />
                                            कार्यालय के नाम का चयन करें</label>
                                        <select class="form-control select2">
                                            <option value="0">Select</option>
                                            <option value="3">RKMP School Bhopal</option>
                                            <option value="3">Nalanda School Bhopal </option>
                                            <option value="3">BEO , BHOPAL</option>
                                            <option value="3">DEO , BHOPAL</option>
                                            <option value="3">JD , BHOPAL</option>
                                            <option value="3">HO , BHOPAL</option>

                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label>
                                            Enter Remark<br />
                                            टिप्पणी दर्ज करें</label>
                                        <input type="text" class="form-control" placeholder="Enter Remark" />
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div class="col-md-4">
                                        <button type="button" class="btn btn-outline-success btn-border w-lg">Submit</button>
                                        <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header" id="myDIV2">
                        <h4 class="modal-title" id="myLargeModalLabel2">Project Approval Details / परियोजना अनुमोदन विवरण</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <legend>Project Approval Details / परियोजना अनुमोदन विवरण</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">

                                    <label>
                                        Select Approval Date<br />
                                        स्वीकृति तिथि का चयन करें</label>
                                    <input type="date" class="form-control" />
                                </div>

                                <div class="col-md-3">
                                    <label>
                                        Order No.<br />
                                        आदेश संख्या</label>
                                    <input type="text" value="2022-04-02" class="form-control" placeholder="Enter Remark" />
                                </div>

                                <div class="col-md-4">
                                    <label>
                                        Enter Remark<br />
                                        टिप्पणी दर्ज करें</label>
                                    <input type="text" class="form-control" placeholder="Enter Remark" />
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg">Submit</button>
                                    <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>

            </div>
        </div>

        <div class="modal bs-example-modal-lg3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header" id="myDIV3">
                        <h4 class="modal-title" id="myLargeModalLabel3">Project Approval Details / परियोजना अनुमोदन विवरण</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <legend>Project Approval Details / परियोजना अनुमोदन विवरण</legend>
                            <div class="row align-items-end">

                                <div class="col-md-5">
                                    <label>
                                        Enter Remark<br />
                                        टिप्पणी दर्ज करें</label>
                                    <input type="text" class="form-control" placeholder="Enter Remark" />
                                </div>
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg">Submit</button>
                                    <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

