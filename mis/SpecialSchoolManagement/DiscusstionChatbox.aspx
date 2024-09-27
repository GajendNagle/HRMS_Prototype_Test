<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DiscusstionChatbox.aspx.cs" Inherits="mis_SpecialSchoolManagement_DiscusstionChatbox" %>

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

        ul li {
            list-style-type: none;
        }

        .liComment:hover {
            background-color: lightgray;
            padding: 0 10px;
        }

        #showDetail1 {
            display: none;
        }

        #disdiv {
            display: none;
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
                        <li class="breadcrumb-item">Community & Discussion Forms</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">

        <div class="card-body">
            <fieldset>
                <legend>Discusstion Chatbox / चर्चा चैटबॉक्स</legend>
                <div class="row align-items-end">


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Topic / विषय चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddl_value">
                                <option value="Select">Select</option>
                                <option value="Human Resource Management">Human Resource Management</option>
                                <option value="Impact of Social Media on Mental Health">Impact of Social Media on Mental Health</option>
                                <option value="Climate Change and Global Warming">Climate Change and Global Warming</option>
                                <option value="The Role of Education in Society">The Role of Education in Society</option>
                                <option value="Artificial Intelligence and its Future Applications">Artificial Intelligence and its Future Applications</option>
                            </select>
                        </div>
                    </div>


                    <div class="row align-items-end">
                        <div class="col-md-12 mx-4">
                            <button type="button" onclick="myFunction()" class=" btn btn-success btn w-lg btn-border">Search</button>
                            <a href="DiscusstionChatbox.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
                <div id="showDetail1" class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Discusstion Chatbox Details /चर्चा चैटबॉक्स विवरण</legend>
                            <div class="row justify-content-end">
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr style="white-space: nowrap" class="text-center">
                                                    <th>Topic / विषय</th>
                                                    <th>Topic Link / विषय लिंक</th>
                                                    <th>Document / दस्तावेज़</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="text-center">
                                                    <td>Human Resource Management</td>
                                                    <td>
                                                        <a href="https://en.wikipedia.org/wiki/Human_resource_management" target="_blank">https://en.wikipedia.org/wiki/Human_resource_management </a>
                                                        <%--class="btn btn-info px-5"--%>
                                                    </td>
                                                    <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>


                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>


                    </div>
                </div>


                <fieldset id="disdiv">
                    <legend>Discussion Chat Box/ चर्चा चैट बॉक्स</legend>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Comment</th>
                                        <th>Document</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'></i>
                                            <span style="font-size: 20px">&nbsp; Ankit Jain &nbsp;&nbsp;&nbsp;
                                <span style="font-size: 12px">8h</span>
                                            </span>
                                            <br />
                                            <label>HR professionals are essential in mediating conflicts and ensuring a harmonious workplace.</label>
                                        </td>
                                        <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'></i>
                                            <span style="font-size: 20px">&nbsp; Pooja Patel &nbsp;&nbsp;&nbsp;
                                <span style="font-size: 12px">6h</span>
                                            </span>
                                            <br />
                                            <label>Promoting diversity in the workplace enhances creativity and innovation.</label>
                                        </td>
                                        <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'></i>
                                            <span style="font-size: 20px">&nbsp; Riya Verma &nbsp;&nbsp;&nbsp;
                                <span style="font-size: 12px">2h</span>
                                            </span>
                                            <br />
                                            <label>Effective HRM focuses on developing employees' skills and capabilities.</label>
                                        </td>
                                        <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'></i>
                                            <span style="font-size: 20px">&nbsp; Aarti Sharma &nbsp;&nbsp;&nbsp;
                                <span style="font-size: 12px">25m</span>
                                            </span>
                                            <br />
                                            <label>HRM plays a critical role in maximizing employee performance.</label>
                                        </td>
                                        <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'></i>
                                            <span style="font-size: 20px">&nbsp; Rahul Gupta &nbsp;&nbsp;&nbsp;
                                <span style="font-size: 12px">10m</span>
                                            </span>
                                            <br />
                                            <label>HRM plays a crucial role in fostering a positive work environment.</label>
                                        </td>
                                        <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'></i>
                                            <span style="font-size: 20px">&nbsp; Vedanshi Agarwal &nbsp;&nbsp;&nbsp;
                                <span style="font-size: 12px">Just Now</span>
                                            </span>
                                            <br />
                                            <label>Investing in training programs leads to a more skilled workforce.</label>
                                        </td>
                                        <td><a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <br />
                        <div class="row form-group">
                            <div class="col-md-6">
                                <label>Add a Comment</label>
                                <input name="topic" type="text" id="AddComment" class="form-control" autocomplete="off" placeholder="Reply On Comment" />
                            </div>
                            <div class="col-md-3">
                                <label>Upload Document</label>
                                <input name="document" type="file" class="form-control" autocomplete="off" required />
                            </div>
                            <div class="row mt-4">
                                <div class="col-md-3">
                                    <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>





            </fieldset>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            document.getElementById("showDetail1").style.display = "block";
            document.getElementById("disdiv").style.display = "block";

        }
    </script>
</asp:Content>
