<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ApplyForScheme.aspx.cs" Inherits="mis_Scheme_ApplyForScheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #searchdetails {
            display: none;
        }

        #Applydetails {
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
                        <li class="breadcrumb-item"><span>Apply For Scheme </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Apply For Scheme / योजना के लिए आवेदन</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Check Scheme Eligibility / योजना की पात्रता जांचें
                </legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Enter Student Enrollment No.<br />
                                छात्र नामांकन संख्या दर्ज करें.<span style="color: red">*</span></label>
                            <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="Enter Student Enrollment No" />
                        </div>
                    </div>
                    <div class="col-md-3 ">
                        <div class="form-group">
                            <%--                            <input type="button" id="btnsearch" class="btn btn-outline-info btn-border w-lg" style="margin-top: 50px" value="SEARCH" onclick=" btnsearch(event);" />--%>
                            <button id="viewMoreBtn" style="margin-top: 50px" class="btn btn-outline-info btn-border w-lg" type="button" onclick="btnsearch()">SEARCH</button>

                        </div>
                    </div>
                </div>
                <div class="row form-group" id="searchdetails">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table  text-center">
                                <tr>
                                    <th>Sr.No.<br />
                                        सरल क्र.</th>
                                    <th>Scheme Name/Title<br />
                                        योजना का नाम/शीर्षक</th>
                                    <th width="1000">Scheme Details<br />
                                        योजना विवरण</th>
                                    <th>Eligibility<br />
                                        पात्रता</th>
                                    <th>Action<br />
                                    </th>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>लैपटॉप</td>
                                    <td>Under the MP Free Laptop Yojana 2024, 
                                                    students who pass the 12th class examination conducted 
                                                    by the Madhya Pradesh Board of Secondary Education with
                                                    good marks will be provided with financial assistance of 
                                                    ₹25,000 by the Madhya Pradesh government to purchase laptops.</td>
                                    <td class="text-center align-middle">
                                        <button type="button" class="btn btn-sm btn-info align-middle ">YES</button></td>

                                    <td class="text-center align-middle">

                                        <button type="button" class="btn btn-outline-success text-nowrap btn-sm" onclick="btnsearch1()">Apply For Scheme </button>
                                    </td>



                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>साइकिल</td>

                                    <td>Saikil Anudaan Yojana is an initiative by the Labour Department, 
                                                    Madhya Pradesh. Its aim is to provide transportation facilities to
                                                    construction workers registered under the MP Building and Other Construction Workers Welfare Board.</td>
                                    <td class="text-center align-middle">
                                        <button type="button" class="btn btn-danger  btn-sm">NO</button></td>
                                    <td class="text-center align-middle">
                                        <button type="button" class="btn btn-outline-success btn-sm" disabled>Apply For Scheme </button>
                                    </td>

                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row" id="Applydetails">
                    <fieldset>
                        <legend>Student Details /  छात्र विवरण
                        </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Student Enrollment No.<br />
                                        छात्र नामांकन संख्या<span style="color: red"></span></label>
                                    <input id="studEnrollno" type="text" class="form-control" autocomplete="off" value="9874896784" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Samagra I'd
                                    <br />
                                        समग्र आईडी<span style="color: red"></span></label>
                                    <input id="studsmagid" type="text" class="form-control" autocomplete="off" value="321654987" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Student Name<br />
                                        छात्र का नाम<span style="color: red"></span></label>
                                    <input id="studname" type="text" class="form-control" autocomplete="off" value="Rajat Patidar" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Gender<br />
                                        लिंग<span style="color: red"></span></label>
                                    <input id="studgender" type="text" class="form-control" autocomplete="off" value="Male" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Date of Birth<br />
                                        जन्म की तारीख<span style="color: red"></span></label>
                                    <input id="studdob" type="text" class="form-control" autocomplete="off" value="20/06/2003" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Category<br />
                                        जाति<span style="color: red"></span></label>
                                    <input id="caste" type="text" class="form-control" autocomplete="off" value="OBC" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Disability<br />
                                        विकलांगता<span style="color: red"></span></label>
                                    <input id="Disability" type="text" class="form-control" autocomplete="off" value="NO" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Father Name<br />
                                        पिता का नाम<span style="color: red"></span></label>
                                    <input id="Father" type="text" class="form-control" autocomplete="off" value="Satyam Patidar" disabled />

                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Scheme Details / योजना विवरण
                        </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Scheme Name/Title<br />
                                        योजना का नाम/शीर्षक<span style="color: red"></span></label>
                                    <input id="Scheme" type="text" class="form-control" autocomplete="off" value="लैपटॉप" disabled />

                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>
                                        Scheme Details<br />
                                        योजना विवरण<span style="color: red"></span></label>
                                    <textarea id="details" type="text" class="form-control" placeholder="Under the MP Free Laptop Yojana 2024, students who pass the 12th class examination conducted by the Madhya Pradesh Board of Secondary Education with good marks will be provided with financial assistance of ₹25,000 by the Madhya Pradesh government to purchase laptops." disabled style="resize: none"></textarea>

                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Student Account Details /  छात्र खाता विवरण
                        </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Bank Name<br />
                                        बैंक का नाम<span style="color: red"></span></label>
                                    <input id="Bank" type="text" class="form-control" autocomplete="off" value="HDFC Bank" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        IFSC Code<br />
                                        आईएफएससी कोड<span style="color: red"></span></label>
                                    <input id="IFSC" type="text" class="form-control" autocomplete="off" value="HDFC0012SBI" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Branch Name<br />
                                        शाखा का नाम<span style="color: red"></span></label>
                                    <input id="Branch" type="text" class="form-control" autocomplete="off" value="M.P Nagar Bhopal" disabled />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Account No.<br />
                                        खाता नंबर <span style="color: red"></span>
                                    </label>
                                    <input id="Account" type="text" class="form-control" autocomplete="off" value="5152879564132" disabled />

                                </div>
                            </div>
                        </div>

                    </fieldset>
                </div>
                <div class="row" id="btncontainer">
                    <div class="col-md-12  text-center">

                        <button class="Alert-Save btn btn-outline-success btn-border w-lg" type="button" onclick="btnsearch()">Apply For Scheme</button>


                        <a class="btn btn-outline-danger btn-border w-lg" href="ApplyForScheme.aspx">Clear</a>
                    </div>
                </div>


            </fieldset>


        </div>
    </div>
            <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <script>
        function btnsearch(event) {
            var x = document.getElementById("searchdetails");
            x.style.display = "block";
        }
        function btnsearch1(event) {
            var x = document.getElementById("Applydetails");
            var y = document.getElementById("btncontainer");
            x.style.display = "block";
            y.style.display = "block";
        }

        //debugger;

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
                        text: "Do you want to Apply For Scheme ?",
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
                                text: 'Scheme Apply Successfully!',
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

