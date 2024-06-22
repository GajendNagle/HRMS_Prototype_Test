<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PromotionOrders.aspx.cs" Inherits="mis_Transaction_PromotionOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #Approve {
            display: none;
        }

        #Pending {
            display: none;
        }

        #Reject {
            display: none;
        }

        #All {
            display: none;
        }

        #note {
            color: red;
        }

        #note2 {
            color: red;
        }
          th {
        white-space: nowrap;
    }
    </style>





    <script>
        function checkDropdown() {
            var selectedValue = document.getElementById("ddlApprove").value;
            console.log(selectedValue);
            //var div1 = document.getElementById("div1");
            //var div2 = document.getElementById("div2");
            //var div3 = document.getElementById("div3");
            var Approve = document.getElementById("Approve");
            var Reject = document.getElementById("Reject");


            if (selectedValue == "1") {
                //div1.style.display = "block";
                //div2.style.display = "block";
                //div3.style.display = "block";
                Approve.style.display = "block";
                Reject.style.display = "none";

            } else if (selectedValue == "3") {
                //div1.style.display = "block";
                //div2.style.display = "block";
                //div3.style.display = "none";
                Approve.style.display = "none";
                Reject.style.display = "block";
            }
            else {
                //div1.style.display = "none";
                //div2.style.display = "none";
                //div3.style.display = "none";
                Approve.style.display = "none";
                Reject.style.display = "none";
            }
        }
    </script>







    <%-- <script> 
        function showhide() {
            var ddlApprove = document.getElementById("ddlApprove");
            var states = ["All", "Approve", "Pending", "Reject"];

            for (var i = 0; i < states.length; i++) {
                var element = document.getElementById(states[i]);
                element.style.display = ddlApprove.value === i.toString() ? "block" : "none";
            }
        }

    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Promotion Order<br />पदोन्नति आदेश</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Promotion" title="click to go on">Promotion</a></li>

                    <li class="breadcrumb-item active">Promotion Order</li>
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
                         <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                     </li>
                     <li class="breadcrumb-item">
                         <a href="#Promotion" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                             <span>Promotion</span></a>
                     </li>
                     <li class="breadcrumb-item"><span>Promotion Order</span></li>
                 </ol>
             </div>
         </div>
     </div>
 </div>

 
   <%--  <div class="row page-titles mb-4">--%>
     
   <div class="card card-border-primary">
       <div class="card-header">
           <div class="row align-items-end">
               <div class="col-lg-12">
                   <h5 class="card-title">Promotion Order/
                  पदोन्नति आदेश
                   </h5>
               </div>
           </div>
       </div>
       <div class="card-body">

            <fieldset>
                <legend>Promotion Order / पदोन्नति आदेश</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Promotion With Transfer <br /> स्थानांतरण के साथ पदोन्नति<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlApprove">
                                <%--<option value="--Select--">--Select--</option>--%>
                                <option value="0">Select</option>
                                <option value="1">Yes</option>
                                <option value="3">No</option>
                                <%--<option value="2">Pending Promotion</option>--%>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee Unique ID <br />कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control" />
                        </div>
                    </div>

                                 <hr />
