<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_DepartmentSchemes.aspx.cs" Inherits="mis_Reports_Rpt_DepartmentSchemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Summary of Scholarship Applications received for all schemes of a Department</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>

                    <li class="breadcrumb-item active">Summary of Scholarship Applications received for all schemes of a Department</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Applications </legend>
                <div class="row">
                    <div class="col-md-3">
                        <label>Academic Year <span class="text-danger">*</span></label>
                        <select class="form-control mt-2 select2">
                            <option value="0">-Select-</option>
                            <option selected="selected" value="37">2024-25</option>
                            <option value="36">2023-24</option>
                            <option value="35">2022-23</option>
                            <option value="34">2021-22</option>
                            <option value="33">2020-21</option>
                            <option value="32">2019-20</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>Report Date <span class="text-danger">*</span></label>
                        <select class="form-control mt-2 select2">
                            <option selected="selected" value="0">-Select-</option>
                            <option value="11/09/2023">11/09/2023</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>Department <span class="text-danger">*</span></label>
                        <select class="form-control mt-2 select2">
                            <option value="0">-Select-</option>
                            <option value="2">अनुसूचित जाति कल्याण विभाग</option>
                            <option value="3">आदिमजाति जाति कल्याण विभाग</option>
                            <option value="7">कृषि विभाग/मण्ड़ी बोर्ड</option>
                            <option value="5">पिछड़ा वर्ग एवं अल्पसंख्यक कल्याण विभाग</option>
                            <option value="4">विमुक्त, घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजाति कल्याण विभाग</option>
                            <option value="6">श्रम विभाग</option>
                            <option value="1">स्कूल शिक्षा विभाग</option>
                            <option value="8">सामाजिक न्याय विभाग</option>
                        </select>
                    </div>
                    <div class="col-md-2 mt-4 py-2">
                        <button  class="btn btn-success btn-rounded" >Save</button>
                        <button  class="btn btn-danger btn-rounded" >Clear</button>
                    </div>

                </div>

            </fieldset>

            <fieldset>
                <legend>Details</legend>
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
                            <table class="table table-hover table-bordered table-condensed ___gridview" cellspacing="0" cellpadding="0" border="0" id="ctl00_ctl00_rmp_main_dpPH_gvSchemeDetails" style="width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr class="alert-info">
                                        <th class="SN" scope="col">
                                            <div style="text-align: center">
                                                S. No.
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <div style="text-align: center">
                                                Department
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <div style="text-align: center">
                                                Scheme
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <div style="text-align: center">
                                                Total Sanctioned Applications
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <div style="text-align: center">
                                                Total Sanctioned Amount
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <div style="text-align: center">
                                                Total Paid Applications (M1Click)
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <div style="text-align: center">
                                                Total Paid Amount (M1Click)
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <div style="text-align: center">
                                                View District Wise Report
                                            </div>
                                        </th>
                                    </tr>
                                    <tr class="Scheme1">
                                        <td class="SN">1
                                        </td>
                                        <td>
                                            <span class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                        </td>
                                        <td>
                                            <span class="ui-widget" style="font-weight: bold;">1.1 - सामान्य निर्धन वर्ग छात्रवृत्ति योजना</span>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center">
                                                <a class="btn btn-warning btn-rounded" href="#"><i class="fa fa-eye"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="Scheme1">
                                        <td class="SN">2
                                        </td>
                                        <td>
                                            <span class="ui-widget" style="font-weight: bold;">स्कूल शिक्षा विभाग</span>
                                        </td>
                                        <td>
                                            <span class="ui-widget" style="font-weight: bold;">1.2 - सुदामा प्री मैट्रिक योजना</span>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: right">
                                                <span class="ui-widget" style="font-weight: bold;">0</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="text-align: center">
                                                <a class="btn btn-warning btn-rounded" href="#"><i class="fa fa-eye"></i></a>
                                            </div>
                                        </td>
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
</asp:Content>



