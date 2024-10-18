<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolInfrastructureMaster.aspx.cs" Inherits="mis_SchoolInfrastructure_SchoolInfrastructureMaster" %>

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>
School Infrastructure</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#LocationMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>School Infrastructure Master</span></a>
                        </li>
                       
                    </ol>
                </div>
            </div>
        </div>
    </div>
  
   <div class="container-fluid">
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-12">
                    <h4 class="card-title">School Infrastructure Master / स्कूल इंफ्रास्ट्रक्चर मास्टर</h4>
                </div>
            </div>
        </div>
       
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>

                <legend>School Infrastructure Master / स्कूल इंफ्रास्ट्रक्चर मास्टर</legend>
                <div class="row align-items-end">
                   <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
     <div class="form-group">
         <label>
             Enter Infrastructure Name (In English)/
             <br />
             इंफ्रास्ट्रक्चर का नाम दर्ज करें (अंग्रेजी में)<span style="color: red">*</span></label>
         <input type="text" placeholder="Enter Infrastructure Name" class="form-control" />
     </div>
 </div>

 <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
     <div class="form-group">
         <label>
             Enter Infrastructure Name (In Hindi)/
             <br />
             इंफ्रास्ट्रक्चर का नाम दर्ज करें (हिंदी में)<span style="color: red">*</span></label>
         <input type="text" placeholder="इंफ्रास्ट्रक्चर का नाम दर्ज करें" class="form-control" />
     </div>
 </div>





                    <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                        <div class="form-group">
                            <input checked="checked" type="checkbox" data-val="true" class="form-check-input" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
					<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                        <a href="SchoolInfrastructureMaster.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset>
    <legend>Infrastructure Details / स्कूल इंफ्रास्ट्रक्चर विवरण</legend>
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
    <div class="row form-group">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered text-center">
                    <thead class="nowrap">
                        <tr>
                            <th>Sr.No. /
                            <br />
                                सरल क्र.</th>
                            <th>Name of the Infrastructure (In English) /<br />
                                इंफ्रास्ट्रक्चर का नाम (अंग्रेजी में)</th>
                            
                            <th>Status(Active/InActive) /
                            <br />
                                स्थिति (सक्रिय/निष्क्रिय)</th>
                            <th>Action /<br />कार्यवाहीं</th>
                        </tr>
                    </thead>
                    <tr>
                        <td>1</td>
                        <td>Class Room</td>
                       
                        <td>Active</td>
                        <td><span class="alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Library</td>
                       
                        <td>InActive</td>
                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                    </tr>
                    <tr>
    <td>3</td>
    <td>Playground</td>
   
    <td>InActive</td>
    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
</tr>
                    <tr>
    <td>4</td>
    <td>Transportation</td>
   
    <td>InActive</td>
    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
</tr>
                    <tr>
    <td>5</td>
    <td>Fans</td>
   
    <td>InActive</td>
    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
</tr>
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

