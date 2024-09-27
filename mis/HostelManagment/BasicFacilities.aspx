<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BasicFacilities.aspx.cs" Inherits="mis_HostelManagment_BasicFacilities" %>

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

                        <li class="breadcrumb-item">Basic Facilities</li>
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
                          छात्रावास मूल सुविधाएं मास्टर  विवरण
                        </div>
                        <div class="">
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                Hostel Basic Facility Master / छात्रावास मूल सुविधाएं मास्टर
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>Hostel Basic Facility Master /छात्रावास मूल सुविधाएं मास्टर</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Facility Name /<br />
                                    सुविधा का नाम दर्ज करें<span style="color: red;">*</span>
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Facility Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="checkbox" class="form-check-input" />
                                <label class="form-check-label">                                
                                    Status (Active/InActive) /<br />
                                    स्थिति (सक्रिय/निष्क्रिय)
                                </label>

                            </div>
                        </div>

                    </div>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group ">
                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('FS_Details').style.display = 'block'">Save</button>
                            <a href="Mst_RoomType.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                        <span class="text-danger fw-bold">Note :-All Asterisk (*) Marked Fields Are Mandatory / तारांकन (*) से चिह्नित सभी फ़ील्ड अनिवार्य हैं |</span>
                    </div>
                </fieldset>


            </div>

            <fieldset id="FS_Details" style="display:none">
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
                                            क्र.सं.
                                        </th>
                                        <th>Facility Name/ <br />
                                            सुविधाएं का नाम
                                        </th>
                                        <th>Status<br />(Active - Yes /InActive - No)
                                      
                                        </th>
                                        <th>Actions/<br />कार्यवाही
                                          </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>24-hour Wi-Fi facilities</td>         
                                        <td><a href="#" class="btn btn-primary">Yes</a></td>
                                        <td><a href="#" class="btn btn-outline-primary"><i class="ri-edit-2-line"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Water Purifier </td>
                                        <td><a href="#" class="btn btn-primary">Yes</a></td>
<td><a href="#" class="btn btn-outline-primary"><i class="ri-edit-2-line"></i></a></td>

                                   
                                       
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Parking </td>         
                                        <td><a href="#" class="btn btn-primary">Yes</a></td>
                                        <td><a href="#" class="btn btn-outline-primary"><i class="ri-edit-2-line"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Guest Rooms </td>         
                                        <td><a href="#" class="btn btn-primary">Yes</a></td>
                                        <td><a href="#" class="btn btn-outline-primary"><i class="ri-edit-2-line"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Reading Room </td>         
                                        <td><a href="#" class="btn btn-primary">Yes</a></td>
                                        <td><a href="#" class="btn btn-outline-primary"><i class="ri-edit-2-line"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

