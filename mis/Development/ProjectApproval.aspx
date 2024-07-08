<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectApproval.aspx.cs" Inherits="mis_Development_ProjectApproval" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Approval</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Project Approval / परियोजना स्वीकृति</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Project Approval / परियोजना स्वीकृति</legend>
                <div class="row align-items-end">
                    <div class="col-md-6  col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Project Code
                            <br />
                                परियोजना कोड<span style="color: red">*</span></label>
                            <select id="Project_Code" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">P00017</option>
                                <option value="B">P00018</option>
                                <option value="c">P00019</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Search" class="btn btn-success btn-border" />
                        <a href="ProjectDetails.aspx" class="btn btn-outline-danger btn-border w-lg">Reset</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Project Approval Details/ परियोजना स्वीकृति विवरण</legend>
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
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्रमांक</th>
                                        <th>Project Code<br>
                                            परियोजना क्रमांक</th>
                                        <th>Project Date<br>
                                            परियोजना दिनांक</th>
                                        <th>Work Category<br />
                                            कार्य की श्रेणी</th>
                                        <th>Work Subcategory<br />
                                            कार्य का नाम</th>
                                        <th>OIS Code<br />
                                            OIS कोड</th>
                                        <th>Address<br />
                                            पता</th>
                                        <th>Work Description<br />
                                            कार्य का विवरण</th>
                                        <th>Estimated Budget Cost(In Rs) 
                                            <br />
                                            अनुमानित बजट</th>
                                        <th>View Document<br>
                                            दस्तावेज़ देखें</th>
                                        <th>Project Approved <br />परियोजना स्वीकृत</th>
                                    </tr>
                                </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>P00019</td>
                                        <td>22/05/2023</td>
                                        <td>स्कूल मरम्मत/निर्माण</td>
                                        <td>इमारत मरम्मत</td>
                                        <td>QT4561</td>
                                        <td>Bhopal M.P</td>
                                        <td>Work For Bhopal Office</td>
                                        <td>10000.00</td>
                                        <td><a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>
                                    <td><%--<a role="button" class="btn btn-outline-success" href="/mis/Development/InstallmentCreation.aspx">Project Approval</a>--%>

                                         <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal1">
     Project Approval
 </button>
                                    </td>
                                    </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <!--model-->
                <div class="modal  fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">
                    <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Installment Creation</h3>
                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                                  <fieldset>
<legend>Installment Creation / किस्त निर्माण</legend>
<div class="row align-items-end">
    <div class="col-md-3">
        <div class="form-group">
            <label>
                Project Code
                <br />
                परियोजना कोड</label>
            <asp:TextBox ID="TextBox1" MaxLength="10" value="P0001" disabled
                AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-3">
        <div class="form-group">
            <label>
                Project Date
                <br />
                परियोजना दिनांक</label>
            <asp:TextBox ID="TextBox2" MaxLength="10" value="11/06/2024" disabled
                AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
       
    </div>
    <div class="col-md-3">
        <div class="form-group">
            <label>
                Estimated Budget Cost(Approx. In Rs)
                <br />
                अनुमानित राशि
            </label>

            <asp:TextBox ID="TextBox3" ClientIDMode="Static" MaxLength="10" value="60000.00" disabled="" AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        </div> 
  
    <div class="col-md-3">
        <div class="form-group">
            <label>
                Approved Cost(Approx. In Rs)
                <br />
                स्वीकृत राशि <span style="color: red">*</span></label>
        <%--    <span class="pull-right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" Display="Dynamic"
                    ControlToValidate="txtApprovedCost" ErrorMessage="Enter Approved Cost(Approx. In Rs) "
                    Text="<i class='fa fa-exclamation-circle' title='Enter Approved Cost(Approx. In Rs)'></i>"
                    SetFocusOnError="true" ForeColor="Red" ValidationGroup="a">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationGroup="a"
                    Display="Dynamic" runat="server" ControlToValidate="txtApprovedCost"
                    ErrorMessage="Only Numeric allow, Approved Cost(Approx. In Rs)"
                    Text="<i class='fa fa-exclamation-circle' title='Only Numeric allow Approved Cost(Approx. In Rs) !'></i>"
                    SetFocusOnError="true" ForeColor="Red" ValidationExpression="^[0-9]+$">
                </asp:RegularExpressionValidator>
            </span>--%>
            <asp:TextBox ID="TextBox4" onkeypress="return validateNum(event);" placeholder="60000.00" onchange="myFunction1()" ClientIDMode="Static" MaxLength="10"
                AutoComplete="off" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        </div>
    </div>
                                      <hr />
    <div class="col-sm-3" id="pnlhidebtn" style="margin-top: 43px; display: none;">
        <div class="form-group">
        <%--    <asp:LinkButton ID="LinkButton1" OnClientClick="clearApprovedCostData ();" Text="Reset Approved Cost" CssClass="btn btn-danger btn-block" runat="server"></asp:LinkButton>--%>
            <button type="button" class="btn btn-outline-success w-lg Alert-Save btn-rounded" data-dismiss="modal" id="saveButton">Reset Approved Cost</button>
        </div>
    </div>



    <div>
</div></fieldset>
                </div>
            </div>
        </div>
    </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
   <script>
     
           function myFunction1() {
               document.getElementById('pnlhidebtn').style.display = "block";
         
     }
   </script>
      <script>
          debugger;
          !function ($) {
              "use strict";
              var SweetAlert = function () { };
              //examples
              SweetAlert.prototype.init = function () {
                  //Basic
                  //Success Message
                  $('.Alert-Save').click(function () {
                      Swal.fire({
                          title: 'Are you sure?',
                          text: "Do you want to Reset Approved Cost  ?",
                          type: 'warning',
                          showCancelButton: true,
                          confirmButtonColor: '#3085D6',
                          cancelButtonColor: '#d33',
                          confirmButtonText: 'Yes'
                          //animation: false,
                          //customClass: {
                          //    popup: 'animated tada'
                          //}
                      }).then((result) => {
                          if (result.value) {
                              Swal.fire({
                                  type: 'success',
                                  title: 'Success!',
                                  text: 'Reset Approved Cost Successfully!',
                                  timer: 200000,

                                  // animation: false,<a href="">TeacherFillReport.aspx</a>
                                  // customClass: {
                                  //     popup: 'animated tada'
                                  // }
                              }
                              ).then(() => {
                                  // Redirect to another page after success message is closed
                                  window.location.href = 'InstallmentCreation.aspx';
                              });
                              //var x = document.getElementById("EmployeeDetails2");
                              //if (x.style.display === "none") {
                              //    x.style.display = "block";
                              //} else {
                              //    x.style.display = "block";
                              //}
                          }
                      })
                  });
              },


                  $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
          }(window.jQuery),
              //initializing
              function ($) {
                  "use strict";
                  $.SweetAlert.init()
              }(window.jQuery);
      </script>
</asp:Content>

