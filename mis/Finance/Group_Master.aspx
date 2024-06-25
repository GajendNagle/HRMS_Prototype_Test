<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Group_Master.aspx.cs" Inherits="mis_Finance_Group_Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../mis/Module.aspx?ID=Finance" title="click to go on">Finance</a></li>
                    <li class="breadcrumb-item active"><a href="Group_Master.aspx" title="click to go on">Group Master</a></li>
                </ol>
            </div>
        </div>
    </div>
       <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Group Master /ग्रुप मास्टर</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Group/<br />
                                    सूची से समूह का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">--Select --</option>
                                    <option value="1">Liabilities</option>
                                    <option value="2">Assets</option>
                                    <option value="3">Income</option>
                                    <option value="4">Expenses</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Group Name(English)/<br />समूह का नाम अंग्रेजी में दर्ज करें
                                    <span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Group Name in English" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Group Name(Hindi)/<br />समूह का नाम हिंदी में दर्ज करें</label>
                                <input type="text" class="form-control" placeholder="Enter Group Name in Hindi" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Group Code/<br />
                                    समूह कोड दर्ज करें</label>
                                <input type="text" class="form-control" placeholder="Enter Group Code" />
                            </div>
                        </div></div>
                        <div class="row">
                            <div class="col-md-3">
                                 <div class="form-group">
                                <label>
                                    Enter Group Order No./<br />
                                    समूह ऑर्डर नंबर दर्ज करें.</label>
                                <input type="text" class="form-control" placeholder="Enter Group Order No." />
                            </div>
                            </div>
                        </div>
                     
                </fieldset>
                <div class="col-md-12">
                    <div class="form-group text-center">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                        <a href="Group_Master.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </div>
        </div>
    <fieldset id="HostlInfo" style="display: none;">
        <legend>Group Master Details/ग्रुप मास्टर विवरण</legend>
         <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    </div>
        <div class="row align-items-end">
            <div class="col-lg-12" runat="server" id="dvStudentDetails">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th scope="col">Sr.No.<br />
                                            क्र.सं.</th>
                                        <th scope="col">Group Name(English)<br />   
                                            समूह का नाम अंग्रेजी में
                                        </th>
                                        <th scope="col">Group Name(Hindi)<br />  
                                            समूह का नाम हिंदी में
                                        </th>
                                        <th scope="col">Group Code<br />
                                            समूह कोड</th>
                                        <th scope="col">Group Order No.<br />
                                            ग्रुप ऑर्डर नंबर</th>
                                        <th scope="col">Parent Group<br />
                                            अभिभावक समूह</th>
                                        <th scope="col">Action<br />
                                            कार्रवाई </th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Assets </span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>संपत्ति </span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>22</span>
                                        </td>
                                         <td align="center" valign="middle">
                                            <span>A1-22</span>
                                        </td>
                                         <td align="center" valign="middle">
                                            <span>Assets</span>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>

                                    </tr>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>2</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Liabilities </span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>देताएं </span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>32</span>
                                        </td>
                                         <td align="center" valign="middle">
                                            <span>C1-32</span>
                                        </td>
                                         <td align="center" valign="middle">
                                            <span>Liabilities</span>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </fieldset>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

