<%@ Page Title="" Language="C#" MasterPageFile="~/Portal.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
    <div class="row mb-4">
        <div class="col-lg-1">
        </div>
        <div class="col-lg-6">
            <div class="container mt-6">
                <div class="row mb-1">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-6">
                        <a href="#" class="sidelog-link">
                            <div class="alert alert-bg shadow" role="alert">
                                <h4>School Directory </h4>
                            </div>
                            <img src="mis/dist/images/login/School.png" class="sidelog-img img-right" />
                        </a>

                    </div>
                </div>
                <div class="row mb-1">

                    <div class="col-lg-6">
                        <a href="#" class="sidelog-link">
                            <img src="mis/dist/images/login/Employee.png" class="sidelog-img img-left" />
                            <div class="alert alert-bg shadow" role="alert">
                                <h4>Employee Directory </h4>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-2"></div>

                </div>
                <div class="row mb-1">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-6">
                        <a href="#" class="sidelog-link">
                            <div class="alert alert-bg shadow" role="alert">
                                <h4>Student Directory </h4>
                            </div>
                            <img src="mis/dist/images/login/Student.png" class="sidelog-img img-right" />

                        </a>

                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-lg-6">
                        <a href="#" onclick="openPDF()" class="sidelog-link">
                            <img src="mis/dist/images/login/Scheme.png" class="sidelog-img img-left" />
                            <div class="alert alert-bg shadow" role="alert">
                                <h4>Schemes Information </h4>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-2"></div>

                </div>

                <div class="row mb-1">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-6">
                        <a href="mis/Registration/Rpt_PublicSchool.aspx" class="sidelog-link">
                            <div class="alert alert-bg shadow" role="alert">
                                <h4>Summary Report</h4>
                            </div>
                            <img src="mis/dist/images/login/School.png" class="sidelog-img img-right" />
                        </a>

                    </div>
                </div>

                <div class="row mb-1">
                    <div class="col-lg-6">
                        <a href="#" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg4" class="sidelog-link">
                            <img src="mis/dist/images/login/PasswordChangePolicy.png" class="sidelog-img img-left" />
                            <div class="alert alert-bg shadow" role="alert">
                                <h4>Password Change Policy</h4>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row mb-1">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-6">
                        <a href="#" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" class="sidelog-link">
                            <div class="alert alert-bg shadow" role="alert">
                                <h4>Login & Logout Policy</h4>
                            </div>
                            <img src="mis/dist/images/login/LogoutPolicy.png" class="sidelog-img img-right" />
                        </a>

                    </div>
                </div>

            </div>
        </div>

        <div class="col-lg-4">
            <div class="container" style="margin-top: 5rem">
                <div class="login-container">
                    <img src="mis/dist/images/users/1.png" class="login-image" />
                    <div class="row justify-content-center mt-5">
                        <div class="col-md-10 text-center mt-3">
                            <div class="form-group">
                                <h4 class="log-heading">User Login</h4>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <span class="input-group-text">
                                        <i class="fa fa-user-alt"></i></span>
                                    <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" placeholder="User Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <span class="input-group-text">
                                        <i class="fa fa-key"></i></span>
                                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="TextBox1" Text="OmG1GD" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="txtCaptcha" CssClass="form-control" placeholder="Captcha"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="row justify-content-center">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-block btn-outline-cyan border-white" Text="Login" OnClick="btnLogin_Click" />
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-10 text-right">
                            <div class="form-group">
                                <a href="ForgotPassword.aspx">Forgot Password?</a>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../mis/Document/SchemeInformation.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        } 
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

</asp:Content>


