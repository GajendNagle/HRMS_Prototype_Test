<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HOAPRNotes.aspx.cs" Inherits="mis_HRMS_HO_APRNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Head Office Annual Property Returns Management System    
                <br />
                प्रधान कार्यालय वार्षिक संपत्ति रिटर्न प्रबंधन प्रणाली</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=APRMS" title="click to go on">APRMS</a></li>
                    <li class="breadcrumb-item active">Head Office APRMS</li>
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
             <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                 <li>
                     <a class="nav-link  text-white " href="HOAprNotes.aspx" role="button">
                         <b class="font-16 font-bold "><i class="fa fa-home "></i>
                         </b>

                     </a>

                 </li>
                 <li>
                     <a class="nav-link text-white" href="Trn_HoAprFill.aspx" role="button">
                         <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                             एपीआर भरे
                         </b>
                     </a>
                 </li>
                 <li class="dropdown">
                     <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                         <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i> एपीआर रिपोर्ट </b>
                     </a>
                     <ul class="dropdown-menu">
                         <li><a class="dropdown-item" href="Trn_HoAprDistWiseReport.aspx">APR District Wise Report
                             <br />
                             एपीआर जिलावार रिपोर्ट</a></li>

                     </ul>
                 </li>
             </ul>
         </div>
     </div>
 </nav>
            <br />
            <div class="row">
                <div class="col-md-8">
                    <h4 style="color: brown; background-color: bisque; padding: 20px; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;वार्षिक संपत्ति रिटर्न के दिशानिर्देश :-</h4>
                </div>
                <div class="col-md-4 text-end">

                    <a href="../Document/APR_Form.pdf" target="_blank" download="APR_Form" class="btn btn-info btn-rounded w-55">डाउनलोड अचल संपत्ति फॉरमेट</a>
                    <a href="../Document/DepartmentalCircular.pdf" target="_blank" class="btn btn-info btn-rounded w-55">विभागीय सर्कुलर देखें</a>


                </div>
            </div>
            <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>

            <div>
                <p style="font-weight: bold; background-color: #F0FFF0; border-radius: 10px;" class="font-16">
                    <b>1)</b>&nbsp; कृपया अचल संपत्ति के विवरण को PDF Format में ही अपलोड करें |<br />
                    <b>2)</b>&nbsp; कृपया अचल संपत्ति के विवरण पेज को अपलोड करने से पहले फाइल का साइज़ जांच ले ।<br />
                    <b>3)</b>&nbsp; अचल संपत्ति के विवरण पेज का साइज़ 200 KB (Kilo Bytes) से अधिक का नहीं होना चाहिए |<br />
                    <b>4)</b>&nbsp; सभी प्राप्त प्रपत्रों को black & white मे 75 DPI या 150 DPI Resolution मे स्कैन करा कर 150-200 KB तक की PDF फ़ारमैट फ़ाइल को Portal पर अपलोड करें |<br />
                    <b>5)</b>&nbsp; स्कैन करते समय ध्यान दे की फ़ाइल को black and white मे ही स्कैन किया जा रहा है एवं RESOLUTION की सेटिंग 75DPI या 150 DPI ही है। इन सेटिंग्स से फ़ाइल 150 से 200 KB तक की है बनेगी। छोटी फ़ाइल को अपलोड करने मे भी कम समय लगेगा| |<br />
                    <br />


                </p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

