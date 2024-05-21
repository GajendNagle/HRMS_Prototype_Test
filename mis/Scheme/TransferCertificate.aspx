<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TransferCertificate.aspx.cs" Inherits="mis_Scheme_TransferCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Transfer Certificate</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item"><a title="click to go on">Transfer Certificate</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset runat="server" id="Student">
                <legend>Transfer Certificate</legend>
                <div class="student-profile py-12">
                    <div class="container">
                        <div class="card shadow-sm">
                            <div class="row justify-content-center">
                                <div class="col-md-3">
                                    <label class="font-weight-bold">
                                        समग्र आईडी
                                                <span style="color: red">*</span></label>
                                    <input type="text" class="form-control" autocomplete="off" placeholder="Enter samagr ID" />
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-weight-bold">Acadmic Year<span style="color: red">*</span></label>
                                        <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="2021">2021-2022</option>
                                            <option value="2022">2022-2023</option>
                                            <option value="2023">2023-2024</option>
                                        </select>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                         <div id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_divSave" class="col-md-12">
     <hr />
     <div style="font-size: medium; color: Teal; text-align: center;">
         <center class="col-md-12">
             <hr />
             <input type="button" id="btnSchoolDetailsShow"
                 value="Get Student Details" class="btn btn-large btn-info PerformClick" />
             <input type="button" id="btnSchoolDetailsHide"
                 value="Clear" class="btn btn-large btn-info PerformClick" />
         </center>
     </div>
 </div>
                       <%-- <div class="col-md-3 form-group">
                            <asp:Button Text="Get Student Details" runat="server" id="btnSchoolDetailsShow" class="btn btn-success btn-rounded"></asp:Button>
                             <input type="button" id="btnSchoolDetailsHide"
     value="Clear" class="btn btn-large btn-info PerformClick" />
                            
                        </div>--%>
                    </div>
                </div>
            </fieldset>
            <fieldset  id="divStudentDetail" style="display: none;">
                <legend>Student Details</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom ">
                            <tbody>
                                <tr>
                                    <th>Name :</th>
                                    <td>Bhavendra</td>
                                    <th>Father Name :</th>
                                    <td>Pawn</td>
                                </tr>
                                <tr>
                                    <th>Date of birth :</th>
                                    <td>03/03/2007</td>
                                    <th>Gender :</th>
                                    <td>Mail</td>
                                </tr>
                                <tr>
                                    <th>UDISE Code :</th>
                                    <td>23304068112</td>
                                    <th>School Name : </th>
                                    <td>GOVT HS BANGRASIYA (Class 1 to 10)</td>
                                </tr>
                                <tr>
                                    <th>Class :</th>
                                    <td>1</td>
                                    <th></th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
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
                <br />
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <a href="TransferCertificate_View.aspx" class="s3-btn btn btn-primary">View Transfer Certificate</a>
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

