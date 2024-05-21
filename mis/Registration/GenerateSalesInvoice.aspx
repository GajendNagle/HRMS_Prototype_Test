<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GenerateSalesInvoice.aspx.cs" Inherits="mis_Registration_GenerateSalesInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .multiselect-native-select .multiselect {
            text-align: left !important;
        }

        .multiselect-native-select .multiselect-selected-text {
            width: 100% !important;
        }

        .multiselect-native-select .checkbox, .multiselect-native-select .dropdown-menu {
            width: 100% !important;
        }

        .multiselect-native-select .btn .caret {
            float: right !important;
            vertical-align: middle !important;
            margin-top: 8px;
            border-top: 6px dashed;
        }

        .multiselect-container {
            position: absolute;
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: auto;
            max-height: 250px;
        }

        .select2-container .select2-selection--single {
            height: 38px !important;
            border: 1px solid #c74900 !important;
            border-radius: 2rem !important;
        }

        .select2-container--default .select2-selection--multiple {
            border-color: #c74900 !important;
            border-radius: 2rem;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="card">
        <div class="card-header">
            School Registration
            <asp:Label ID="lblMsg" runat="server" Text="" Visible="true"></asp:Label>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>School Basic Information</legend>

                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                            <asp:TextBox ID="ir" runat="server" CssClass="form-control" placeholder="Enter UDISE Code"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Division<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                <asp:ListItem>2-Indore</asp:ListItem>
                                <asp:ListItem>3-Ujjain</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">District<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                <asp:ListItem>2-Raisen</asp:ListItem>
                                <asp:ListItem>3-Sehore</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Block<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>1-Rural</asp:ListItem>
                                <asp:ListItem>2-Urban</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>Govindpura</asp:ListItem>
                                <asp:ListItem>Huzur</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Parliamentary<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Habitation </label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>Berasia</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Board Type<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>1-Boy</asp:ListItem>
                                <asp:ListItem>2-Girls</asp:ListItem>
                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Category<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
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
                            <%--<asp:TextBox ID="txtclass" runat="server" placeholder="Enter Lowest Class" CssClass="form-control"></asp:TextBox>--%>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>Nursary</asp:ListItem>
                                <asp:ListItem>LKG</asp:ListItem>
                                <asp:ListItem>UKG</asp:ListItem>
                                <asp:ListItem>1st</asp:ListItem>
                                <asp:ListItem>2nd</asp:ListItem>
                                <asp:ListItem>3rd</asp:ListItem>
                                <asp:ListItem>4th</asp:ListItem>
                                <asp:ListItem>5th</asp:ListItem>
                                <asp:ListItem>6th</asp:ListItem>
                                <asp:ListItem>7th</asp:ListItem>
                                <asp:ListItem>8th</asp:ListItem>
                                <asp:ListItem>9th</asp:ListItem>
                                <asp:ListItem>10th</asp:ListItem>
                                <asp:ListItem>11th</asp:ListItem>
                                <asp:ListItem>12th</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Highest Class<span style="color: red;">*</span></label>
                            <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control"></asp:TextBox>--%>

                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>Nursary</asp:ListItem>
                                <asp:ListItem>LKG</asp:ListItem>
                                <asp:ListItem>UKG</asp:ListItem>
                                <asp:ListItem>1st</asp:ListItem>
                                <asp:ListItem>2nd</asp:ListItem>
                                <asp:ListItem>3rd</asp:ListItem>
                                <asp:ListItem>4th</asp:ListItem>
                                <asp:ListItem>5th</asp:ListItem>
                                <asp:ListItem>6th</asp:ListItem>
                                <asp:ListItem>7th</asp:ListItem>
                                <asp:ListItem>8th</asp:ListItem>
                                <asp:ListItem>9th</asp:ListItem>
                                <asp:ListItem>10th</asp:ListItem>
                                <asp:ListItem>11th</asp:ListItem>
                                <asp:ListItem>12th</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Management Group<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
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
                            <asp:TextBox runat="server" placeholder="Enter In Charge Unique ID" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">In Charge Name<span style="color: red;"> *</span></label>
                            <asp:TextBox runat="server" placeholder="Enter In Charge Name" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">In Charge Mobile Number <span style="color: red;">*</span></label>
                            <asp:TextBox runat="server" placeholder="Enter In Charge Mobile Number" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                            <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control"></asp:TextBox>--%>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
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
                            <asp:DropDownList  CssClass="form-control select2" runat="server">
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
                            <%--  <asp:ListBox SelectionMode="Multiple" ClientIDMode="Static" ID="temp" runat="server" CssClass="form-control select2">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:ListBox>--%>

                            <%--   <asp:ListBox ID="lstSchoolMedium" runat="server" CssClass="form-control" SelectionMode="Multiple">
                                <asp:ListItem Text="19-English" Value="19"></asp:ListItem>
                                <asp:ListItem Text="04-Hindi" Value="04"></asp:ListItem>
                                <asp:ListItem Text="18-Urdu" Value="18"></asp:ListItem>
                                <asp:ListItem Text="10-Marathi" Value="10"></asp:ListItem>
                                <asp:ListItem Text="99-Other" Value="99"></asp:ListItem>
                            </asp:ListBox>--%>

                            <asp:DropDownList ID="ddlmedium" runat="server" multiple="multiple" CssClass=" select2 form-control ">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem Text="19-English" Value="19"></asp:ListItem>
                                <asp:ListItem Text="04-Hindi" Value="04"></asp:ListItem>
                                <asp:ListItem Text="18-Urdu" Value="18"></asp:ListItem>
                                <asp:ListItem Text="10-Marathi" Value="10"></asp:ListItem>
                                <asp:ListItem Text="99-Other" Value="99"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>



                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                            <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                            <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control"></asp:TextBox>
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
                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Address (Line 2)</label>
                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                            <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                            <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                            <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Website</label>
                            <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Shift <span style="color: red;">*</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
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
                            <asp:DropDownList CssClass="form-control select2" runat="server">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                            <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                            <asp:TextBox ID="TextBox3" Placeholder="Enter Account Number" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                            <asp:TextBox ID="TextBox4" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div class="row">
                <div class="col-md-3 mt-2">
                    <div class="row">
                        <div class="col-md-6 mt-2">
                            <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded w-100" runat="server" Text="Submit" />
                        </div>
                        <div class="col-md-6 mt-2">
                            <a class="btn btn-danger btn-rounded w-100">Clear</a>
                        </div>
                    </div>
                </div>
            </div>

            <%-- <fieldset>
                <legend>Details</legend>
            </fieldset>--%>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        $(function () {
            $('[id*=temp]').multiselect({
                includeSelectAllOption: true,
                enableFiltering: true,
                filterPlaceholder: 'Search',
                enableCaseInsensitiveFiltering: true,
                buttonWidth: '100%'
            });
        });
    </script>

</asp:Content>

