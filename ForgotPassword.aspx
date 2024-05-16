<%@ Page Title="" Language="C#" MasterPageFile="~/Portal.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        body {
            background-image: url("../mis/dist/images/login/bg.png");
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }

        .page-wrapper, #main-wrapper {
            background-color: transparent !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Forgot Password</h4>
                    </div>
                    <div class="card-body">
                        <div class="row justify-content-center">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>User ID :</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Email ID :</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <input type="email" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Mobile No :</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnGenerateOTP" Text="Generate OTP" CssClass="btn btn-success btn-block" OnClick="btnGenerateOTP_Click" />
                                </div>
                            </div>

                        </div>
                        <div class="row justify-content-center" runat="server" id="dv_OTPEnter">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Enter OTP :</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtEnterOTP" class="form-control" placeholder="Enter - 236589"/>
                                </div>
                            </div>

                            <div class="col-md-2 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnVerifyOTP" Text="Verify OTP" CssClass="btn btn-success" OnClick="btnVerifyOTP_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center" runat="server" id="dv_Passworddetail">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>New Password :</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                  <input type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Confirm Password :</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                  <input type="text" class="form-control" />
                                </div>
                            </div>

                            <div class="col-md-3 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnSave" Text=" Save " CssClass="btn btn-success" />
                                    <a href="ForgotPassword.aspx" class="btn btn-danger">Clear</a>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

</asp:Content>