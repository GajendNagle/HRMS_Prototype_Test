<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TopicMaster.aspx.cs" Inherits="mis_SpecialSchoolManagement_TopicMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .underline {
            text-decoration: underline;
        }

        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
        }


        #showAllDetails {
            display: none;
        }

        ul li {
            list-style-type: none;
        }

        .liComment:hover {
            background-color: lightgray;
            padding: 0 10px;
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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Special School Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Topic Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">

        <div class="card-body">
            <fieldset>
                <legend>Topic Master / विषय मास्टर</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Topic /<br />
                                विषय दर्ज करें<span style="color: red">*</span></label>
                            <input name="topic" type="text" class="form-control" autocomplete="off" placeholder="Enter Topic" />

                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Link /<br />
                                लिंक दर्ज करें</label>
                            <input name="topic" type="text" class="form-control" autocomplete="off" placeholder="Topic Link" />

                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Comment /<br />
                                टिप्पणी दर्ज करें</label>
                            <input name="topic" type="text" class="form-control" autocomplete="off" placeholder="Enter Comment" />

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Upload Document /<br />
                                दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                            <input name="document" type="file" class="form-control" autocomplete="off" required />

                        </div>
                    </div>
                </div>
                <hr />

                <div class="row">
                    <div class="col-md-6">
                        <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                        <a href="TopicMaster.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                    </div>
                </div>

            </fieldset>
            <fieldset>
                <legend>Topic Details / विषय विवरण</legend>
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
                                        <th>Sr.No.
                            <br />
                                            सरल क्र.</th>
                                        <th>Topic Name
                                            <br />
                                            विषय का नाम</th>
                                        <th>Link<br />
                                            लिंक </th>
                                        <th>Comment 
                                <br />
                                            टिप्पणी </th>
                                        <th>Document  
                                            <br />
                                            दस्तावेज़ </th>
                                        <th>Status(Active/InActive)
                                <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
                                            <br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Getting Togather</td>
                                    <td>https://dpihrms.tserver.co.in/mis/Registration/MeargingSchools.aspx</td>
                                    <td>This is good</td>
                                    <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Togatherness</td>
                                    <td>https://dpihrms.tserver.co.in/mis/Registration/MeargingSchools.aspx</td>
                                    <td>Its Better</td>
                                    <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Discussion</td>
                                    <td>https://dpihrms.tserver.co.in/mis/Registration/MeargingSchools.aspx</td>
                                    <td>Comment</td>
                                    <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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

