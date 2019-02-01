<!DOCTYPE html>
<html>
<head>
    <title>Test technique -@yield('title')</title>

    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">

    <script src="{{ asset('assets/js/jquery.min.js') }}"></script>
</head>
<body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-left">
                    <li>
                        <a href="{{ route('client.index') }}">Clients</a>
                    </li>
                    <li>
                        <a href="{{ route('facture.index') }}">Factures</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        @if(Session::has('success'))
            <div class="alert alert-success">
                {{ Session::get('success') }}
            </div>
        @endif
        @yield('content')
    </div>

<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
</body>
</html>
