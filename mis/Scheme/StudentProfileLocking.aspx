<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentProfileLocking.aspx.cs" Inherits="mis_Scheme_StudentProfileLocking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table-custom th {
            text-align: right !important;
            width: 20% !important;
        }

        .table-custom td {
            width: 30% !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Student Profile View/Edit/Lock</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <%--<li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=AdmissionMgmt" title="click to go on">Admission Management</a></li>--%>
                    <li class="breadcrumb-item active">Student Profile View/Edit/Lock</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Student List Of Newly Enrolled Students</legend>

                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Acadmic Year <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="2024-25">2024-25</option>
                                <option value="2023-24">2023-24</option>
                                <option value="2022-23">2022-23</option>
                                <option value="2021-22">2021-22</option>
                                <option value="2020-21">2020-21</option>
                                <option value="2019-20">2019-20</option>
                                <option value="2018-19">2018-19</option>
                                <option value="2017-18">2017-18</option>
                                <option value="2016-17">2016-17</option>
                                <option value="2015-16">2015-16</option>
                                <option value="2014-15">2014-15</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">DISE Code<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" ID="txtStudentSamagraID" AutoComplete="off" CssClass="form-control" placeholder="Enter DISE Code" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>




                    <div class="row justify-content-lg-start mt-3 ">

                        <div class="col-md-10">
                            <h4 style="color: red">नोट: एप्लिकेशन लॉक नहीं होने की स्थिति में निम्रानुसार जाच करे</h4>
                            <ol>
                                <li style="color: red">संबंधित विद्यार्थी का खाता नंबर
                                </li>
                                <li style="color: red">कक्षा ११ एवं १२वी के विद्यार्थी का विषय</li>
                            </ol>
                        </div>
                        <div class="col-md-2 justify-content-end">
                            <asp:Button CssClass="btn btn-warning" runat="server" ID="btns" Text="Click Here to Find School Dise Code" Style="margin-right: 0px;" />
                        </div>

                    </div>



                    <div class="col-lg-12">

                        <div class="row justify-content-center">
                            <div class="col-lg-3 text-center">
                                <img src="../../img/captcha.png" width="150" />
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4 text-center">
                                <label class="font-bold">Please enter the code shown above</label>
                            </div>
                            <div class="col-lg-12"></div>

                            <div class="col-lg-1 ">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="col-md-4 text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnShowStudentDetails" CssClass="btn btn-success btn-rounded" Text="जानकारी देखे" OnClick="btnShowStudentDetails_Click" />
                            <a href="StudentProfileLocking.aspx" class="btn btn-rounded btn-danger">Clear</a>
                        </div>
                    </div>
                </div>


            </fieldset>
            <div id="table" runat="server">
            <fieldset runat="server" id="dvPersonalDetails">
                <legend>Students Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered ">
                            <thead>
                            <tr>
                                <th>S.No.</th>
                                <th>Student Samagra ID</th>
                                <th>Student Name</th>
                                <th>Gender</th>
                                <th>Category</th>
                                <th>BPL</th>
                                <th>Hostel</th>
                                <th>Father's Name</th>
                                <th>Occupation</th>
                                <th>Income</th>
                                <th>Last Year%</th>
                                <th>Disabled</th>
                                <th>Bank Account No.</th>
                                <th>Bank IFSC Code</th>
                                <th>Schemes</th>
                                <th>Amt</th>
                                <th>Print</th>
                                <th>Action</th>
                                <th>
                                    <asp:CheckBox runat="server" ID="cbx1" OnCheckedChanged="cbx1_CheckedChanged" AutoPostBack="true"/></th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>125654555 </td>
                                    <td>Rajendra</td>
                                    <td>M</td>
                                    <td>General</td>
                                    <td>Y</td>
                                    <td>No</td>
                                    <td>Ramesh</td>

                                    <td>Farmer</td>
                                    <td>100000</td>
                                    <td>65.00</td>
                                    <td>No</td>
                                    <td>636763589665</td>
                                    <td>CNRB0006367</td>
                                    <td>पात्र नहीं</td>
                                    <td>0</td>
                                    <td><a class="fa fa-print"></a></td>
                                    <td><a class="fa fa-edit"></a>&nbsp <a class="fa fa-trash"></a></td>
                                    <td>
                                        <asp:CheckBox runat="server" ID="Cbx2" /></td>


                                </tr>

                                <tr>
                                    <td>2 </td>
                                    <td>133654466 </td>
                                    <td>Ankur</td>
                                    <td>M</td>
                                    <td>General</td>
                                    <td>Y</td>
                                    <td>No</td>
                                    <td>Ajay</td>
                                    <td>Farmer</td>
                                    <td>10000</td>
                                    <td>65.00</td>
                                    <td>No</td>
                                    <td>636763589654</td>
                                    <td>CNRB0006367</td>
                                    <td>पात्र नहीं</td>
                                    <td>0</td>
                                    <td><a class="fa fa-print"></a></td>
                                    <td><a class="fa fa-edit"></a>&nbsp <a class="fa fa-trash"></a></td>
                                    <td>
                                        <asp:CheckBox runat="server" ID="Cbx3" /></td>


                                </tr>
                                <tbody>
                        </table>
                    </div>
                </div>
                <div class="row" runat="server" id="checkbox">
                    <div class="col-md-12 text-center">
                        <span style="color: red"><b>उपरोक्त चुने गये अवेदन सही हे </b></span>
                        <asp:CheckBox runat="server" ID="CheckBtn" AutoPostBack="true" OnCheckedChanged="CheckBtn_CheckedChanged" />

                    </div>
                </div>
            </fieldset>
            

                <div class="row" visible="false" runat="server" id="lockbtn">
                    <div class="col-lg-12 text-center">
                        <a class="btn btn-warning" href="StudentProfileLocking.aspx"><i class="fa fa-lock"> आवेदनो को लॉक करे</i></a>

                    </div>
                </div> 


                </div>
        </div>
    </div>







</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

