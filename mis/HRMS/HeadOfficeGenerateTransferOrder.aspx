<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HeadOfficeGenerateTransferOrder.aspx.cs" Inherits="mis_HRMS_HeadOfficeGenerateTransferOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Generate Transfer Order</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>
                    <li class="breadcrumb-item active">Generate Transfer Order </li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Generate Transfer Order
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Order No.
                                <br />
                                आदेश नंबर</label>
                            <input type="text" class="form-control" placeholder="Enter  Order No. " />

                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Order Date
                                <br />
                                आदेश दिनांक
                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Effective Date
                                <br />
                                प्रभावी दिनांक</label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Upload Documents
                                <br />
                                दस्तावेज़ अपलोड करें</label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Remark
                                <br />
                                टिप्पणी</label>
                            <textarea rows="2" class="form-control" placeholder="Enter Remark"></textarea>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <button class="btn  btn-success btn-rounded btn-block" style="margin-top: 60px;">Save</button>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="vacaniesDetail">
                <legend>Transfer Application Detail
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table  table-hover table-bordered">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Order No.
                                         <br />
                                        आदेश नंबर</th>
                                    <th>Order Date
                                          <br />
                                        आदेश दिनांक</th>
                                    <th>Effective Date
                                          <br />
                                        प्रभावी दिनांक</th>
                                    <th>Generate Order
                                        <br />
                                        ऑर्डर जनरेट करें </th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>545686</td>
                                    <td>4/4/2024</td>
                                    <td>6/8/2024</td>
                                    <td><a href="#"><i class="fa fa-download"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

        </div>
    </div>
    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

