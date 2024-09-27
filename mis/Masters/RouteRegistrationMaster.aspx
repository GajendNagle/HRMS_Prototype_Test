<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RouteRegistrationMaster.aspx.cs" Inherits="mis_Masters_RouteRegistrationMaster" %>

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
                        <li class="breadcrumb-item">Route Registration</li>
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
                        <div class="headertext btn btn-primary rounded-pill">Route Registration</div>
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
            <div class="card-body">
                <asp:Label runat="server" ID="lblMsg"></asp:Label>
                <fieldset id="RegDetail">
                    <legend>Add Route Registration / मार्ग पंजीकरण जोड़े</legend>
                    <div class="row align-items-end">
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    Enter Route Details<br />
                                    मार्ग की जानकारी दर्ज करे<span style="color: red">*</span></label>
                                <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Route Number" onkeypress="return hindiOnly();" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <hr />
                            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                            <a href="RouteRegistrationMaster.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="FsDetails" class="d-none">
                    <legend>Route Details / मार्ग विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2" id="searchbtn">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row" id="tableData">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr. No.
                                     <br />
                                                सरल क्र.</th>
                                            <th>Route Detail
                                     <br />
                                                मार्ग का विवरण</th>
                                            <th>Action<br />
                                                कार्यवाहीं</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>RUT001</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>RUT002</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>RUT003</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>RUT004</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>RUT005</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>

        function showTable() {
            document.getElementById("tableData").style.display = "block";
            document.getElementById("tablefd").style.display = "block";
            document.getElementById("searchbtn").style.display = "block";
        }
    </script>
    <script>
        var a = 1
        function funBack() {
            document.querySelector('#FsDetails').classList.toggle('d-none');
            document.querySelector('#RegDetail').classList.toggle('d-none');
            if (a == 1) {

                document.querySelector('#btnBack').innerHTML = '<i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back';
                a = 2;
            }
            else {
                document.querySelector('#btnBack').innerHTML = "<i class='bx bx-plus label-icon align-middle  me-2'></i>View Details";
                a = 1;
            }

        }
    </script>
</asp:Content>

