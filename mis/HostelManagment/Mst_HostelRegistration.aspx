<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HostelRegistration.aspx.cs" Inherits="mis_HostelManagment_HostelManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HostelManagement" title="click to go on">Hostel Management</a></li>
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">Hostel Registration</a></li>
                </ol>
            </div>

        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Hostel Registration/छात्रावास पंजीकरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Hostel Registration/छात्रावास पंजीकरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Hostel Name<br />
                                    छात्रावास का नाम दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Hostel Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Total Number of Rooms<br />
                                    कक्ष की कुल संख्या दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Total Number of Rooms" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Hostel Type<br />
                                    छात्रावास का प्रकार चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">--Select --</option>
                                    <option value="1">KGBV Girls Hostel</option>
                                    <option value="2">KGBV Boys Hostel</option>
                                    <option value="3">KGBV Combine Hostel</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Intake Capacity of Students<br />
                                    छात्रों की प्रवेश क्षमता दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Intake Capacity of Students" />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Hostel Address<br />
                                    छात्रावास पता दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Address" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Hostel Incharge Name<br />
                                    छात्रावास प्रभारी का नाम दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Hostel Incharge Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Mobile Number<br />
                                    मोबाइल नंबर दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Mobile Number" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="col-md-12">
                    <div class="form-group text-center">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                        <a href="Mst_HostelManagement.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <fieldset id="HostlInfo" style="display: none;">
        <legend>Hostel Registration Detail/छात्रावास पंजीकरण विवरण</legend>
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
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th scope="col">Sr.No.<br />
                                            क्र.सं.</th>
                                        <th scope="col">Hostel Name<br />
                                            छात्रावास का नाम </th>
                                        <th scope="col">Total No. of Rooms<br />
                                            कक्ष की कुल संख्या </th>
                                        <th scope="col">Hostel Type<br />
                                            छात्रावास प्रकार   </th>
                                        <th scope="col">Intake Capacity of Students<br />
                                            छात्रों की प्रवेश क्षमता</th>
                                        <th scope="col">Hostel Address<br />
                                            छात्रावास पता </th>
                                        <th scope="col">Hostel Incharge Name<br />
                                            छात्रावास प्रभारी का नाम </th>
                                        <th scope="col">Mobile Number<br />
                                            मोबाइल नंबर </th>
                                        <th scope="col">Action
                                            <br />
                                            कार्रवाई </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Girls Hostel Phutera</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <a>250</a>

                                        </td>
                                        <td align="center" valign="middle">
                                            <a>KGBV Girls Hostel</a>

                                        </td>
                                        <td align="center" valign="middle">
                                            <span>150</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Phutera</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <a>Sita Kumari</a>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>7898789878</span>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

