<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_EarningAndDeduction.aspx.cs" Inherits="mis_Payroll_Mst_EarningAndDeduction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .deschide {
            display: none;
        }
    </style>
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Earning & Deduction Master</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Masters&SubID=PayrollMaster" title="click to go on">Payroll Master</a></li>
                    <li class="breadcrumb-item active">Earning & Deduction Master</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
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
                          <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#PayrollMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Payroll Master</span></a>
                      </li>
                      <li class="breadcrumb-item"><span>Earning & Deduction Master</span></li>
                  </ol>
              </div>
          </div>
      </div>
  </div>
  <div class="marqueecontainer">
      <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
      <div>
          <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
              इस पेज के माध्यम से नए Earning & Deduction को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
          </marquee>
      </div>
  </div>
  <div class="card card-border-primary">
      <div class="card-header">
          <div class="row align-items-end">
              <div class="col-lg-12">
                  <h4 class="card-title">Earning & Deduction Master/ कमाई और कटौती  मास्टर</h4>
              </div>
          </div>
      </div>
      <div class="card-body">
          <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Earning & Deduction Master/कमाई और कटौती  मास्टर</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Earning & Deduction Type/<br />कमाई और कटौती का प्रकार <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Earning</option>
                                <option value="Bhopal">Deduction</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">

                            <label>Name/<br />नाम<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Calculation Process/<br />गणना प्रक्रिया<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Percentage (%) (Basic)</option>
                                <option value="Bhopal">Percentage (%) (Basic + DA)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Effective Date/<br />प्रभावी तिथि<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">

                            <label>Calculate b/w range/<br />बी/डब्ल्यू रेंज की गणना करें</label>
                            <br />
                            <input id="ContentBody_ctl05" type="checkbox" name="ctl00$ContentBody$ctl06" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Optional/<br />वैकल्पिक</label>
                            <br />
                            <input id="ContentBody_ctl06" type="checkbox" name="ctl00$ContentBody$ctl06" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>DA/<br />डी.ए</label>
                            <br />
                            <input id="ContentBody_ctl07" type="checkbox" name="ctl00$ContentBody$ctl06" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Impact On Leave/<br />अवकाश का 
प्रभाव</label>
                            <br />
                            <input id="ContentBody_ctl08" type="checkbox" name="ctl00$ContentBody$ctl06" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>EPF/<br />
ई.पी.एफ</label>
                            <br />
                            <input id="ContentBody_ctl09" type="checkbox" name="ctl00$ContentBody$ctl06" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>NPS/<br />एन.पी.एस</label>
                            <br />
                            <input id="ContentBody_ctl0610" type="checkbox" name="ctl00$ContentBody$ctl06" />
                        </div>
                    </div>
                  <%--  <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" class="btn-block Alert-Save btn btn-success btn-rounded">Save</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="Mst_EarningAndDeduction.aspx" class="btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                     <hr />
 <div class="col-md-12">
     <button type="button" class="Alert-Save btn btn-outline-success w-lg btn-border">Save</button>
     <a href="Mst_EarningAndDeduction.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
 </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Details/विवरण</legend>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr style="white-space:nowrap !important;">
                                    <th>Sr.No./<br />सरल क्र</th>
                                    <th>Type/<br />प्रकार </th>
                                    <th>Head Name/<br />मुखिया का नाम</th>
                                    <th>Calculation/<br />गणना</th>
                                    <th>Calculate b/w range/<br />बी/डब्ल्यू रेंज की गणना करें</th>
                                    <th>Optional/<br />वैकल्पिक</th>
                                    <th>Impact On Leave/<br />अवकाश का प्रभाव
</th>
                                    <th>DA/<br />डी.ए</th>
                                    <th>EPF/<br />ई.पी.एफ<br /></th>
                                    <th>Other Head/<br />अन्य प्रमुख</th>
                                    <th>Effective Date/<br />प्रभावी तिथि</th>
                                    <th>Priority (Order By)/<br />प्राथमिकता (क्रमानुसार)</th>
                                    <th>Action/<br />सक्रिय है</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Earning</td>
                                    <td>DA</td>
                                    <td>Percentage (%) (Basic)</td>
                                    <td></td>
                                    <td>Yes</td>
                                    <td>Yes</td>
                                    <td>Yes</td>
                                    <td></td>
                                    <td></td>
                                    <td>01/01/2023</td>
                                    <td>1</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Deduction</td>
                                    <td>EPF</td>
                                    <td>Percentage (%) (Basic + DA)</td>
                                    <td></td>
                                    <td>Yes</td>
                                    <td>Yes</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>2</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <!--Description-->
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Earning And Deduction Type (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select Earning And Deduction Type from dropdown. Data populated from Type of Earning deduction master . </li>
                                </ul>
                            </li>
                            <li><strong>Earning And Deduction Head Name (Textbox)</strong>
                                <ul>
                                    <li>User will be able to Enter <strong>Earning And Deduction Head Name in textbox, </strong>then select Checkbox <strong>(Calculate b/w range, Optional, DA, Impact On Leave, EPF, NPS)</strong> be related to Head Name.</li>
                                </ul>
                            </li>
                            <li><strong>Calculation Process (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select Calculation Process from dropdown. Data populated from process calculation master . </li>
                                </ul>
                            </li>
                            <li><strong>Effective Date (Textbox)</strong>
                                <ul>
                                    <li>User will be able to select Date, the field should be in a calendar format</li>
                                </ul>
                            </li>
                            <li><strong>Save (Button)</strong>
                                <ul>
                                    <li>User should be able to click on save button.</li>
                                    <li>Click on save button form all mandatory filed should be validate in process.</li>
                                    <li>After all mandatory fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the data will not be saved and will return to the same page.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>Excel (Button)</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on Excel button grid view data export in Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Action Gridview(Edit)</strong>
                                <ul>
                                    <li>On Clicking The Edit Icon - A Pop Up Message Will Open -Popup Message - Do You Want To Update The details.</li>
                                    <li>On Click Yes Button, The Form Will Come In The Editable.</li>
                                    <li>After Edit The Detail in Form, On Click The Update Button,( A Pop Up Message Will Open. )- Message- Do You Want To Update details.</li>
                                    <li>Choose YES - Popup Message - Data Updated Successfully.</li>
                                    <li>Choose No - Data will be not Update.</li>
                                </ul>
                            </li>
                            <li><strong>Action Gridview(Delete)</strong>
                                <ul>
                                    <li>If User Wants To Delete Any Data - Then User Can Clicking The Delete Icon</li>
                                    <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The Data?</li>
                                    <li>On Doing YES,</li>
                                    <li>The Data Will Be Deleted And The Popup Message Will Be Shown</li>
                                    <li>Popup Message - Data Deleted Successfully.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
            <!-- End Description -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Saved Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }

                        var x = document.getElementById("show");
                        if (x.style.display === "none") {
                            x.style.display = "block";
                        } else {
                            x.style.display = "block";
                        }
                    })
                });

                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Deleted Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )


                        }
                    })
                });
                $('.Alert-Edit').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Update Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        //if (result.value) {
                        //    Swal.fire({
                        //        type: 'success',
                        //        title: 'Success!',
                        //        text: 'Salary Generated Successfully!',
                        //        timer: 2000
                        //        // animation: false,
                        //        // customClass: {
                        //        //     popup: 'animated tada'
                        //        // }
                        //    }
                        //    )
                        //}
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>

