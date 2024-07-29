<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BusStopToStudentEnrollment.aspx.cs" Inherits="mis_Transaction_BusStopToStudentEnrollment" %>


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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SchoolManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>School Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Bus Stop Enrollment(Student/Teacher) </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Bus Stop To Student Enrollment</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end">
                    <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" id="btnBack"
                        onclick="funBack()"><i class="bx bx-plus label-icon align-middle  me-2"></i>View Details</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset id="RegDetail">
                <legend>Bus Stop Enrollment / बस स्टॉप प्रक्रिया </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Enroll Type
                                <br />
                                प्रकार चुने<span style="color: red">*</span></span>
                            <select class="form-control" onchange="textchange(this.value)">
                                <option value="0">--Select--</option>
                                <option value="1">Student</option>
                                <option value="2">Teacher</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="Class">
                        <div class="form-group">
                            <span>Select Class
                                <br />
                                कक्षा का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control" id="class">
                                <option value="0">--Select--</option>
                                <option value="1">Class-1</option>
                                <option value="2">Class-2</option>
                                <option value="3">Class-3</option>
                                <option value="4">Class-4</option>
                                <option value="5">Class-5</option>
                                <option value="6">Class-6</option>
                                <option value="7">Class-7</option>
                                <option value="8">Class-8</option>
                                <option value="9">Class-9</option>
                                <option value="10">Class-10</option>
                                <option value="11">Class-11</option>
                                <option value="12">Class-12</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select <span class="Student">Student</span> Name
            <br />
                                <span class="Reg">विद्यार्थी</span> का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control" id="stdname">
                                <option value="0">--Select--</option>
                                <option value="1">Sagar-1554846</option>
                                <option value="2">Aparna-1548787</option>
                                <option value="3">Dheeraj-1548788</option>
                                <option value="4">Akshita-1548789</option>
                                <option value="5">Sita-1548790</option>
                                <option value="6">Gajendra-1548791</option>
                            </select>
                            <select class="form-control" id="teachername" style="display:none">
                                <option value="0">--Select--</option>
                                <option value="1">Sagar Sarkar</option>
                                <option value="2">Aparna Mokhede</option>
                                <option value="3">Dheeraj Malviya</option>
                                <option value="4">Akshita Pawar</option>
                                <option value="5">Sita Thapa</option>
                                <option value="6">Gajendra Nagle</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Bus Stop Route No.
            <br />
                                बस स्टॉप का रूट क्रमांक चुनें<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">RUT001</option>
                                <option value="1">RUT002</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Bus Stop Name
            <br />
                                बस स्टॉप का नाम चुनें<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">Gautam Nagar (09:45AM To 09:47AM)</option>
                                <option value="1">Rachna Nagar (09:50AM To 09:53AM)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Add</button>
                        <a href="BusStopToStudentEnrollment.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="dtls">
                <legend>Details / विवरण</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.
                     <br />
                                            क्रमांक </th>
                                        <th>Class<br />
                                            कक्षा</th>
                                        <th>Student Name<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Bus Stop Name
            <br />
                                            बस स्टॉप का नाम </th>
                                        <th>Bus Route No.
                                            <br />
                                            रूट क्रमांक
                                        </th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Class-5</td>
                                    <td>Pankaj Pandey</td>
                                    <td>Gautam Nagar  (09:45AM To 09:47AM)</td>
                                    <td>RUT001</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Class-6</td>
                                    <td>Ravi Shukla</td>
                                    <td>Rachna Nagar (09:50AM To 09:53AM)</td>
                                    <td>RUT002</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>

                            </table>
                        </div>
                        <div class="col-md-12">
                            <hr />
                            <div class="form-group">
                                <button type="button" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                                <a href="BusStopToStudentEnrollment.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="FsDetails" class="d-none">
                <legend>Bus Stop To Student Enrollment Report</legend>
                <div class="row align-items-endSearch">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Enroll Type
                                <br />
                                प्रकार चुने<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">Student</option>
                                <option value="2">Teacher</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Bus Route No.
                                <br />
                                बस रूट क्रमांक चुनें<span style="color: red">*</span></span>
                            <select class="form-control" id="dropdown1">
                                <option value="0">--Select--</option>
                                <option value="1">All Route</option>
                                <option value="2">RUT001</option>
                                <option value="3">RUT002</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3"  id="Classddl">
                        <div class="form-group">
                            <span>Select Class
             <br />
                                कक्षा का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">Class-1</option>
                                <option value="2">Class-2</option>
                                <option value="3">Class-3</option>
                                <option value="4">Class-4</option>
                                <option value="5">Class-5</option>
                                <option value="6">Class-6</option>
                                <option value="7">Class-7</option>
                                <option value="8">Class-8</option>
                                <option value="9">Class-9</option>
                                <option value="10">Class-10</option>
                                <option value="11">Class-11</option>
                                <option value="12">Class-12</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" id="search-btn" onclick="toggleElements()" class="btn btn-outline-success btn-border  w-lg">Search</button>
                            <a href="BusStopToStudentEnrollment.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="Details" class="d-none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end" id="element1">
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
                <div class="row" id="element2" style="display: none;">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.
                     <br />
                                            क्रमांक </th>
                                        <th>Route No.<br />
                                            रूट क्रमांक
                                        </th>
                                        <th>Bus Stop Name 
                                            <br />
                                            बस स्टॉप का नाम </th>
                                        <th>Class<br />
                                            कक्षा</th>
                                        <th>Student Name<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>RUT001</td>
                                    <td>Gautam Nagar (09:45AM To 09:47AM)</td>
                                    <td>Class-5</td>
                                    <td>Sagar Sarkar</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>RUT001</td>
                                    <td>Gautam Nagar (09:45AM To 09:47AM)</td>
                                    <td>Class-5</td>
                                    <td>Arpana Mokhede</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>RUT002</td>
                                    <td>Rachana Nagar (09:50AM To 09:53AM)</td>
                                    <td>Class-4</td>
                                    <td>Rahul Bisen</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
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
    <script>
        function toggleElements() {
            var dropdown1 = document.getElementById("dropdown1");
            var dropdown2 = document.getElementById("dropdown2");
            var element1 = document.getElementById("element1");
            var element2 = document.getElementById("element2");
            document.getElementById("Details").classList.add('d-none');

            // Hide element2 initially
            element1.style.display = "none";
            element2.style.display = "none";

            // Show element2 when a dropdown option is selected and the search button is clicked
            if (dropdown1.value !== "0" && dropdown2.value !== "0") {
                element1.style.display = "flex";
                element2.style.display = "block";
                document.getElementById("Details").classList.remove('d-none');
                // Add your data to the element2 div here
            }
        }</script>
    <script>
        var a = 1
        function funBack() {
            document.querySelector('#FsDetails').classList.toggle('d-none');
            document.querySelector('#RegDetail').classList.toggle('d-none');
            document.querySelector('#dtls').classList.toggle('d-none');

            if (a == 1) {
                document.querySelector('#btnBack').innerHTML = '<i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back';
                a = 2;
            }
            else {
                document.querySelector('#btnBack').innerHTML = "<i console.log();ass='bx bx-plus label-icon align-middle  me-2'></i>View Details";
                a = 1;
            }
        }

        function textchange(abc) {
            if (abc == "1") {
                $(".Student").each(function () { this.innerText = 'Student ' });
                $(".Reg").each(function () { this.innerText = 'विद्यार्थी ' });
                $("#Class").css("display", "inline-block")
                $("#stdname").css("display", "block")
                $("#teachername").css("display", "none")

            }
            else {
                $(".Student").each(function () { this.innerText = 'Teacher' });
                $(".Reg").each(function () { this.innerText = 'शिक्षक' });
                $("#Class").css("display", "none")
                $("#stdname").css("display", "none")
                $("#teachername").css("display", "block")
            }

        }

    </script>
</asp:Content>

