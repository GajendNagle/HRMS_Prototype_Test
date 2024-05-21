<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PhotoAlbumDetails.aspx.cs" Inherits="mis_HRMS_PhotoAlbumDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Photo Album
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <%--  <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>--%>
                    <%--   <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>--%>
                    <li class="breadcrumb-item active">Photo Album</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <%--                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b>Mutual Transfer Application</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Update Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferPrintApplication.aspx">Print Application</a></li>
                                </ul>
                            </li> --%>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="AllOrderDetails.aspx" role="button" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_CircularOrder.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Circulars</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_Order.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Orders</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_TenderDetail.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Tenders</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="PhotoAlbumDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Photos</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="NewsDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;News</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="EventInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Events</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="MessageInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Messages</b></strong></a>
                            </li>

                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>Photo Album
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Album Name</label>
                            <input type="text" class="form-control" placeholder="Enter Album Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Discription of Photo Enter Details</label>
                            <input type="text" class="form-control" placeholder="Enter Album Details" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Album Date</label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Upload Photo</label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">

                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="PhotoAlbumDetails.aspx" class="btn btn-danger btn-rounded">Back</a>
                        </div>
                    </div>


                </div>
            </fieldset>
            <fieldset>
                <legend>Photo Album Details
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table text-center table-bordered table-hover">
                                <thead>
                                    <tr>

                                        <th>ID</th>
                                        <th>Album Name</th>
                                        <th>Album Date</th>
                                        <th>view Upload Photo</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td>1</td>
                                        <td>SSA Training</td>
                                        <td>09-03-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>

                                    </tr>
                                    <tr>

                                        <td>2</td>
                                        <td>Pracharya Samman</td>
                                        <td>15-03-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>

                                        <td>3</td>
                                        <td>Free Cycle</td>
                                        <td>25-03-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr id="news1" hidden>

                                        <td>4</td>
                                        <td>Education Portal Award</td>
                                        <td>01-04-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr id="news2" hidden>

                                        <td>5</td>
                                        <td>CSI Awards</td>
                                        <td>10-04-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr id="news3" hidden>

                                        <td>6</td>
                                        <td>Allahabad Workshop</td>
                                        <td>01-02-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr class="">
                                        <td colspan="7">
                                            <button type="button" id="view" class="btn btn-success btn-rounded" onclick="myFunction()">View More...</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            let element1 = document.getElementById("news1");
            let element2 = document.getElementById("news2");
            let element3 = document.getElementById("news3");
            let button = document.getElementById("toggleButton");
            let view = document.getElementById("view");

            let hidden1 = element1.getAttribute("hidden") !== null;
            let hidden2 = element2.getAttribute("hidden") !== null;
            let hidden3 = element3.getAttribute("hidden") !== null;

            if (hidden1 && hidden2 && hidden3) {
                element1.removeAttribute("hidden");
                element2.removeAttribute("hidden");
                element3.removeAttribute("hidden");
                view.innerText = "View Less...";
            }
            else {
                element1.setAttribute("hidden", "hidden");
                element2.setAttribute("hidden", "hidden");
                element3.setAttribute("hidden", "hidden");
                view.innerText = "View More...";
            }
        }
    </script>
</asp:Content>

