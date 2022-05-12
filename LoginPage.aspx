<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WasteFoodManagement.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
	<style>
		.Iconhover{
			position: relative;
		}
		#toggle_pwd
        {
            cursor: pointer;
			position: absolute;
			top: 50%;
			right: 42%;
			transform: translate(-30%,-60%);
        }
	</style>
	<script>
		$(function () {
            $("#toggle_pwd").click(function () {
                $(this).toggleClass("fa-eye fa-eye-slash");
                var type = $(this).hasClass("fa-eye-slash") ? "text" : "password";
                $("[id*=psw]").attr("type", type);
            });
		});

        function openModal() {
			$('#myModal').modal('show');
		}

		
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<div class="my-5">
		<div class="container">
			<asp:HiddenField ID="HiddenField1" runat="server" />
			<div class="form-group">
				<label for="uname" class="col-md-2"><b>Username</b></label>
				<asp:TextBox ID="uname" runat="server" CssClass="col-md-5"></asp:TextBox>
			</div>
			<div class="form-group Iconhover">
				<label for="psw" class="col-md-2"><b>Password</b></label>
				<asp:TextBox ID="psw" runat="server" CssClass="col-md-5" TextMode="Password"></asp:TextBox>
				<span id="toggle_pwd" class="fa fa-fw fa-eye field_icon"></span>
			</div>
			<div class="form-group">
				<span class="col-md-5">
					<asp:Button ID="login" runat="server" Text="Login" class="btn btn-primary px-3" OnClick="login_Click" />
				</span>
				<span class="col-md-5">
					<asp:Button ID="register" runat="server" Text="Sign Up" class="btn btn-danger px-3" PostBackUrl="~/RegisterPage.aspx"/>
				</span>
			</div>
			<asp:Label ID="Label1" runat="server" CssClass="text-danger"></asp:Label>
		</div>
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
                        <img src="Content/Asset/correct.gif" class="w-25" />
                    </div>
                    <div class="row d-flex justify-content-center">
                        <h5 class="my-4" style="color: green; font-weight: bold">Login Successfully!</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
