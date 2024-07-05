<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MessDetails.aspx.cs" Inherits="mis_HostelManagment_MessDetails" %>

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

                        <li class="breadcrumb-item">Mess Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Mess Details / मेस विवरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Mess Details / मेस विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Name<br />
                                    हॉस्टल नाम चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">KGBV Girls Hostel</option>
                        <option value="2">KGBV Boys Hostel</option>
                        <option value="3">KGBV Combine Hostel</option>
                    </select>
                            </div>
                        </div>
                       <%-- <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Mess Fees Gender/
                                    <br />
                                    लिंग के अनुसार मेस का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Single">Boys</option>
                                    <option value="Double">Girls</option>
                                </select>
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Applicable Category<br />
                                    उपयुक्त वर्ग का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="101">Primary</option>
                                    <option value="201">Medium</option>
                                    <option value="102">Higher Secondary</option>
                                    <option value="202">Higher Senior Secondary</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Mess Fees<br />
                                    मेस शुल्क
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Mess Fees" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Applicable From<br />
                                    दिनांक से लागू
                                </label>
                                <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                   </div>
                      <div class="col-md-12">
                          <hr />
                    <div class="form-group text-center">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('FS_Details').style.display = 'block'">Save</button>
                        <a href="MessDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
                </fieldset>
              
                <fieldset id="FS_Details" style="display: none">
        <legend>Mess Details / मेस विवरण</legend>
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

            <div class="col-lg-12" runat="server" id="dvStudentDetails">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th>Sr. No.
                                    <br />
                                            क्र.सं.
                                        </th>
                                        <th> Hostel Name 
                                            <br />
                                            हॉस्टल नाम </th>
                                        <%--<th>Mess Fees Gender
                                            <br />
                                            लिंग के अनुसार मेस</th>--%>
                                        <th>Applicable Category 
                                            <br />
                                            उपयुक्त वर्ग</th>
                                        <th>Mess Fees 
                                            <br />
                                            मेस शुल्क</th>
                                        <th>Applicable From 
                                            <br />
                                            दिनांक से लागू
                                        </th>
                                        <th scope="col">Action
                                            <br />
                                            कार्यवाही </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td>1</td>
                                        <td>KGBV Girls Hostel</td>
                                        <%--<td>Girls</td>--%>
                                        <td>Primary</td>
                                        <td>1000/-</td>
                                        <td>4/6/2024</td>
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
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

