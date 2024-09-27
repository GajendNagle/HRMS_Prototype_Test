<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudendRoomChangeProcess.aspx.cs" Inherits="mis_HostelManagment_StudendRoomChangeProcess" %>

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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Student Hostel/Room Change Process</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            विवरण
                        </div>
                        <div class="">
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                               Student Hostel/Room Change Process /  छात्र छात्रावास/कक्ष परिवर्तन प्रक्रिया
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>Student Hostel/Room Change Process /  छात्र छात्रावास/कक्ष परिवर्तन प्रक्रिया</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Type /
                                    <br />
                                    प्रकार  चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2" onchange="funtShow()" id="val">
                                    <option selected="selected" value="0">--Select --</option>
                                    <%--<option value="1">KGBV Girls Hostel</option>--%>
                                    <option value="1">Hostel Change Process </option>
                                    <option value="2">Room Change Process </option>
                
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Name/
                                    <br />
                                    हॉस्टल नाम चयन करे<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">--Select --</option>
                                    <%--<option value="1">KGBV Girls Hostel</option>--%>
                                    <option value="2">KGBV Boys Hostel</option>
                                    <option value="3">KGBV Combine Hostel</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3"  id="A2" style="display:none" >
                            <div class="form-group">
                                <label>
                                    Hostel Incharge/<br />
                                    छात्रावास प्रभारी<span style="color: red;">*</span>
                                </label>
                                <input type="text" class="form-control" placeholder="Hostel Incharge" disabled value="Aman Prakash" />
                            </div>
                        </div>

                           <div class="col-md-3" id="A1" style="display:none">
                            <div class="form-group">
                                <label>
                                    Available Room/<br />
                                    उपलब्ध कक्ष<span style="color: red;">*</span>
                                </label>
                                <input type="text" class="form-control" placeholder="Available Room" disabled value="5 "  />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Student Name/
                                    <br />
                                    विद्यार्थी का नाम चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">--Select --</option>
                                    <option value="1">Radhe Lal (STUD0025) </option>
                                    <option value="2">Om Prakash (STUD0029) </option>
                                    <option value="3">Ram lal (STUD0088) </option>
                                </select>
                            </div>
                        </div>

                        <%--                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Allocation Date/<br />
                                    आवंटन तिथि<span style="color: red;">*</span>
                                </label>
                                <input type="date" class="form-control" placeholder="Allocation Date" />
                            </div>
                        </div>--%>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                    Remark/<br />
                                    टिप्पणी<span style="color: red;">*</span>
                                </label>
                                <textarea class="form-control" rows="1" placeholder="Remark"></textarea>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group ">
                            <button type="button" class=" btn btn-success w-lg btn-border" onclick="document.getElementById('FS_Details').style.display = 'block'">Save</button>
                            <a href="Mst_RoomType.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>

            </div>

            <fieldset id="FS_Details" style="display: none;">
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
                            <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table class="table table-bordered text-center" id="mainTable">
                                <thead>
                                    <tr>
                                        <th>Sr. No./<br />

                                            क्रमांक
                                        </th>
                                        <th>Hostel Name/<br />

                                            छात्रावास का नाम
                                        </th>
                                        <th>Hostel Incharge/<br />
                                            छात्रावास प्रभारी
                                        </th>
                                        <th>Available Room/<br />
                                            उपलब्ध कक्ष</th>
                                        <th>Apply Date/<br />
                                            आवेदन तिथि</th>
                                        <th>Remark/<br />
                                            टिप्पणी
टिप्पणी 
                            
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>KGBV Boys Hostel</td>
                                        <td>Ram Lal</td>
                                        <td>2</td>
                                        <td>01/09/2024</td>
                                        <td>Personal Issues</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <script>
        function funtShow() {
            var check = document.getElementById("val");

            var A1 = document.getElementById("A1");
            var A2 = document.getElementById("A2");

            if (check.value == "1") {
                A1.style.display = "none";
                A2.style.display = "none";
            }

            else if (check.value == "2") {
                A1.style.display = "block";
                A2.style.display = "block";
            }
            else {
                A1.style.display = "none";
                A2.style.display = "none";
            }


        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

