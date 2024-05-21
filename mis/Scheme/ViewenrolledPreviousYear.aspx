<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewenrolledPreviousYear.aspx.cs" Inherits="mis_Scheme_ViewenrolledPreviousYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">View Students not enrolled in current year but were enrolled in Previous Year list</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">View Enrolledin Previous Year list</li>
                    </ol>
                </div>
            </div>
        </div>
        <fieldset runat="server">
            <legend>School Details</legend>
            <div class="student-profile py-12">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="col-lg-12">
                                    <div class="card shadow-sm">
                                        <div style="min-height: 0rem;">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th width="30%">School Name : </th>
                                                    <td width="2%">:</td>
                                                    <td>SAGAR PUBLIC SCHOOL [SPS]</td>
                                                    <th width="30%" class="text-gray-lighter">DISE Code</th>
                                                    <td width="2%">:</td>
                                                    <td>1234567</td>
                                                </tr>
                                                <tr>
                                                    <th width="30%">District </th>
                                                    <td width="2%">:</td>
                                                    <td>Bhoapl</td>
                                                    <th width="30%">Block</th>
                                                    <td width="2%">:</td>
                                                    <td>Bairasia</td>
                                                </tr>
                                                <tr>
                                                    <th>School Type</th>
                                                    <td>:</td>
                                                    <td colspan="4">Primary with Middle School (Class 1 to 8)</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <hr />
                                <div class="row justify-content-center">
                                    <div class="col-md-3">
                                        <label>
                                            <span>Previous Year*</span>:</label>
                                        <div class="clearfix">
                                        </div>
                                        <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ddlAcademicYear" id="ddlAcademicYear" class="form-control vd_DDL_required">
                                            <option value="0">-- Select --</option>
                                            <option value="36">2023-24</option>
                                            <option value="35">2022-23</option>
                                            <option value="34">2021-22</option>
                                            <option value="33">2020-21</option>
                                            <option value="32">2019-20</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="font-bold">Class <span style="color: red">*</span></label>
                                            <select class="form-control select2">
                                                <option>--Select--</option>
                                                <option>1st</option>
                                                <option>2nd</option>
                                                <option>3rd</option>
                                                <option>4th</option>
                                                <option>5th</option>
                                                <option>6th</option>
                                                <option>7th</option>
                                                <option>8th</option>
                                                <option>9th</option>
                                                <option>10th</option>
                                                <option>11th</option>
                                                <option>12th</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center">
                                        <div style="font-size: medium; color: Teal; text-align: center;">
                                            <center class="col-md-12">
                                                <hr />
                                                <input type="button" id="btnSchoolDetailsShow"
                                                    value="View Enrolled Student"
                                                    class="btn btn-large btn-info PerformClick" />
                                                <input type="button" id="btnSchoolDetailsHide"
                                                    value="Clear" class="btn btn-large btn-info PerformClick" />
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </fieldset>
    </div>
    <div class="card mt-3 shadow" id="divStudentDetail" style="display: none;">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>View Students not enrolled in current year but were enrolled in Previous Year list </legend>
                <div class="tab-content clearfix">
                    <div class="tab-pane active" id="Successful" runat="server">
                        <div class="card-body">

                            <table class="table table-bordered">
                                <thead>
                                    <tr>

                                        <th style="color: white" scope="col">#</th>
                                        <th style="color: white" scope="col">Samagra Member</th>
                                        <th style="color: white" scope="col">Student Name</th>
                                        <th style="color: white" scope="col">Fathers Name</th>
                                        <th style="color: white" scope="col">Current Class</th>
                                        <th style="color: white" scope="col">Previous Class Result</th>
                                        <th style="color: white" scope="col">Category </th>
                                        <th style="color: white" scope="col">Gender</th>
                                        <th style="color: white" scope="col">DOB</th>
                                        <th style="color: white" scope="col">Is Hosteler</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1            </td>
                                        <td>310732653    </td>
                                        <td>Bhanu </td>
                                        <td>Rahul  </td>
                                        <td>5            </td>
                                        <td>Pass         </td>
                                        <td>OBC          </td>
                                        <td>Girl         </td>
                                        <td>01/01/2012   </td>
                                        <td>N            </td>
                                    </tr>
                                    <tr>
                                        <td>2            </td>
                                        <td>31075756765    </td>
                                        <td>Akash  </td>
                                        <td>Anju  </td>
                                        <td>5            </td>
                                        <td>Pass         </td>
                                        <td>OBC          </td>
                                        <td>Boy        </td>
                                        <td>01/01/2012   </td>
                                        <td>N            </td>
                                    </tr>
                                </tbody>
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



