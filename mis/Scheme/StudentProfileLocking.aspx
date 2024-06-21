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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Student Profile View/Edit/Lock</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Student Profile View/Edit/Lock <br /> छात्र प्रोफ़ाइल देखें/संपादित करें/लॉक करें
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student List Of Newly Enrolled Students / नवनामांकित छात्रों की छात्र सूची</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Acadmic Year<br />शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
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
                            <label>Enter DISE Code <br />डायस कोड दर्ज करें<span style="color: red">*</span></label>
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
                        <div class="col-md-3">
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

                            <div class="col-lg-2 ">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>

                           </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnShowStudentDetails" CssClass="btn btn-success btn-border w-lg" Text="जानकारी देखे" OnClick="btnShowStudentDetails_Click" />
                            <a href="StudentProfileLocking.aspx" class="btn btn-border btn-outline-danger w-lg">Clear</a>
                        </div>
                    </div>
                </div>


            </fieldset>
            <div id="table" runat="server">
                <fieldset runat="server" id="dvPersonalDetails">
                    <legend>Students Details / छात्रों का विवरण</legend>
                    <div class="row">
                        <div class="col-lg-12">
                            <table class="table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                        <th>S.No.<br />सरल क्र.</th>
                                        <th>Student Samagra ID<br />विद्यार्थी समग्र आईडी</th>
                                        <th>Student Name<br />छात्र का नाम</th>
                                        <th>Gender<br />जेंडर</th>
                                        <th>Category<br />श्रेणी</th>
                                        <th>BPL<br />गरीबी रेखा से नीचे</th>
                                        <th>Hostel<br />छात्रावास</th>
                                        <th>Father's Name<br />पिता का नाम</th>
                                        <th>Occupation<br />व्यवसाय</th>
                                        <th>Income<br />आय</th>
                                        <th>Last Year%<br />पिछले साल का प्रतिशत</th>
                                        <th>Disabled<br />अक्षम</th>
                                        <th>Bank Account No.<br />बैंक खाता नम्बर।</th>
                                        <th>Bank IFSC Code<br />बैंक IFSC कोड</th>
                                        <th>Schemes<br />योजनाओं</th>
                                        <th>Amt<br />राशि</th>
                                        <th>Print<br />प्रिंट</th>
                                        <th>Action</th>
                                        <th>
                                            <asp:CheckBox runat="server" ID="cbx1" OnCheckedChanged="cbx1_CheckedChanged" AutoPostBack="true" /></th>
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
                            <span style="color: red"><b>उपरोक्त चुने गये आवेदन सही है </b></span>
                            <asp:CheckBox runat="server" ID="CheckBtn" AutoPostBack="true" OnCheckedChanged="CheckBtn_CheckedChanged" />

                        </div>
                    </div>
                </fieldset>


                <div class="row" visible="false" runat="server" id="lockbtn">
                    <div class="col-lg-12 text-center">
                        <a class="btn btn-warning" href="StudentProfileLocking.aspx"><i class="fa fa-lock">आवेदनो को लॉक करे</i></a>

                    </div>
                </div>


            </div>
        </div>
    </div>







</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

