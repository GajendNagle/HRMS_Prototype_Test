<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GenerateSchemeList.aspx.cs" Inherits="mis_Scheme_GenerateSchemeList" %>

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
                        <li class="breadcrumb-item"><span>Generate Scheme List</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Generate Scheme List / योजना सूची तैयार करें</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Generate Scheme List / योजना सूची तैयार करें
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
                    <%--       <div class="col-md-4">
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
                <hr style="margin-top:-25px;" />
                <div class="row">

                    <div class="col-md-3 ">
                        <div class="form-group">
                            <button id="viewMoreBtn" class="btn btn-outline-info btn-border w-lg" type="button" onclick="btnsearch()" >SEARCH</button>

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
                                        <th>Student Enrollment No.<br />
                                            छात्र नामांकन संख्या</th>
                                        <th>Student Name<br />
                                            छात्र का नाम</th>
                                        <th>Scheme Benefit Amount<br />
                                            योजना लाभ राशि</th>
                                        <th>Bank Name<br />
                                            बैंक का नाम</th>
                                        <th>IFSC Code<br />
                                            आईएफएससी कोड</th>
                                        <th>Account No.<br />
                                            खाता नंबर</th>
                                        <th>ViewMore<br />
                                            अधिक देखें</th>



                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>RAISEN-021</td>
                                        <td>Sankul-212646448 
                                        </td>
                                        <td>E798797987
                                        </td>
                                        <td>Vikas Namdev
                                        </td>
                                        <td>250000
                                        </td>
                                        <td>HDFC
                                        </td>
                                        <td>HDFC100SBI
                                        </td>
                                        <td>510627989545
                                        </td>
                                        <td class="text-center align-middle">

                                            <button type="button" class="btn btn-outline-primary btn-sm" onclick="btnsearch1()"><i class="fa fa-eye"></i></button>
                                        </td>



                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>SEHORE-031</td>

                                        <td>Sankul-979841654
                                        </td>
                                        <td>E501797987
                                        </td>
                                        <td>Shivraj Goutam
                                        </td>
                                        <td>250000
                                        </td>
                                        <td>HDFC
                                        </td>
                                        <td>HDFC121SBI
                                        </td>
                                        <td>59875989545
                                        </td>
                                        <td class="text-center align-middle">

                                            <button type="button" class="btn btn-outline-primary btn-sm" onclick="btnsearch1()"><i class="fa fa-eye"></i></button>
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="row" id="btncontainer">
                    <div class="col-md-12  text-center">

                        <button class="Alert-Save btn btn-outline-success btn-border w-lg" type="button">Generate Payment File</button>


                        <a class="btn btn-outline-danger btn-border w-lg" href="GenerateSchemeList.aspx">Clear</a>
                    </div>
                </div>

            </fieldset>
        </div>
    </div>
    <!-- Button trigger modal -->
<%--    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Launch demo modal
    </button>--%>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Generate Payment File</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Verify OTP</legend>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>
                                        Enter OTP<br />
                                        ओटीपी दर्ज करें<span style="color: red">*</span></label>
                                    <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="Enter OTP" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12  text-center">

                                    <%--                                    <button class="Alert-Save btn btn-outline-success btn-border w-lg" type="button" onclick="btnsearch()">Submit Otp</button>--%>


                                    <%--                                    <a class="btn btn-outline-danger btn-border w-lg" href="GenerateSchemeList.aspx">Clear</a>--%>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button type="button" class=" Alert-Save1 btn btn-outline-success w-lg">Confirm</button>
                    <button type="button" class="btn btn-outline-danger w-lg" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
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
        function ViewModalSchemeModal() {
            $('#exampleModal').modal('show');
            return false;
        }
        //debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Payment File ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            ViewModalSchemeModal();
                            //Swal.fire({
                            //    //type: 'success',
                            //    //title: 'Success!',
                            //    //text: 'Scheme Apply Successfully!',
                            //    //timer: 2000,
                            //    //url:'ApplyForScheme.aspx'

                            //}
                            //)
                            //var x = document.getElementById("EmployeeDetails2");

                            //if (x.style.display === "none") {
                            //    x.style.display = "block";
                            //}
                            //else {
                            //    x.style.display = "block";
                            //}
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
     <script>
         debugger;
         !function ($) {
             "use strict";
             var SweetAlert = function () { };
             //examples
             SweetAlert.prototype.init = function () {

                 $('.Alert-Save1').click(function () {
                     Swal.fire({
                         title: 'Are you sure?',
                         text: "Do you want to Confirm Generate List ?",
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

