<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HostelRegistration.aspx.cs" Inherits="mis_HostelManagment_HostelManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HostelManagement" title="click to go on">Hostel Management</a></li>
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">Hostel Registration</a></li>
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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Hostel Registration</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            छात्रावास पंजीकरण विवरण
                        </div>
                        <div class="">
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                Hostel Registration / छात्रावास पंजीकरण
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Hostel Registration / छात्रावास पंजीकरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="form-group">
                                    <label>
                                        Select Hostel Type/<br />
                                        छात्रावास प्रकार का चयन करें<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Girls </option>
                                        <option value="2">Boys </option>
                                        <option value="3">Combine </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Hostel Name/<br />
                                    छात्रावास का नाम दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Hostel Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Category/<br />
                                    वर्ग का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">-Select-</option>
                                    <option value="1">General </option>
                                    <option value="2">OBC </option>
                                    <option value="3">SC </option>
                                    <option value="4">ST </option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Total Number of Rooms/<br />
                                    कक्ष की कुल संख्या दर्ज करें<span style="color: red;"></span></label>
                                <input type="text" class="form-control" placeholder="Enter Total Number of Rooms" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Intake Capacity of Students/<br />
                                    छात्रों की प्रवेश क्षमता दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Intake Capacity of Students" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Hostel Address/<br />
                                    छात्रावास पता दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Address" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Mess Facility Availability/
                                    <br />
                                    मेस सुविधा उपलब्धता का चयन करें<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Mess Fees/<br />
                                    मेस शुल्क दर्ज करें
                                </label>
                                <input type="text" class="form-control" placeholder="Enter Mess Fees" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Applicable From/<br />
                                    दिनांक से लागू
                                </label>
                                <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Police Station Name/<br />
                                    पुलिस स्टेशन का नाम दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Police Station Name" />
                            </div>
                        </div>
                <%--        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Incharge Name/<br />
                                    प्रभारी का नाम दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Incharge Name" />
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Police Station Contact No./<br />
                                    पुलिस स्टेशन संपर्क नंबर दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Incharge Contact No." />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Police Station Full Address/<br />
                                    पुलिस स्टेशन पता दर्ज करें दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Full Address" />
                            </div>
                        </div>
                        <%--<div class="col-md-3">
                            <div class="form-group">
                               <label>
                                Select Hostel Facility /<br /> छात्रावास सुविधा का चयन करें
     <span style="color: red;">*</span></label>
                                <select class="form-select"> 
                                    <option>Select</option>
                                    <option> 24-hour Wi-Fi facilities</option>
                                    <option>Water Purifier</option>
                                    <option> Parking </option>
                                     <option> Guest Rooms  </option>
                                     <option> Reading Room </option>
                                </select>
                               <%-- <checkboxlist class="form-select">
                                    <listbox>24-hour Wi-Fi</listbox>
                                    <listbox>24-hour Wi-Fi</listbox>
                                    <listbox>24-hour Wi-Fi</listbox>
                                </checkboxlist>

                            </div> 

                        </div>--%>
                          <div class="col-md-3">
                              <div class="form-group">
                        <label>
                           Select Hostel Available Facility /<br /> छात्रावास में उपलब्ध सुविधा का चयन करें
                        </label>
                        <asp:DropDownList ID="ddlmedium" runat="server" multiple="multiple" CssClass="select2 form-control" ToolTip="Select Circular Related Module">
                            <asp:ListItem  Text="Select "/>
                            <asp:ListItem Value="Appointment Related">24-hour Wi-Fi facilities </asp:ListItem>
                            <asp:ListItem Value="HR MIS">Water Purifier </asp:ListItem>
                            <asp:ListItem Value="Deputation Related">Parking </asp:ListItem>
                            <asp:ListItem Value="Civil Works">Guest Rooms </asp:ListItem>
                        
                        </asp:DropDownList>
                    </div>
                    </div>
                             <div class="col-md-3">
         <div class="form-group">
             <label>
                 Enter Latitude/<br />
                 अक्षांश प्रविष्ट करें<span style="color: red;">*</span></label>
             <input type="text" class="form-control" placeholder="Enter Latitude" />
         </div>
     </div>
                             <div class="col-md-3">
         <div class="form-group">
             <label>
                 Enter Longitude/<br />
                 देशांतर प्रविष्ट करें<span style="color: red;">*</span></label>
             <input type="text" class="form-control" placeholder="Enter Longitude" />
         </div>
     </div>
       
                        <div class="col-md-12">
                            <hr />
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                                <a href="Mst_HostelRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <fieldset id="HostlInfo" style="display: none;">
        <legend>Hostel Registration Detail / छात्रावास पंजीकरण विवरण</legend>
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
        <div class="row align-items-end">
            <div class="col-lg-12" runat="server" id="dvStudentDetails">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No./<br />
                                            क्र.सं.</th>
                                        <th>Hostel Type/<br />
                                            छात्रावास प्रकार   </th>
                                        <th>Hostel Name/<br />
                                            छात्रावास का नाम </th>
                                        <th>Category/<br />
                                            वर्ग</th>
                                        <th>Hostel Address/<br />
                                            छात्रावास पता </th>
                                        <th>Hostel Incharge Name/<br />
                                            छात्रावास प्रभारी का नाम </th>
                                        <th>Mobile Number/<br />
                                            मोबाइल नंबर </th>
                                        <th>Total No. of Rooms/<br />
                                            कक्ष की कुल संख्या </th>
                                        <th>Intake Capacity of Students/<br />
                                            छात्रों की प्रवेश क्षमता</th>
                                        <th>Mess Facility Availability/<br />
                                            मेस सुविधा उपलब्धता</th>
                                        <th>Mess Fees(Applicable From)/<br />
                                            मेस शुल्क(दिनांक)</th>
                                        <th>Action/<br />
                                            कार्रवाई
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1
                                        </td>
                                        <td>Girls
                                        </td>
                                        <td>Girls Hostel Phutera
                                        </td>
                                        <td>General
                                        </td>
                                        <td>Phutera
                                        </td>
                                        <td>Sita Kumari
                                        </td>
                                        <td>7898789878</td>
                                        <td>150
                                        </td>
                                        <td>500
                                        </td>
                                        <td>Yes
                                        </td>
                                        <td>1000(from - 01/01/2024)
                                        </td>
                                        <td class="nowrap"><a class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></a>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

