<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CommunityAndDiscussionForm.aspx.cs" Inherits="mis_SpecialSchoolManagement_CommunityAndDiscussionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .underline {
            text-decoration: underline;
        }

        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
        }


        #showAllDetails {
            display: none;
        }
        ul li {
            list-style-type:none;
        }
        .liComment:hover{
            background-color:lightgray;
            padding:0 10px;
        }
    </style>
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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Special School Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Community & Discussion Forms</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <%-- <div class="card-header">
         <div class="row">
             <div class="col-lg-12">
                 <h5 class="card-title">Student Achievement Report/ छात्र उपलब्धि ट्रैकिंग
                 </h5>
             </div>
         </div>
     </div>--%>
        <div class="card-body">
            <fieldset>
                <legend>Discussion Topic Master / चर्चा विषय मास्टर</legend>
                <div class="row align-items-end">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Topic / विषय दर्ज करें<span style="color: red">*</span></label>
                            <input name="topic" type="text" class="form-control" autocomplete="off" placeholder="Enter Topic" />

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Upload Document / दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                            <input name="document" type="file" class="form-control" autocomplete="off" required />

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Link / लिंक दर्ज करें</label>
                            <input name="topic" type="text" class="form-control" autocomplete="off" placeholder="Topic Link" />

                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Comment / टिप्पणी दर्ज करें</label>
                            <input name="topic" type="text" class="form-control" autocomplete="off" placeholder="Enter Comment" />

                        </div>
                    </div>


                </div>


                <div class="row">
                    <%--<div class="col-md-3"> </div>--%>
                    <div class="col-md-6">
                        <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                        <a href="CommunityAndDiscussionForm.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                    </div>
                    <%--<div class="col-md-3"></div>--%>
                </div>

            </fieldset>



            <fieldset>
                <legend>Discussion Chat Box/ चर्चा चैट बॉक्स</legend>
                <div class="row align-items-end">


                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Select Topic / विषय चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddl_value">
                                <option value="Select">Select</option>
                                <option value="Human Resource Management">Human Resource Management</option>
                                <option value="Impact of Social Media on Mental Health">Impact of Social Media on Mental Health</option>
                                <option value="Climate Change and Global Warming">Climate Change and Global Warming</option>
                                <option value="The Role of Education in Society">The Role of Education in Society</option>
                                <option value="Artificial Intelligence and its Future Applications">Artificial Intelligence and its Future Applications</option>
                            </select>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="row align-items-end">
                        <div class="col-md-12 mx-4">
                            <button type="button" onclick="myFunction()" class=" btn btn-success btn w-lg btn-border">Search</button>
                            <a href="CommunityAndDiscussionForm.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>



                <div id="showDetail1" style="display: none;" class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">
                                <div class="col-md-6 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr style="white-space: nowrap" class="text-center">
                                                    <th>Topic / विषय</th>
                                                    <th>Topic Link / विषय लिंक</th>
                                                    <th>Document / दस्तावेज़</th>
                                                    <th>Comment / टिप्पणी</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="text-center">
                                                    <td>Human Resource Management</td>
                                                    <td>
                                                        <a href="https://en.wikipedia.org/wiki/Human_resource_management" target="_blank">https://en.wikipedia.org/wiki/Human_resource_management </a>
                                                        <%--class="btn btn-info px-5"--%>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button>
                                                    </td>
                                                    <td>

                                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info btn-rounded w-55" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"><i class='far fa-comment'></i></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>


                    </div>
                </div>

                <div id="showDetail2" style="display: none" class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">
                                <div class="col-md-6 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr style="white-space: nowrap" class="text-center">
                                                    <th>Topic / विषय</th>
                                                    <th>Document / दस्तावेज़</th>
                                                    <th>Topic Link / </th>
                                                    <th>Comment</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="text-center">
                                                    <td>Impact of Social Media on Mental Health</td>

                                                    <td>

                                                        <a href="https://en.wikipedia.org/wiki/Digital_media_use_and_mental_health" target="_blank">https://en.wikipedia.org/wiki/Digital_media_use_and_mental_health</a>

                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button>

                                                    </td>
                                                    <td>

                                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info btn-rounded w-55" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"><i class='far fa-comment'></i></asp:LinkButton>
                                                    </td>

                                                </tr>




                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>


                        </fieldset>



                    </div>
                </div>

                <div id="showDetail3" style="display: none;" class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">
                                <div class="col-md-6 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr style="white-space: nowrap" class="text-center">
                                                    <th>Topic / विषय</th>
                                                    <th>Document / दस्तावेज़</th>
                                                    <th>Topic Link / </th>
                                                    <th>Comment</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="text-center">
                                                    <td>Climate Change and Global Warming</td>
                                                    <td>
                                                        <a href="https://en.wikipedia.org/wiki/Climate_Change_and_Global_Warming" target="_blank">https://en.wikipedia.org/wiki/Climate_Change_and_Global_Warming</a>

                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button>

                                                    </td>

                                                    <td>

                                                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-info btn-rounded w-55" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"><i class='far fa-comment'></i></asp:LinkButton>
                                                    </td>
                                                </tr>



                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>


                        </fieldset>



                    </div>
                </div>

                <div id="showDetail4" style="display: none;" class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">
                                <div class="col-md-6 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr style="white-space: nowrap" class="text-center">
                                                    <th>Topic / विषय</th>
                                                    <th>Document / दस्तावेज़</th>
                                                    <th>Topic Link / </th>
                                                    <th>Comment</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="text-center">
                                                    <td>The Role of Education in Society</td>
                                                    <td>

                                                        <a href="https://en.wikipedia.org/wiki/The_Role_of_Education_in_Society" target="_blank">https://en.wikipedia.org/wiki/The_Role_of_Education_in_Society</a>

                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button>

                                                    </td>

                                                    <td>

                                                        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-info btn-rounded w-55" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"><i class='far fa-comment'></i></asp:LinkButton>
                                                    </td>

                                                </tr>




                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>


                        </fieldset>



                    </div>
                </div>

                <div id="showDetail5" style="display: none;" class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">
                                <div class="col-md-6 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr style="white-space: nowrap" class="text-center">
                                                    <th>Topic / विषय</th>
                                                    <th>Document / दस्तावेज़</th>
                                                    <th>Topic Link / </th>
                                                    <th>Comment</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr class="text-center">
                                                    <td>Artificial Intelligence and its Future Applications</td>
                                                    <td>
                                                        <a href="https://en.wikipedia.org/wiki/Artificial_Intelligence_and_its_Future_Applications" target="_blank">https://en.wikipedia.org/wiki/Artificial_Intelligence_and_its_Future_Applications</a>

                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button>

                                                    </td>

                                                    <td>

                                                        <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-info btn-rounded w-55" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"><i class='far fa-comment'></i></asp:LinkButton>
                                                    </td>

                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>


                        </fieldset>



                    </div>
                </div>

            </fieldset>


            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV" style="background-color: lightgray">
                            <h4 class="modal-title" id="myLargeModalLabel1">Topic :- Human Resource Management</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <fieldset>
                                <legend>Comments</legend>
                                <div class="card-body">

                                    <ul>
                                        <li class="liComment">
                                            <div class="row form-group">
                                                <div class="col-md-12">
                                                    <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'>
                                                        <span style="font-size: 20px">&nbsp; Ankit Jain &nbsp;&nbsp;&nbsp; 
                 <span style="font-size: 12px">8h</span>
                                                        </span>
                                                    </i>
                                                    <br />
                                                    <label>HR professionals are essential in mediating conflicts and ensuring a harmonious workplace.</label>
                                                    <%--<input name="Comment" type="text" class="form-control text-dark" autocomplete="off" value="HRM plays a critical role in maximizing employee performance" disabled />--%>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="liComment">
                                            <div class="row form-group">
                                                <div class="col-md-12">
                                                    <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'>
                                                        <span style="font-size: 20px">&nbsp; Pooja Patel &nbsp;&nbsp;&nbsp; 
                 <span style="font-size: 12px">6h</span>
                                                        </span>
                                                    </i>
                                                    <br />
                                                    <label>Promoting diversity in the workplace enhances creativity and innovation.</label>
                                                    <%--<input name="Comment" type="text" class="form-control text-dark" autocomplete="off" value="HRM plays a critical role in maximizing employee performance" disabled />--%>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="liComment">
                                            <div class="row form-group">
                                                <div class="col-md-12">
                                                    <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'>
                                                        <span style="font-size: 20px">&nbsp; Riya Verma &nbsp;&nbsp;&nbsp; 
                 <span style="font-size: 12px">2h</span>
                                                        </span>
                                                    </i>
                                                    <br />
                                                    <label>Effective HRM focuses on developing employees' skills and capabilities</label>
                                                    <%--<input name="Comment" type="text" class="form-control text-dark" autocomplete="off" value="HRM plays a critical role in maximizing employee performance" disabled />--%>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="liComment">
                                            <div class="row form-group">
    <div class="col-md-12">
        <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'>
            <span style="font-size: 20px">&nbsp; Aarti Sharma &nbsp;&nbsp;&nbsp; 
        <span style="font-size: 12px">25m</span>
            </span>
        </i>
        <br />
        <label>HRM plays a critical role in maximizing employee performance</label>
        <%--<input name="Comment" type="text" class="form-control text-dark" autocomplete="off" value="HRM plays a critical role in maximizing employee performance" disabled />--%>
    </div>
