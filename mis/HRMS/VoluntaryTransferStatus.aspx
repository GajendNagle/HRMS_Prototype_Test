<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoluntaryTransferStatus.aspx.cs" Inherits="mis_HRMS_VoluntaryTransferStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-12">
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
                            <a href="#VoluntaryTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Voluntary Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">Voluntary Transfer
application Status</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-1">
        <div class="col-md-4 ">

            <img src="../../img/OTTMS.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Voluntary Transfer
                  Application Status /
                          स्वैच्छिक स्थानांतरण आवेदन की स्थिति

                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Voluntary Transfer
                  application Status / स्वैच्छिक स्थानांतरण आवेदन की स्थिति
                </legend>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center ">


                                <tr class="card-header">
                                    <th>Sr. No.
                                            <br />
                                        सरल क्र.</th>
                                    <th>Date
                                        <br />
                                        दिनांक</th>
                                    <th style="width: 10%">Unique ID
                                            <br />
                                        युनिक आई.डी.</th>
                                    <th>Name And Designation
                                            <br />
                                        नाम एवं पद</th>
                                    <th>Subject<br />
                                        विषय</th>
                                    <th>Working Institute and UDISE Code
                                        <br />
                                        कार्यरत संस्था एवं डाइस कोड</th>
                                    <th>Working District<br />
                                        कार्यरत जिला</th>
                                    <th style="width: 15%">New Organization and UDICE Code<br />
                                        नवीन संस्था एवं डाइम कोड</th>
                                    <th style="width: 15%!important">District of New Posting 
                                            <br />
                                        नवीन पदस्थापना का जिला</th>
                                    <th>Status
                                        <br />
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

