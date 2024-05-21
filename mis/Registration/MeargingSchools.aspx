<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MeargingSchools.aspx.cs" Inherits="mis_Registration_MeargingSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="card">
        <div class="card-header">
            Merge schools
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School to merge (स्कूल जो विलय करना हैं)</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>23010800102</asp:ListItem>
                                <asp:ListItem>23010800108</asp:ListItem>
                                <asp:ListItem>23010800107</asp:ListItem>
                                <asp:ListItem>23010800106</asp:ListItem>
                                <asp:ListItem>23010800105</asp:ListItem>
                                <asp:ListItem>23010800104</asp:ListItem>
                                <asp:ListItem>23010800105</asp:ListItem>
                                <asp:ListItem>23010800103</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                    <%--     </div>
                <div class="row">--%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Type  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Boy</asp:ListItem>
                                <asp:ListItem Selected="True">2-Girls</asp:ListItem>
                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Management Group  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>A-State Govt</asp:ListItem>
                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                <asp:ListItem Selected="True">C-Private UnAided </asp:ListItem>
                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                <asp:ListItem>E-Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Management Details  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                <asp:ListItem Selected="True">3-Local Body </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Category  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Primary</asp:ListItem>
                                <asp:ListItem Selected="True">2-Upper Primary</asp:ListItem>
                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Category Details </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Primary</asp:ListItem>
                                <asp:ListItem Selected="True">2-Upper Primary</asp:ListItem>
                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Name</label>
                            <asp:TextBox runat="server" Placeholder="Reema Vidhya Mandir" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">In Charge Name</label>
                            <asp:TextBox runat="server" placeholder="Ram Singh" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Medium</label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>19-English</asp:ListItem>
                                <asp:ListItem Selected="True">04-Hindi</asp:ListItem>
                                <asp:ListItem>18-Urdu</asp:ListItem>
                                <asp:ListItem>10-Marathi</asp:ListItem>
                                <asp:ListItem>99-Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Habitation </label>
                            <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">

                                <asp:ListItem Selected="True">Berasia</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Letter No.<span style="color: red;"> *</span></label>
                            <asp:TextBox ID="TextBox5" placeholder="Enter Letter No" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Effective Date<span style="color: red;"> *</span></label>
                            <%--<asp:TextBox ID="txtPurchase" placeholder="Select Effective Date" runat="server" CssClass="datepicker form-control" TextMode="Date"></asp:TextBox>--%>
                                                            <input type="date" class="form-control" Placeholder="17/11/2023"/>

                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Upload Doc. </label>
                            <asp:FileUpload runat="server" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-2 mt-3">
                        <%--<asp:Button ID="View1" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="View more" />--%>
                        <%--<asp:LinkButton ID="View1" runat="server" CssClass="btn view-but mdi mdi-eye" OnClientClick="return false;"> View more</asp:LinkButton>--%>
                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i class="mdi mdi-eye text-default"></i>
                            <br />
                            View more</asp:LinkButton>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Anchor School (स्कूल जिसमे विलय करना हैं)</legend>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>23010800102</asp:ListItem>
                                <asp:ListItem>23010800108</asp:ListItem>
                                <asp:ListItem>23010800107</asp:ListItem>
                                <asp:ListItem>23010800106</asp:ListItem>
                                <asp:ListItem>23010800105</asp:ListItem>
                                <asp:ListItem>23010800104</asp:ListItem>
                                <asp:ListItem>23010800105</asp:ListItem>
                                <asp:ListItem>23010800103</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Type  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Boy</asp:ListItem>
                                <asp:ListItem Selected="True">2-Girls</asp:ListItem>
                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Management Group  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>A-State Govt</asp:ListItem>
                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                <asp:ListItem Selected="True">C-Private UnAided </asp:ListItem>
                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                <asp:ListItem>E-Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Management Details  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                <asp:ListItem Selected="True">3-Local Body </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Category  </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Primary</asp:ListItem>
                                <asp:ListItem Selected="True">2-Upper Primary</asp:ListItem>
                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Category Details </label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>1-Primary</asp:ListItem>
                                <asp:ListItem Selected="True">2-Upper Primary</asp:ListItem>
                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Name</label>
                            <asp:TextBox runat="server" Placeholder="Reema Vidhya Mandir" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">In Charge Name</label>
                            <asp:TextBox runat="server" placeholder="Ram Singh" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Medium</label>
                            <asp:DropDownList CssClass="form-control select2" Enabled="false" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>19-English</asp:ListItem>
                                <asp:ListItem Selected="True">04-Hindi</asp:ListItem>
                                <asp:ListItem>18-Urdu</asp:ListItem>
                                <asp:ListItem>10-Marathi</asp:ListItem>
                                <asp:ListItem>99-Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Habitation </label>
                            <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">

                                <asp:ListItem Selected="True">Berasia</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>



                    <div class="col-md-2">
                        <div class="card-body">
                            <!-- sample modal content -->
                            <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog modal-xxl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="myLargeModalLabel">School Registration</h4>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                        </div>
                                        <div class="modal-body">
                                            <fieldset>
                                                <legend>School Basic Information</legend>

                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                                            <asp:TextBox ID="ir" runat="server" CssClass="form-control" ReadOnly="true" placeholder="Enter UDISE Code"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Division<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                                <asp:ListItem>2-Indore</asp:ListItem>
                                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">District<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                                <asp:ListItem>2-Raisen</asp:ListItem>
                                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Block<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Huzur</asp:ListItem>
                                                                <asp:ListItem>Berasia</asp:ListItem>
                                                                <asp:ListItem>Phanda</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Location<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                                <asp:ListItem>2-Urban</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                                <asp:ListItem>Huzur</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Parliamentary<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Bhopal</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Habitation </label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Berasia</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Board Type<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                                <asp:ListItem>2-State Board</asp:ListItem>
                                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                                <asp:ListItem>4-International</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Type<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Category<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Primary</asp:ListItem>
                                                                <asp:ListItem>2-Upper Primary</asp:ListItem>
                                                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Lowest Class<span style="color: red;">*</span></label>
                                                            <%--<asp:TextBox ID="txtclass" runat="server" placeholder="Enter Lowest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                            <asp:dropdownlist cssclass="form-control" enabled="False" xmlns:asp="#unknown" runat="server">
                                                                <asp:listitem>-Select-</asp:listitem>
                                                                <asp:listitem>Nursary</asp:listitem>
                                                                <asp:listitem>LKG</asp:listitem>
                                                                <asp:listitem>UKG</asp:listitem>
                                                                <asp:listitem>1st</asp:listitem>
                                                                <asp:listitem>2nd</asp:listitem>
                                                                <asp:listitem>3rd</asp:listitem>
                                                                <asp:listitem>4th</asp:listitem>
                                                                <asp:listitem>5th</asp:listitem>
                                                                <asp:listitem>6th</asp:listitem>
                                                                <asp:listitem>7th</asp:listitem>
                                                                <asp:listitem>8th</asp:listitem>
                                                                <asp:listitem>9th</asp:listitem>
                                                                <asp:listitem>10th</asp:listitem>
                                                                <asp:listitem>11th</asp:listitem>
                                                                <asp:listitem>12th</asp:listitem>
                                                            </asp:dropdownlist>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Highest Class<span style="color: red;">*</span></label>
                                                            <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>

                                                            <asp:DropDownList CssClass="form-control" runat="server">

                                                                <asp:ListItem Selected="True">12th</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Management Group<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>A-State Govt</asp:ListItem>
                                                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                                                <asp:ListItem>C-Private UnAided </asp:ListItem>
                                                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                                                <asp:ListItem>E-Other</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Management<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Type<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Head Master / Principal </asp:ListItem>
                                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Unique Id<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Unique ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Name<span style="color: red;"> *</span></label>
                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Name" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Mobile Number <span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Mobile Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                                                            <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>2015</asp:ListItem>
                                                                <asp:ListItem>2016</asp:ListItem>
                                                                <asp:ListItem>2017</asp:ListItem>
                                                                <asp:ListItem>2018</asp:ListItem>
                                                                <asp:ListItem>2019</asp:ListItem>
                                                                <asp:ListItem>2020</asp:ListItem>
                                                                <asp:ListItem>2021</asp:ListItem>
                                                                <asp:ListItem>2022</asp:ListItem>
                                                                <asp:ListItem>2023</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Muslim</asp:ListItem>
                                                                <asp:ListItem>2-Sikh</asp:ListItem>
                                                                <asp:ListItem>3-Jain</asp:ListItem>
                                                                <asp:ListItem>4-Christian</asp:ListItem>
                                                                <asp:ListItem>5-Parsi</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Medium<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>19-English</asp:ListItem>
                                                                <asp:ListItem>04-Hindi</asp:ListItem>
                                                                <asp:ListItem>18-Urdu</asp:ListItem>
                                                                <asp:ListItem>10-Marathi</asp:ListItem>
                                                                <asp:ListItem>99-Other</asp:ListItem>
                                                            </asp:DropDownList>

                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                                            <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <legend>School Address Information</legend>


                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Address (Line 1)<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Address (Line 2)</label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Website</label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Shift <span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Morning</asp:ListItem>
                                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                                <asp:ListItem>Both</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Is School Residential<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                <asp:ListItem Selected="True">No</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>



                                                </div>

                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Special School<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>CM Rise</asp:ListItem>
                                                                <asp:ListItem>Model</asp:ListItem>
                                                                <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                                                <asp:ListItem>District Excellence</asp:ListItem>
                                                                <asp:ListItem>Block Excellence</asp:ListItem>
                                                                <asp:ListItem>PM Shri </asp:ListItem>
                                                                <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                                                <asp:ListItem>Urdu</asp:ListItem>
                                                                <asp:ListItem>Marathi</asp:ListItem>
                                                                <asp:ListItem>Sanskrit</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Status<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Functional</asp:ListItem>
                                                                <asp:ListItem>Closed</asp:ListItem>
                                                                <asp:ListItem>Merged</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Hostel Facility<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                <asp:ListItem>No</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>


                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <legend>School Bank Information</legend>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                                                            <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                                                            <asp:TextBox ID="TextBox3" Placeholder="Enter Account Number" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 ">
                                                        <div class="form-group">
                                                            <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                                                            <asp:TextBox ID="TextBox4" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i class="mdi mdi-eye"></i>
                                <br />
                                View more</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="row m-l-5">
                <div class="col-md-12">
                    <label class="form-check m-b-0">
                        <input type="checkbox" class="form-check-input">

                        <span class="form-check-label"><b>प्रबंधन द्वारा आज दिनांक 26/10/2023 को संबंधित विद्यालय को अनुमोदन उपरांत विलय किया गया |</b></span>
                        <%--<asp:CheckBox ID="chkSatyapan" runat="server" CssClass="form-check-label" />--%>
                    </label>
                </div>
            </div>

            <div class="row mt-4">

                <div class="col-md-4"></div>
                <div class="col-md-1">
                    <!-- sample modal content -->
                    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-xxl">
                            <div class="modal-content">
                                <div class="modal-header" id="myDIV">
                                    <h4 class="modal-title" id="myLargeModalLabel1">Confirmation</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                </div>
                                <div class="modal-body">

                                    <div class="row">
                                        <div class="col-md-4">
                                            <label>Date</label>
                                            <%--<asp:TextBox ID="TextBox1" placeholder="Select Date..." runat="server" CssClass="datepicker form-control" TextMode="Date"></asp:TextBox>--%>
                                                                                                            <input type="date" class="form-control" Placeholder="17/11/2023"/>

                                        </div>
                                        <div class="col-md-4">
                                            <label>Order No</label>
                                            <asp:TextBox ID="TextBox6" placeholder="Order No" runat="server" CssClass=" form-control"></asp:TextBox>

                                        </div>
                                        <div class="col-md-4">
                                            <label>Upload Doc</label>
                                            <asp:FileUpload runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <br />
                                    <asp:CheckBox runat="server" CssClass="mt-4" Text="&nbsp;प्रबंधन द्वारा आज दिनांक 26/10/2023 को संबंधित विद्यालय को अनुमोदन उपरांत विलय किया गया |" />

                                </div>
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-success" onclick="FbotonOn()">Confirm</button>
                                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Confirm</asp:LinkButton>


                    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-xxl">
                            <div class="modal-content">
                                <div class="modal-header" id="Checkdiv">
                                    <h4 class="modal-title" id="checkconfrm">Confirmation</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure you want to merge school
                                </div>
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-success" onclick="FbotonOn()">Confirm</button>
                                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                </div>
                <div class="col-md-1">
                    <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btn btn-block btn-danger" />
                </div>
                <div class="col-md-4"></div>
            </div>

            <fieldset>
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <h5><strong>School To Merge</strong></h5>

                        <ul class="main-ul">

                            <li><strong>School UDISE Code</strong>
                                <ul>
                                    <li>User will be able to select UDISE Code in drop down field.</li>
                                </ul>
                            </li>

                            <li><strong>Letter No.</strong>
                                <ul>
                                    <li>User will be able to enter Letter No., the text field should accept in Alpha numeric.</li>
                                </ul>
                            </li>
                            <li><strong>Effective Date</strong>
                                <ul>
                                    <li>User will be able to select Effective Date, the field should be in a calendar format</li>
                                </ul>
                            </li>

                            <li><strong>Uploaded Document  </strong>
                                <ul>
                                    <li>User will be able to Upload Document</li>
                                </ul>
                            </li>
                        </ul>
                        <br />
                        <h5><strong>Anchor School</strong></h5>

                        <ul class="main-ul">

                            <li><strong>School UDISE Code</strong>
                                <ul>
                                    <li>User will be able to select UDISE Code in drop down field.</li>
                                    <li>After the selection of UDISE code all school detail will be auto populated.</li>
                                </ul>
                            </li>

                            <li><strong>Confirm </strong>
                                <ul>
                                    <li>User Can Click Confirm Button After Click Pop Up Message Will Open (Message Format ("Date /Order No/Upload Document").</li>
                                    <li>Select Date /Order No/Upload Document.</li>
                                    <li>After upload document – select checkbox.</li>
                                    <li>After click confirm button - Data Will Save and Message Show in Screen - Message (Are you sure you want to Save this record?).</li>
                                    <li>After selection OK button - Message Will Open (School Merged Successfully).</li>
                                    <li>If click Cancel - Data will not save.</li>
                                </ul>

                            </li>
                            <li><strong>Clear</strong>
                                <ul>
                                    <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                </ul>
                            </li>
                          
                        </ul>
                    </div>
                </div>
            </fieldset>


        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtPurchase.ClientID %>').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });
        });
    </script>--%>
    <script>
        function FbotonOn() {
            if (confirm("Are you sure you want to Save this record?") == true) {
                const element = document.getElementById("myDIV");
                element.className = "modal-header alert-success"
                document.getElementById('myLargeModalLabel1').innerHTML = "School Merged Successfully";
                document.getElementById('data1').innerHTML = "UnMerged";
            }
        }
    </script>
</asp:Content>