</div>
                                        </li>
                                       <li class="liComment">
                                           <div class="row form-group">
    <div class="col-md-12">
        <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'>
            <span style="font-size: 20px">&nbsp; Rahul Gupta &nbsp;&nbsp;&nbsp; 
        <span style="font-size: 12px">10m</span>
            </span>
        </i>
        <br />
        <label>HRM plays a crucial role in fostering a positive work environment</label>
        <%--<input name="Comment" type="text" class="form-control text-dark" autocomplete="off" value="HRM plays a critical role in maximizing employee performance" disabled />--%>
    </div>
</div>
                                       </li>

                                        <li  class="liComment">

                                            <div class="row form-group" id="HiddenComment1" style="display: none;">
    <div class="col-md-12">
        <i class='fab fa-creative-commons-by align-items-start' style='font-size: 30px'>
            <span style="font-size: 20px">&nbsp; Vedanshi Agarwal &nbsp;&nbsp;&nbsp; 
        <span style="font-size: 12px">Just Now</span>
            </span>
        </i>
        <br />
        <label>Investing in training programs leads to a more skilled workforc.</label>
        <%--<input name="Comment" type="text" class="form-control text-dark" autocomplete="off" value="HRM plays a critical role in maximizing employee performance" disabled />--%>
    </div>
