<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewGuestFacultyRegistration.aspx.cs" Inherits="mis_GuestFacultyManagement_ViewGuestFacultyRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>GFMS</span></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#SankulVerification" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Sankul Verification</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">View Guest Faculty Registration</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">View Guest Faculty Registration /
                                अतिथि संकाय पंजीकरण देखें</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>View Guest Faculty Registration /
                                अतिथि संकाय पंजीकरण देखें</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Profile ID
 <br />
                                        प्रोफ़ाइल आई.डी<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" value="GF0012" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Mobile number as registered in the Application<br />
                                        आवेदन में पंजीकृत मोबाइल नंबर का चयन करें<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" value="Enter Mobile number as registered in the Application" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Qualification
   <br />
                                        योग्यता का चयन करें<span style="color: red;"> *</span>
                                    </label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">High School</option>
                                        <option value="2">HSS(11th/12th)</option>
                                        <option value="3">Graduate</option>
                                        <option value="4">B.Ed</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Date of Birth
 <br />
                                        जन्म तिथि दर्ज करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="4" class="form-control" autocomplete="off" value="2023-12-10" />
                                </div>
                            </div>

                            <hr />
                            <div class="col-md-12 justify-content-center">
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                    <a id="clearfirst" href="ViewGuestFacultyRegistration.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No.
                                                    <br />
                                                    क्रमांक
                                                </th>
                                                <th>Guest Faculty Name
                                                    <br />
                                                    अतिथि संकाय का नाम</th>
                                                <th>Qualification 
                                            <br />
                                                    योग्यता</th>
                                                <th>Subject
                                            <br />
                                                    विषय
                                                </th>
                                                <th>Board
                                            <br />
                                                    बोर्ड
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Neelesh Gogiya</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Graduaction</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Computer</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>State govt university</a>
                                                </td>

                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Ramesh Nanda </span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Post Graduate </a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Commerce</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>State govt university</a>
                                                </td>

                                            </tr>

                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>

                    </fieldset>



                    <fieldset id="FS_Details" style="display: none">

                        <legend>Basic Details </legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Profile ID
 <br />
                                        प्रोफ़ाइल आई.डी<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" value="GF0012" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Enter Name 
 <br />
                                        नाम दर्ज करें <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Name" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Father's/Husband's Name 
 <br />
                                        पिता/पति का नाम दर्ज करें<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Father's/Husband's Name " />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Date of Birth
 <br />
                                        जन्म तिथि दर्ज करें<span style="color: red;"> *</span></label>
                                    <input name="ctl00$ContentBody$TextBox5" type="date" id="4" class="form-control" autocomplete="off" value="2023-12-10" />
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Gender
 <br />
                                        लिंग का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-select select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Category
 <br />
                                        श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-select select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="General">General</option>
                                        <option value="OBC">OBC</option>
                                        <option value="ST">ST</option>
                                        <option value="SC">SC</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Mobile No.
 <br />
                                        मोबाइल नंबर दर्ज करें<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Mobile No." />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Email
 <br />
                                        ईमेल दर्ज करें<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Email" />
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <h4>Qualification Details /
                                योग्यता विवरण</h4>
                        </div>

                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No.
                                                    <br />
                                                    क्र.सं.
                                                </th>
                                                <th>Board/University<br />
                                                    बोर्ड/विश्वविद्यालय</th>
                                                <th>Qualification 
                                            <br />
                                                    योग्यता </th>
                                                <th>Course
                                            <br />
                                                    शृंखला
                                                </th>
                                                <th>Subject
                                            <br />
                                                    विषय
                                                </th>
                                                <th>Year
                                            <br />
                                                    वर्ष
                                                </th>
                                                <th>Roll Number
                                            <br />
                                                    रोल नंबर
                                                </th>
                                                <th>Total Marks
                                            <br />
                                                    कुल मार्क
                                                </th>
                                                <th>Obtained Marks
                                            <br />
                                                    प्राप्त अंक
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>MP Board</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>High School</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>All</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>All</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>2012-10</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>116528203</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>600.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>428.00</a>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>MP Board</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>HSS (11th/12th)</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>HSS PCM</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>PCM</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>2012-13</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>236319077</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>500.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>292.00</a>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>State Govt. University</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Graduate</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>B.Sc</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>Computer Science</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>2016-15</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>14157421</a>

                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>3700.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>2362.00</a>
                                                </td>
                                            </tr>

                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <h4>Experience Details</h4>
                                <hr />
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        क्या आवेदक शासकीय विद्यालय से सेवानिवृत्त शिक्षक है
                                    </label>
                                    <select class="form-select select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-4">
                                <label>Verification </label>
                                <input id="chck1" type="checkbox" name="" />
                            </div>
                            <div class="col-md-4">
                                <label>Rejection</label>
                                <input id="chck2" type="checkbox" name="" onclick="function ()"/>
                            </div>
                        <div class="col-md-12" id="remark" style="display: none">
                               <label>
                                    Remark(Reason for Rejection)आवेदन को रिजेक्ट करने की स्थिति में अस्वीकार करने के सभी करण स्पष्ट रूप से अंकित करे:
                                </label>
                             <textarea name="comments" id="comments" rows="1" cols="40" style="font-family: sans-serif; font-size: 1.2em; height: 41px;" dir="ltr"></textarea>

                            </div>
                        
                        <hr />
                </div>


                <div class="col-md-12 ">
                    <div class="form-group text-center">
                        <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save">Save</button>
                        <a id="cc" href="ViewGuestFacultyRegistration.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                    </div>


                </div>
                </fieldset>
            </div>


        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
     <script>
        $('.Alert-Save').click(function () {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to save this record ?",
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
                        html: `The Application Verified Successfully!  <br>  <p class="text fs-16 mb-0" style="/*font-weight: 500;*/">
                                Please Print Verified Application</p > `,

                        // timer: 2000,
                        onClose: () => {

                            //$('#RegSuccessModel').modal('show'); // Assuming your modal has an id of 'myModal'
                            //document.getElementById("fs_PersonalInfo").style.display = "block";
                            //document.getElementById("fs_AddressInfo").style.display = "block";
                            //document.getElementById("fs_Registration").style.display = "none";
                        }
                    }
                    )
                }
            })
        });


        const checkbox = document.getElementById('chck2');
        const remarkSection = document.getElementById('remark');

        checkbox.addEventListener('change', function () {
            if (this.checked) {
                remarkSection.style.display = 'block'; // Show the remark section
            } else {
                remarkSection.style.display = 'none'; // Hide the remark section
            }
        });
     </script>
</asp:Content>

