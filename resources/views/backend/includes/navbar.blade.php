<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="{{ route('users.index') }}" class="nav-link">Trang chủ</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="" class="nav-link">Liên Hệ</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form action="{{route('users.search')}}" class="form-inline ml-3" method="get" role="search">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Tìm Kiếm" aria-label="Search" name="search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Language Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="flag-icon flag-icon-vn"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right p-0">
          <a href="{{route('users.language',['vi'])}}" class="dropdown-item active">
            <i class="flag-icon flag-icon-vn mr-2"></i> Việt Nam
          </a>
          <a href="{{route('users.language',['en'])}}" class="dropdown-item">
            <i class="flag-icon flag-icon-us mr-2"></i> English
          </a>
          <a href="#" class="dropdown-item">
            <i class="flag-icon flag-icon-de mr-2"></i> German
          </a>
          <a href="#" class="dropdown-item">
            <i class="flag-icon flag-icon-fr mr-2"></i> French
          </a>
          <a href="#" class="dropdown-item">
            <i class="flag-icon flag-icon-es mr-2"></i> Spanish
          </a>
        </div>
      </li>
      <!-- Messages Dropdown Menu -->
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
          <span>Đăng Xuất</span>
        </a>
      </li>
    </ul>
  </nav>