<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ReceiptVoucher.aspx.cs" Inherits="mis_Finance_ReceiptVoucher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="PaymentVoucher.aspx" title="click to go on">Receipt Voucher</a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div runat="server" id="divOffice">
            <fieldset>
                <legend>Receipt Voucher /रसीद वाउचर</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                               (Previous Voucher No : H024-25VR442)
                               </label>
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Create Voucher against transaction failed payment voucher
                               </label>
                           <input id="ContentBody_chck1" type="checkbox" name="ctl00$ContentBody$chck1" />
                        </div>
                    </div></div>
                    <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Voucher /Bill No 
                                </label>
                             <input type="text" class="form-control form-control-inline" value="H024-25VR442" />
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" class="form-control form-control-inline" value="308" />
                        </div>
                    </div>
                        <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date
                                </label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                        </div>
                    </div>
                </div>


                </fieldset></div>
                </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

