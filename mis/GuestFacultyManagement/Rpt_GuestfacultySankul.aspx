<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_GuestfacultySankul.aspx.cs" Inherits="mis_GuestFacultyManagement_Rpt_GuestfacultySankul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">



    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <fieldset style="padding: 10px;">

                        <div class="row mt-4 align-items-end">
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Name (In English)/
                          <br />
                                        नाम
                                    </label>
                                    <input type="text" id="txtNameEnglish" readonly class="form-control" placeholder="Raman Verma" />
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Name (In Hindi) /
                          <br />
                                        नाम</label>
                                    <input type="text" id="txtNameHindi" readonly class="form-control" placeholder="रमण वर्मा" />
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Gender /
                  <br />
                                        लिंग</label>
                                    <input type="text" id="Gender" readonly class="form-control" placeholder="Male" />
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Mobile No. /
                  <br />
                                        मोबाइल नंबर
                                    </label>
                                    <input type="text" id="Mobile" readonly class="form-control" placeholder="9876543210" />
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Date of Birth /
                  <br />
                                        जन्म तिथि</label>
                                    <input type="date" id="DOB" readonly class="form-control" placeholder="01/01/1990" />
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Category /<br />
                                        श्रेणी
                                    </label>
                                    <input type="text" id="Category" readonly class="form-control" placeholder="General" />

                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Father's Name /<br />
                                        पिता का नाम 
                                    </label>
                                    <input type="text" id="FatherName" readonly class="form-control" placeholder="Mr.Satish Varma" />
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Mother's Name /<br />
                                        माता का नाम 
                                    </label>
                                    <input type="text" id="MotherName" readonly class="form-control" placeholder="Mrs.shobha Varma" />
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Family Samagra ID /
                  <br />
                                        परिवार समग्र आईडी 
                                    </label>
                                    <input type="text" id="FamilyId" readonly class="form-control" placeholder="1234567890" />
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Marital Status /
                  <br />
                                        वैवाहिक स्थिति
                                    </label>
                                    <input type="text" id="MaritalStatus" readonly class="form-control" placeholder="Married" />

                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label>
                                        Email ID /<br />
                                        ईमेल आईडी 
                                    </label>
                                    <input type="text" id="EmailID" readonly class="form-control" placeholder="raman123varma@example.com" />
                                </div>
                            </div>
                        </div>
                    </fieldset>

                </div>



            </div>




            <div class="modal-footer justify-content-center">
                <%--<button type="button" class="btn btn-outline-primary" onclick="window.print()">Print</button>
            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>--%>
            </div>

        </div>
    </div>

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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GFMSReports" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Reports</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Sankul Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Guest Faculty Report /
                             अतिथि शिक्षक रिपोर्ट </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Guest faculty Report / अतिथि शिक्षक रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Academic Year 
                                <br />
                                शैक्षणिक वर्ष का चयन करें <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>
                                <option value="2020">2020-21</option>
                                <option value="2019">2019-20</option>
                                <option value="2018">2018-19</option>
                                <option value="2016">2017-18</option>
                                <option value="2015">2016-17</option>
                                <option value="2015">2015-16</option>
                                <option value="2014">2014-15</option>
                                <option value="2013">2013-14</option>
                                <option value="2012">2012-13</option>
                                <option value="2011">2011-12</option>
                                <option value="2010">2010-11</option>
                                <option value="2009">2009-10</option>
                                <option value="2008">2008-09</option>
                                <option value="2007">2007-08</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label>
                            Select Status<br />
                            स्थिति का चयन करें <span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="English">Approved</option>
                            <option value="Science">Pending</option>
                            <option value="Mathes">Reject</option>
                        </select>
                        <div class="form-group">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('showAll').style.display='block'">Search</button>
                        <a href="Rpt_GuestfacultySankul.aspx" role="button" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <div id="showAll" class="row" style="display: none">
                <div class="col-md-12">
                    <fieldset>
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
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                            <br>
                                            सरल क्र. </th>
                                        <th>Guest Faculty Name
                                            <br>
                                            अतिथि शिक्षक का नाम
                                        </th>
                                        <th>Verification Request ID
                                            <br>
                                            सत्यापन आईडी
                                        </th>
                                        <th>Status
                                            <br>
                                            स्थिति
                                        </th>
                                        <th>Remark
                                            <br>
                                            टिप्पणी
                                        </th>
                                        <th>Action 
                                            <br>
                                            क्रिया
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Ram singh</td>
                                        <td>7859685484</td>
                                        <td>Approved</td>
                                        <td>Reason</td>
                                        <td><a data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-outline-primary"><i class="fa fa-eye"></i></a>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Prem Kumar</td>
                                        <td>7858545868</td>
                                        <td>Reject</td>
                                        <td>Reason</td>
                                        <td><a data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-outline-primary"><i class="fa fa-eye"></i></a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </fieldset>
                </div>
            </div>


        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

