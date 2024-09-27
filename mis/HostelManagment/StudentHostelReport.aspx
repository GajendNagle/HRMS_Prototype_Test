<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentHostelReport.aspx.cs" Inherits="mis_HostelManagment_StudentHostelReport" %>

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

                        <li class="breadcrumb-item">School Hostel Report</li>
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
                        विवरण
                    </div>
                    <div class="">
                        <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                            School Hostel Report /  स्कूल छात्रावास रिपोर्ट
                        </marquee>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div>
             <fieldset>
     <legend>School Hostel Report /  स्कूल छात्रावास रिपोर्ट</legend>
     <div class="row align-items-end">
                 <div class="col-md-3">
            <div class="form-group">
                <label>
                    Select Hostel Type/ <br />
                    छात्रावास का प्रकार चयन करे</label>
                <select class="form-control select2">
                    <option selected="selected" value="0">ALL</option>
                    <option value="1">Girls </option>
                    <option value="2">Boys</option>
                    <option value="3">Combine</option>
                </select>
            </div>
        </div>

         <div class="col-md-3">
             <div class="form-group">
                 <label>
                     Select Hostel Name/ <br />
                     हॉस्टल नाम चयन करे<span style="color: red;">*</span></label>
                  <select class="form-control select2">
                     <option selected="selected" value="0">ALL</option>
                     <option value="1">KGBV Girls Hostel</option>
                     <option value="2">KGBV Boys Hostel</option>
                     <option value="3">KGBV Combine Hostel</option>
                 </select>
             </div>
         </div>
 
         <div class="col-md-3">
             <div class="form-group">
                 <label>
                    Select Room Type/
<br />
                     कक्ष प्रकार चयन करे
                 </label>
                 <select class="form-control select2">
                     <option value="--Select--">ALL</option>
                     <option value="Single">Single</option>
                     <option value="Double">Double</option>
                     <option value="Triple">Triple</option>
                     <option value="Quad">Quad</option>
                 </select>
             </div>
         </div>
         <hr />
         <div class="col-md-12 justify-content-end">
             <div class="form-group">
                 <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                  <a href="StudentHostelReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
             </div>
         </div>
     </div>
 </fieldset>
 <fieldset id="FS_Details" style="display: none">
     <legend>Details / विवरण </legend>
     <div class="row justify-content-end">
         <div class="col-md-4 text-end">
             <div class="form-group">
                 <button class="btn btn-info btn-rounded w-55">Excel</button>
                 <button class="btn btn-info btn-rounded w-55">PDF</button>
             </div>
         </div>
         <div class="col-md-2">
             <div class="form-group">
                 <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
             </div>
         </div>
     </div>
     <div class="row">
         <div class="col-md-12">
             <div class="table-responsive">

                 <table class="table table-bordered" id="mainTable">
                     <thead>
                         <tr>
                             <th>Sr. No.
                                 <br />
                                 क्र.सं.
                             </th>
                             <th>Hostel Name 
                                         <br />
                                 छात्रावास का नाम
                             </th>
                             <th>Hostel Type 
                                         <br />
                                 छात्रावास का प्रकार
                             </th>
                             <th>Student ID/Name 
                                         <br />
                                 छात्र का आई.डी/नाम</th>
                             <th>Room Type 
                                         <br />
                                 कक्ष प्रकार</th>
                             <th>Room No. 
                                         <br />
                                 कक्ष नंबर
                             </th>
                             <th>Bed No. 
                                         <br />
                                 बिस्तर नंबर
                             </th>
                               <th>Room Rent 
                                         <br />
                                 कक्ष का किराया
                             </th>
                             <th>Parent Name 
                                         <br />
                                 अभिभावक का नाम
                             </th>
                             <th>Parent Mobile No.  
            <br />
    अभिभावक का मोबाइल नंबर
</th>
                         </tr></thead>
                      <tbody>
                         <tr>
                             <td> 1</td>
                             <td> Girls Hostel Phutera</td>
                             <td> Girls</td>
                             <td> 112772962 Rohan Sharma</td>
                             <td> Single</td>
                             <td> 101</td>
                             <td> 34</td>
                             <td> Rs.1000/-</td>
                             <td> J.J Sharma</td>
                             <td> 78778787878</td>
                         </tr>
                         <tr>
                             <td> 2</td>
                             <td> Boys Hostel Phutera</td>
                             <td> Boys</td>
                             <td> 188416561 Jay Verma</td>
                             <td> Double</td>
                             <td> 201</td>
                             <td> 14</td>
                             <td> Rs. 500/-</td>
                             <td> J.K Verma</td>
                              <td> 87787999878</td>
                         </tr>
                     </tbody>
                 </table>
             </div>
         </div>
     </div>
 </fieldset>
        </div>
    </div>
</div>




    


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

