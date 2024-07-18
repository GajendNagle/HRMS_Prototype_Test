<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ModuleWiseProcessFlowDiagram.aspx.cs" Inherits="mis_Transaction_ModuleWiseProcessFlowDiagram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card card-border-primary ">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Module Wise Process Flow Diagram
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

            <div class="row">

                <div class="col-md-12">
                    <div class="table-responsive">

                        <table class="table table-bordered text-center">

                            <thead>
                                <tr>
                                    <th>Sr.No</th>
                                    <th>Module Name</th>
                                    <th>New Detail</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td>1</td>
                                    <td>Dashboards</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>User Management</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Master Data</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>School Directory</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>HRMS</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Payroll</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Transport Management</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Student Directory</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Scheme Management</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Hostel Management</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Finance</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Development</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>GFMS</td>
                                    <td>
                                        <button class="btn btn-success">Link</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

