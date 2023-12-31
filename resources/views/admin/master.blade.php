<!DOCTYPE html>
<html lang="en">
@include('layouts.admin.header')
@php
$url = Request::url();
@endphp

<style>
    @font-face {
        src: url('public/admin_asset/fonts/hind/Hind_Siliguri_Light-Regular.ttf');
        font-family: hindis;
    }

    @font-face {
        src: url('public/admin_asset/fonts/hind/Hind_Siliguri-Bold.ttf');
        font-family: hindis_bold;
    }

    @media (min-width: 300px) {
        html {
            font-size: .60rem;
        }

        section#first-section {
            margin: 0px !important;
        }
    }

    @media (min-width: 500px) {
        html {
            font-size: .60rem;
        }

        section#first-section {
            margin: 0;
        }
    }


    @media (min-width: 591px) {
        html {
            font-size: .80rem;
        }

        section#first-section {
            margin: 0;
        }
    }

    @media (min-width: 768px) {
        html {
            font-size: 1rem;
        }
    }

    @media (min-width: 992px) {
        html {
            font-size: .70rem;
        }
    }

    @media (min-width: 1200px) {
        html {
            font-size: .90rem;
        }
    }

    @media (min-width: 1306px) {
        html {
            font-size: 1rem;
        }
    }

    * {
        margin: 0;
        padding: 0;
    }

    body {
        font-family: hindis !important;
        overflow-x: hidden;


    }

    .dark-mode {
        background-color: #302525;
        color: white;
    }

    .dark-mode-modal {
        background-color: #463333;
        color: white;
    }

    <?php if(CurrSessionMode() == 'dark'){ ?> .card {
        background-color: #463333;
        color: white;
    }

    .row-card-no-pd {
        background-color: #281e1e;
        color: white;
    }

    <?php }?> .notification-unseen {
        background-color: cyan
    }
</style>
<style>
    form.navbar-left.navbar-form.nav-search.mr-md-3 {
        display: none;
    }

    @media only screen and (max-width: 600px) {
        span.text-1 {
            display: none;
        }

        span.responsive-1 i {
            padding: 0px 10px 0px 10px;
        }

        .col-6 {
            flex: 0 0 100%;
            max-width: 100%;
        }

        a.logo {
            font-size: 15px;
        }


    }

    @media only screen and (max-width: 400px) {
        a.logo {
            font-size: 11px;
        }
    }

    .btn-danger {
        background-color: #b7111b !important;
    }

    .btn-success {
        background-color: #1f5e21 !important;
    }

    .btn {
        font-weight: 900 !important;
    }
</style>




<body id="main-body" data-background-color="@if (CurrSessionMode() == 'dark') dark @else white @endif">
    <div class="wrapper">
        <!--<div class="wrapper sidebar_minimize">-->
        @include('layouts.admin.common.main_header')
        @include('layouts.admin.common.sidebar')


        <div class="main-panel">
            @yield('content')
            @include('layouts.admin.footer')
        </div>

    </div>
    @include('layouts.admin.footerlink')

</body>

</html>
