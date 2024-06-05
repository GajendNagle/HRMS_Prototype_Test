<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MutualTransferApplicationStatus.aspx.cs" Inherits="mis_HRMS_MutualTransferApplicationStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }
        th{
            white-space:nowrap;
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
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">पारस्परिक स्थानांतरण स्थिति</p>
        </div>
        <div class="col-md-4 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Mutual Transfer Application Status</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Mutual Transfer Application Status / पारस्परिक स्थानांतरण आवेदन की स्थिति
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table text-center table-bordered">
                                <tr class="card-header"> 
                                    <th>Sr No.<br />
                                        स.क्र.</th>
                                    <th>Date<br />
                                        दिनांक</th>
                                    <th>Unique
                                        <br />
                                        युनिक आई.डी.</th>
                                    <th>Name And Designation
                                        <br />
                                        नाम एवं पद</th>
                                    <th>Subject<br />
                                        विषय</th>
                                    <th>Working Institute And UDISE Code<br />
                                        कार्यरत संस्था एवं डाइस कोड</th>
                                    <th>Working District<br />
                                        कार्यरत जिला</th>
                                    <th>New Organization And UDICE Code<br />
                                        नवीन संस्था एवं डाइम कोड</th>
                                    <th>District Of New Posting
                                        <br />
                                        नवीन पदस्थापना का जिला</th>

                                    <th>Office Status<br />
                                        ऑफिस स्टेटस</th>
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
                                <tr>
                                    <td>2</td>
                                    <td>09/03/2024</td>
                                    <td>BT899</td>
                                    <td>Aman Patidar / Teacher (UDT) </td>
                                    <td>Hindi</td>
                                    <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                    <td>Rajgarh</td>
                                    <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                    <td>Bhapal</td>
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

