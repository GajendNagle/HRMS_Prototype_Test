<%@ Page Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolWiseSummaryOfEnrollment.aspx.cs" Inherits="mis_Scheme_SchoolWiseSummaryOfEnrollment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .rblResult td, .rblResult tr {
            border-color: transparent !important;
            background-color: transparent !important;
            padding: 5px !important;
        }

        .rblResult label {
            margin: 0px 3px !important;
        }

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
                        <li class="breadcrumb-item">SSDDO Scholarship</li>
                        <li class="breadcrumb-item">School-Wise Summary of Enrollment</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">School-Wise Summary of Enrollment / नामांकन का स्कूल-वार सारांश
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>School-wise Summary of Enrollment / नामांकन का स्कूल-वार सारांश</legend>
                <div class="row">

                    <div class="col-lg-12">
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select Academic Year<br />शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
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
                                    <label >Select District<br />जिला का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option>--Select--</option>
                                        <option>Gwalior</option>
                                        <option>Bhopal</option>
                                        <option>Indore</option>
                                        <option>Jabalpur</option>

                                        <option>Sagar</option>
                                        <option>Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>DDO<br />डीडीओ<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option>DABRA.BEO DABRA</option>
                                        <option>BEO BHITERWAR</option>
                                        <option>PRINCIPAL Govt. H S S CHINORE BHITERWAR</option>
                                        <option>PRINCIPAL Govt. H S S BHITERWAR</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select <br />स्कूल का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option>--Select--</option>
                                        <option>MS Barotha</option>
                                        <option>PS Maharajpura</option>
                                        <option>GGPS SIMARIYATAL</option>
                                        <option>GPS PATHAPANIHAR</option>
                                        <option>GPS SAMUDHAN</option>
                                        <option>GPS SANKARA</option>

                                    </select>
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
                                    <asp:Button runat="server" ID="btnShowSummary" CssClass="btn btn-success btn-border btn w-lg" Text="Show" OnClick="btnShowSummary_Click" />
                                    <a href="SchoolWiseSummaryOfEnrollment.aspx" class="btn btn-outline-danger btn-border btn w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_SchoolSummary">
                <legend>School-wise Summary of Enrollment Details / नामांकन विवरण का स्कूल-वार सारांश</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th>S.No.<br />सरल क्र.</th>
                                    <th>School Name<br />स्कूल नाम</th>
                                    <th>School Type<br />स्कूल का प्रकार</th>
                                    <th>HM/Principal/OIC<br />एचएम/प्रिंसिपल/ओआईसी</th>
                                    <th>Mobile No.<br />मोबाइल नंबर</th>
                                    <th>Enrolled Students<br />नामांकित छात्र</th>
                                    <th>Students with Registered/ Updated Profiles<br />पंजीकृत/अद्यतन प्रोफाइल वाले छात्र</th>
                                    <th>Pending Profile Registration/Updation<br />लंबित प्रोफ़ाइल पंजीकरण/अद्यतन</th>
                                    <th>Profiles Proccessed for Scholerships<br />छात्रवृत्ति के लिए प्रोफ़ाइल तैयार की गई</th>
                                    <th>Total No.of Profile sent by back DDO<br />वापस डीडीओ द्वारा भेजी गई प्रोफाइल की कुल संख्या</th>
                                    <th>Students awarded a Scholarship<br />विद्यार्थियों को छात्रवृत्ति प्रदान की गई</th>
                                    <th>**Total Disbursal<br />कुल संवितरण</th>
                                    <th>**Total M1 Click Disbursal<br />कुल एम1 क्लिक संवितरण</th>
                                    <th>**Total M1 Click Disbursal Amount<br />कुल एम1 क्लिक संवितरण राशि</th>


                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>MS Barotha [23999999999]</td>
                                    <td></td>
                                    <td>8546784769 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>

                                <tr>
                                    <td>2 </td>
                                    <td>PS Maharajpura [23999999999]</td>

                                    <td></td>
                                    <td>8546784690 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>
                                <tr>
                                    <td>3 </td>
                                    <td>GGPS SIMARIYATAL [23999999999]</td>
                                    <td></td>
                                    <td>8546784690 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>
                                <tr>
                                    <td>4 </td>
                                    <td>GPS PATHAPANIHAR [23999999999]</td>
                                    <td></td>
                                    <td>8546784690 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>
                                    <td>0</td>
                                    <td>0 </td>
                                    <td>0 </td>

                                </tr>
                                <tbody>
                        </table>
                    </div>
                </div>
            </fieldset>







        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

