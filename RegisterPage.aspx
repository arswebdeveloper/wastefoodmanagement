<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="WasteFoodManagement.RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container my-5">
        <div class="form-group">
            <label for="TextBox1">First Name</label>
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox2">Last Name</label>    
            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox3">Contact No</label>
            <asp:TextBox ID="TextBox3" CssClass="form-control" TextMode="Phone" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox4">Email </label>
            <asp:TextBox ID="TextBox4" CssClass="form-control" TextMode="Email" aria-describedby="emailHelp" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox5">Password</label>
            <asp:TextBox ID="TextBox5" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
            <small id="passhelp" class="form-text text-muted">We'll never share your password with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="TextBox6">Confirm password</label>
            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="TextBox5" ControlToValidate="TextBox6" runat="server" ErrorMessage="Passwords does not matched!" CssClass="text-danger"></asp:CompareValidator>
        </div>
        <div class="form-group form-check">
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <label class="form-check-label" for="CheckBox1">Remember Me</label>
        </div>
        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
        <div class="d-flex justify-content-center">
            <asp:Button CssClass="btn btn-primary mx-3" OnClick="Register_click" Text="Register" runat="server" />
            <button id="endbtn1" type="button" class="btn btn-danger mx-3" onclick="window.location.href='LoginPage.aspx'">Cancel</button>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="text-danger"></asp:Label>
    </div>

    <div class="modal fade" id="myModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row d-flex justify-content-center">
                        <img src="Content/Asset/correct.gif" class="w-50" />
                    </div>
                    <div class="row d-flex justify-content-center">
                        <h5 class="my-4" style="color: green; font-weight: bold">Registration Successful!</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openModal() {
            $('#myModal').modal('show');
        }
    </script>

</asp:Content>
