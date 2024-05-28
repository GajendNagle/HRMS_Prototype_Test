<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PhotoAlbumDetails.aspx.cs" Inherits="mis_HRMS_PhotoAlbumDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                <img src="../../img/Circular%20Order.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                     <li class="breadcrumb-item"><a href="AllOrderDetails.aspx" title="click to go on">Dashboard Display Circulars-Orders</a></li>
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
                            <li>
                                <a class="nav-link  font-16 text-white" href="AllOrderDetails.aspx" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link font-16 text-white" href="Mst_CircularOrder.aspx" role="button"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>सर्कुलर्स </b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="Mst_Order.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>आदेश</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="Mst_TenderDetail.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>टेंडर्स </b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="PhotoAlbumDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>फ़ोटो</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="NewsDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>समाचार</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="EventInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>इवेंट</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="MessageInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>संदेश </b></strong></a>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <fieldset>
                <legend>Photo Album/फोटो एलबम
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Album Name<br />
                                एलबम का नाम<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Album Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Discription of Photo Enter Details<br />
                                फोटो का विवरण विवरण दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Album Details" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Album Date<br />
                                एलबम दिनांक <span style="color: red">*</span></label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Upload Photo<br />
                                फोटो अपलोड करें<span style="color: red">*</span></label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="PhotoAlbumDetails.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Photo Album Details
                </legend>
                <div class="row">
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID<br />
                                                    आई डी</th>
                                                <th>Album Name<br />
                                                    एलबम का नाम</th>
                                                <th>Album Date<br />
                                                    एलबम दिनांक </th>
                                                <th>view Upload Photo<br />
                                                    फोटो अपलोड देखें
                                                </th>
                                                <th>Action<br />
                                                    कार्रवाई</th>

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

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 text-center">
                    <button type="button" id="view" class="btn btn-success btn-rounded" onclick="myFunction()">View More...</button>
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

