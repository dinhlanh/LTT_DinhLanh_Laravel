@extends('backend.layouts.master')
@section('content-header')
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Chi tiết admin</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Chi tiết admin</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <!-- Main row -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                        <div class="card-header">
                        	<a href="{{ route('users.index')}}" type="submit" class="btn btn-danger">
                            <i class="fa fa-backward" aria-hidden="true"></i> &nbsp Back
                        </a>
                            <div class="form-group">
                                <h4>Tên mail: </h4>{{ $users->mail_address }}
                            </div>
                            <div class="panel panel-default">
                            <div class="form-group">
                                <h4>Tên admin :</h4>{{ $users->name }}
                            </div>

                            <div class="form-group">
                                <h4>Ảnh :</h4>
                                <img class="table-avatar" alt="Avatar" class="avatar" 
                                 src="{{asset('uploads/users/' . $users->avatar)}}"
                                 style="max-inline-size: 200px; ">
                            </div>
                            <div class="form-group">
                                <h4>Địa chỉ :</h4>{{ $users->address }}
                            </div>
                            <div class="form-group">
                                <h4>Sô điện thoại :</h4>{{ $users->phone }}
                            </div>
                            <div class="form-group">
                                <h4>Mô tả admin :</h4>{!! $users->content !!}
                            </div>
                            <div class="form-group">
                                <h4>Quyền :</h4> 
                                @if($users->role==0)
                                    <span>Staff (Nhân viên)</span>:
                                @elseif($users->role==1)
                                    <span>Admin (Quản trị viên)</span>:
                                @endif
                                {{ $users->role }}
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection