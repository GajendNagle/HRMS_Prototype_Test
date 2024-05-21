<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="OnlinePaymentFileToPFMSSystem.aspx.cs" Inherits="mis_Payroll_OnlinePaymentFileToPFMSSystem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="content-wrapper">
        <!-- Main content -->
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0)">Transaction Page</a></li>
                            <li class="breadcrumb-item ">Online Payment File To PFMS System</li>
                        </ol>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Payment File System Process – Treasury payment :</legend>
                        <div class="row ">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <!-- Bullet List -->
                                    <ul class="bullet-list">
                                        <li>Payment will be done by Treasury.</li>
                                        <li>Payment will be generated for teacher and sankul at their respective office.</li>
                                        <li>Payment file will be process at Block, District, Joint Director and Head Office level.</li>
                                        <li>Every individual will generate payment file by API services.</li>
                                        <li>Payment file will be generated after DSC verification process. </li>
                                        <li>Education portal will get payment file response from Treasury by API services.</li>
                                        <li>API Data format from Treasury need to be dissection. </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>


