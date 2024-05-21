<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Paid_Scholarship.aspx.cs" Inherits="mis_Scheme_Paid_Scholarship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        body{
  margin:0;
  padding:0;
  font-family: 'Roboto Condensed', sans-serif;
}

/* Overlay Styles */
.overlay {
  background:rgba(0,0,0,0.8);
  opacity:0.8;
  filter:alpha(opacity=80);
  position:absolute;
  top:0px;
  bottom:0px;
  left:0px;
  right:0px;
  z-index:100;
}

/* Popup */
.popup{
  background:white;
  position:absolute;
  top:0;
  left:0;
  bottom:0;
  right:0;
  z-index:101;
  width:580px; /*Change your width here*/
  height:250px; /*Change your height here*/
  margin:auto;
  
  @media(max-width:768px){
    width:90%;
    margin:auto 5%;
  }
  /* Popup Inner */
  .popup-inner{
    position:relative;
    padding:1em;
    
    input.s3-btn-close{
      position:absolute;
      top:-0.5em;
      right:-0.5em;
      
      background:black;
      border:solid 2px white;
      color:white;
      cursor:pointer;
      
      border-radius:15px;
      
      outline:none;
    } // s3-btn-close
  } // popup-inner
} // popup


/*************
  S3 Button
*************/
input.s3-btn{
  background:#f1f1f1;
  border:none;
  width:200px;
  height:50px;
  cursor:pointer;
  
  position:absolute;
  top:0;
  right:0;
  bottom:0;
  left:0;
  margin:auto;
}

