<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_RoomRegistration.aspx.cs" Inherits="mis_HostelManagment_Mst_RoomRegistration" %>

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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Room Registration</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>



    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title"> Room Registration / कक्ष पंजीकरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend> Room Registration / कक्ष पंजीकरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Name<br />
                                    हॉस्टल नाम चुनें<span style="color: red;">*</span></label>
                                 <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">KGBV Girls Hostel</option>
                        <option value="2">KGBV Boys Hostel</option>
                        <option value="3">KGBV Combine Hostel</option>
                    </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Room Type
                                    <br />
                                    कक्ष के प्रकार चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2">

                                    <option value="--Select--">--Select--</option>
                                    <option value="Single">Single</option>
                                    <option value="Double">Double</option>
                                    <option value="Triple">Triple</option>
                                    <option value="Quad">Quad</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Room Number<br />
                                     कक्ष नंबर दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Hostel Room Number" />
                                <%--<select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="101">101</option>
                                    <option value="201">201</option>
                                    <option value="102">102</option>
                                    <option value="202">202</option>
                                </select>--%>
                            </div>
                        </div>
                    </div>
                     <div class="row">
                    <div class="col-sm-5">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th scope="col">Sr.No.<br />
                                            क्र.सं.</th>
                                        <th scope="col">Bed Number<br />
                                            बिस्तर नंबर</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td><input type="text" name="input1" placeholder="Enter Bed Number" Class="form-control">
                                        </td>
                                    </tr>
                                    <tr role="row">
                                        <td align="center" valign="middle"><span>2</span>
                                        </td>
                                        <td><input type="text" name="input1" placeholder="Enter Bed Number" Class="form-control">
                                        </td>
                                    </tr>
                                    <tr role="row">
                                        <td align="center" valign="middle" ><span>3</span>
                                        </td>
                                        <td><input type="text" name="input1" placeholder="Enter Bed Number" Class="form-control">
                                        </td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                         <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-weight-bold">Is Active &nbsp</label>
                                <br />
                                <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                            </div>
                        </div>
                     </div>

                        <%--<div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select No. of Bed<br />
                                    बिस्तर की संख्या चुनें<span style="color: red;">*</span></label>
                                <%--<input type="text" class="form-control" placeholder="Enter No. of Bed" />--%>
                               <%-- <div class="form-control">
                                    <input type="checkbox" id="one">
                                    <label for="one">1 Bed</label>
                                    <input type="checkbox" id="two">
                                    <label for="option-2">2 Bed</label>
                                    <input type="checkbox" id="three">
                                    <label for="three">3 Bed</label>
                                    <input type="checkbox" id="four">
                                    <label for="four">4 Bed</label>
                                </div>
                            </div>
                        </div>--%>
                       <%-- <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Rent Per Bed<br />
                                    प्रति बिस्तर किराया<span style="color: red;">*</span></label>
                                <%--<input type="text" class="form-control" placeholder="Enter Rent per Bed" />--%>
                                <%--<select class="form-control select2" id="fees">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">700</option>
                                    <option value="2">500</option>
                                    <option value="3">Free</option>
                                    <option value="4">Free</option>
                                </select>
                            </div>
                        </div>--%>
                </fieldset>
                <div class="col-md-12">
                    <div class="form-group text-center">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                        <a href="Mst_RoomRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <fieldset id="HostlInfo" style="display: none;">
        <legend> Room Detail/ कक्ष विवरण</legend>
        <div class="row justify-content-end">
            <div class="col-md-1">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded w-100">Excel</button>
                </div>
            </div>
            <div class="col-md-1">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded w-100">PDF</button>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
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
                                        <th scope="col">Hostel Name<br />
                                            हॉस्टल नाम</th>
                                        <th scope="col">Room Type<br />
                                            कक्ष प्रकार   </th>
                                        <th scope="col"> Room Number<br />
                                             कक्ष संख्या </th>
                                        <th scope="col">Bed Number<br />
                                            बिस्तर संख्या </th>
                                        <th scope="col">Action
                                            <br />
                                            कार्यवाही </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>KGBV Girls Hostel</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <a>Single</a>

                                        </td>
                                        <td align="center" valign="middle">
                                            <a>102</a>
                                        </td>

                                        <td align="center" valign="middle">
                                            <span>1011</span>
                                        </td>
                                       
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>KGBV Girls Hostel</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <a>Double</a>

                                        </td>
                                        <td align="center" valign="middle">
                                            <a>201</a>
                                        </td>

                                        <td align="center" valign="middle">
                                            <span>2011, 2012</span>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>


        function updateFees() {
            var category = document.getElementById('category').value;
            var feesSelect = document.getElementById('fees');

            if (category === 'General') {
                feesSelect.value = '1';
            } else if (category === 'OBC') {
                feesSelect.value = '2';
            } else if (category === 'ST' || category === 'SC') {
                feesSelect.value = '3';
            } else {
                feesSelect.value = '--Select--';
            }

            // Trigger change event for select2 to update display
            $('#fees').trigger('change');
        }
    </script>
</asp:Content>

