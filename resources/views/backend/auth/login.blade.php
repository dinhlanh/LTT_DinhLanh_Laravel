<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin LTT-DDL</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/admin/plugins/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <link rel="stylesheet" href="/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <link rel="stylesheet" href="/admin/plugins/jqvmap/jqvmap.min.css">
        <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
        <link rel="stylesheet" href="/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <link rel="stylesheet" href="/admin/plugins/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" href="/admin/plugins/summernote/summernote-bs4.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    </head>
    <body class="hold-transition login-page" style="background-image: url(https://www.ecopetit.cat/wpic/mpic/149-1492530_neon-mask-wallpaper-4k.jpg);">
        <div class="login-box">
            <div class="login-logo">
                <a href="{{ route('login.form')}}"><h1 style="color: orange">LifeTime-DDL</h1></a>
            </div>
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg">Sign in to start your session</p>
                    <form action="{{ route('login.store')}}" method="post">
                        @csrf
                        @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                        <div class="input-group mb-3">
                            <input type="email" name="mail_address" class="form-control"
                            placeholder="Mail_address" value="{{ old('mail_address') }}"
                            required autocomplete="mail_address" autofocus>
                            @error('mail_address')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" name="password" class="form-control"placeholder="Password"
                            required autocomplete="current-password" value="{{ old('password') }}">
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="icheck-primary">
                                    <input type="checkbox" id="remember" name="remember" {{ old('remember') ? 'checked' : ''}}>
                                    <label for="remember">
                                        Remember Me
                                    </label>
                                </div>
                            </div>
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                            </div>
                        </div>
                        
                        @if(session('error'))
                        <div class="alert alert-danger">
                            <p>{{session('error')}}</p>
                        </div>
                        @endif
                    </form>
                    <div class="social-auth-links text-center mb-3">
                        <p>- OR -</p>
                        <a href="https://www.facebook.com/" class="btn btn-block btn-primary">
                            <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
                        </a>
                        <a href="#" class="btn btn-block btn-danger">
                            <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
                        </a>
                    </div>
                    <p class="mb-1">
                        @if (Route::has('password.request'))
                        <a class="btn btn-link" href="{{ route('password.request') }}">
                            {{ __('Forgot Your Password?') }}
                        </a>
                        @endif
                    </p>
                    <p class="mb-0">
                        <a href="#" class="btn btn-link">{{ __('Register a new membership') }}</a>
                    </p>
                </div>
            </div>
        </div>
        <script src="/admin/plugins/jquery/jquery.min.js"></script>
        <script src="/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script>
        $.widget.bridge('uibutton', $.ui.button)
        </script>
        <script src="/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/admin/plugins/chart.js/Chart.min.js"></script>
        <script src="/admin/plugins/sparklines/sparkline.js"></script>
        <script src="/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
        <script src="/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
        <script src="/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
        <script src="/admin/plugins/moment/moment.min.js"></script>
        <script src="/admin/plugins/daterangepicker/daterangepicker.js"></script>
        <script src="/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <script src="/admin/plugins/summernote/summernote-bs4.min.js"></script>
        <script src="/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
        <script src="/admin/dist/js/adminlte.js"></script>
        <script src="/admin/dist/js/pages/dashboard.js"></script>
        <script src="/admin/dist/js/demo.js"></script>
    </body>
</html>
