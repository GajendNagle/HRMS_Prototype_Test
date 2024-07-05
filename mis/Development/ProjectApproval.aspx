<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectApproval.aspx.cs" Inherits="mis_Development_ProjectApproval" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Approval</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Project Approval / परियोजना स्वीकृति</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Project Approval / परियोजना स्वीकृति</legend>
                <div class="row align-items-end">
                    <div class="col-md-6  col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Project Code
                            <br />
                                परियोजना कोड<span style="color: red">*</span></label>
                            <select id="Project_Code" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">P00017</option>
                                <option value="B">P00018</option>
                                <option value="c">P00019</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Search" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                        <a href="ProjectDetails.aspx" class="btn btn-outline-danger btn-border w-lg">Reset</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Project Approval Details/ परियोजना स्वीकृति विवरण</legend>
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
                                        <th>Estimated Budget Cost(In Rs) 
                                            <br />
                                            अनुमानित बजट</th>
                                        <th>View Document<br>
                                            दस्तावेज़ देखें</th>
                                        <th>Project Approved <br />परियोजना स्वीकृत</th>
                                    </tr>
                                </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>P00019</td>
                                        <td>22/05/2023</td>
                                        <td>स्कूल मरम्मत/निर्माण</td>
                                        <td>इमारत मरम्मत</td>
                                        <td>QT4561</td>
                                        <td>Bhopal M.P</td>
                                        <td>Work For Bhopal Office</td>
                                        <td>10000.00</td>
                                        <td><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                    <td><a role="button" class="btn btn-outline-success" href="/mis/Development/InstallmentCreation.aspx">Project Approval</a></td>
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

