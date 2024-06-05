<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeIDcardMissingDetails.aspx.cs" Inherits="mis_HRMS_EmployeeIDcardMissingDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/IDCARD.png" style="height: 90px" title="Employee ID Card Missing Details Report"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item active">Employee ID Card Missing Details Report</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li class="nav-item dropdown ">
                                <a class="nav-link  text-white " href="EmployeeIDcardmanagementSystem.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>

                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                        Employee ID Card Management</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="EmployeeIDcardmanagementSystem.aspx">Employee ID Card Management System</a></li>
                                        <li><a class="dropdown-item" href="GenerateIDCard.aspx">Print Employee ID Card</a></li>
                                        <li><a class="dropdown-item" href="EmployeeIDcardMissingDetails.aspx">Employee Missing Details</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="DistrictwiseIDCardProgress.aspx">District Wise ID Card Progress Report</a></li>
                                        <li><a class="dropdown-item" href="BlockwiseIDCardProgress.aspx">Block Wise ID Card Progress Report</a></li>
                                         <li><a class="dropdown-item" href="SchoolwiseIDCardProgress.aspx">School Wise ID Card Progress Report</a></li>
                                    </ul>
                                </li>
                        </ul>
                    </div>
                </div>
            </nav><br />
            <div>
                <div class="row mt-2">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                DDO/Shankul Name <br />
                                डीडीओ/संकुल नाम<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" class="form-control" autocomplete="off" placeholder="232589654521/ GOVT. HS AGURLI" />
                        </div>
                    </div>
            </div>

             <fieldset>
                <legend>Employee Missing Details</legend>
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
                <div class="row">

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered" >
                                        <thead>
                                            <tr role="row">
                                                <th scope="col" aria-label="स. क्र.: activate to sort column descending" aria-sort="ascending" >S.No<br />क्र.सं</th>
                                                <th scope="col" aria-label="जिला: activate to sort column ascending" >Photo<br />फ़ोटो</th>
                                                <th scope="col" aria-label="Name: activate to sort column ascending" >   Name<br />नाम   </th>
                                                <th scope="col" aria-label="EmployeeCode: activate to sort column ascending" >EmployeeCode<br />कर्मचारी कोड</th>
                                                <th scope="col" aria-label="शाला: activate to sort column ascending" >Father Name<br />पिता का नाम</th>
                                                <th scope="col" aria-label="dob: activate to sort column ascending" >Date of Birth<br />जन्म की तारीख</th>
                                                <th scope="col" aria-label="Blood : activate to sort column ascending" >Blood Group<br />ब्लड ग्रुप </th>
                                                <th scope="col" aria-label="Mobile: activate to sort column ascending" >Mobile Number<br />मोबाइल नंबर</th>
                                                <th scope="col" aria-label="Designation: activate to sort column ascending" >Designation<br />पद</th>
                                                <th scope="col" aria-label="OIS: activate to sort column ascending" >OIS Code<br />ओआईएस कोड</th>
                                                <th scope="col" aria-label="Address: activate to sort column ascending">Employee Address<br />कर्मचारी पता</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><a>1</a>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <img src="../../img/11.jpg" alt="Image" style="width:50px; height:50px;">
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a href="#51">Ashok Verma</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a></a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span id="">Mr. Harish Verma</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">02/02/2024</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">B+</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">Principal HS</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">2598634781/<br />GOVT. HSS RATATALAI</span>
                                                </td>
                                                 <td align="center" valign="middle" >
                                                    <span id="">17/2 Shastri Nagar Ujjain</span>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><a>2</a>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <img src="../../img/112.png" alt="Image" style="width:50px; height:50px;">
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a href="#51">Rahul Yadav</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a></a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblTotalStudents"></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">02/02/1970</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">AB+</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">9000089898</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">2111147810/<br />EPES GOVT. HSS <br />GIRLS HATPIPLIYA</span>
                                                </td>
                                                 <td align="center" valign="middle" >
                                                    <span id="">18/2 Patel <br />Nagar Rajkot</span>
                                                </td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><a>3</a>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <img src="" alt="Image" style="width:50px; height:50px;">
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a href="#51">Rudra Singh</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a></a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span id="">Mr. Bheero Singh</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">B+</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">9111119800</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">2199999999/<br />GOVT. HSS AMLATAJ</span>
                                                </td>
                                                 <td align="center" valign="middle" >
                                                    <span id="">99 Indra Nagar 
                                                        <br />Devri, MP</span>
                                                </td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><a>4</a>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <img src="" alt="Image" style="width:50px; height:50px;">
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a href="#51">Jai</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a></a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">B+</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">9111119800</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">2199999999/<br />GOVT. HSS AMLATAJ</span>
                                                </td>
                                                 <td align="center" valign="middle" >
                                                    <span id="">99 Indra Nagar 
                                                        <br />Devri, MP</span>
                                                </td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><a>5</a>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <img src="" alt="Image" style="width:50px; height:50px;">
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a href="#51">Pia Paul</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a></a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span id="">Mr. Bheero Singh</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">B+</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">9111119800</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">2199999999/<br />GOVT. HSS AMLATAJ</span>
                                                </td>
                                                 <td align="center" valign="middle" >
                                                    <span id="">99 Indra Nagar 
                                                        <br />Devri, MP</span>
                                                </td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><a>6</a>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <img src="" alt="Image" style="width:50px; height:50px;">
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a href="#51">Ram</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a>ML0443</a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">B+</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">2199999999/<br />GOVT. HSS AMLATAJ</span>
                                                </td>
                                                 <td align="center" valign="middle" >
                                                    <span id="">99 Indra Nagar 
                                                        <br />Devri, MP</span>
                                                </td>
                                            </tr>
                                             <tr role="row" class="odd">
                                                <td align="center" valign="middle" ><a>7</a>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <img src="../../img/13.jpg" alt="Image" style="width:50px; height:50px;">
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <a href="#51">Raja</a>
                                                    
                                                </td>
                                                <td align="center" valign="middle" >
                                                     <a>AD0077</a>
                                                </td>
                                           
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="01/01/1980"></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id="">Shikshak</span>
                                                </td>
                                                <td align="center" valign="middle" >
                                                    <span id=""></span>
                                                </td>
                                                 <td align="center" valign="middle" >
                                                    <span id="">99 Indra Nagar 
                                                        <br />Devri, MP</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                      
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                     <div class="col-lg-12" runat="server" id="Div1">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                  
                                </div>
                            </div>

                        </div>
                    </div>
                </div>



            </fieldset>

 
                 </div>

 <script type="text/javascript">
        function showImagePreview(event) {
            var file = event.target.files[0];
            if (file) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    var img = document.getElementById('imgPreview');
                    img.src = e.target.result;
                    img.style.display = 'block';
                }
                reader.readAsDataURL(file);
            }
        }
    </script>


        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

