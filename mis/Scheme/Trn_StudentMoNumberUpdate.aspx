<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_StudentMoNumberUpdate.aspx.cs" Inherits="mis_Scheme_Trn_StudentMoNumberUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table-custom th {
            width: 30% !important;
            padding: 10px !important;
        }

        .table-custom td {
            width: 20% !important;
            padding: 10px !important;
        }

        .rblResult td, .rblResult tr {
            border-color: transparent !important;
            background-color: transparent !important;
            padding: 5px !important;
            width: auto !important;
        }

        .rblResult label {
            margin: 0px 3px !important;
        }

        .page-title {
            font-size: 20px;
            font-weight: 600;
            text-transform: uppercase;
            color: #1b5c5d;
        }

        .form-control, .form-control:disabled, .form-control[readonly], .select2-container {
            width: 50%;
        }

        .table-custom td label {
            font-weight: 900 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Update Student Mobile Number</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>
                    <li class="breadcrumb-item active">Update Student Mobile Number</li>
                </ol>
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
                            <a href="#BankMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Bank Master </span></a>
                        </li>
                        <li class="breadcrumb-item">Update Student Mobile Number</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Update Student Mobile Number /
छात्र मोबाइल नंबर अपडेट करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center">
                        <h5 class="page-title">: : Update Student Mobile Number : :</h5>
                    </div>
                </div>
            </div>
            <fieldset>
                <legend>Update Student Mobile Number / छात्र मोबाइल नंबर अपडेट करें</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th class="text-end">Member ID<br />
                                सदस्य आईडी : </th>
                            <td>
                                <input type="text" class="form-control" placeholder="Enter Member ID" /></td>
                            <td>
                                <asp:Button runat="server" ID="Button2" Class="btn btn-success btn-rounded" Text="Get Student Detail for ADD/Update Mobile Number" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <div id="MobileDetails" runat="server" visible="false">
                <fieldset>
                    <legend>Student Details / छात्र विवरण </legend>
                    <table class="table table-bordered table-custom">
                        <tbody>
                            <tr>
                                <th>Name<br />
                                    नाम :</th>
                                <td>Rounak Nath</td>
                                <th>Father Name<br />
                                    पिता का नाम:</th>
                                <td>Munna lal</td>
                            </tr>
                            <tr>
                                <th>Date Of Birth<br />
                                    जन्म की तारीख :</th>
                                <td>25/08/2005</td>
                                <th>Gender<br />
                                    जेंडर :</th>
                                <td>Male</td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>Mobile Number Of The Student / छात्र का मोबाइल नंबर</legend>
                    <table class="table table-bordered table-custom">
                        <tbody>
                            <tr>
                                <th class="text-end">Mobile Number
                                    <br />
                                    मोबाइल नंबर :</th>
                                <td>
                                    <input type="text" class="form-control" placeholder="Enter Mobile Number" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <td class="text-center">
                                <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                                मेरे द्वारा दर्ज / अपडेट किये गए Mobile Number की जाँच भली प्रकार से कर ली गई है | किसी भी प्रकार की त्रुटी के लिए में जिम्मेदार रहूँगा  
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <img src="../../img/captcha.png" width="150" /><br />
                                <label class="font-bold">Please enter the code shown above</label><br />
                                <span>
                                    <input type="text" class="form-control text-center" style="width: 10%" />
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <hr />
                <div class="row">
                    <div class="col-md-12 ">
                        <asp:Button runat="server" ID="Button1" CssClass="btn btn-success btn-border" Text="Update Mobile No Of The Student" />
                        <a href="Trn_StudentMoNumberUpdate.aspx" class="btn btn-outline-danger btn-rounded">Reset Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

