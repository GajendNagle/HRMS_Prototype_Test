<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="FinalCompletionProcess.aspx.cs" Inherits="mis_Development_FinalCompletionProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Final Completion Process
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Final Completion Process / अंतिम समापन प्रक्रिया
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Final Completion Process / अंतिम समापन प्रक्रिया</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Project Year<br />
                            प्रोजेक्ट वर्ष का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>2024</option>
                            <option>2023</option>
                            <option>2022</option>
                            <option>2021</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Project No<br />
                            प्रोजेक्ट नंबर का चयन करें<span style="color: red;">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="1">PWDMP001</option>
                            <option value="2">PWDMP002</option>
                            <option value="3">PWDMP003</option>
                            <option value="4">PWDMP004</option>
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="document.getElementById('table1').style.display='block'">Search</button>
                        <a href="FinalCompletionProcess.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
                <legend>Details / विवरण</legend>
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
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                            <br />
                                            क्रमांक</th>
                                        <th>Project No<br />
                                            परियोजना संख्या
                                        </th>
                                        <th>Project Approval No.<br />
                                            परियोजना अनुमोदन संख्या</th>
                                        <th>Project Approval Date<br />
                                            परियोजना स्वीकृति तिथि</th>
                                        <th>Cost Amount<br />
                                            लागत राशि</th>
                                        <th>Spend Amount<br />
                                            व्यय राशि</th>
                                        <th>Available Amount<br />
                                            उपलब्ध राशि</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>PWDMP001</td>
                                        <td>RTY3456</td>
                                        <td>01/03/2021</td>
                                        <td>40000</td>
                                        <td>20000</td>
                                        <td>20000</td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row justify-content-center">
                    <div class="col-md-3 ">
                        <button type="button" class="Alert-Confirmation btn  btn-success">Generate Final Complition</button>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

