<%@ Page Title="" Language="C#" MasterPageFile="~/Portal.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        body {
            /*   background-image: url("../mis/dist/images/login/bg.png");
        background-attachment: fixed;
        background-position: center;
        background-repeat: no-repeat;
        background-size: 100% 100%;*/
        }
            
        .page-wrapper, #main-wrapper {
            background-color: transparent !important;
        }
    </style>

    <link href="mis/dist/css/contact.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <%--<div class="row">
        <div class="col-lg-12 text-end">
            <a href="Login.aspx" class="btn btn-outline-warning"><i class="fa fa-arrow-alt-circle-left"></i>Back to Login</a>
        </div>
    </div>--%>
    <div class="container-fluid mt-5 mb-5">

        <section class="contact">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12 mb-4">
                    <div class="info-box shadow shadow center" style="height: 100%">

                        <div class="one">

                            <h1>Contact Us</h1>
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 mb-4">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="info-box shadow">
                                <i class="fa-solid fa-location-dot"></i>
                                <h3>Our Address</h3>
                                <p>
                                    <strong>Directorate of Public Instructions, DPI, M.P.</strong>
                                    <br />
                                    (School Education Department MP)<br />

                                    Near Chetak Bridge, Gautam Nagar, Bhopal, India, Madhya Pradesh
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="info-box  shadow mt-4">
                                <i class="fa fa-envelope"></i>
                                <h3>Email </h3>
                                <p> 
                                    educationportalmpdpi@gmail.com ,<br>
                                    educationportal@datamail.in
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="info-box shadow mt-4">
                                <i class="fa fa-phone-volume"></i>
                                <h3>Call </h3>
                                <p>
                                    0755 260 0115


                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </section>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

</asp:Content>

