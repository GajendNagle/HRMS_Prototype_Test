<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_InstallmentApproval.aspx.cs" Inherits="mis_Development_Rpt_InstallmentApproval" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#DevelopmentReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')" aria-expanded="false"><span>Development Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Release Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Installment Release Report / 
                        किस्त जारी रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Installment Release Report / किश्त जारी रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-6  col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select District Name 
                            <br />
                                जिला का चयन करे<span style="color: red">*</span></label>
                            <select id="DistrictName" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Raisen">Raisen</option>
                                <option value="Rajgarh">Rajgarh</option>
                                <option value="Sehore">Sehore</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Ashoknagar">Ashoknagar</option>
                                <option value="Shivpuri">Shivpuri</option>
                                <option value="Datia">Datia</option>
                                <option value="Guna">Guna</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Harda">Harda</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Betul">Betul</option>
                                <option value="Morena">Morena</option>
                                <option value="Sheopur">Sheopur</option>
                                <option value="Bhind">Bhind</option>
                                <option value="Barwani">Barwani</option>
                                <option value="Burhanpur">Burhanpur</option>
                                <option value="Dhar">Dhar</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                From Date<br />
                                प्रारंभिक दिनांक से<span style="color: red">*</span></label>
                            <input class="form-control" name="Approvaldate" type="date" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                To Date<br />
                                अंतिम दिनांक तक<span style="color: red">*</span></label>
                            <input class="form-control" name="Approvaldate" type="date" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Search" class="btn btn-success btn-border" />
                        <a href="ProjectDetails.aspx" class="btn btn-outline-danger btn-border w-lg">Reset</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Installment Release Deatils / किश्त जारी विवरण</legend>
                <div class="row justify-content-end">
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्रमांक</th>
                                        <th>Project Code<br>
                                            परियोजना क्रमांक</th>
                                        <th>Project Date<br>
                                            परियोजना दिनांक</th>
                                        <th>Work Category<br />
                                            कार्य की श्रेणी</th>
                                        <th>Work Subcategory<br />
                                            कार्य का नाम</th>
                                        <th>OIS Code<br />
                                            OIS कोड</th>
                                        <th>Address<br />
                                            पता</th>
                                        <th>Work Description<br />
                                            कार्य का विवरण</th>
                                        <th>Estimated Budget Amount(In Rs) 
                                            <br />
                                            अनुमानित बजट</th>
                                        <th>Proposed Budget Amount(In Rs)<br />
                                            प्रस्तावित बजट</th>
                                        <th>Installment Release<br />
                                            किस्त जारी</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>P00019</td>
                                    <td>22/05/2023</td>
                                    <td>School Repair/Construction</td>
                                    <td>Building Repair</td>
                                    <td>Delhi Public School_44561</td>
                                    <td>Bhopal M.P</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>2nd Installment</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>P00014</td>
                                    <td>20/06/2023</td>
                                    <td>Drinking Water System</td>
                                    <td>Hand Pump Mining</td>
                                    <td>LCH Public School_75561</td>
                                    <td>Bhopal M.P</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>1st Installment</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>P00012</td>
                                    <td>12/05/2023</td>
                                    <td>School Road Construction</td>
                                    <td>CC Road Construction</td>
                                    <td>Delhi Public School_44561</td>
                                    <td>Bhopal M.P</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>4th Installment</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>P00020</td>
                                    <td>02/08/2023</td>
                                    <td>School Repair/Construction</td>
                                    <td>Building Repair</td>
                                    <td>SVM Public School_44165</td>
                                    <td>Betul M.P.</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                    <td>50000.00</td>
                                    <td>2nd Installment</td>
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
</asp:Content>

