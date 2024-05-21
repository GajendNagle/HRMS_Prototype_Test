<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Sankul.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_Sankul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-header">
                        Office Master
                    </div>
                    <div class="card-body">

                        <asp:Label runat="server" ID="lblMsg"></asp:Label>
                        <fieldset>
                            <legend>Sankul Master</legend>

                            <div class="row">

                                <div class="col-md-3">
                                    <label class="font-bold">Division Name <span style="color: red">*</span></label>
                                    <asp:DropDownList runat="server" CssClass="form-control select2">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>Bhopal</asp:ListItem>
                                        <asp:ListItem>Gwalior</asp:ListItem>
                                        <asp:ListItem>Narmadapuram</asp:ListItem>
                                        <asp:ListItem>Indore</asp:ListItem>
                                        <asp:ListItem>Jabalpur</asp:ListItem>
                                        <asp:ListItem>Rewa</asp:ListItem>
                                        <asp:ListItem>Sagar</asp:ListItem>
                                        <asp:ListItem>Shahdol</asp:ListItem>
                                        <asp:ListItem>Ujjain</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <label class="font-bold">District Name<span style="color: red">*</span></label>
                                    <asp:DropDownList runat="server" CssClass="form-control select2">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>Bhopal</asp:ListItem>
                                        <asp:ListItem>Raisen</asp:ListItem>
                                        <asp:ListItem>Rajgarh</asp:ListItem>
                                        <asp:ListItem>Sehore</asp:ListItem>
                                        <asp:ListItem>Vidisha</asp:ListItem>
                                        <asp:ListItem>Ashoknagar</asp:ListItem>
                                        <asp:ListItem>Shivpuri</asp:ListItem>
                                        <asp:ListItem>Datia</asp:ListItem>
                                        <asp:ListItem>Guna</asp:ListItem>
                                        <asp:ListItem>Gwalior</asp:ListItem>
                                        <asp:ListItem>Harda</asp:ListItem>
                                        <asp:ListItem>Hoshangabad</asp:ListItem>
                                        <asp:ListItem>Betul</asp:ListItem>
                                        <asp:ListItem>Morena</asp:ListItem>
                                        <asp:ListItem>Sheopur</asp:ListItem>
                                        <asp:ListItem>Bhind</asp:ListItem>
                                        <asp:ListItem>Barwani</asp:ListItem>
                                        <asp:ListItem>Burhanpur</asp:ListItem>
                                        <asp:ListItem>Dhar</asp:ListItem>
                                        <asp:ListItem>Indore</asp:ListItem>
                                        <asp:ListItem>Jhabua</asp:ListItem>
                                        <asp:ListItem>Khandwa</asp:ListItem>
                                        <asp:ListItem>Khargone</asp:ListItem>
                                        <asp:ListItem>Alirajpur</asp:ListItem>
                                        <asp:ListItem>Balaghat</asp:ListItem>
                                        <asp:ListItem>Chhindwara</asp:ListItem>
                                        <asp:ListItem>Jabalpur</asp:ListItem>
                                        <asp:ListItem>Katni</asp:ListItem>
                                        <asp:ListItem>Mandla</asp:ListItem>
                                        <asp:ListItem>Narsinghpur</asp:ListItem>
                                        <asp:ListItem>Seoni</asp:ListItem>
                                        <asp:ListItem>Rewa</asp:ListItem>
                                        <asp:ListItem>Satna</asp:ListItem>
                                        <asp:ListItem>Sidhi</asp:ListItem>
                                        <asp:ListItem>Singroli</asp:ListItem>
                                        <asp:ListItem>Chhatarpur</asp:ListItem>
                                        <asp:ListItem>Damoh</asp:ListItem>
                                        <asp:ListItem>Panna</asp:ListItem>
                                        <asp:ListItem>Sagar</asp:ListItem>
                                        <asp:ListItem>Tikamgarh</asp:ListItem>
                                        <asp:ListItem>Shahdol</asp:ListItem>
                                        <asp:ListItem>Umaria</asp:ListItem>
                                        <asp:ListItem>Dindori</asp:ListItem>
                                        <asp:ListItem>Anuppur</asp:ListItem>
                                        <asp:ListItem>Dewas</asp:ListItem>
                                        <asp:ListItem>Mandsaur</asp:ListItem>
                                        <asp:ListItem>Neemuch</asp:ListItem>
                                        <asp:ListItem>Ratlam</asp:ListItem>
                                        <asp:ListItem>Shajapur</asp:ListItem>
                                        <asp:ListItem>Ujjain</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <label class="font-bold">Block Name<span style="color: red">*</span></label>
                                    <asp:DropDownList runat="server" CssClass="form-control select2">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>Agar</asp:ListItem>
                                        <asp:ListItem>Barod</asp:ListItem>
                                        <asp:ListItem>Nalkheda</asp:ListItem>
                                        <asp:ListItem>Susner</asp:ListItem>
                                        <asp:ListItem>Alirajpur</asp:ListItem>
                                        <asp:ListItem>Bhabra</asp:ListItem>
                                        <asp:ListItem>Katthiwara</asp:ListItem>
                                        <asp:ListItem>Sondwa</asp:ListItem>
                                        <asp:ListItem>Udaygarh</asp:ListItem>
                                        <asp:ListItem>Jobat</asp:ListItem>
                                        <asp:ListItem>Anuppur</asp:ListItem>
                                        <asp:ListItem>Jaithari</asp:ListItem>
                                        <asp:ListItem>Kotma</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-weight-bold">School Name / UDISE Code<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control select2" runat="server">
                                            <asp:ListItem>All</asp:ListItem>
                                            <asp:ListItem>121-Sarasvati Gyan Mandir</asp:ListItem>
                                            <asp:ListItem>101-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                            <asp:ListItem>012-Reema Gyan Mandir</asp:ListItem>
                                            <asp:ListItem>131-Sarasvati Vidhya Mandir</asp:ListItem>
                                            <asp:ListItem>122-Bal Bharti Higher Secondary School</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-md-2">
                                    <label class="font-weight-bold">Mark as a Sankul<span style="color: red">*</span></label>
                                    <br />
                                    <asp:CheckBox Checked="true" runat="server" />
                                </div>
                                <div class="col-md-3">
                                    <label class="font-weight-bold">Code No<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Number" onkeypress="return lettersOnly();"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-weight-bold">Effective Date<span style="color: red">*</span></label>
                                        <%--<asp:TextBox ID="txtPurchase" Placeholder="Select Effective Date" runat="server" CssClass="datepicker form-control"></asp:TextBox>--%>
                                                                                                        <input type="date" class="form-control" Placeholder="17/11/2023"/>

                                    </div>
                                </div>

                                <div class="col-md-1">
                                    <label class="font-weight-bold">IsActive<i style="color: red;">*</i></label>
                                    <br />
                                    <asp:CheckBox Checked="true" runat="server" />
                                </div>
                                <div class="col-md-1 mt-4">
                                    <%--<asp:Button runat="server" ID="btnSave" CssClass="btn btn-block btn-success btn-rounded" Text="Save" OnClientClick="return confirm('Are you sure you want to save this record?')" />--%>
                                    <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                                </div>
                                <div class="col-md-1 mt-4">
                                    <a href="Mst_Sankul.aspx" class="btn btn-block btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Sankul Details </legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th>Sr.No.</th>

                                                <th>Division Name</th>
                                                <th>District Name</th>
                                                <th>Block Name</th>
                                                <th>Sankul Name</th>
                                                <th>Sankul Code</th>
                                                <th>Code No</th>
                                                <th>Status</th>
                                                <th>View More</th>
                                                <th>Action</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Bhopal</td>
                                                <td>Bhopal</td>
                                                <td>Phanda</td>
                                                <td>ABC</td>
                                                <td>123</td>
                                                <td>03</td>
                                                <td>Active</td>
                                                <td><i class="fa fa-eye"></i></td>
                                                <td><i class="fa fa-pen"></i>|<i class="fa fa-trash"></i></td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Description</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="main-ul">

                                        <li><strong>Division Name</strong>
                                            <ul>
                                                <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>as cascade from <strong>State name.</strong> </li>
                                            </ul>
                                        </li>

                                        <li><strong>District Name</strong>
                                            <ul>
                                                <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>State and  Division Name.</strong> </li>
                                            </ul>
                                        </li>
                                        <li><strong>Block Name</strong>
                                            <ul>
                                                <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade <strong>State, Division and District name.</strong> </li>
                                            </ul>
                                        </li>

                                        <li><strong>School Name / UDISE Code </strong>
                                            <ul>
                                                <li>User will be able to select the School Name / UDISE Code and the field will be populated to School Registration.</li>
                                            </ul>
                                        </li>
                                        <li><strong>Mark as Sankul  </strong>
                                            <ul>
                                                <li>User will be able to click on a check box for Sankul mark</li>
                                            </ul>
                                        </li> 
                                        
                                        <li><strong>Code No.</strong>
                                            <ul>
                                                <li>User will be able to enter the Sankul Code and the text field will accept only Alpha numerical values.</li>
                                            </ul>
                                        </li>
                                        
                                        <li><strong>Effective Date </strong>
                                            <ul>
                                                <li>User will be able to select effective date; the field should be in a calendar format.</li>
                                            </ul>
                                        </li>
                                        <li><strong>Save </strong>
                                            <ul>
                                                <li>User should be able to click on save button.</li>
                                                <li>On save button click form field should be validated.</li>
                                                <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                                <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                                <li>If click on NO the data will not be saved and will return to the same page.</li>
                                            </ul>

                                        </li>
                                        <li><strong>Clear</strong>
                                            <ul>
                                                <li>User should be able to click on Clear button. </li>
                                                <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                            </ul>
                                        </li>
                                        <li><strong>PDF</strong>
                                            <ul>
                                                <li>PDF button should be visible and user should be able to click.</li>
                                                <li>After clicking on PDF button grid view data export in PDF.</li>
                                            </ul>
                                        </li>
                                        <li><strong>Excel</strong>
                                            <ul>
                                                <li>Excel button should be visible and user should be able to click.</li>
                                                <li>After clicking on Excel button grid view data export in Excel.</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>

            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
<%--    <script>
        $(document).ready(function () {
            $('#<%= txtPurchase.ClientID %>').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });
        });
    </script>--%>
</asp:Content>

