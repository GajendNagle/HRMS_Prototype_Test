<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentSamagrae-KYC_Approval.aspx.cs" Inherits="mis_Scheme_StudentSamagrae_KYC_Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .card-body {
    min-height: 4rem;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Student Samagra e-KYC Approval</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Student Samagra e-KYC Approval</li>
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
                <legend>Student Samagra e-KYC Approval</legend>
                <div class="card">
                    <div class="card-body">
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <label>
                                    <span>शैक्षणिक वर्ष *</span>:</label>
                                <div class="clearfix">
                                </div>
                                <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ddlAcademicYear" id="ddlAcademicYear" class="form-control vd_DDL_required">
                                    <option value="0">-- शैक्षणिक वर्ष चुने --</option>
                                    <option value="36">2023-24</option>
                                    <option value="35">2022-23</option>
                                    <option value="34">2021-22</option>
                                    <option value="33">2020-21</option>
                                    <option value="32">2019-20</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>समग्र आईडी :- </label>
                                <span style="color: red">*</span>

                                <input class="form-control" maxlength="9" placeholder=" 9 अंक की समग्र आईडी दर्ज करे " />
                            </div>

                            <div class="row justify-content-center">
                                <div style="font-size: medium; color: Teal; text-align: center;">
                                    <center class="col-md-12">
                                        <hr />
                                        <input type="button" id="btnSchoolDetailsShow"
                                            value="Get Student Details from Samagra
"
                                            class="btn btn-large btn-info PerformClick" />
                                        <input type="button" id="btnSchoolDetailsHide"
                                            value="Clear" class="btn btn-large btn-info PerformClick" />
                                    </center>
                                </div>
                            </div>
                        </div>
                </div>
                    </div>
            </fieldset>
            <div class="card mt-3 shadow" id="divStudentDetail" style="display: none;">
  <div class="card-header card-border-info">
  </div>
  <div class="card-body">
       <fieldset>
          <legend>Student details</legend>
          <div class="student-profile ">
              <div>
                  <div class="row justify-content-center">
                      <div class="col-lg-2">
                          <div class="card shadow-sm">
                              <div class="card-header bg-transparent text-center">

                                  <img class="profile_img" src="../dist/images/avatar-13.png" alt="">
                              </div>
                              <h4 style="font-weight: bold; text-align: center; color: maroon !important;" class="text-uppercase text-gray-silver">ANIKET AHIRWAR</h4>

                          </div>
                      </div>
                      <div class="col-lg-5">
                          <div class="card shadow-sm">

                              <div style="min-height: 12rem;" class="card-body">
                                  <div class="col-lg-12">
                                      <div class="card shadow-sm">
                                          <div class="card-header bg-transparent border-0">
                                              <h3 style="color: black;"><i class="far fa-clone pr-1"></i>Basic details from shiksha eKYC </h3>
                                          </div>
                                          <div style="min-height: 0rem;" class="card-body pt-0">
                                              <table class="table table-bordered">
                                                  <tr>
                                                      <th width="30%">Aadhaar number : </th>
                                                      <td width="2%">:</td>
                                                      <td>553366336699</td>
                                                      <th width="30%" class="text-gray-lighter">Name	</th>
                                                      <td width="2%">:</td>
                                                      <td>ANIKET AHIRWAR</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">guardian Name </th>
                                                      <td width="2%">:</td>
                                                      <td>Bhagvan Singh</td>
                                                      <th width="30%">guardian Relation</th>
                                                      <td width="2%">:</td>
                                                      <td>Brother</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">Date of birth </th>
                                                      <td width="2%">:</td>
                                                      <td>03/03/1998</td>
                                                      <th width="30%">gender</th>
                                                      <td width="2%">:</td>
                                                      <td>Male</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">Address </th>
                                                      <td width="2%">:</td>
                                                      <td>ग्राम / वार्ड -Birha Shym Khedi  जिला -Bhopal</td>
                                                      <th width="30%">Pin Code</th>
                                                      <td width="2%">:</td>
                                                      <td>460557</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">District </th>
                                                      <td width="2%">:</td>
                                                      <td>Bhopal</td>
                                                      <th width="30%">local body</th>
                                                      <td width="2%">:</td>
                                                      <td>Nagar Nigam</td>
                                                  </tr> 
                                                  <tr>
                                                      <th width="30%">landmark </th>
                                                      <td width="2%">:</td>
                                                      <td>Bhopal</td>
                                                  </tr> 
                                              </table>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div> 
                      <div class="col-lg-5">
                          <div class="card shadow-sm"> 
                              <div style="min-height: 12rem;" class="card-body">
                                  <div class="col-lg-12">
                                      <div class="card shadow-sm">
                                          <div class="card-header bg-transparent border-0">
                                              <h3 style="color: black;"><i class="far fa-clone pr-1"></i>Basic details from samagra</h3>
                                          </div>
                                          <div style="min-height: 0rem;" class="card-body pt-0">
                                              <table class="table table-bordered">
                                                  <tr>
                                                      <th width="30%">SSSMID : </th>
                                                      <td width="2%">:</td>
                                                      <td>553366334</td>
                                                      <th width="30%" class="text-gray-lighter">Name	</th>
                                                      <td width="2%">:</td>
                                                      <td>ANIKET AHIRWAR</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">guardian Name </th>
                                                      <td width="2%">:</td>
                                                      <td>Bhagvan Singh</td>
                                                      <th width="30%">guardian Relation</th>
                                                      <td width="2%">:</td>
                                                      <td>Brother</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">Date of birth </th>
                                                      <td width="2%">:</td>
                                                      <td>03/03/1998</td>
                                                      <th width="30%">gender</th>
                                                      <td width="2%">:</td>
                                                      <td>Male</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">Address </th>
                                                      <td width="2%">:</td>
                                                      <td>ग्राम / वार्ड -Birha Shym Khedi  जिला -Bhopal</td>
                                                      <th width="30%">Pin Code</th>
                                                      <td width="2%">:</td>
                                                      <td>460557</td>
                                                  </tr>
                                                  <tr>
                                                      <th width="30%">District </th>
                                                      <td width="2%">:</td>
                                                      <td>Bhopal</td>
                                                      <th width="30%">local body</th>
                                                      <td width="2%">:</td>
                                                      <td>Nagar Nigam</td>
                                                  </tr> 
                                                  <tr>
                                                      <th width="30%">landmark </th>
                                                      <td width="2%">:</td>
                                                      <td>Bhopal</td>
                                                  </tr> 
                                              </table>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  </div>
              </div>
                    <div class="row justify-content-center">
      <div class="col-md-3">
          <label> Stetus</label>
                 <span style="color: red">*</span> :- 
          <div class="clearfix">
          </div>
          <select  id="ddlStetus" class="form-control vd_DDL_required">
              <option value="0">-- Select Stetus --</option>
              <option value="36">Approve</option>
              <option value="35">Reject</option> 
          </select>
      </div>
      <div class="col-md-3">
          <label>Remark </label>
          <span style="color: red">*</span> :- 
          <input class="form-control" placeholder=" Enter Remark  " />
      </div>
                           </div>
           <br />
                   <div class="row justify-content-center"> 
                      <div class="col-md-3">
                            <button type="button" class="Alert-Edit btn btn-success btn-rounded">Update Student Details </button>
                           <a href="StudentSamagrae-KYC_Approval.aspx" class="btn btn-danger btn-rounded">Clear</a>
                      </div>
                  </div> 
               
        
      </fieldset>
  </div>
  </div>
            
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

