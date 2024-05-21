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
    <div class="row page-titles mb-4">
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
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
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
                <legend>Update Student Mobile Number</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th class="text-end">Member ID : </th>
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
                    <legend>Student Details</legend>
                    <table class="table table-bordered table-custom">
                        <tbody>
                            <tr>
                                <th>Name :</th>
                                <td>Rounak Nath</td>
                                <th>Father Name:</th>
                                <td>Munna lal</td>
                            </tr>
                            <tr>
                                <th>Date Of Birth :</th>
                                <td>25/08/2005</td>
                                <th>Gender :</th>
                                <td>Male</td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>Mobile Number Of The Student</legend>
                    <table class="table table-bordered table-custom">
                        <tbody>
                            <tr>
                                <th class="text-end">Mobile Number  :</th>
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
                <div class="row">
                    <div class="col-md-12 text-center">
                        <asp:Button runat="server" ID="Button1" CssClass="btn btn-danger btn-rounded" Text="Update Mobile No Of The Student" />
                        <a href="Trn_StudentMoNumberUpdate.aspx" class="btn btn-info btn-rounded">Reset Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

