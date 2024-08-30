<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentWiseEntry.aspx.cs" Inherits="mis_HostelManagment_StudentWiseEntry" %>

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
                        <%--<li class="breadcrumb-item">
                     <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                 </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')">
                                <span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student Wise IN/Out Entry</span></li>
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
                        <div class="headertext btn btn-primary rounded-pill">
                            छात्रवार इन/आउट प्रवेश का विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Student Wise IN/Out Enter /छात्रवार इन/आउट प्रवेश
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Student Wise IN/Out Enter /छात्रवार इन/आउट प्रवेश</legend>
           
            <div class="row align-items-end">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Select Hostel Name/
                 <br />
                            हॉस्टल नाम चुनें<span style="color: red;">*</span></label>
                        <select class="form-control select2">
                            <option selected="selected" value="0">--Select --</option>
                            <option value="1">KGBV Girls Hostel</option>
                            <option value="2">KGBV Boys Hostel</option>
                            <option value="3">KGBV Combine Hostel</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Select Student Name(ID)/
              <br />
                            छात्र नाम(आई.डी) चयन करे</label>
                        <select class="form-control select2">
                              <option>select</option>
                            <option value="1">Raadha Dawar(103201441)</option>
                            <option value="2">JEANA RAWAT(188599791)</option>
                            <option value="3">Ramesh Nargawa (108875539)</option>
                            <option value="4">SANGEETA DAWAR (112772962)</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Date/<br />
                            दिनांक
                            <span style="color: red">*</span></label>
                        <input name="ename" id="DOB" type="date" class="form-control" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                           Out Time/<br />
                            बाहर जाने का समय
                 <span style="color: red">*</span></label>
                        <input name="ename" id="OUTTIME" type="time" class="form-control" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                          In Time/<br />
                           वापस आने का समय
                 <span style="color: red">*</span></label>
                        <input name="ename" id="INTIME" type="time" class="form-control" />
                    </div>
                </div>
                 </div>
                   <hr />
   <div class="row">
       <div class="col-md-12">
           <div class="form-group">
               <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
               <a href="StudentWiseEntry.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
           </div>
       </div>
   </div>
           
             </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

