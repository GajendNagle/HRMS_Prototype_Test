<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ClaimExperienceCertificate.aspx.cs" Inherits="mis_GuestFacultyManagement_Trn_ClaimExperienceCertificate_" %>

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

                        <li class="breadcrumb-item"><span>Claim Experience Certificate</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-9">
                    <h4 class="card-title">Request For Experience Certificate /
                        अनुभव प्रमाण पत्र के लिए अनुरोध</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Register Experience Claim   / अनुभव का दावा पंजीकृत करें </legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Academic Year 
              <br />
                                शैक्षणिक वर्ष <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>
                                <option value="2020">2020-21</option>
                                <option value="2019">2019-20</option>
                                <option value="2018">2018-19</option>
                                <option value="2016">2017-18</option>
                                <option value="2015">2016-17</option>
                                <option value="2015">2015-16</option>
                                <option value="2014">2014-15</option>
                                <option value="2013">2013-14</option>
                                <option value="2012">2012-13</option>



                                <option value="2011">2011-12</option>
                                <option value="2010">2010-11</option>
                                <option value="2009">2009-10</option>
                                <option value="2008">2008-09</option>
                                <option value="2007">2007-08</option>
                            </select>
                        </div>
                    </div>
                    <%--   <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Dise Code
                            <br />
                                डाइस कोड <span style="color: red">*</span></label>
                            <input class="form-control" />
                        </div>
                    </div>--%>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Guest Faculty  ID/ Mobile Number
                            <br />
                                 अतिथि शिक्षक की आइडी/ मोबाइल नंबर <span style="color: red">*</span></label>
                            <input class="form-control flatpickr-input" placeholder="Enter Mobile Number" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Date Of Birth
                            <br />
                                जन्म तिथि <span style="color: red">*</span></label>
                            <input type="date" class="form-control" data-provider="flatpickr" data-altformat="j F Y" placeholder="Fill Date Of Birth" />
                        </div>
                    </div>

                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('showAll').style.display='block'">View</button>
                        <a href="Trn_ClaimExperienceCertificate.aspx" role="button" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>


            <div id="showAll" class="row" style="display: none">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Details / विवरण</legend>
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
                        <div class="table-responsive">
                            <table class="table">

                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No. 
                                            <br>
                                            सरल क्र. </th>
                                        <th>School Udise Code - School Name
                                        <br>
                                           स्कूल यूडाइस कोड - स्कूल का नाम
                                        </th>
                                        <th>    Guest Faculty  ID/ Mobile Number
<br />
     अतिथि शिक्षक की आइडी/ मोबाइल नंबर 
                                        </th>
                                        <th>Name
                                        <br>
                                            नाम
                                        </th>
                                        <th>Date Of Birth
                                            <br />
                                            जन्म तिथि
                                        </th>
                                        <th>Academic Year
                                            <br />
                                            शैक्षणिक वर्ष 
                                        </th>
                                        <th>Working Period 
                                        <br>कार्य की अवधि 
                                            
                                        </th>
                                        <th>Action                                                                                  
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>23350804904 - GOVT. HSS GOULA</td>
                                        <td>9638527410</td>
                                        <td>Ramesh Laal</td>
                                        <td>28/07/1995</td>
                                        <td>2022-23</td>
                                        <td>August to October</td>
                                        <td>August to October</td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>23350811106 - GOVT. HSS JOULKHEDA</td>
                                        <td>9638527410</td>
                                        <td>Ramesh Laal</td>
                                        <td>28/07/1995 </td>
                                        <td>2023-24 </td>
                                        <td>September </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <hr />
                                <button type="button" class=" Alert-ClaimConfirmation btn btn-outline-success btn-border w-lg">Request For Claim  </button>
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
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic

                $('.Alert-ClaimConfirmation').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Register Experience Claim Form ?",
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
                                text: 'Experience Claim Form Registered Successfully!',
                                timer: 2000,
                                //onClose: () => {
                                //    document.getElementById('PrintClaimForm').style.display = 'block'
                                //}

                                
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
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

