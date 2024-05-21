<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistrictWiseSchemeDetails.aspx.cs" Inherits="mis_Scheme_DistrictWiseSchemeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .rblResult td, .rblResult tr {
            border-color: transparent !important;
            background-color: transparent !important;
            padding: 5px !important;
        }

        .rblResult label {
            margin: 0px 3px !important;
        }

        .table-custom th {
            text-align: right !important;
            width: 20% !important;
        }

        .table-custom td {
            width: 30% !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">District Wise Scheme Details</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">District Wise Scheme Details</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Details</legend>
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Academic Year<span class="text-danger">*</span></label>
                            <select disabled="disabled" class="form-control select2">

                                <option selected="selected" value="36">2024-25</option>


                            </select>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Schemes<span class="text-danger">*</span></label>
                            <select class="form-control select2" disabled="disabled">

                                <option selected="selected" value="2">1.1-सामान्य निर्धन वर्ग छात्रवृत्ति योजना</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Report Date<span class="text-danger">*</span></label>
                            <input class="form-control" value="11/09/2023" type="text" disabled="disabled" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row justify-content-center">
                            <div class="col-lg-3 text-center ">
                                <img src="../../img/captcha.png" width="150" />
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4 text-center">
                                <label class="font-bold">Please enter the code shown above</label>
                            </div>
                            <div class="col-lg-12"></div>

                            <div class="col-lg-1 ">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="col-md-12 text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnRegisterStudents" Text="View" CssClass="btn btn-success btn-rounded" />
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered table-condensed ">
                                        <thead>
                                            <tr>
                                                <th>S. No.</th>
                                                <th>जिला
</th>
                                                <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना के कुल स्वीकृत आवेदन</th>
                                                <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना अंतर्गत भुगतान (M1Click)</th>
                                                <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना की कुल स्वीकृत राशि</th>
                                                <th>सामान्य निर्धन वर्ग छात्रवृत्ति योजना अंतर्गत राशि का भुगतान (M1Click)</th>
                                          
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </fieldset>



        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
