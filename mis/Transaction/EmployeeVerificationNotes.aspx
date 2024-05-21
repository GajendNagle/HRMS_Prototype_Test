<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeVerificationNotes.aspx.cs" Inherits="mis_Transaction_EmployeeVerificationNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div class="row page-titles mb-4">
     <div class="col-md-5 align-self-center">

         <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
             <img src="../../img/Employee%20Registration.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u>
             </u>
         </p>
     </div>
     <div class="col-md-7 align-self-center text-end">
         <div class="d-flex justify-content-end align-items-center">
             <ol class="breadcrumb">
                 <%--  <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                 <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                 <li class="breadcrumb-item active"></li>--%>


                 <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                 <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                 <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                 <li class="breadcrumb-item active">Employee Verification</li>
             </ol>
         </div>
     </div>
 </div>
  <div class="card mt-3 shadow">
      <div class="card-header card-border-info">
      </div>
      <div class="card-body">
          <nav class="navbar navbar-expand-lg topbar ">
              <div class="container-fluid">
                  <a class="navbar-brand" href="#"></a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse " id="navbarSupportedContent">
                      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                          <li>

                          <a class="nav-link  text-white " href="EmployeeVerificationNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                          </li>
                          <li>

                          <a class="nav-link  text-white " href="EmployeeVerification.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i> Employee Verification</b></a>
                          </li>
                      </ul>

                  </div>
              </div>
          </nav>
          <br />
          <br />
          <div class="row">
              <div class="col-md-12">
                  <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी सत्यापन दिशानिर्देश:-</h4>
              </div>
          </div>
          <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>

          <div>
              <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                  <b>1)</b>&nbsp; इस पेज के माध्यम से अधिकारी अपने संबंधित कर्मचारी के पंजीकरण को अनुमोदित करता है |<br />
                  <b>2)</b>&nbsp; संबंधित अधिकारी एम्पलाई वेरीफिकेशन मीनू पर जाकर संबंधित फील्ड का चयन कर वेरीफिकेशन स्टेटस को देखा है |<br />
                  <b>3)</b>&nbsp; अधिकारी द्वारा पेंडिंग स्टेटस में बिना अनुमोदित हुए कर्मचारी की लिस्ट देखी जा सकती है |<br />
                  <b>4)</b>&nbsp; अधिकारी द्वारा कर्मचारी की समस्त जानकारी का सत्यापन करने के उपरांत वह कर्मचारी के पंजीयन को अनुमोदन कर करता है |  <br />
                  <b>5)</b>&nbsp; अधिकारी द्वारा कर्मचारी का अनुमोदन उपरांत कर्मचारी की मेल आईडी पर कर्मचारी का यूनिक आईडी नंबर और पासवर्ड भेज दिया जाता है जिससे कि वह एजुकेशन पोर्टल 3.0 पर लॉगिन कर सकता है।
                  <br />


              </p>
          </div>
      </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

