<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Bill_Generation.aspx.cs" Inherits="mis_Scheme_Bill_Generation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%-- <div class="row page-titles mb-4">
     <div class="col-md-5 align-self-center">
         <h4 class="text-themecolor ">School Wise Bill Generation</h4>
     </div>
     <div class="col-md-7 align-self-center text-end">
         <div class="d-flex justify-content-end align-items-center">
             <ol class="breadcrumb">
                 <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                 <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                 <li class="breadcrumb-item"><a href="SSDDO_Scholarship.aspx" title="click to go on">SSDDO_Scholarship</a></li>
                 <li class="breadcrumb-item active">School Wise Bill Generation</li>
             </ol>
         </div>
     </div>
 </div>--%>

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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">SSDDO Scholarship</li>
                        <li class="breadcrumb-item">School Wise Bill Generation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">School Wise Bill Generation /
                स्कूल वाइज बिल जनरेशन
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>School Wise Bill Generation / स्कूल वाइज बिल जनरेशन</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Acadmic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="2021">2021-2022</option>
                                <option value="2022">2022-2023</option>
                                <option value="2023">2023-2024</option>

                            </select>
                        </div>

                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select School Management Type<br />
                                स्कूल प्रबंधन प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Govt">State Govt</option>
                                <option value="Povt">Povt</option>

                            </select>
                        </div>

                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label >Select School<br />
                                स्कूल का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="-">Carmel Convent Sr Secondary School</option>
                                <option value="-">-</option>
                                <option value="-">-</option>

                            </select>
                        </div>

                    </div>
                    </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-success btn-border btn w-lg">Show Record</button>
                        <a href="Bill_Generation.aspx" class="btn btn-outline-danger btn-border btn w-lg">Clear</a>
                    </div>
                </div>

            </fieldset>

            <fieldset>
                <legend>School Wise Bill Generation Details / स्कूल वाइज बिल निर्माण का विवरण</legend>
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
                            <table class="table">
                                <tr>
                                    <th>Sr.No.<br />सरल क्र.</th>
                                    <th>Scheme Code<br />योजना कोड</th>
                                    <th>Scheme Name<br />योजना का नाम</th>
                                    <th>Total Student<br />कुल छात्र</th>
                                    <th>Scholarship Amount<br />छात्रवृत्ति राशि</th>
                                    <th>Print<br />प्रिंट</th>
                                    <th>Download<br />डाउनलोड</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>2.1.2</td>
                                    <td>अनुसूचित जाति कल्याण विभाग</td>
                                    <td>1</td>
                                    <td>300</td>
                                    <td><i class="fa fa-print"></i></td>
                                    <td><i class="fa fa-download"></i></td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2.1</td>
                                    <td>जनजातीय कार्य विभाग</td>
                                    <td>24</td>
                                    <td>800</td>
                                    <td><i class="fa fa-print"></i></td>
                                    <td><i class="fa fa-download"></i></td>
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