<div class="col-md-12">
    <div class="form-group">
        <button type="button"  onclick="checkDropdown()" class="btn w-lg btn-success btn-border">Search</button>
        <a href="PromotionOrders.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>

                  <%--  <div class="col-md-3 mt-5">
                        <div class="form-group">
                            <button type="button" class="btn btn-success btn-rounded" onclick="checkDropdown()">Search</button>
                            <a href="PromotionOrders.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                </div>
            </fieldset>






            <div id="Approve">
                <fieldset>
                    <legend>Employee Promotion With Transfer Details / स्थानांतरण विवरण के साथ कर्मचारी का पदोन्नति</legend>
   <div class="row justify-content-end">
       <div class="col-md-4 text-end">
           <div class="form-group">
               <button class="btn btn-info btn-rounded w-55">Excel</button>
               <button class="btn btn-info btn-rounded w-55">PDF</button>
           </div>
       </div>
       <div class="col-md-3">
           <div class="form-group">
               <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
           </div>
       </div>
       </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.<br />सरल क्र.</th>
                                            <%--<th rowspan="2">Office Type</th>--%>
                                            <th>Employee Id-Name<br />कर्मचारी आईडी-नाम</th>
                                            <th>File No.<br />दस्तावेज संख्या</th>
                                            <th>Current Grade Level<br />वर्तमान ग्रेड स्तर</th>
                                            <th>New Grade Level<br />नया ग्रेड स्तर</th>
                                            <th>Current School UdiseCode-Name<br />वर्तमान स्कूल का यूडाइसकोड-नाम</th>
                                            <th>New School UdiseCode-Name<br />नये स्कूल का यूडाइसकोड-नाम</th>
                                            <th>Current PayScale<br />वर्तमान वेतनमान</th>
                                            <th>New PayScale<br />नया वेतनमान</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tr>
                                        <th>1</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>AK4868-Ashok Kumar</td>
                                        <td>254845</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td>GOVT HS Mayo (2307554826)</td>
                                        <td>BGPS JALOD, SANJAR (2307154106)</td>
                                        <%--<td>Head Office</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>
                                        <td>
                                            <input id="checkbox1" onclick="showhidesavebtn2()" type="checkbox" /></td>

                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>BZ4776-Shiv Sharan</td>
                                        <td>254845</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td>GOVT HS Mayo (2307554826)</td>
                                        <td>GOVT HS UKAVAD (2307091906)</td>
                                        <%--<td>Joint Directors</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>
                                        <td>
                                            <input id="checkbox2" onclick="showhidesavebtn2()" type="checkbox" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div>
                                <p id="note2"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                            </div>
                            <br />
                        </div>
                        <div class="col-md-12" id="showsavebtn2" style="display: none;">
                            <div class="row  align-content-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order No. / <BR />आदेश नंबर<span style="color: red">*</span></label>

                                        <input name="ename" disabled="disabled" placeholder="58965" type="text" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order Date / <br />आदेश दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Effective Date / <br />प्रभावी दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Relieving Date /<br /> कार्यमुक्ति दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Document /<br /> दस्तावेज़<span style="color: red">*</span></label>
                                        <input name="ename" type="file" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                    </div>
                                </div>
                                                                 <hr />