</div>
                                        </li>

                                    </ul>



















                                    

                                    





                                    





                                    <br />
                                    <div class="row form-group">
                                        <div class="col-md-8">
                                            <label>Add a Comment</label>
                                            <input name="topic" type="text" id="AddComment" class="form-control" autocomplete="off" placeholder="Reply On Comment" />
                                        </div>
                                        <div class="col-md-4">
                                            <label>Upload Document</label>
                                            <input name="document" type="file" class="form-control" autocomplete="off" required />
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success Alert-Success " onclick="FbotonOn()">
                                    Confirm</button>
                                <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>








                <%-- <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV">
                            <h4 class="modal-title" id="myLargeModalLabel1">Comments</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <div class="row form-group">
                                <div class="col-md-8">
                                    <i class='fab fa-creative-commons-by' style='font-size: 36px'></i>
                                    <label style="margin-bottom: 20px">Aarti Sharma</label>
                                    <input name="Comment" type="text" class="form-control text-dark" autocomplete="off" value="HRM plays a critical role in maximizing employee performance" disabled />
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-8">
                                    <label>Reply On Comment</label>
                                    <input name="topic" type="text" class="form-control" autocomplete="off" placeholder="Reply On Comment" />
                                </div>
                                <div class="col-md-4">
                                    <label>Upload Document</label>
                                    <input name="document" type="file" class="form-control" autocomplete="off" required />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" onclick="FbotonOn()">Confirm</button>
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>--%>





                <div class="modal  fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header" style="background-color: var(--vz-primary);">
                                <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                                <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel2">Student's Uploaded Document/छात्र द्वारा अपलोड किया गया दस्तावेज़</h3>
                                <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <img src="../../img/10thMarksheet.jpg" />
                            </div>
                        </div>
                    </div>


                </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function FbotonOn() {
            var HiddenComment1 = document.getElementById('HiddenComment1');

            var AddComment = document.getElementById('AddComment');


            if (AddComment.value === "") {
                HiddenComment1.style.display = 'none';
            }
            else {
                HiddenComment1.style.display = 'block';
            }

        }
    </script>
    <script>
        function myFunction() {
            var ddl_value = document.getElementById('ddl_value');
            var showDetail1 = document.getElementById('showDetail1');
            var showDetail2 = document.getElementById('showDetail2');
            var showDetail3 = document.getElementById('showDetail3');
            var showDetail4 = document.getElementById('showDetail4');
            var showDetail5 = document.getElementById('showDetail5');

            if (ddl_value.value === "Select") {
                showDetail1.style.display = 'none';
                showDetail2.style.display = 'none';
                showDetail3.style.display = 'none';
                showDetail4.style.display = 'none';
                showDetail5.style.display = 'none';
            }
            else if (ddl_value.value === "Human Resource Management") {
                showDetail1.style.display = 'block';
                showDetail2.style.display = 'none';
                showDetail3.style.display = 'none';
                showDetail4.style.display = 'none';
                showDetail5.style.display = 'none';
            }
            else if (ddl_value.value === "Impact of Social Media on Mental Health") {
                showDetail1.style.display = 'none';
                showDetail2.style.display = 'block';
                showDetail3.style.display = 'none';
                showDetail4.style.display = 'none';
                showDetail5.style.display = 'none';
            }
            else if (ddl_value.value === "Climate Change and Global Warming") {
                showDetail1.style.display = 'none';
                showDetail2.style.display = 'none';
                showDetail3.style.display = 'block';
                showDetail4.style.display = 'none';
                showDetail5.style.display = 'none';
            }
            else if (ddl_value.value === "The Role of Education in Society") {
                showDetail1.style.display = 'none';
                showDetail2.style.display = 'none';
                showDetail3.style.display = 'none';
                showDetail4.style.display = 'block';
                showDetail5.style.display = 'none';
            }
            else if (ddl_value.value === "Artificial Intelligence and its Future Applications") {
                showDetail1.style.display = 'none';
                showDetail2.style.display = 'none';
                showDetail3.style.display = 'none';
                showDetail4.style.display = 'none';
                showDetail5.style.display = 'block';
            }
            else {
                showDetail1.style.display = 'none';
                showDetail2.style.display = 'none';
                showDetail3.style.display = 'none';
                showDetail4.style.display = 'none';
                showDetail5.style.display = 'none';
            }
        }
    </script>


</asp:Content>

