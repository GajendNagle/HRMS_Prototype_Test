<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RegisteredEmployee_Details.aspx.cs" Inherits="mis_Scheme_RegisteredEmployee_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .card-body {
    min-height: 8rem;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Registered Employee Details</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Registered Employee Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Register Employee</legend>
                <div class="card">
                    <h5 class="card-header">Register Employee on shiksha portal</h5>
                    <div class="card-body">
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        District 
                                    </label>
                                    <input type="text" class="form-control" disabled="disabled" value="Bhoapl" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        DISE Code  
                                    </label>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        School Type 
                                    </label>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_divSave" class="col-md-12">
                                <hr />
                                <div style="font-size: medium; color: Teal; text-align: center;">
                                    <center class="col-md-12"> 
                                        <input type="button" id="btnSchoolDetailsShow"
                                            value="Search" class="btn btn-large btn-info PerformClick" />
                                        <input type="button" id="btnSchoolDetailsHide"
                                            value="Clear" class="btn btn-large btn-info PerformClick" />
                                    </center>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="divStudentDetail" style="display: none;">
                <legend>Registered Employee Details</legend>
                <div class="row">
                    <div class="table-responsive col-md-12">
                        <table class="table">
                            <tr>
                                <th>Sr.No.<br />
                                    <th>Name</th>
                                <th>Employee code</th>
                                <th>Mobile number</th>
                                <th>User name</th>
                                <th> Create User </th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Arjun                              
                                </td>
                                <td>22336</td>
                                <td>8965836236</td>
                                <td>Shivani Goyal</td>
                             
                                  <td><a href="Employee_Registration.aspx" class="fa fa-user" aria-hidden="true"></a></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Mohini                            
                                </td>
                                <td>52356</td>
                                <td>8555536236</td>
                                <td>Shivani Goyal</td>
                                   <td><a href="Employee_Registration.aspx" class="fa fa-user" aria-hidden="true"></a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script type="text/javascript"> 
        $(document).ready(function () {
            $("#btnSchoolDetailsHide").click(function () {
                //$("#divStudentDetail").hide();
                window.location.reload();
            });
            $("#btnSchoolDetailsShow").click(function () {
                $("#divStudentDetail").show();
            });
        }); 
    </script>
</asp:Content>

