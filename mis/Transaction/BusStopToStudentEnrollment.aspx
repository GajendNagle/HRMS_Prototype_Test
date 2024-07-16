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
                <div class="col-lg-12">
                    <h4 class="card-title">Bus Stop Enrollment Process / बस स्टॉप प्रक्रिया</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Bus Stop Enrollment / बस स्टॉप प्रक्रिया </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Enroll Type
                                <br />
                                प्रकार चुने <span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">Student</option>
                                <option value="2">Teacher</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Bus Stop Name Route No.
            <br />
                                बस स्टॉप का नाम एवं रूट क्रमांक चुनें <span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">Gautam Nagar RUT001</option>
                                <option value="1">rachna Nagar RUT002</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Student Name
            <br />
                                विद्यार्थी का नाम चुनें <span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">Sagar</option>
                                <option value="2">Aparna</option>
                                <option value="3">Dheeraj </option>
                                <option value="4">Akshita</option>
                                <option value="5">Sita</option>
                                <option value="6">Gajendra</option>
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
            <fieldset>
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
                                        <th>Bus Stop Name & Route No.
            <br />
                                            बस स्टॉप का नाम एवं रूट क्रमांक</th>
                                        <th>Vehicle No.
                     <br />
                                            वाहन क्रमांक </th>
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
                                    <td>Gautam Nagar RUT001</td>
                                    <td>MP04AB1196</td>
                                    <td>Class-5</td>
                                    <td>Pankaj Pandey</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>rachna Nagar RUT002</td>
                                    <td>MP04CD5154</td>
                                    <td>Class-6</td>
                                    <td>Ravi Shukla</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="BusStopToStudentEnrollment.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Bus Route No.
                                <br />
                                बस रूट क्रमांक चुनें <span style="color: red">*</span></span>
                            <select class="form-control" id="dropdown1">
                                <option value="0">--Select--</option>
                                <option value="1">All Route</option>
                                <option value="2">RUT001</option>
                                <option value="3">RUT002</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Class
             <br />
                                कक्षा का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control" id="dropdown2" ">
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
                    <hr />
                    <div class="col-md-12 mt-3">
                        <button type="button" id="search-btn" onclick="toggleElements()" class="btn btn-outline-success btn-border  w-lg">Search</button>
                        <a href="BusStopToStudentEnrollment.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
                <div class="row justify-content-end" id="element1" style="display: none;">
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
                                    <td>Gautam Nagar</td>
                                    <td>Class-5</td>
                                    <td>Sagar</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>RUT001</td>
                                    <td>Gautam Nagar</td>
                                    <td>Class-5</td>
                                    <td>Aparna Mokhede</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>RUT002</td>
                                    <td>rachana Nagar</td>
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

            // Hide element2 initially
            element1.style.display = "none";
            element2.style.display = "none";

            // Show element2 when a dropdown option is selected and the search button is clicked
            if (dropdown1.value !== "0" && dropdown2.value !== "0") {
                element1.style.display = "flex";
                element2.style.display = "block";
                // Add your data to the element2 div here
               
            }
        }</script>
</asp:Content>

