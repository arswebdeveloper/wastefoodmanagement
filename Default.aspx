<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WasteFoodManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Content/Asset/bg.jpg" class="d-block w-100 Citem" />
                <div class="carousel-caption d-none d-md-block">
                    <h5>GIVE YOUR HANDS TO SERVE AND HEARTS TO LOVE.</h5>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Content/Asset/donate1.jpg" class="d-block w-100 Citem" />
                <div class="carousel-caption d-none d-md-block">
                    <h5>NO ONE HAS EVER BECOME POOR FROM GIVING.</h5>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Content/Asset/img.jpg" class="d-block w-100 Citem" />
                <div class="carousel-caption d-none d-md-block">
                    <h5>AMAZING THANK YOU FOR THE DONATION MESSAGES.</h5>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>

    <%--<div class="container my-5">
        <h1 class="mb-3">Choose options:</h1>
        <ol class="ml-5">
            <li class="h3">
                <a href="LoginPage.aspx">Login here</a>
            </li>
            <li class="h3">
                <a href="RegisterPage.aspx">Sign up here</a>
            </li>
        </ol>
    </div>--%>
</asp:Content>
