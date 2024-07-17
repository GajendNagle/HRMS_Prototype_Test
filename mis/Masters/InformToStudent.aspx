<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InformToStudent.aspx.cs" Inherits="mis_Masters_InformToStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row">
    <div class="col-md-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
            <h4 class="mb-sm-0"></h4>
            <div class="=page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item">
                        <span>Home</span>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#AdministrativeLevelTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>Administrative Level Transfer</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Generate Transfer Order</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

