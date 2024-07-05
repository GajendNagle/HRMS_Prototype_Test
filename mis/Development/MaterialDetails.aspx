<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MaterialDetails.aspx.cs" Inherits="mis_Development_MaterialDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Project Details</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>PROJECT DETAILS/परियोजना विवरण</legend>
                <div runat="server" id="Fieldset1" style="display: block">


                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table5" class="table table-bordered table-responsive-lg text-center " runat="server">
                                <thead>
                                    <tr valign="middle">
                                        <th>S.No.</th>
                                        <th>Material
                                        </th>
                                        <th>Brand</th>
                                        <th>No Of Bag
                               
                                        </th>
                                        <th>Price</th>
                                        <th>Final Price</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr valign="middle">
                                        <td>1
                                        </td>
                                        <td>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>

                                                <option value="1">Cement</option>
                                                <option value="2">Bricks</option>
                                                <option value="3">Steel </option>
                                                <option value="4">Tiles</option>
                                            </select></td>
                                        <td>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="1">JK Cement</option>
                                                <option value="2">Ultra Tech Cement</option>
                                                <option value="3">Ambuja Cement</option>
                                            </select></td>
                                        <td>
                                            <input type="text" id="input1" name="input1"></td>
                                        <td>
                                            <input type="text" id="input2" name="input1"></td>
                                        <td>
                                            <input type="text" id="input3" name="input1"></td>


                                    </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>



                    <div class="row justify-content-center">
                        <div class="col-md-3 text-center mt-4">
                            <div class="form-group">
                                <button type="button" class="Alert-Save1 btn btn-success btn-rounded ">
                                    Save/Next
                                </button>
                                <%-- <asp:Button runat="server" class="Alert-Save2 btn btn-success btn-rounded" Text="Save/Next"  />--%>
                                <a href="#" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">


    <script>
        // Get references to the input and result elements
        const input1 = document.getElementById('input1');
        const input2 = document.getElementById('input2');
        const input3 = document.getElementById('input3');

        // Function to update the result
        function updateResult() {
            const value1 = parseFloat(input1.value) || 0;
            const value2 = parseFloat(input2.value) || 0;
            const sum = value1 * value2;
            input3.value = sum;
        }

        // Add event listener to the result input element
        input3.addEventListener('click', updateResult);
    </script>
</asp:Content>

