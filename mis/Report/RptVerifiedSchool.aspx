<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RptVerifiedSchool.aspx.cs" Inherits="mis_Report_RptVerifiedSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        a {
            color: blue;
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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#RptOISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchoolDirectory')">
                                <span>School Reports</span></a>
                        </li>

                        <li class="breadcrumb-item" onclick="HideShow('tblDivDetails','brddiv');"><span>Verified School Reports</span></li>
                        <li class="breadcrumb-item" style="display: block" id="brddiv" onclick="HideShow('tblDivDetails','brddiv');"><a href="#"><span>Division Wise Details</span></a></li>
                        <li class="breadcrumb-item" style="display: none" id="brddist" onclick="HideShow('tblDistDetails','brddist');"><a href="#"><span>District Wise Details</span></a></li>
                        <li class="breadcrumb-item" style="display: none" id="brdBlock" onclick="HideShow('tblblockDetails','brdBlock');"><a href="#"><span>Block Wise Details</span></a></li>
                        <li class="breadcrumb-item" style="display: none" id="brdSankul" onclick="HideShow('tblSankulDetails','brdSankul');"><a href="#"><span>Sankul Wise Details</span></a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row align-items-end">
                        <div class="col-lg-12">
                            <h4 class="card-title">Verified School Report / 
सत्यापित स्कूल रिपोर्ट </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset style="display: block" id="tblDivDetails">
                        <legend>Division Wise Details / विभागवार विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button type="button" class="btn btn-info btn-rounded w-100" value="">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button type="button" class="btn btn-info btn-rounded w-100" value="">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-center table-bordered">
                                <thead>


                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Division
                                            <br />
                                            संभाग</th>
                                        <th>Total School
                                            <br />
                                            कुल स्कूल</th>
                                        <th>Total Verified School
                                            <br />
                                            कुल सत्यापित स्कूल</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td><a href="#" onclick="HideandShow('tblDivDetails','tblDistDetails','brddist');">Bhopal</a></td>
                                    <td>25</td>
                                    <td>20</td>

                                </tr>

                                <tr class="card-header">
                                    <th colspan="2">TOTAL</th>
                                    <td>25</td>
                                    <td>20</td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
                    <fieldset style="display: none" id="tblDistDetails">
                        <legend>District Wise Details / जिलावार विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button id="Button2" class="btn btn-info btn-rounded w-100">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button id="Button3" class="btn btn-info btn-rounded w-100">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-center table-bordered">
                                <thead>


                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>District
                                            <br />
                                            जिला</th>
                                        <th>Total School
                                            <br />
                                            कुल स्कूल</th>
                                        <th>Total Verified School
                                            <br />
                                            कुल सत्यापित स्कूल</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td><a href="#" onclick="HideandShow('tblDistDetails','tblblockDetails','brdBlock');">Bhopal</a></td>
                                    <td>20</td>
                                    <td>17</td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="#" onclick="HideandShow('tblDistDetails','tblblockDetails','brdBlock');">Sehore </a></td>
                                    <td>5</td>
                                    <td>3</td>
                                </tr>
                                <tr class="card-header">
                                    <th colspan="2">TOTAL</th>
                                    <td>25</td>
                                    <td>20</td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
                    <fieldset style="display: none" id="tblblockDetails">
                        <legend>Block Wise Details / विकास खंडवार विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button id="Button2" class="btn btn-info btn-rounded w-100">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button id="Button3" class="btn btn-info btn-rounded w-100">PDF</button>" 
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-center table-bordered">
                                <thead>


                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Block
                                            <br />
                                            विकासखंड</th>
                                        <th>Total School
                                            <br />
                                            कुल स्कूल</th>
                                        <th>Total Verified School
                                            <br />
                                            कुल सत्यापित स्कूल</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td><a href="#" onclick="HideandShow('tblblockDetails','tblSankulDetails','brdSankul');">Berasia</a></td>
                                    <td>10</td>
                                    <td>7</td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="#" onclick="HideandShow('tblblockDetails','tblSankulDetails',,'brdSankul');">Phanda Gramin</a></td>
                                    <td>20</td>
                                    <td>15</td>
                                </tr>
                                <tr class="card-header">
                                    <th colspan="2">TOTAL</th>
                                    <th>30</th>
                                    <th>22</th>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
                    <fieldset style="display: none" id="tblSankulDetails">
                        <legend>Sankul Wise Details / संकुलवार विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button id="Button2" class="btn btn-info btn-rounded w-100" text="">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button id="Button3" class="btn btn-info btn-rounded w-100" text="">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-center table-bordered">
                                <thead>


                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Sankul
                                            <br />
                                            संकुल</th>
                                        <th>Total School
                                            <br />
                                            कुल स्कूल</th>
                                        <th>Total Verified School
                                            <br />
                                            कुल सत्यापित स्कूल</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>	GOVT. HS CHANDBAD, BHOPAL  </td>
                                    <td>10</td>
                                    <td><a  href="#" role="button" data-bs-toggle="modal" data-bs-target="#Modelschool">7</a></td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>GOVT. HS CHANDBAD, BHOPAL</td>
                                    <td>20</td>
                                    <td><a href="#" role="button"  data-bs-toggle="modal" data-bs-target="#Modelschool">15</a></td>
                                </tr>
                                <tr class="card-header">
                                    <th colspan="2">TOTAL</th>
                                    <th>30</th>
                                    <th>22</th>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="Modelschool" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center">School Details / स्कूल विवरण</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset style="margin-top: 1rem">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Division
     <br />
                                            विभाग</th>
                                        <th>District
     <br />
                                            जिला</th>
                                        <th>Block
     <br />
                                            विकासखंड</th>
                                        <th>Sankul
     <br />
                                            संकुल</th>
                                        <th>School Name
     <br />
                                            स्कूल का नाम</th>
                                        <th>udise code
     <br />
                                            युडाइस कोड</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>Berasia</td>
                                      
                                        <td>GOVT. HS  CHANDBAD, BHOPAL </td>
                                        <td>GOVT MS LAHARPUR</td>
                                        <td>23320120302</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>Berasia</td>
                                      
                                        <td>GOVT. HS CHANDBAD, BHOPAL </td>
                                        <td>GOVT MS KOTRA CHOPDA</td>
                                        <td>23320117102</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideandShow(IDToHide, IDToShow, brd) {
            let toHide = document.getElementById(IDToHide);
            let toshow = document.getElementById(IDToShow);

            toHide.style.display = 'none';
            toshow.style.display = 'block';
            $("#brddiv").nextAll().css('display', 'flex');
            $("#" + brd).nextAll().css('display', 'none');
        }
        function HideShow(IDToShow, brd) {
            let fieldsets = document.querySelectorAll('fieldset');
            let toShow = document.getElementById(IDToShow);

            // Hide all fieldsets
            fieldsets.forEach(fieldset => {
                fieldset.style.display = 'none';
            });

            // Show the element with the ID IDToShow
            toShow.style.display = 'block';

            // Assuming you want to show all elements with the class "brddiv"
            $(`.${brd}div`).css('display', 'flex');

            // Assuming you want to hide all elements with the ID brd
            $(`#${brd}`).nextAll().css('display', 'none');
        }
    </script>
</asp:Content>