.s3-center{
  text-align:center;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Paid Scholarship List</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="SSDDO_Scholarship.aspx" title="click to go on">Scholarship Dashboard</a></li>
                        <li class="breadcrumb-item active">Paid Scholarship List</li>
                    </ol>
                </div>
            </div>
        </div>


        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset id="PaidScholarship" runat="server">
                    <legend>Paid Scholarship List</legend>
                    <div class="row">
                        <div class="col-md-3 form-group">
                            <label class="font-weight-bold">DISE Code<span style="color: red">*</span></label>
                            <input type="text" max="12" class="form-control" autocomplete="off" placeholder="Enter DISE Code" />
                        </div>
                        <div class="col-md-3 mt-4">

                            <asp:Button Text="Get List Of Students" type="button" runat="server" OnClick="GetListOfStudents_Click" ID="GetListOfStudents" class="btn btn-success btn-rounded"></asp:Button>
                            <a href="Paid_Scholarship.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="Studenttraking" visible="false">
                    <legend>School Details</legend>
                    <div class="student-profile py-12">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card shadow-sm">

                                        <div style="min-height: 12rem;" class="card-body">
                                            <div class="col-lg-12">
                                                <div class="card shadow-sm">
                                                    <div class="card-header bg-transparent border-0">
                                                        <h3 style="color: black;"><i class="far fa-clone pr-1"></i>Information</h3>
                                                    </div>
                                                    <div style="min-height: 0rem;" class="card-body pt-0">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th width="30%">School Name : </th>
                                                                <td width="2%">:</td>
                                                                <td>SAGAR PUBLIC SCHOOL [SPS]</td>
                                                                <th width="30%" class="text-gray-lighter">DISE Code</th>
                                                                <td width="2%">:</td>
                                                                <td>1234567</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="30%">District </th>
                                                                <td width="2%">:</td>
                                                                <td>Bhoapl</td>
                                                                <th width="30%">Block</th>
                                                                <td width="2%">:</td>
                                                                <td>Bairasia</td>
                                                            </tr>
                                                            <tr>
                                                                <th>पता</th>
                                                                <td>:</td>
                                                                <td colspan="4">ग्राम / वार्ड -Birha Shym Khedi  जिला -Bhopal</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card shadow-sm">
                                        <div class="card-header bg-transparent border-0">
                                        </div>

                                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Scholarship Details</h3>
                                        <hr>

                                        <%--     <div class="container">
                                <h2>Example 3 </h2>
                            </div>--%>
                                        <div id="exTab3" class="container">
                                            <ul class="nav nav-pills">
                                                <li class="active">
                            <asp:Button Text="Print List Of Students Whose payment was Successful" type="button" runat="server" OnClick="Button1_Click" ID="Button1" class="btn btn-warning"></asp:Button>

                                                    
                                                </li>
                                                <li>
                            <asp:Button Text="Print List Of Students Whose payment was Failed" type="button2" runat="server" OnClick="Button2_Click" ID="Button2" class="btn btn-success"></asp:Button>

                                               

                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-danger" href="#3b" data-toggle="tab">Print List Of Students Who have been Sanctioned Schemes </button>

                                                </li>
                                            </ul>

                                            <div class="tab-content clearfix">
                                                <div class="tab-pane active" id="Successful" runat="server" visible="false">
                                                    <div class="card-body pt-0">

                                                        <table class="table table-bordered">
                                                            <thead>
                                                                <tr>

                                                                    <th style="color: white" scope="col">#</th>
                                                                    <th style="color: white" scope="col">SamagraID</th>
                                                                    <th style="color: white" scope="col">Name</th>
                                                                    <th style="color: white" scope="col">Fathers Name</th>
                                                                    <th style="color: white" scope="col">Class</th>
                                                                    <th style="color: white" scope="col">Scheme</th>
                                                                    <th style="color: white" scope="col">IFSC</th>
                                                                    <th style="color: white" scope="col">Ac.NO.</th>
                                                                    <th style="color: white" scope="col">Amount</th>
                                                                    <th style="color: white" scope="col">Payment Stetus</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>53455353</td>
                                                                    <td>Rahul</td>
                                                                    <td>Golu</td>
                                                                    <td>7th</td>
                                                                    <td>7.1</td>
                                                                    <td>MAHB0002</td>
                                                                    <td>64646664664564</td>
                                                                    <td>200</td>
                                                                    <td>Done</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>53455353</td>
                                                                    <td>raghave</td>
                                                                    <td>Goluendra</td>
                                                                    <td>7th</td>
                                                                    <td>7.1</td>
                                                                    <td>MAHB0002</td>
                                                                    <td>64646664664564</td>
                                                                    <td>270</td>
                                                                    <td>Done</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div  id="PaymentFailed" runat="server" visible="false">
                                                    <div class="table-responsive"> 
                                                        <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                                            <thead>
                                                                <tr>
                                                                    <th style="color: white" scope="col">#</th>
                                                                    <th style="color: white" scope="col">Class</th>
                                                                    <th style="color: white" scope="col">SamagraID</th>
                                                                    <th style="color: white" scope="col">Name</th>
                                                                    <th style="color: white" scope="col">Father Name</th>
                                                                    <th style="color: white" scope="col">IFSC</th>
                                                                    <th style="color: white" scope="col">Acount NO</th>
                                                                    <th style="color: white" scope="col">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>9</td>
                                                                    <td>75675555</td>
                                                                    <td>Rahul</td>
                                                                    <td>Abhijit</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <td> <input type="button" class="s3-btn" name="Open" onclick="popupOpen();"  value="Edit"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>10</td>
                                                                    <td>756533367</td>
                                                                    <td>Roshan</td>
                                                                    <td>Pravin</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <td> <input type="button" class="s3-btn" name="Open" onclick="popupOpen();"  value="Edit"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>10</td>
                                                                    <td>7567343437</td>
                                                                    <td>Rohini</td>
                                                                    <td>Pravin</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <td> <input type="button" class="s3-btn" name="Open" onclick="popupOpen();"  value="Edit"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>10</td>
                                                                    <td>75343467</td>
                                                                    <td>Pawan</td>
                                                                    <td>Ramarao</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <td> <input type="button" class="s3-btn" name="Open" onclick="popupOpen();"  value="Edit"></td>
                                                                </tr>
                                                            </tbody>
                                                        </table> 
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 

<!-- Overlay -->
<div class="overlay" id="overlay" style="display:none;"></div>

<!-- Popup -->
<div class="popup" id="popup" style="display:none;">
  <div class="popup-inner">
    <input type="button" name="Close" class="s3-btn-close" onclick="popupClose();" value="&times;">
    
    
      
         
                              <table class="table table-bordered">
                                  <tr>
                                      <th width="30%">IFSC Code : </th>
                                      <td width="2%">:</td>
                                      <td>HD0000RT</td>
                                      <th width="30%" class="text-gray-lighter">Bank Name</th>
                                      <td width="2%">:</td>
                                      <td> 
        <select style="width: 100px;">
            <option value='Bank of Baroda'>Bank of Baroda</option>
            <option value='H d f c bank'>H d f c bank</option>
            <option value='Punjab National Bank'>Punjab National Bank</option>
            <option value='Bank of Maharashtra'>Bank of Maharashtra</option> 
        </select>
     </td>
                                  </tr>
                                  <tr>
                                      <th width="30%">Account NO </th>
                                      <td width="2%">:</td>
                                      <td>2255664466</td>
                                      <th width="30%">Account NO Retype</th>
                                      <td width="2%">:</td>
                                      <td>2255664466</td>
                                  </tr> 
                                   
     
   
 
                                    
                              </table>
     <asp:Button Text="Save Bank Account Details" type="button" runat="server"  ID="Button3" class="btn btn-success"></asp:Button>


                          </div> 
</div>   
                </fieldset>
            </div>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
     <script>
         // Popup Open
         function popupOpen() {
             document.getElementById("popup").style.display = "block";
             document.getElementById("overlay").style.display = "block";
         }
         // Popup Close
         function popupClose() {
             document.getElementById("popup").style.display = "none";
             document.getElementById("overlay").style.display = "none";
         }
     </script>
</asp:Content>

