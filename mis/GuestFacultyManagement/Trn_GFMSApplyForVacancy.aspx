<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_GFMSApplyForVacancy.aspx.cs" Inherits="mis_GuestFacultyManagement_Trn_GFMSApplyForVacancy" %>

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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GuestFaculty" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Guest Faculty Login</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Apply For Vacancy</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary ">
        <div class="card-header  d-print-none">
            <div class="row">
                <div class="col-lg-9">
                    <h4 class="card-title">Apply For Vacancy / रिक्ति के लिए आवेदन करें </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">
            <div class="row">
                <div class="col-md-12" id="printCard">
                    <fieldset>
                        <legend>Apply For Vacancy / रिक्ति के लिए आवेदन करें</legend>
                        <div class="row mt-4 align-items-end">
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Enter UDISE Code<br />
                                        यूडाइस कोड दर्ज करे
                                    </label>
                                    <input type="text" id="UdiceCode" class="form-control" placeholder="Enter UDIsE Code">
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Enter School Name<br />
                                        स्कूल का नाम दर्ज करे
                                    </label>
                                    <input class="form-control" type="text" placeholder="Enter School Name" />
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Select Vacant Panel<br />
                                         रिक्त पैनल का चयन करें
                                    </label>
                                    <select id="VacantPanel" class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="SSS-2">SSS-2</option>
                                        <option value="SSS-7">SSS-7</option>
                                        <option value="SSS-5">SSS-5</option>
                                        <option value="SSS-6">SSS-6</option>
                                        <option value="SSS-3">SSS-3</option>
                                    </select>
                                </div>
                            </div>
                          
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                      Upload Score Card<br />
                                        स्कोर कार्ड अपलोड करें
                                    </label>
                                    <input type="file" name="name" value=""  class="form-control" />
                                   
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="Alert-Save btn btn-outline-success btn-border w-lg">Apply for Post</button>
                                <a href="Trn_GFMSApplyForVacancy.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        $('.select2').select2()
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
                        text: "Do you want to apply for post ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                html: `Application Submitted Successfully! <br>  <p class="text fs-16 mb-0" style="/*font-weight: 500;*/">
                  Application Id: 12345</p > `,

                                // timer: 2000,
                                onClose: () => {


                                    //document.getElementById("fs_Registration").style.display = "none";
                                }
                            }
                            )
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

