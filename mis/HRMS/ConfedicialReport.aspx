<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ConfedicialReport.aspx.cs" Inherits="mis_Transaction_ConfedicialReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .offcanvas-backdrop {
            position: relative;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <%--<div class="=page-title-right">--%>
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item">
                        <span>Home</span>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>ACR</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Employee ACR Apply</span></li>
                </ol>
            </div>
        </div>
    </div>

    <%--  <div class="row page-titles mb-4">--%>
    <%--  <div class="row page-titles mb-4">--%>
    <div class="row">
        <div class="col-md-5 ">
            <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
        </div>
    </div>
    <%--   <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title color_black">
                        PART-1 Basic Information
भाग-एक सामान्य जानकारी
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            

            <div class="row ">
                <div class="col-md-12">
                    <h5 class="fw-bold">For Teacher's Cadre (Class 1st to 12th)<br>
                        शिक्षक संवर्ग के लिए (कक्षा 1 से 12)</h5>
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col-md-5 ">
                                </div>

                                <div class="card-header card-border-info">
                                </div>

                            
        </div>--%>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5>For Teacher's Cadre (Class 1st to 12th)/
                        शिक्षक संवर्ग के लिए (कक्षा 1 से 12)
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">


            <fieldset>
                <legend>EMPLOYEE PERSONAL INFORMATION / कर्मचारी की व्यक्तिगत जानकारी</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Financial Year<br>
                                वार्षिक प्रतिवेदन अवधि वर्ष <span style="color: red">*</span>
                            </label>
                            <select class="form-control ">
                                <option value="2020-2021">2020-2021</option>
                                <option value="2021-2022">2021-2022</option>
                                <option value="2022-2023">2022-2023</option>
                                <option value="2023-2024">2023-2024</option>
                                <option value="2024-2025">2024-2025</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Name
                                                        <br>
                                नाम  <span style="color: red">*</span>
                            </label>
                            <input name="ctl00$ContentBody$txtName" type="text" readonly="readonly" id="ContentBody_txtName" class="form-control" autocomplete="off" value="गोपाल वर्मा">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Unique ID<br>
                                कर्मचारी आई.डी
                                                        <span style="color: red">*</span>
                            </label>
                            <input name="ctl00$ContentBody$TextBox4" type="text" readonly="readonly" id="ContentBody_TextBox4" class="form-control" autocomplete="off" value="EDP4561231556">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation
                                                        <br>
                                पद नाम <span style="color: red">*</span>
                            </label>
                            <input name="ctl00$ContentBody$DropDownList1" type="text" readonly="readonly" id="ContentBody_DropDownList1" class="form-control " autocomplete="off" value="सहायक शिक्षक">
                        </div>
                    </div>

                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                <br>
                                Date of Birth<br>
                                जन्मतिथि<span style="color: red">*</span>
                            </label>
                            <input name="ctl00$ContentBody$TXTDOB" type="date" readonly="readonly" id="ContentBody_TXTDOB" class="form-control" autocomplete="off" value="1999-12-03">
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                <br>
                                Institution of Posting<br>
                                पदस्थी शाला/स्थान<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$ddlPosting" type="text" readonly="readonly" id="ContentBody_ddlPosting" value="भोपाल" class="form-control" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="fs-6">
                                <br>
                                Dise Code of Institution<br>
                                पदस्थी शाला का डाइस कोड<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$txtpriviesdesinnetion" type="text" readonly="readonly" id="ContentBody_txtpriviesdesinnetion" class="form-control" autocomplete="off" value="St Theresa Girls School/489754554">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                <br>
                                Date Of First Posting<br>
                                प्रथम नियुक्ति का दिनांक<span style="color: red;">*</span>
                            </label>
                            <input name="ctl00$ContentBody$txtFirstPosting" type="date" readonly="readonly" id="ContentBody_txtFirstPosting" class="form-control" autocomplete="off" value="1992-09-17">
                        </div>
                    </div>


                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                <br>
                                First Posting  designation<br>
                                प्रथम नियुक्ति का पद<span style="color: red;">*</span>
                            </label>
                            <input name="ctl00$ContentBody$TextBox1" type="text" readonly="readonly" id="ContentBody_TextBox1" class="form-control" autocomplete="off" value="प्राथमिक अध्यापक">
                        </div>
                    </div>
                    <div class="col-md-3 ">
                        <div class="form-group">
                            <label>
                                Current Date Of Promotion
                                                        <br>
                                वर्तमान पद पर नियुक्ति का  दिनांक<span style="color: red;">*</span>
                            </label>
                            <input name="ctl00$ContentBody$TextBox2" type="date" readonly="readonly" id="ContentBody_TextBox2" class="form-control " autocomplete="off" value="2024-01-23">
                        </div>
                    </div>



                    <div class="col-md-3 ">
                        <div class="form-group">
                            <label>
                                Date Of Promotion
                                                        <br>
                                पदोन्नति का दिनांक<span style="color: red;">*</span>
                            </label>
                            <input name="ctl00$ContentBody$txtPrmaotion" type="date" id="ContentBody_txtPrmaotion" class="form-control " autocomplete="off" value="2024-01-23">
                        </div>
                    </div>
                    <div class="col-md-3 ">
                        <div class="form-group">
                            <label>
                                Date OF Filiing Of Annual Immovabel Property Return<br>
                                स्थाई संपत्ती विवरण दाखिल करने का दिनांक<span style="color: red;">*</span>
                            </label>
                            <input name="ctl00$ContentBody$TextBox5" type="date" id="ContentBody_TextBox5" class="form-control" autocomplete="off" value="1989-12-10">
                        </div>
                    </div>
                </div>

            </fieldset>
            <hr />
            <div class="col-md-12">
                <div class="form-group">
                    <button type="button" class="Alert-Save  btn w-lg btn-success btn-border">
                        Save/Next
                    </button>
                    <a href="ConfedicialReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">



    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to proceed further ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        //animation: false,
                        //customClass: {
                        //    popup: 'animated tada'
                        //}
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record proceed Successfully!',
                                timer: 2000,

                                // animation: false,<a href="">TeacherFillReport.aspx</a>
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'TeacherFillReport.aspx';
                            });
                            var x = document.getElementById("EmployeeDetails2");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                init
            init
            $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>






</asp:Content>


