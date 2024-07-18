<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_RouteHistory.aspx.cs" Inherits="mis_Transaction_Rpt_RouteHistory" %>

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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#BusDriverToAttender" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Bus Driver & Attender Process</span></a>
                        <li class="breadcrumb-item"><span>Route Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary ">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Route Details
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

                <legend>Route Details / मार्ग का विवरण
                </legend>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <label>
                            Select Route No.<span style="color: red">*</span><br />
                            रूट नंबर का चयन करें
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>All</option>
                            <option>RTU001</option>
                            <option>RTU002</option>
                            <option>RTU003</option>
                            <option>RTU004</option>
                            <option>RTU005</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Date<br />
                            दिनांक
                        </label>
                        <input type="date" name="name" class="form-control">
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12 form-group">
                        <button id="searchButton" type="button" class="btn btn-outline-success w-lg btn-border" onclick="document.getElementById('showdetails').style.display='block'">Find Details</button>

                        <a href="Rpt_RouteHistory.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="showdetails" style="display: none">
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
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>

                                        <th>Sr.No
                                        <br />
                                            क्रमांक
                                        </th>
                                        <th>Route No.<br />
                                            रूट नंबर</th>
                                        <th>Bus Stop Count<br />
                                            बस स्टॉप काउंट
                                        </th>
                                        <th>Student Count<br />
                                            विद्यार्थी का काउंट
                                        </th>
                                        <th>Teacher Count<br />
                                            शिक्षक का काउंट
                                        </th>
                                        <th>View Details<br />
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>RTU001</td>
                                        <td>20</td>
                                        <td>38</td>
                                        <td>5</td>
                                        <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>RTU002</td>
                                        <td>25</td>
                                        <td>47</td>
                                        <td>7</td>
                                        <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"></i></a></td>

                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>RTU003</td>
                                        <td>28</td>
                                        <td>40</td>
                                        <td>8</td>
                                        <td class="text-center"><a class="alert-eye"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"></i></a></td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" id="firsttimeModel2" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV1">
                            <h4 class="modal-title" id="myLargeModalLabel2"></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Student Details / विद्यार्थी विवरण</legend>

                                <div class="table-responsive">
                                    <table class="table table-bordered">

                                        <thead>
                                            <tr>
                                                <th>Sr.No.<br />
                                                    क्रमांक</th>
                                                <th>Student Class<br />
                                                    विद्यार्थी की कक्षा</th>
                                                <th>Student Name<br />
                                                    विद्यार्थी का नाम</th>
                                                <th>Parents Name<br />
                                                    माता - पिता का नाम</th>
                                                <th>Parents Contact No<br />
                                                    माता-पिता का संपर्क नंबर</th>
                                                <th>Arrival In Time<br />
                                                    आगमन का समय
                                                 <th>Departure Out Time<br />
                                                     प्रस्थान का समय
                                                 </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <td>1</td>
                                                <td>Class-5</td>
                                                <td>Sourbh Saksena</td>
                                                <td>Nitin Saksena</td>
                                                <td>9989345678</td>
                                                <td>9:15 Am</td>
                                                <td>6:40 Pm</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Class-6</td>
                                                <td>Sikha Mishra</td>
                                                <td>Narendra Mishra</td>
                                                <td>9489345678</td>
                                                <td>9:40 Am</td>
                                                <td>7.00 Pm</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>

                            <fieldset>
                                <legend>Teacher Details / शिक्षक विवरण</legend>

                                <div class="table-responsive">
                                    <table class="table table-bordered">

                                        <thead>
                                            <tr>
                                                <th>Sr.No.<br>
                                                    क्रमांक </th>
                                                <th>Teacher Name<br />
                                                    शिक्षक का नाम</th>
                                                <th>Mobile No.<br />
                                                    मोबाइल नंबर</th>
                                                <th>Arrival In Time<br />
                                                    आगमन का समय
                                                 <th>Departure Out Time<br />
                                                     प्रस्थान का समय
                                                 </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <td>1</td>
                                                <td>Rohit Sahu</td>
                                                <td>8945769809</td>
                                                <td>9:00 Am</td>
                                                <td>7:30 Pm</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Muskan Thakur</td>
                                                <td>8245769809</td>
                                                <td>10:00 Am</td>
                                                <td>6:30 Pm</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

