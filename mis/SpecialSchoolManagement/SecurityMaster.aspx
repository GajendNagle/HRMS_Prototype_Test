<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SecurityMaster.aspx.cs" Inherits="mis_SpecialSchoolManagement_SecurityMaster" %>

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
                            <a href="#Security Management" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Special School Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Security Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


      <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Security Master / सुरक्षा मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="Label1"></asp:Label>
            <fieldset>
                <legend>Add Security Facilities / सुरक्षा सुविधाएँ जोड़ें</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Facility Name(In English)<br />
                               सुरक्षा सुविधा का नाम दर्ज करें(अंग्रेजी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder=" Enter Facility Name" onkeypress="return hindiOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                 Enter Facility Name(In Hindi)<br />
                               सुरक्षा सुविधा का नाम दर्ज करें (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" placeholder="सुरक्षा सुविधा का नाम दर्ज करें" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
             
                    <div class="col-md-6 col-lg-4 col-xl-3">
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
                        <a href="SecurityMaster.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Security Details  / सुरक्षा विवरण</legend>
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
                                        <th>Sr.No./
                                        <br />
                                            सरल क्रमांक</th>
                                        <th>   Facility Name /<br />
                                            सुरक्षा सुविधा का नाम</th>
                                        <th>  Facility Name /<br />
                                           सुरक्षा सुविधा का नाम </th>
                                   
                                        <th>Status(Active/InActive)/
                                        <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action/ <br />कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Guards</td>
                                    <td>गार्ड</td>
                                 
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Camera</td>
                                    <td>कैमरा</td>
                                  
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>

                                  <tr>
                                    <td>3</td>
                                    <td>Warden</td>
                                    <td>प्रबंधक</td>
                                  
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>

                                   <tr>
                                    <td>4</td>
                                    <td>fire extinguisher</td>
                                    <td>आग बुझाने का यंत्र</td>
                                  
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

