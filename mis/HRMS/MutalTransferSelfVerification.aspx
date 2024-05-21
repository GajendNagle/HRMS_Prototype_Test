<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MutalTransferSelfVerification.aspx.cs" Inherits="mis_HRMS_MutalTransferSelfVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div class="row page-titles mb-4">
    <div class="col-md-5 align-self-center">
        <h4 class="text-themecolor ">Mutual Transfer Self Verification
         <br />
            पारस्परिक स्थानांतरण स्वयं सत्यापन</h4>
    </div>
    <div class="col-md-7 align-self-center text-end">
        <div class="d-flex justify-content-end align-items-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>
                <li class="breadcrumb-item active">Mutual Transfer Self Verification</li>
            </ol>
        </div>
    </div>
</div>
<div class="card mt-3 shadow">
    <div class="card-header card-border-info">
    </div>
    <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b>Mutual Transfer Application</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Delete Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferPrintApplication.aspx">Print Application</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item">
                                 <a class="nav-link text-dark font-16 text-white" href="MutalTransferSelfVerification.aspx" role="button"  aria-expanded="false"><strong><b>Mutual Transfer Self Verification</b></strong></a>
                            </li>
                             <li class="nav-item">
                                 <a class="nav-link text-dark font-16 text-white" href="MutualTransferApplicationStatus.aspx" role="button"  aria-expanded="false"><strong><b>Mutual Transfer Application Status</b></strong></a>
                            </li>
                        </ul>
                       
                    </div>
                </div>
            </nav>     
            <br />
            <br />
        <fieldset>
            <legend>Mutual Transfer Self Verification
            </legend>
            <div class="row">
                <div class="col-md-12">
                    <div class="">
                        <table class="table text-center table-bordered">
                            <tr>
                                <th>Sr No.<br />स.क्र.</th>
                                <th>Date<br /> दिनांक</th>
                                <th>Unique <br />युनिक आई.डी.</th>
                                <th>Name And Designation <br /> नाम एवं पद</th>
                                <th>Subject<br />विषय</th>
                                <th>Working Institute And UDISE Code<br /> कार्यरत संस्था एवं डाइस कोड</th>
                                <th>Working District<br />कार्यरत जिला</th>
                                <th>New Organization And UDICE Code<br /> नवीन संस्था एवं डाइम कोड</th>
                                <th>District Of New Posting <br /> नवीन पदस्थापना का जिला</th>
                                <th>Action<br /></th>
                              
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>09-03-2024</td>
                                <td>BT921</td>
                                <td>Arjun Talwar / Teacher (UDT) </td>
                                <td>Hindi</td>
                                <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                <td>Bhapal</td>
                                <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                <td>Rajgarh</td>
                                <td rowspan="2" style=""> <button type="button" class="btn btn-success" data-bs-dismiss="modal">Approve</button><br />
                                    <br /><button type="button" class="btn btn-danger" data-bs-dismiss="modal">Reject</button>  </td>
                               
                            </tr>
                             <tr>
                                <td>2</td>
                                <td>09-03-2024</td>
                                <td>BT899</td>
                                <td>Aman Patidar / Teacher (UDT) </td>
                                <td>Hindi</td>
                                <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                <td>Rajgarh</td>
                                <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                <td>Bhapal</td>
                                
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

