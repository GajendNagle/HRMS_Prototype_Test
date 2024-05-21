<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Eligible_For_Schemes_For_Public_Student.aspx.cs" Inherits="mis_Registration_Eligible_For_Schemes_For_Public_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">पात्रता आधारित अधिकारिता - एक नवीन पहेल</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>

                    <li class="breadcrumb-item active">पात्रता आधारित अधिकारिता - एक नवीन पहेल</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Applications </legend>
                <div class="row">
                    <div class="col-md-3">
                        <label>Academic Year <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>

                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>क्या छात्र का परिवार संबल परिवार है?<span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option selected="selected" value="0">-Select-</option>

                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>लिंग  <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>क्या मध्य प्रदेश का मूल निवासी है? <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-3">
                        <label>जाति वर्ग <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>उपजाति  <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>कक्षा  <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>कक्षा का बिषय <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-3">
                        <label>क्या अल्पसंख्यक है? <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>क्या सरकारी स्कूल में अध्ययनरत है? <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>कितने भाई/बहन हैं? <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>क्या विमुक्त/घुमक्कड/अर्ध-घुमक्कड जाति है? <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-3 justify-content-center text-danger font-bold">
                    क्या परिवार से केवल दो ही छात्रों द्वारा छात्रवृति ली जा रही है(प्रमाणपत्र संलग्न है?)
                </div>
                <div class="row mt-4">
                    <div class="col-md-3">
                        <label>क्या छात्र छात्रावास मे रहता है? <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>क्या बीपीएल कार्ड धारक है? <span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>क्या विकलांगता प्रमाणपत्र है?<span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-3">
                        <label>क्या पिता स्वर्गवासी हैं?<span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>पिता का व्यवसाय<span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>माता का व्यवसाय<span class="text-danger">*</span></label>
                        <select class="form-control mt-2">
                            <option value="0">-Select-</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>परिवार की वार्षिक आय<span class="text-danger">*</span></label>
                        <input type="text" class="form-control mt-2" />
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-2 mt-4 py-2">
                        <button text="" type="submit" class="btn btn-success btn-rounded" >Save</button>
                        <button text="" type="submit" class="btn btn-danger btn-rounded" >Clear</button>
                    </div>
                </div>

            </fieldset>




        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

