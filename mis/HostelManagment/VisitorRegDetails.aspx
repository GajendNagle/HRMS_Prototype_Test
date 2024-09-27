<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VisitorRegDetails.aspx.cs" Inherits="mis_HostelManagment_VisitorRegDetails" %>

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
                        <%--<li class="breadcrumb-item">
              <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
          </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')">
                                <span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Visitors Registration Details</span></li>
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
                        <div class="headertext btn btn-primary rounded-pill">
                            विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                Visitors Registration Details/आगंतुकों का पंजीकरण
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Visitor Entry Details / आगंतुक प्रवेश विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server" style="white-space: nowrap">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No./<br />
                                            क्र.सं.</th>
                                        <th>Hostel Name /<br />
                                            छात्रावास का नाम</th>
                                        <th>Student Name /<br />
                                            छात्र का नाम</th>
                                        <th>Visitor Name /<br />
                                            आगंतुक का नाम</th>
                                        <th>Relation With Student /<br />
                                            छात्र के साथ संबंध</th>
                                        <th>Mobile No. /<br />
                                            मोबाइल नंबर</th>
                                        <th>Visitor Reason /<br />
                                            मुलाकात का कारण</th>
                                        <th>Visit Date /<br />
                                            मुलाकात की तिथि</th>
                                        <th>ID Proof Type /<br />
                                            आईडी प्रूफ़ का प्रकार</th>
                                        <th>Document /<br />
                                            दस्तावेज़</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Boys Government Hostel</td>
                                        <td>Anand</td>
                                        <td>Ajay</td>
                                        <td>Daughter</td>
                                        <td>8569875698</td>
                                        <td>dsgdnkb</td>
                                        <td>05/09/2024</td>
                                        <td>Adhar Card</td>
                                        <td><a class="btn btn-outline-primary"><i class="ri-eye-line"></i></a></td>
                                        <td><a class="btn btn-outline-primary">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Boys Government Hostel</td>
                                        <td>Bhavesh</td>
                                        <td>Ajay</td>
                                        <td>Daughter</td>
                                        <td>58478963258</td>
                                        <td>dsgdnkb</td>
                                        <td>11/09/2024</td>
                                        <td>PAN Card</td>
                                        <td><a class="btn btn-outline-primary"><i class="ri-eye-line"></i></a></td>
                                        <td><a class="btn btn-outline-primary">Delete</a></td>
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

