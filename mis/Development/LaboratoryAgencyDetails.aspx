<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LaboratoryAgencyDetails.aspx.cs" Inherits="mis_Construction_LaboratoryAgencyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        .has-search .form-control {
            padding-left: 2.375rem;
        }

        .has-search .form-control-feedback {
            position: absolute;
            z-index: 2;
            display: block;
            width: 2.375rem;
            height: 2.375rem;
            line-height: 2.375rem;
            text-align: center;
            pointer-events: none;
            color: #aaa;
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
                        <li class="breadcrumb-item"><span>Laboratory Agency Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5>Laboratory Agency Master
                    </h5>
                </div>
            </div>
        </div>


        <div class="card-body">
            <fieldset>
                <legend>Laboratory Agency Details</legend>

                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory ID<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Laboratory ID">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Name<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Laboratory Name">
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory GSTN No<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter GSTN No">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory PAN No<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter PAN No">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Licensee Name<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Licensee Name">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Licensee No<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Licensee No">
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Phone No<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Laboratory Phone No">
                        </div>
                    </div>


                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Email ID<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Laboratory Email ID">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Address<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Laboratory Address">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Certifications<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Certifications (e.g., NABL, ISO)">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Laboratory Representative Name<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Representative Name">
                        </div>
                    </div>
                </div>


                <hr style="margin-top: -25px;" />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button id="viewMoreBtn" class="btn btn-outline-success btn-border w-lg" type="button" onclick="btnsearch()">Save</button>
                            <a href="#" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

                <div id="searchdetails" style="display: none">
                    <fieldset id="gridid">

                        <legend>Details / विवरण </legend>
                        <div class="col-12">
                            <div class="row align-items-end">

                                <div class="col-4 col-md-3 mt-2" style="display: flex; align-items: center; white-space: nowrap;">
                                    <label style="margin-right: 5px;">Records Per Page:</label>
                                    <select class="form-select" style="border-radius: 12px; width: 80px;">
                                        <option>50</option>
                                        <option>100</option>
                                        <option>150</option>
                                        <option>200</option>
                                        <option>250</option>
                                    </select>
                                </div>

                                <div class="col-1 d-none d-md-block"></div>
                                <!-- Spacer for larger screens -->

                                <div class="col-8  col-md-8 text-end">
                                    <label style="white-space: nowrap;">
                                        Page 2 of 2 (50 items)
                      <i class="fa-solid fa-chevron-left" onclick="changePage(-1)" style="cursor: pointer; margin: 0 5px;"></i>
                                        <button type="button" class="bg-transparent text-bold" id="btntext" style="border-radius: 7px; margin: 0 5px;">1</button>
                                        of 2
                      <i class="fa-solid fa-chevron-right" onclick="changePage(1)" style="cursor: pointer; margin: 0 5px;"></i>
                                    </label>
                                </div>

                            </div>
                        </div>
                        <div class="row justify-content-end">

                            <div class="col-md-5"></div>
                            <div class="col-md-4 text-end">
                                <button type="button" class="btn btn-outline-primary" style="border-radius: 8px;"><i class="fas fa-file-export"></i>Export To Excel</button>
                            </div>
                            <div class="col-md-3">

                                <div class="form-group has-search">
                                    <span class="fa fa-search form-control-feedback"></span>
                                    <input type="text" class="form-control" style="border-radius: 8px; width: 88%;" placeholder="Search">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </fieldset>
            <div>
                <fieldset>

                    <legend>Details / विवरण </legend>
                    <div class="col-12">
                        <div class="row align-items-end">

                            <div class="col-4 col-md-3 mt-2" style="display: flex; align-items: center; white-space: nowrap;">
                                <label style="margin-right: 5px;">Records Per Page:</label>
                                <select class="form-select" style="border-radius: 12px; width: 80px;">
                                    <option>50</option>
                                    <option>100</option>
                                    <option>150</option>
                                    <option>200</option>
                                    <option>250</option>
                                </select>
                            </div>

                            <div class="col-1 d-none d-md-block"></div>
                            <!-- Spacer for larger screens -->

                            <div class="col-8  col-md-8 text-end">
                                <label style="white-space: nowrap;">
                                    Page 2 of 2 (50 items)
                        <i class="fa-solid fa-chevron-left" onclick="changePage(-1)" style="cursor: pointer; margin: 0 5px;"></i>
                                    <button type="button" class="bg-transparent text-bold" id="btntext" style="border-radius: 7px; margin: 0 5px;">1</button>
                                    of 2
                        <i class="fa-solid fa-chevron-right" onclick="changePage(1)" style="cursor: pointer; margin: 0 5px;"></i>
                                </label>
                            </div>

                        </div>
                    </div>
                    <div class="row justify-content-end">

                        <div class="col-md-5"></div>
                        <div class="col-md-4 text-end">
                            <button type="button" class="btn btn-outline-primary" style="border-radius: 8px;"><i class="fas fa-file-export"></i>Export To Excel</button>
                        </div>
                        <div class="col-md-3">

                            <div class="form-group has-search">
                                <span class="fa fa-search form-control-feedback"></span>
                                <input type="text" class="form-control" style="border-radius: 8px; width: 88%;" placeholder="Search">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">

                                <table class="table text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No</th>
                                            <th>Laboratory ID</th>
                                            <th>Laboratory Name</th>
                                            <th>GSTN No</th>
                                            <th>PAN No</th>
                                            <th>Licensee Name</th>
                                            <th>Licensee No</th>
                                            <th>Laboratory Phone NO</th>
                                            <th>Laboratory Email</th>
                                            <th>Laboratory Address</th>
                                            <th>Certifications</th>
                                            <th>Representative</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>L456</td>
                                            <td>Prime Testing Labs</td>
                                            <td>29AALFT4321K1Z6</td>
                                            <td>AALFT4321K</td>
                                            <td>Prime Testing Solutions</td>
                                            <td>L987654321</td>
                                            <td>+91 98765 43210</td>
                                            <td>support@primetesting.in</td>
                                            <td>Plot No. 12, Industrial Area, XYZ City</td>
                                            <td>ISO 9001, ISO 14001</td>
                                            <td>Amit Shah</td>
                                        </tr>


                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

