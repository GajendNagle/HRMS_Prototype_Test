<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentGenerateDetails.aspx.cs" Inherits="mis_Development_InstallmentGenerateDetails" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Generate</li>
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
                            किस्त जनरेट विवरण
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
                <legend>Installment Details / किस्त विवरण</legend>

                <div class="row align-items-end">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Finacial Year /<br />
                                वित्तीय वर्ष चुनें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>2024-25</option>
                                <option>2023-24</option>
                                <option>2022-23</option>
                                <option>2021-22</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Installment No. /<br />
                                इन्सटॉलमेंट नंबर का चयन करें</label>
                            <select class="form-control select2" id="ddlSubCat51">
                                <option>Select</option>
                                <option>First Installment </option>
                                <option>Second Installment</option>
                                <option>Third Installment</option>
                                <option>Fourth Installment</option>

                            </select>
                        </div>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Search</button>
                        <a href="InstallmentGenerate.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                            परियोजना नंबर</th>
                                        <th>Project Group<br />
                                            परियोजना समूह
                                        </th>
                                        <th>Project Category
                                            <br />
                                            परियोजना श्रेणी
                                        </th>
                                        <th>Work Name<br />
                                            कार्य का नाम</th>
                                        <th>Project Location<br />
                                            परियोजना स्थान</th>
                                        <th>Installment No.<br />
                                            किस्त संख्या</th>
                                        <th>Installment Order No.<br />
                                            किस्त आदेश संख्या</th>
                                        <th>Installment Order Date<br />
                                            किस्त आदेश तिथि</th>
                                        <th>Total Work(Project) Cost<br />
                                            कुल कार्य(परियोजना) लागत</th>
                                        <th>Available Amount
                                            <br />
                                            उपलब्ध राशि
                                        </th>
                                        <th>Installment Amount
                                            <br />
                                            किस्त की राशि
                                        </th>
                                        <th>Remaining Amount<br />
                                            बाकी राशि
                                        </th>
                                        <th>Remark<br />
                                            टिप्पणी</th>
                                        <th>Status(Active/InActive)<br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action<br />
                                            कार्यवाही</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>

                                    <td>2022-23</td>
                                    <td>PWDMP001</td>
                                    <td>स्कूल निर्माण</td>
                                    <td>OR456</td>
                                    <td>10/03/2021</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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

