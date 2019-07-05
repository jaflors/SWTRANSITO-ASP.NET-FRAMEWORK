<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="vista2.aspx.cs" Inherits="swtransito.Views.Administrador.vista2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../Content/Css/Stilo.css" rel="stylesheet" />
    <link href="../../Content/Css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-12">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.1.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.2.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.3.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.4.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.5.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.6.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.7.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.8.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.9.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.10.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.11.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.12.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.13.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.14.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.15.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.16.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.17.jpg" />
                        </div>
                        <div class="swiper-slide col-md-4">
                            <img style="width: 100%" src="../../Content/IMG/2.18.jpg" />
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script src="../../Content/js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            effect: 'coverflow',
            grabCursor: true,
            centeredSlides: true,
            slidesPerView: 'auto',
            coverflowEffect: {
                rotate: 50,
                stretch: 0,
                depth: 100,
                modifier: 1,
                slideShadows: true,
            },
            autoplay: {
                delay: 3500,
                disableOnInteraction: false,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            pagination: {
                el: '.swiper-pagination',
            },
        });
    </script>
</asp:Content>
