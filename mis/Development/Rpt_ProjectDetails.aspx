<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ProjectDetails.aspx.cs" Inherits="mis_Development_Rpt_ProjectDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .modal-body {
            display: flex;
            justify-content: center !important;
            align-items: center;
        }

        .modal fade {
            justify-content: center !important;
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
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#DevelopmentReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')" aria-expanded="false"><span>Development Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Status Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-7">
                    <h4 class="card-title">Project Status Report / 
                        परियोजना स्थिति रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Project Status Report / परियोजना स्थिति रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-6  col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Project Code 
                            <br />
                                परियोजना कोड का चयन करे<span style="color: red">*</span></label>
                            <select id="DistrictName" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="P0001">P0001</option>
                                <option value="P0019">P0019</option>
                                <option value="P0013">P0013</option>
                                <option value="P0015">P0015</option>
                                <option value="P0009">P0009</option>
                                <option value="P0005">P0005</option>
                                <option value="P0029">P0029</option>
                                <option value="P0017">P0017</option>
                                <option value="P0011">P0011</option>
                                <option value="P0010">P0010</option>
                                <option value="P0012">P0012</option>
                                <option value="P0016">P0016</option>
                                <option value="P0018">P0018</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Search" class="btn btn-success btn-border" />
                        <a href="ProjectDetails.aspx" class="btn btn-outline-danger btn-border w-lg">Reset</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Project Status Deatils / परियोजना स्थिति विवरण</legend>
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
                                        <th>Sr.No.<br />
                                            सरल क्रमांक</th>
                                        <th>Project Code<br>
                                            परियोजना क्रमांक</th>
                                        <th>Project Date<br>
                                            परियोजना दिनांक</th>
                                        <th>Work Category<br />
                                            कार्य की श्रेणी</th>
                                        <th>Work Subcategory<br />
                                            कार्य का नाम</th>
                                        <th>OIS Code<br />
                                            OIS कोड</th>
                                        <th>Address<br />
                                            पता</th>
                                        <th>Work Description<br />
                                            कार्य का विवरण</th>
                                        <th>Estimated Budget Amount(In Rs) 
                                            <br />
                                            अनुमानित बजट</th>
                                        <th>Proposed Budget Amount(In Rs)<br />
                                            प्रस्तावित बजट</th>
                                        <th>Installment Release<br />
                                            किस्त जारी</th>
                                        <th>Project Status<br />
                                            परियोजना पूर्णता
                                        </th>
                                        <th>View Documents
                                            <br />
                                            दस्तावेज देखें</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>P00019</td>
                                    <td>22/05/2023</td>
                                    <td>School Repair/Construction</td>
                                    <td>Building Repair</td>
                                    <td>Delhi Public School_44561</td>
                                    <td>Bhopal M.P</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>2nd Installment</td>
                                    <td>Done</td>
                                    <td><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>P00014</td>
                                    <td>20/06/2023</td>
                                    <td>Drinking Water System</td>
                                    <td>Hand Pump Mining</td>
                                    <td>LCH Public School_75561</td>
                                    <td>Bhopal M.P</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>1st Installment</td>
                                    <td>Pending</td>
                                    <td><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>P00012</td>
                                    <td>12/05/2023</td>
                                    <td>School Road Construction</td>
                                    <td>CC Road Construction</td>
                                    <td>Delhi Public School_44561</td>
                                    <td>Bhopal M.P</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>4th Installment</td>
                                    <td>Under Progress</td>
                                    <td><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>P00020</td>
                                    <td>02/08/2023</td>
                                    <td>School Repair/Construction</td>
                                    <td>Building Repair</td>
                                    <td>SVM Public School_44165</td>
                                    <td>Betul M.P.</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>2nd Installment</td>
                                    <td>Pending</td>
                                    <td><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: var(--vz-primary);">
                            <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                            <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Document / दस्तावेज</h3>
                            <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <input type="hidden" asp-for="PrevEmpId" id="hdnPrevEmpId" />
                                <input type="hidden" asp-for="CompassionId" id="hdnCompassionId" />
                                <legend>Work Related Important Document / कार्य संबंधी आवश्यक दस्तावेज</legend>
                                <div class="row">
                                    <div class="col-md-12 mt-3">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-center">
                                                <thead>
                                                    <tr>
                                                        <th>Sr.No.<br />
                                                            सरल क्रमांक</th>
                                                        <th>Document Name
                    <br />
                                                            दस्तावेज का नाम</th>

                                                        <th class="text-center">View Document
                    <br />
                                                            दस्तावेज देंखे</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td><b>Techincal Document
                        <br />
                                                            तकनीकी दस्तावेज़  </b></td>
                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td><b>Civil Document
                        <br />
                                                            सिविल दस्तावेज</b></td>
                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td><b>Elecrtrical Document
                        <br />
                                                            इलेक्ट्रिकल दस्तावेज</b></td>
                                                        <td>
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td><b>Upload Project
                        <br />
                                                            परियोजना के दस्तावेज</b></td>
                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td><b>Other Document
                        <br />
                                                            अन्य दस्तावेज</b></td>
                                                        <td class="text-center">
                                                            <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

