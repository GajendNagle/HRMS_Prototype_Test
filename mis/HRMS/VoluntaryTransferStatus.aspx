<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoluntaryTransferStatus.aspx.cs" Inherits="mis_HRMS_VoluntaryTransferStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">स्वैच्छिक स्थानांतरण स्थिति</p>
        </div>
        <div class="col-md-4 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>
                    <li class="breadcrumb-item active">Voluntary Transfer Status</li>
                </ol>
            </div>
        </div>



    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Voluntary Transfer Status / स्वैच्छिक स्थानांतरण स्थिति
                </legend>
                <div class="row justify-content-end">
    <div class="col-md-1">
        <div class="form-group">
            <button class="btn btn-info btn-rounded w-100">Excel</button>
        </div>
    </div>
    <div class="col-md-1">
        <div class="form-group">
            <button class="btn btn-info btn-rounded w-100">PDF</button>
        </div>
    </div>
    <div class="col-md-3">
        <div class="form-group">
            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
        </div>
    </div>
</div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center ">


                                <tr class="card-header">
                                    <th>Sr. No.
                                            <br />
                                        सरल क्र.</th>
                                    <th>Date<br />
                                        दिनांक</th>
                                    <th style="width: 10%">Unique ID
                                            <br />
                                        युनिक आई.डी.</th>
                                    <th>Name And Designation
                                            <br />
                                        नाम एवं पद</th>
                                    <th>Subject<br />
                                        विषय</th>
                                    <th>Working Institute and UDISE Code<br />
                                        कार्यरत संस्था एवं डाइस कोड</th>
                                    <th>Working District<br />
                                        कार्यरत जिला</th>
                                    <th style="width: 15%">New Organization and UDICE Code<br />
                                        नवीन संस्था एवं डाइम कोड</th>
                                    <th style="width: 15%!important">District of New Posting
                                            <br />
                                        नवीन पदस्थापना का जिला</th>
                                    <th>Status<br />
                                        स्थिति</th>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>09/03/2024</td>
                                    <td>BT921</td>
                                    <td>Arjun Talwar / Teacher (UDT) </td>
                                    <td>Hindi</td>
                                    <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                    <td>Bhapal</td>
                                    <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                    <td>Rajgarh</td>
                                    <td>Pending</td>
                                </tr>
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