<div class="col-md-12">
    <div class="form-group">
        <button type="button"  class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
        <a href="PromotionOrders.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>

                            <%--    <div class="col-md-3" style=" top:1.9rem;">
                                    <div class="form-group">
                                        <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                                    </div>
                                </div>--%>
                            </div>
                        </div>

                    </div>
                </fieldset>
            </div>







            <div id="Reject">


                <fieldset>
                    <legend>Employee Promotion Details / कर्मचारी का पदोन्नति विवरण</legend>

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
                                <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.<br />सरल क्र.</th>
                                            <%--<th rowspan="2">Office Type</th>--%>
                                            <th>Employee Id-Name<br />कर्मचारी आईडी-नाम</th>
                                            <th>File No.<br />दस्तावेज संख्या</th>
                                            <th>Current Grade Level<br />वर्तमान ग्रेड स्तर</th>
                                            <th>New Grade Level<br />नया ग्रेड स्तर</th>
                                            <th>Current School UdiseCode-Name<br />वर्तमान स्कूल यूडाइसकोड-नाम</th>
                                            <th>Current PayScale<br />वर्तमान वेतनमान</th>
                                            <th>New PayScale<br />नया वेतनमान</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tr>
                                        <th>1</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>AK4891-Aman Deep Singh</td>
                                        <td>254594</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td>RPVV School (2307091906)</td>
                                        <%--<td>Head Office</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>
                                        <td>
                                            <input id="checkbox3" onclick="showhidesavebtn()" type="checkbox" /></td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>BW4800-Abhishek Rajput</td>
                                        <td>246845</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td>Doon School Dehradun (2370544785)</td>
                                        <%--<td>Joint Directors</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>
                                        <td>
                                            <input id="checkbox4" onclick="showhidesavebtn()" type="checkbox" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>



                        <div class="col-md-12">
                            <div>
                                <p id="note"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                            </div>
                            <br />
                        </div>
                        <div class="col-md-12" id="showsavebtn" style="display: none;">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order No. / आदेश नंबर<span style="color: red">*</span></label>

                                        <input name="ename" disabled="disabled" placeholder="58965" type="text" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order Date / आदेश दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Effective Date / प्रभावी दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Relieving Date / कार्यमुक्ति दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Document / दस्तावेज़<span style="color: red">*</span></label>
                                        <input name="ename" type="file" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                    </div>
                                </div>
                                <div class="col-md-2"  style=" top:1.9rem;">
                                    <div class="form-group">
                                        <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </fieldset>







                <%--<fieldset>
                    <legend>Employee Promotion Details</legend>

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
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">File No.</th>
                                        <th rowspan="2">Promotion order No.</th>
                                        <th rowspan="2">Promotion order Date</th>
                                        <th colspan="5">Current Details</th>
                                        <th colspan="5">New Details</th>
                                        <th rowspan="2">Status</th>
                                    </tr>
                                    <tr>
                                        <th>Class</th>
                                        <th>Designation</th>
                                        <th>Pay Scale</th>
                                        <th>Level</th>
                                        <th>OIS-Udise Code</th>
                                        <th>Class</th>
                                        <th>Designation</th>
                                        <th>Pay Scale</th>
                                        <th>Level</th>
                                        <th>OIS-Udise Code</th>

                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Aman Deep Singh</td>
                                        <td>Teacher</td>
                                        <td>254786</td>
                                        <td>235651</td>
                                        <td>21/04/2024</td>
                                        <td>Class IV</td>
                                        <td>Attendant</td>
                                        <td>5200-20200</td>
                                        <td>Level-7</td>
                                        <td>7894500</td>
                                        <td>Class V</td>
                                        <td>Attendant</td>
                                        <td>7600-30250</td>
                                        <td>Level-8</td>
                                        <td>6294520</td>
                                        <td>Hold</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Abhishek Rajput</td>
                                        <td>Teacher</td>
                                        <td>254586</td>
                                        <td>234121</td>
                                        <td>21/06/2024</td>
                                        <td>Class IV</td>
                                        <td>Attendant</td>
                                        <td>5200-20300</td>
                                        <td>Level-7</td>
                                        <td>7894460	</td>
                                        <td>Class V</td>
                                        <td>Attendant</td>
                                        <td>7600-30250</td>
                                        <td>Level-8</td>
                                        <td>6294660</td>
                                        <td>Hold</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>--%>
            </div>




            <div id="Pending">
                <fieldset>
                    <legend>Pending Promotion Details</legend>

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
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Office Type</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">Employee Department</th>
                                        <th rowspan="2">Employee Subject</th>
                                        <th colspan="5">Current Location</th>
                                        <th colspan="5">Preference Location</th>
                                        <th rowspan="2">Status</th>
                                    </tr>
                                    <tr>
                                        <th>Office Type</th>
                                        <th>Posted From</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                        <th>Office Type</th>
                                        <th>Reason For Promotion</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Rajan Singh</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>25-02-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Lokendra kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>23-08-23</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Pending</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>








            <div id="All">
                <fieldset>
                    <legend>All Details</legend>
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
                                <input type="text" id="searchInput4" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center ">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <%--<th rowspan="2">Office Type</th>--%>
                                        <th>Employee Name</th>
                                        <th>File No.</th>
                                        <th>Current Grade Level</th>
                                        <th>New Grade Level</th>
                                        <th>Current School UdiceCode-Name</th>
                                        <th>New School UdiceCode-Name</th>
                                        <th>Current PayScale</th>
                                        <th>New PayScale</th>
                                    </tr>

                                    <tr>
                                        <th>1</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>Ashok Kumar</td>
                                        <td>254845</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td></td>
                                        <td></td>
                                        <%--<td>Head Office</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>

                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>Shiv Sharan</td>
                                        <td>254845</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td></td>
                                        <td></td>
                                        <%--<td>Joint Directors</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>
                                    </tr>

                                    <tr>
                                        <th>3</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>Aman Deep Singh</td>
                                        <td>254594</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td></td>
                                        <%--<td>Head Office</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>

                                    </tr>
                                    <tr>
                                        <th>4</th>
                                        <%--<td>Head Office</td>--%>
                                        <td>Abhishek Rajput</td>
                                        <td>246845</td>
                                        <td>Level-7</td>
                                        <td>Level-8</td>
                                        <td></td>
                                        <%--<td>Joint Directors</td>--%>
                                        <td>5200-20200</td>
                                        <td>7600-30250</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>













            <%--<div id="Promotion">
                <fieldset>
                    <legend>Promotion Details</legend>

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
                                <input type="text" id="searchInput4" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th rowspan="2">Sr.No.</th>
                                        <th rowspan="2">Office Type</th>
                                        <th rowspan="2">Employee Name</th>
                                        <th rowspan="2">Employee Designation</th>
                                        <th rowspan="2">Employee Department</th>
                                        <th rowspan="2">Employee Subject</th>
                                        <th colspan="5">Current Location</th>
                                        <th colspan="5">Preference Location</th>
                                        <th rowspan="2">Status</th>
                                    </tr>
                                    <tr>
                                        <th>Office Type</th>
                                        <th>Posted From</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                        <th>Office Type</th>
                                        <th>Reason For Promotion</th>
                                        <th>District</th>
                                        <th>Block</th>
                                        <th>Sankul Code</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <td>Head Office</td>
                                        <td>Ashok Kumar</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>Hindi</td>
                                        <td>Head Office</td>
                                        <td>21-05-23</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Joint Directors</td>
                                        <td>No</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                    <tr>
                                        <th>2</th>
                                        <td>Head Office</td>
                                        <td>Shiv Sharan</td>
                                        <td>Teacher</td>
                                        <td>DPI</td>
                                        <td>English</td>
                                        <td>Joint Directors</td>
                                        <td>18-06-22</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>6564545</td>
                                        <td>Head Office</td>
                                        <td>No</td>
                                        <td>Agar Malwa</td>
                                        <td>Agar</td>
                                        <td>6564545</td>
                                        <td>Approve</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>--%>
















            <!--Description-->
            <fieldset id="dcp" runat="server">
                <legend>Description / विवरण</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Promotion Status</strong>
                                <ul>
                                    <li>User will be able to Select <strong>Promotion Status </strong>from Dropdown</li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>After clicking on Search button the details will show on the screen according to the selected field..</li>
                                </ul>
                            </li>

                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User will be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>Excel</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on Excel button grid view data export in Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Searchbox</strong>
                                <ul>
                                    <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
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
        function showhidesavebtn2() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            //var checkbox3 = document.getElementById("checkbox3");
            //var checkbox4 = document.getElementById("checkbox4");
            var showsavebtn2 = document.getElementById("showsavebtn2");
            if (checkbox1.checked || checkbox2.checked) {
                showsavebtn2.style.display = "block"
            }
            //else if (checkbox2.checked === false && checkbox1.checked === false && checkbox3.checked === false && checkbox4.checked === false) {
            //    showsavebtn.style.display = "none"
            //}
            else if (checkbox1.checked == false && checkbox2.checked == false && checkbox3.checked == false && checkbox4.checked == false) {
                showsavebtn2.style.display = "block"
            }
        }
    </script>

    <script>
        function showhidesavebtn() {
            //var checkbox1 = document.getElementById("checkbox1");
            //var checkbox2 = document.getElementById("checkbox2");
            var checkbox3 = document.getElementById("checkbox3");
            var checkbox4 = document.getElementById("checkbox4");
            var showsavebtn = document.getElementById("showsavebtn");
            if (checkbox3.checked || checkbox4.checked) {
                showsavebtn.style.display = "block"
            }
            //else if (checkbox2.checked === false && checkbox1.checked === false && checkbox3.checked === false && checkbox4.checked === false) {
            //    showsavebtn.style.display = "none"
            //}
            else if (checkbox1.checked == false && checkbox2.checked == false && checkbox3.checked == false && checkbox4.checked == false) {
                showsavebtn.style.display = "block"
            }
        }
    </script>



    <script>
        function checkDropdown() {
            var selectedValue = document.getElementById("ddlApprove").value;
            console.log(selectedValue);
            //var div1 = document.getElementById("div1");
            //var div2 = document.getElementById("div2");
            //var div3 = document.getElementById("div3");
            var Approve = document.getElementById("Approve");
            var Reject = document.getElementById("Reject");


            if (selectedValue == "1") {
                //div1.style.display = "block";
                //div2.style.display = "block";
                //div3.style.display = "block";
                Approve.style.display = "block";
                Reject.style.display = "none";

            } else if (selectedValue == "3") {
                //div1.style.display = "block";
                //div2.style.display = "block";
                //div3.style.display = "none";
                Approve.style.display = "none";
                Reject.style.display = "block";
            }
            else {
                //div1.style.display = "none";
                //div2.style.display = "none";
                //div3.style.display = "none";
                Approve.style.display = "none";
                Reject.style.display = "none";
            }
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
                        text: "Do you want to save this record ?",
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
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
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

