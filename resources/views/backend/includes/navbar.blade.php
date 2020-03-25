<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="{{ route('users.index') }}" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form action="{{route('users.search')}}" class="form-inline ml-3" method="get" role="search">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" name="search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      {{-- @if(Auth::check()) --}}
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="fa fa-user" aria-hidden="true"></i>
          <span>Xin Chào {{ Auth::user()->name }}</span>
        </a>
      </li>
      {{-- logout --}}
      <li class="nav-item dropdown">
        <a class="nav-link" href="{{ route('logout' )}}">
          <i class="fa fa-outdent" aria-hidden="true"></i>
          <span>Logout</span>
        </a>
      </li>
      {{-- @endif --}}
    </ul>
  </nav>