﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_WorkExpenditure.aspx.cs" Inherits="mis_Development_Rpt_WorkExpenditure" %>

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
                        <li class="breadcrumb-item">
                            <a href="#DevelopmentReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')" aria-expanded="false"><span>Civil Construction Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Work Expenditure Report</li>
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
                            Work Expenditure Report / कार्य व्यय रिपोर्ट
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
                <legend>Work Expenditure Report / कार्य व्यय रिपोर्ट</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Year<br />
                            वर्ष का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>2024</option>
                            <option>2023</option>
                            <option>2022</option>
                            <option>2021</option>
                        </select>
                    </div>

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
                            Select Office Name<br />
                            कार्यालय के नाम का चयन करें</label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="3">GOVT HSS MAHARANA PRATAP</option>
                            <option value="3">GOVT HSS BOYS, KOTRA SULTANABAD</option>
                            <option value="3">GOVT HSS EX, SUBHASH,SHIVAJI</option>
                            <option value="3">GOVT HSS KHAJURI KALAN</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Project Group<br />
                            प्रोजेक्ट समूह का चयन करें</label>
                        <select class="form-control select2">
                            <option value="0">Select</option>
                            <option value="3">स्कूल निर्माण	</option>
                            <option value="3">सी.सी रोड कार्य</option>
                            <option value="3">पेयजल व्यवस्था</option>

                        </select>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Work Category
                            <br />
                            कार्य श्रेणी का चयन करें</label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>विद्यालय का रख-रखाव कार्य	</option>
                            <option>पेयजल व्यवस्था</option>
                            <option>स्कूल मार्ग निर्माण</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Installment No
         <br />
                            किस्त संख्या का चयन करें</label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>First Installment</option>
                            <option>Second Installment</option>
                            <option>Third Installment</option>
                            <option>Fourth Installment</option>
                        </select>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Search</button>
                        <a href="Rpt_WorkExpenditure.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
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
                                        <th>Year<br />
                                            वर्ष
                                        </th>
                                        <th>Office Name<br />
                                            कार्यालय का नाम </th>
                                        <th>Installment Order Number<br />
                                            किस्त आदेश संख्या</th>
                                        <th>Approval number
                                            <br />
                                            स्वीकृति क्रमांक
                                        </th>
                                        <th>Acceptance Date<br />
                                            स्वीकृति दिनांक
                                        </th>
                                        <th>Project group<br />
                                            परियोजना समूह</th>
                                        <th>Project Category<br />
                                            परियोजना श्रेणी </th>
                                        <th>Subwork<br />
                                            उपकार्य</th>
                                        <th>Image 1</th>
                                        <th>Image 2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2023</td>
                                        <td>GOVT HSS MAHARANA PRATAP</td>
                                        <td>INS1234</td>
                                        <td>98235</td>
                                        <td>30/11/2023</td>
                                        <td>स्कूल निर्माण</td>
                                        <td>विद्यालय का रख-रखाव कार्य</td>
                                        <td>समिति कार्यालय भवन</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openPDF()"></i></span></td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openPDF()"></i></span></td>
                                    </tr>

                                </tbody>
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
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../../img/CasteCertificate1.jpg';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
</asp:Content>

