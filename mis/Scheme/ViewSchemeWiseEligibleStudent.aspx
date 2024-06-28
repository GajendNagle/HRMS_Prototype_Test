<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewSchemeWiseEligibleStudent.aspx.cs" Inherits="mis_Scheme_ViewSchemeWiseEligibleStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #searchdetails {
            display: none;
        }

        #btncontainer {
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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>View Scheme Wise Eligible Student</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">View Scheme Wise Eligible Student / योजना अनुसार पात्र विद्यार्थी देखें</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>View Scheme Wise Eligible Student / योजना अनुसार पात्र विद्यार्थी देखें
                </legend>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="General">2023-2024</option>
                                <option value="General">2024-2025</option>
                            </select>
                        </div>
                    </div>
                    <%--<div class="col-md-4">
                    <div class="form-group">
                        <label>
                            Select District<br />
                            जिला का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="General">Bhopal</option>
                            <option value="General">Sehore</option>
                            <option value="General">Indore</option>
                            <option value="General">Mandsore</option>
                        </select>
                    </div>
                </div>--%>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Scheme Title<br />
                                योजना शीर्षक का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="General">Laptop</option>
                                <option value="General">Cycle</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr style="margin-top: -25px;" />
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <button id="viewMoreBtn" class="btn btn-outline-info btn-border w-lg" type="button" onclick="btnsearch()">SEARCH</button>
                        </div>
                    </div>
                </div>
                <div class="row form-group" id="searchdetails">
                    <fieldset id="gridid">

                        <legend>Details / विवरण </legend>
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
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table  text-center">
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>DEO Name/Code<br />
                                            डीईओ नाम/कोड</th>
                                        <th>Sankul Name UDISE<br />
                                            संकुल नाम UDISE</th>
                                        <th>School Name UDISE<br />
                                            स्कूल नाम UDISE</th>
                                        <th>Student Enrollment No.<br />
                                            छात्र नामांकन संख्या</th>
                                        <th>Student Name<br />
                                            छात्र का नाम</th>
                                        <th>Gender<br />
                                            लिंग</th>
                                        <th>Category<br />
                                            श्रेणी</th>
                                        <th>Disability<br />
                                            विकलांगता</th>
                                        <th>Scheme Benefit Amount<br />
                                            योजना लाभ राशि</th>
                                        <th>ViewMore<br />
                                            अधिक देखें</th>
                                        <th>Action<br />
                                        </th>



                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>RAISEN-021</td>
                                        <td>Sankul-212646448 
                                        </td>
                                        <td>Higher Secondary<br />
                                            -212646448 
                                        </td>
                                        <td>E798797987
                                        </td>
                                        <td>Vikas Namdev
                                        </td>
                                        <td>Male
                                        </td>
                                        <td>OBC
                                        </td>
                                        <td>NO
                                        </td>
                                        <td>250000
                                        </td>

                                        <td class="text-center align-middle">

                                            <button type="button" class="btn btn-outline-primary btn-sm" onclick="btnsearch1()"><i class="fa fa-eye"></i></button>
                                        </td>
                                        <td class="text-center align-middle">
                                            <input type="checkbox" />
                                        </td>



                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>SEHORE-031</td>

                                        <td>Sankul-979841654
                                        </td>
                                        <td>Primary<br />
                                            -212646448 
                                        <td>E501797987
                                        </td>
                                        <td>Shivraj Goutam
                                        </td>
                                        <td>Male
                                        </td>
                                        <td>OBC
                                        </td>
                                        <td>NO
                                        </td>
                                        <td>250000
                                        </td>

                                        <td class="text-center align-middle">

                                            <button type="button" class="btn btn-outline-primary btn-sm" onclick="btnsearch1()"><i class="fa fa-eye"></i></button>
                                        </td>
                                        <td class="text-center align-middle">
                                            <input type="checkbox" />
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="row" id="btncontainer">
                    <div class="col-md-12  text-center">

                        <button class="Alert-Save btn btn-outline-success btn-border w-lg" type="button" onclick="btnsearch()">Generate List</button>


                        <a class="btn btn-outline-danger btn-border w-lg" href="ViewSchemeWiseEligibleStudent.aspx">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script>
        function btnsearch(event) {
            var x = document.getElementById("searchdetails");
            var y = document.getElementById("btncontainer");
            x.style.display = "block";
            y.style.display = "block";
        }
    </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate List ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'List Generate Successfully!',
                                timer: 2000,
                                //url:'ApplyForScheme.aspx'

                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

