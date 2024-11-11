<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MaterialQuantityTesting.aspx.cs" Inherits="mis_Material_Master_MaterialQuantityTesting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Quantity Control</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Material Quality Testing Status Update 
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Material Quality Testing Status Update</legend>

                <div class="row align-items-end">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Project No.
                            </label>
                            <select class="form-control select2">
                                <option value="0">Select</option>
                                <option value="3">PR0001</option>
                                <option value="3">PR0002</option>
                                <option value="3">PR0003</option>
                                <option value="3">PR0004</option>
                                <option value="3">PR0005</option>

                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Laboratory Name
                            </label>
                            <select class="form-control select2">
                                <option value="0">Bhoj Geotech Laboratory</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Material Name 
                            </label>
                            <select class="form-control select2">
                                <option value="0">Select</option>
                                <option value="3">Cement</option>
                                <option value="3">Concrete</option>


                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Material Testing Date 
                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Uploaded testing Document
                            </label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Remark
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Testing Remark" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Status 
                            </label>
                            <select class="form-control select2">
                                <option value="0">Select</option>
                                <option value="3">Pass</option>
                                <option value="3">Fail</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="col-md-12">
                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display='block'">Save</button>
                    <a href="MaterialQuantityTesting.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </fieldset>
            <fieldset id="table1" style="display: none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                        </th>
                                        <th>Project No.
                                        </th>
                                        <th>Laboratory Name</th>
                                        <th>Material Name
                                        </th>
                                        <th>Material Testing Date
                                        </th>
                                        <th>Status  
                                        </th>
                                        <th>View Document
                                        </th>
                                        <th>Remark</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>PR0002</td>
                                    <td>Bhoj Geotech Laboratory</td>
                                    <td>Cement</td>
                                    <td>05-03-2024</td>
                                    <td>Pass</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span>
                                    </td>
                                    <td>-</td>
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
</asp:Content>

