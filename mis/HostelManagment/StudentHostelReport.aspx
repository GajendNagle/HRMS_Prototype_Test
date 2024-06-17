<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentHostelReport.aspx.cs" Inherits="mis_HostelManagment_StudentHostelReport" %>

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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">Hostel Management</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <fieldset>
        <legend>Student Hostel Report /  छात्र छात्रावास रिपोर्ट</legend>
        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Class /<br />
                        कक्षा</label>
                    <select class="form-control select2" id="ddlclass">
                        <option selected="selected" value="All">--Select --</option>
                        <option value="1">Class 1</option>
                        <option value="2">Class 2</option>
                        <option value="3">Class 3</option>
                        <option value="4">Class 4</option>
                        <option value="5">Class 5</option>
                        <option value="6">Class 6</option>
                        <option value="7">Class 7</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Hostel Type /<br />
                        छात्रावास का प्रकार</label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">Girls </option>
                        <option value="2">Boys</option>
                        <option value="3">Combine</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Room Type/
   <br />
                        कक्ष प्रकार
                    </label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">One Bed </option>
                        <option value="2">AC One Bed</option>
                        <option value="3">Two Bed</option>
                        <option value="4">AC Two Bed</option>
                    </select>
                </div>
            </div>
            <hr />
            <div class="col-md-12 justify-content-end">
                <div class="form-group text-center">
                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset id="FS_Details" style="display: none">
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

                    <table class="table table-bordered" id="mainTable">
                        <thead>
                            <tr>
                                <th>Sr. No.
                                    <br />
                                    क्र.सं.
                                </th>
                                <th>Class
                                    <br />
                                    कक्षा</th>
                                <th>Student Name 
                                            <br />
                                    छात्र का नाम</th>
                                <th>Mobile Number 
                                            <br />
                                    मोबाइल नंबर</th>
                                <th>Parent Name 
                                            <br />
                                    अभिभावक का नाम
                                </th>
                                <th>Hostel Name 
                                            <br />
                                    छात्रावास का नाम
                                </th>
                                <th>Room No./ Name 
                                            <br />
                                    कक्ष नंबर/ नाम
                                </th>
                                <th>Room Type <br />
                                    कक्ष प्रकार
                                </th>
                                <th>Cost Per Bed 
                                            <br />
                                    प्रति बिस्तर लागत
                                </th>
                            </tr>
                            <tr>
                                <td> 1</td>
                                <td> Class 5</td>
                                <td> Rohan Sharma</td>
                                <td> 9898978787</td>
                                <td> V.S Sharma</td>
                                <td> Boys Hostel</td>
                                <td> 101, B Block</td>
                                <td> AC Two Bed</td>
                                <td> Rs. 8000/-</td>
                            </tr>
                            <tr>
                                <td> 2</td>
                                <td> Class 4</td>
                                <td> Jay Verma</td>
                                <td> 7878989897</td>
                                <td> J.K Verma</td>
                                <td> Boys Hostel</td>
                                <td> 102, A Block</td>
                                <td> Non AC Two Bed</td>
                                <td> Rs. 5000/-</td>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </fieldset>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

