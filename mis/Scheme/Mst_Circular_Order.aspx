<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Circular_Order.aspx.cs" Inherits="mis_Scheme_Mst_Circular_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Circular Order</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active">Circular Order</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Circular Order</legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Department Name<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="">School Education Dept, Govt of MP </option>
                                <option value="">Tribal Development</option>
                                <option value="">Directorate of Public Instruction</option>
                                <option value="">Rajya Shiksha Kendra</option>
                                <option value="">District Education Offices</option>
                                <option value="">District Project Office (SSA) </option>
                                <option value="">MP Madarasa Board</option>
                                <option value="">Others</option>
                                <option value="">All</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Department Category<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="">Academic</option>
                                <option value="">Accounts</option>
                                <option value="">Civil Work</option>
                                <option value="">Educational Portal</option>
                                <option value="">Research</option>
                                <option value="">School of Excellence </option>
                                <option value="">Teacher Training</option>
                                <option value="">Vocational education</option>
                                <option value="">Library</option>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Circular/Order Name<span style="color: red">*</span></label>
                            <input class="form-control" placeholder="Enter Order Name" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Circular/Order Description<span style="color: red">*</span></label>
                            <input class="form-control" placeholder="Enter Order Description"></input>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Circular Order Document<span style="color: red">*</span></label>
                            <input class="form-control" type="file" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Order Date From<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Order Date To<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Circulars for Display<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="">100</option>
                                <option value="">200</option>
                                <option value="">300</option>

                            </select>
                        </div>
                    </div>

                    <div class="row justify-content-center">

                        <center class="col-md-12">
                            <hr />
                            <input type="button" id="btnOrderDetailsShow"
                                value="Submit"
                                class="btn btn-success btn-rounded" />
                            <input type="button" id="btnOrderDetailsHide"
                                value="Clear" class="btn btn-danger  btn-rounded" />
                        </center>

                    </div>
                </div>
            </fieldset>

        </div>
    </div>
    <div class="card mt-3 shadow" id="dv_OrderSummary" style="display: none;">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>

                <legend>Circular Order</legend>
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
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Department Name</th>
                                    <th>Department Category</th>
                                    <th>Circular/Order Name </th>
                                    <th>Circular/Order Description </th>
                                    <th>Order Date From</th>
                                    <th>Order Date To</th>
                                    <th>Circular Order Document </th>
                                    <th>Circulars for Display</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Rajya Shiksha Kendra</td>
                                    <td>Accounts</td>
                                    <td>S.K.Tiwari</td>
                                    <td>Educational</td>
                                    <td>25/3/2024</td>
                                    <td>30/3/2024</td>
                                    <td><a class="fa fa-print"></a></td>
                                    <td>200</td>
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

        $(document).ready(function () {
            $("#btnOrderDetailsHide").click(function () {
                
                window.location.reload();
            });
            $("#btnOrderDetailsShow").click(function () {
                $("#dv_OrderSummary").show();
            });
        });

     </script>
</asp:Content>

