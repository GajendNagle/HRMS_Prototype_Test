<%@ Page Title="" Language="C#" MasterPageFile="~/Portal.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="../mis/assets/css/login.css" rel="stylesheet" />
    <style>
        body {
            background-image: url(https://t3.ftcdn.net/jpg/05/00/34/58/360_F_500345899_4OqmtspFst6SRnNQvLj7h7TfKOrBwTer.jpg);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="container-fluid" >
        <div class="row bg" >
            <div class="col-lg-6">
                <img src="mis/assets/images/LoginImage.png" style="width:100%;" />
            </div>
            <div class="col-lg-6">
         
                <div class="container">

                    <div class="row justify-content-end">
                        <div class="col-xl-7">
                            <div class="card mt-4 card-bg-fill">

                                <div class="card-body p-4">`
                                    <div class="text-center mt-2">
                                        <img src="../mis/assets/images/logo-sm.svg" alt="" height="100">

                                        <h5 class="text-primary">Madhya Pradesh Education Portal 3.0</h5>
                                        <h4 class="text-info">User Login</h4>
                                    </div>
                                    <div class="p-2 mt-4">
                                        <div>

                                            <div class="mb-3">
                                                <label for="username" class="form-label">Username</label>
                                                <input type="text" class="form-control" id="username" placeholder="Enter username">
                                            </div>

                                            <div class="mb-3">
                                                <div class="float-end">
                                                    <a href="#" class="text-muted">Forgot password?</a>
                                                </div>
                                                <label class="form-label" for="password-input">Password</label>
                                                <div class="position-relative auth-pass-inputgroup mb-3">
                                                    <input type="password" class="form-control pe-5 password-input" placeholder="Enter password" id="password-input">
                                                    <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon material-shadow-none" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
                                                </div>
                                            </div>

                                          <div class="row text-center justify-content-center">
                                            <div class="col-lg-12 mb-3">
                                              <img src="../mis/assets/images/captcha.png" height="60" />
                                            </div>
                                              <div class="col-lg-12">
                                                  <input type="text" class="form-control" placeholder="Enter Captcha" >
                                              </div>
                                          </div>
                                            <div class="mt-4">
                                                <%--<button class="btn btn-success w-100" type="submit">Sign In</button>--%>
                                                <a href="../mis/Dashboard/AdminDashboard.aspx" class="btn btn-secondary w-100" type="submit">Sign In</a>
                                            </div>

                                         
                                        </div>
                                    </div>
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card -->

                        </div>
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end auth page content -->



        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

