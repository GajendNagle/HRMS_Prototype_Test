<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolInfrastructureReport.aspx.cs" Inherits="mis_SchoolInfrastructure_SchoolInfrastructureReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">

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
                         <a href="#Security Management" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School infrastructure</span></a>
                     </li>

                     <li class="breadcrumb-item">School Infrastructure Report</li>
                 </ol>
             </div>
         </div>
     </div>
 </div>


 <div class="card card-border-primary">
     <div class="card-header">
         <div class="row">
             <div class="col-xl-10 col-md-12">
                 <div class="marqueecontainerinfo">
                     <div class="headertext btn btn-primary rounded-pill">School Infrastructure Report </div>
                     <div>
                         <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext ">स्कूल शिक्षा विभाग (मध्य प्रदेश)</marquee>
                     </div>
                 </div>
             </div>

         </div>
     </div>
     <div class="card-body">
         <div runat="server" id="divSecurity">
             <fieldset>
                 <legend>School Infrastructure /
                     स्कूल इन्फ्रास्ट्रक्चर
                     
              
                 </legend>
                 <div class="row align-items-end">
                     <div class="col-md-6 col-lg-4 col-xl-3">
                         <label>
                             Select Academic Year /<br />
                             शैक्षणिक वर्ष चुनें <span style="color: red;">*</span></label>
                         <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                     </div>
                     <div class="col-md-6 col-lg-4 col-xl-3">
                         <label>
                             Enter School UDISE/<br />
                           
                           स्कूल यूडीआईएसई दर्ज करें   <span style="color: red;">*</span>
                         </label>
                         <input type="text" id="inputUDISE" placeholder="Enter School UDISE" class="form-control">
                     </div>

                     <div class="col-md-6 ">
                         <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="onClickShowData()">Search</button>
                            <a href="SchoolInfrastructureReport.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                     </div>
                     
                 </div>


               

             </fieldset>


         </div>
         <div id="divsecurity1" runat="server" class="d-none">
             <fieldset>
                 <legend>Available Infrastructure / 
                     उपलब्ध इन्फ्रास्ट्रक्चर
                 </legend>

                 <div class="row align-items-end">

                     <div class="col-lg-12" runat="server" id="specialAcademicsSection">
                         <div class="row">
                             <div class="col-md-12">
                                 <div class="table-responsive">
                                     <table class="table table-bordered text-center">
                                         <thead>
                                             <tr role="row">
                                                 <th class="mt-0" scope="col">Sr No. /<br /> सरल क्र.</th>
                                                 <th class="mt-0" scope="col">Available Infrastructure /<br /> उपलब्ध इन्फ्रास्ट्रक्चर</th>
                                                 <th class="mt-0" scope="col">Actions /<br /> कार्यवाहीं</th>

                                             </tr>

                                             <tr role="row">
                                                 <td class="mt-0" scope="col">1</td>
                                                 <td class="mt-0" scope="col">Classrooms</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>

                                             <tr role="row">
                                                 <td class="mt-0" scope="col">2</td>
                                                 <td class="mt-0" scope="col">Library</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                        No
                                                     </label>

                                                 </td>
                                             </tr>

                                             <tr role="row">
                                                 <td class="mt-0" scope="col">3</td>
                                                 <td class="mt-0" scope="col">Laboratory</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">4</td>
                                                 <td class="mt-0" scope="col">Playground</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">5</td>
                                                 <td class="mt-0" scope="col">Male Toilets</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">6</td>
                                                 <td class="mt-0" scope="col">Female Toilets</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                       No
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">7</td>
                                                 <td class="mt-0" scope="col">Water Purifier(drinking water)</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">8</td>
                                                 <td class="mt-0" scope="col">Mess(Mid Day Meal)</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">9</td>
                                                 <td class="mt-0" scope="col">Security Guard</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         No
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">10</td>
                                                 <td class="mt-0" scope="col">Security Camera</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">11</td>
                                                 <td class="mt-0" scope="col">Lights</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">12</td>
                                                 <td class="mt-0" scope="col">Fans</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                     No
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">13</td>
                                                 <td class="mt-0" scope="col">Trasnportation</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>
                                             <tr role="row">
                                                 <td class="mt-0" scope="col">14</td>
                                                 <td class="mt-0" scope="col">Tables/Chairs</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>

                                             </tr>

                                             <tr role="row">
                                                 <td class="mt-0" scope="col">15</td>
                                                 <td class="mt-0" scope="col">Bed(in case of hostel)</td>
                                                 <td scope="col">
                                                     <label style="margin-right: 30px;">
                                                         Yes
                                                     </label>

                                                 </td>
                                             </tr>
                                         </thead>
                                     </table>
                                 </div>
                             </div>

                            
                         </div>
                     </div>
                 </div>
             </fieldset>
         </div>

     </div>
 </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">


    <script>
      function onClickShowData() {
          var divSecurity1 = document.getElementById('<%= divsecurity1.ClientID %>');
          var inputUDISE = document.getElementById("inputUDISE");
          if (inputUDISE.value == "") {
          } else {
              divSecurity1.classList.remove('d-none');
          }
      }
    </script>
</asp:Content>

