<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="eKYC-Approval.aspx.cs" Inherits="mis_Scheme_eKYC_Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">eKYC-Approval</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">eKYC-Approval</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>--%>

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
                        <li class="breadcrumb-item">
                            <a href="#E_KYC" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>E-KYC </span></a>
                        </li>
                        <li class="breadcrumb-item">eKYC-Approval</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">eKYC-Approval /
ईकेवाईसी-अनुमोदन</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>eKYC-Approval / ईकेवाईसी-अनुमोदन</legend>
                <div class="card">
                    <h5 class="card-header">List Of Students In School For eKYC Approval-  School Details
                        <br />
                        ईकेवाईसी अनुमोदन के लिए स्कूल में छात्रों की सूची- स्कूल विवरण</h5>
                    <div class="card-body">
                        <div class="row justify-content-center">
                            <table class="table table-bordered">
                                <tr>
                                    <th width="30%">District<br />
                                        ज़िला : </th>
                                    <td width="2%">:</td>
                                    <td>BHOPAl</td>
                                    <th width="30%" class="text-gray-lighter">Block<br />
                                        ब्लॉक</th>
                                    <td width="2%">:</td>
                                    <td>Berasia</td>

                                </tr>
                                <tr>
                                    <th width="30%">School Name<br />
                                        स्कूल का नाम </th>
                                    <td width="2%">:</td>
                                    <td>GOVT HS BEELKHO (Class 9 to 10)</td>
                                    <th width="30%">School Type<br />
                                        स्कूल का प्रकार</th>
                                    <td width="2%">:</td>
                                    <td>High Schools (Class 9 to 10)</td>
                                </tr>
                                <tr>
                                    <th width="30%">DISE Code<br />
                                        डायस कोड </th>
                                    <td width="2%">:</td>
                                    <td>23320104204
                                    </td>

                                </tr>

                            </table>
                        </div>
                        <h5 class="card-header"></h5>
                        <br />
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <label>
                                    Academic Year<br />
                                    शैक्षणिक वर्ष
                                    <span style="color: red">*</span>:</label>
                                <div class="clearfix">
                                </div>
                                <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ddlAcademicYear" id="ddlAcademicYear" class="form-control vd_DDL_required form-select">
                                    <option value="0">-- शैक्षणिक वर्ष चुने --</option>
                                    <option value="36">2023-24</option>
                                    <option value="35">2022-23</option>
                                    <option value="34">2021-22</option>
                                    <option value="33">2020-21</option>
                                    <option value="32">2019-20</option>
                                </select>
                            </div>
                        </div>
                        <br />
                        <br />
                        <div style="text-align: -webkit-center;" class="row">
                            <div action="?" method="POST">
                                <div id="html_element"></div>
                            </div>
                        </div>
                        <hr />
                        <div class="row ">
                            <div style="font-size: medium; color: Teal; text-align: center;">
                                <div class="col-md-12">
                                    <input type="button" id="btnSchoolDetailsShow"
                                        value="Filter" class="btn btn-large btn-success btn-border w-lg PerformClick" />
                                    <input type="button" id="btnSchoolDetailsHide"
                                        value="Clear" class="btn btn-large btn-outline-danger w-lg PerformClick" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="divStudentDetail" style="display: none;">
                <legend>Details / विवरण</legend>
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
                            <table class="table">
                                <tr>
                                    <th>S.No.<br />
                                        सरल क्र.</th>
                                    <th>Samagrald<br />
                                        समग्र आईडी</th>
                                    <th>Name<br />
                                        नाम</th>
                                    <th>Father's Name<br />
                                        पिता का नाम</th>
                                    <th>DOB<br />
                                        जन्म तिथि</th>
                                    <th>Gender<br />
                                        जेंडर</th>
                                    <th>Stream<br />
                                        स्ट्रीम</th>
                                    <th>Class<br />
                                        कक्षा</th>
                                    <th>Approval Status<br />
                                        अनुमोदन स्थिति</th>
                                    <th>Approval Remark<br />
                                        अनुमोदन टिप्पणी</th>
                                    <th>Aprove<br />
                                        अनुमोदन करें</th>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>302533815</td>
                                    <td>Akrati Namdev</td>
                                    <td>Arsan Khan</td>
                                    <td>01/01/2005</td>
                                    <td>M</td>
                                    <td>-</td>
                                    <td>9</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>
                                        <button type="button" class="btn btn-outline-success">Approve</button></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>302533815</td>
                                    <td>Ariyan</td>
                                    <td>Arsan Khan</td>
                                    <td>01/01/2005</td>
                                    <td>M</td>
                                    <td>-</td>
                                    <td>9</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>
                                        <button type="button" class="btn btn-outline-success">Approve</button></td>
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
    <script type="text/javascript">
        var onloadCallback = function () {
            grecaptcha.render('html_element', {
                'sitekey': ' 6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI'
            });
        };
    </script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#btnSchoolDetailsHide").click(function () {
                window.location.reload();
            });
            $("#btnSchoolDetailsShow").click(function () {
                $("#divStudentDetail").show();
            });
        });



    </script>
</asp:Content>

