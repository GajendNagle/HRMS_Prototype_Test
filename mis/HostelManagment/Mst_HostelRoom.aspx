<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HostelRoom.aspx.cs" Inherits="mis_HostelManagment_Mst_HostelRoom" %>

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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">Hostel Management</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Add Hostel Room /छात्रावास कक्ष जोड़ें
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Add Hostel Room /छात्रावास कक्ष जोड़ें</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Room Number/ Name<br />
                                    कक्ष संख्या/नाम दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Room Number/ Name" />
                            </div>
                        </div>
                         <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Hostel <br />छात्रावास चुनें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="101">Boys Hostel 101</option>
                                <option value="201">Girls Hostel 201</option>
                                <option value="102">Boys Hostel 102</option>
                                <option value="102">Girls Hostel 202</option>
                            </select>
                        </div>
                    </div>
                          <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Room Type <br />कक्ष के प्रकार चुनें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="101">One Bed</option>
                                <option value="201">AC One Bed</option>
                                <option value="102">Two Bed</option>
                                <option value="102">AC Two Bed</option>
                            </select>
                        </div>
                    </div>
                         <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter No. of Bed<br />
                                    बिस्तर की संख्या दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter No. of Bed" />
                            </div>
                        </div>
                         <div class="col-md-3">
                            <div class="form-group">
                                <label>Cost Per Bed<br />
                                    प्रति बिस्तर लागत<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Cost per Bed" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Description<br />
                                    विवरण दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Description" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="col-md-12">
                    <div class="form-group text-center">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                        <a href="Mst_RoomType.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <fieldset id="HostlInfo" style="display: none;">
                <legend>Hostel Room Detail/छात्रावास कक्ष विवरण</legend>
                 <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">Excel</button>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-100">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center" >
                                        <thead>
                                            <tr role="row">
                                                <th scope="col">Sr.No.<br />क्र.सं.</th>
                                                <th scope="col">Room Number/ Name<br />कक्ष संख्या/नाम</th>
                                                <th scope="col"> Hostel Type<br />छात्रावास चुनें   </th>
                                                <th scope="col"> Address<br />पता </th>
                                               <th scope="col"> Intake Capacity of Students<br />छात्रों की प्रवेश क्षमता</th>
                                                <th scope="col"> Description<br />विवरण </th>
                                                <th scope="col"> Action <br />कार्रवाई </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><span >1</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <span >201 Girls Hostel</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a>Girl</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a>Phutera</a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span>50</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span >Multiple occupancy 1 bed AC</span>
                                                </td>
                                         <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                          
                                        </tbody>
                                      
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </fieldset>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

