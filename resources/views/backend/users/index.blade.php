@extends('backend.layouts.master')
@section('content-header')
	<div class="container-fluid">
	    <div class="row mb-2">
	        <div class="col-sm-6">
	            <h1 class="m-0 text-dark">Danh sách người dùng</h1>
	            
	        </div><!-- /.col -->
	        <div class="col-sm-6">
	            <ol class="breadcrumb float-sm-right">
	                <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
	                <li class="breadcrumb-item"><a href="#">Người dùng</a></li>
	                <li class="breadcrumb-item active">Danh sách</li>
	            </ol>
	        </div>
	    </div>
	</div>
	<div class="container-fluid">
	    <!-- Main row -->
	    <div class="row">

	        <div class="col-12">
	            <div class="card">
	                <div class="card-header">
	                    <h3 class="card-title">Danh sách Admin</h3><br>
	                    @can('create',App\Models\User::class)
	                    <a href="{{ route('users.create')}}" type="submit" class="btn btn-success">
                            <i class="fa fa-plus-square" aria-hidden="true"></i> Thêm mới
                        </a>
                        @endcan
                        {{-- Flash tạo thêm mơi --}}
                        @if(session()->has('thanhcong'))
		                <div class="alert alert-info">
		                    <span style="color: white">{{session()->get('thanhcong')}}</span>
		                </div>

		                @endif
		                @if(session()->has('error'))
		                <div class="alert alert-success">
		                    <span style="color: red">{{session()->get('error')}}</span>
		                </div>
		                @endif
		                {{-- Flash Update --}}
		                @if(session()->has('sua'))
		                <div class="alert alert-info">
		                    <span style="color: white">{{session()->get('sua')}}</span>
		                </div>

		                @endif
		                @if(session()->has('sua-error'))
		                <div class="alert alert-success">
		                    <span style="color: red">{{session()->get('sua-error')}}</span>
		                </div>
		                @endif
		                {{-- Flash Delete --}}
		                @if(session()->has('delete'))
		                <div class="alert alert-info">
		                    <span style="color: white">{{session()->get('delete')}}</span>
		                </div>

		                @endif
		                @if(session()->has('delete-error'))
		                <div class="alert alert-success">
		                    <span style="color: red">{{session()->get('delete-error')}}</span>
		                </div>
		                @endif
	                    <div class="card-tools">
	                        <div class="input-group input-group-sm" style="width: 150px;">
	                            <input type="text" name="table_search" class="form-control float-right" placeholder="Tìm Kiếm">

	                            <div class="input-group-append">
	                                <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="card-body table-responsive p-0">
	                    <table class="table table-striped b-t b-light table-hover">
	                        <thead>
	                        <tr style="text-align: center;">
	                            <th>STT</th>
	                            <th>Địa chỉ mail</th>
	                            <th>Tên người dùng</th>
	                            <th>Ảnh</th>
	                            <th>Địa chỉ</th>
	                            <th>Giới thiệu</th>
	                            <th>Quyền</th>
	                            <th>Số điện thoại</th>
	                            <th>Hành động</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                       	@foreach($users as $key => $user)
	                       		<tr class="text-center">
	                       			<td class="align-middle">{{ $user->id }}</td>
	                       			<td class="align-middle">{{ $user->mail_address }}</td>
	                       			<td class="align-middle">{{ $user->name }}</td>
	                       			<td style="width: 134px;height: 105px;" class="align-middle">
	                       				<ul class="list-inline">
	                                        <li class="list-inline-item">
	                                            <img class="table-avatar" alt="Avatar" class="avatar" 
	                                                src="{{asset('uploads/users/' . $user->avatar)}}"
	                                                 style="width: 100px; border-radius: 50%;height: 100px; ">
	                                        </li>
                                		</ul>
	                       			</td>
	                       			<td class="align-middle">{{ $user->address }}</td>
	                       			<td class="align-middle" style="text-align: left;">{!! $user->content !!}</td>
	                       			<td class="align-middle">
	                       				@if($user->role==1)
		                       				<span class="badge badge-success" data-toggle="tooltip" title="Admin (Quản trị viên)"><i class="fa fa-user-circle" aria-hidden="true" style="font-size: 2.73em;"></i>
		                       				</span>
		                       			@elseif($user->role==0)
		                       				<span class="badge badge-warning" data-toggle="tooltip" title="Staff (Nhân viên)"><i class="fa fa-child" aria-hidden="true" style="font-size: 2.73em;"></i>
		                       				</span>
		                       			@endif
	                       			</td>
	                       			<td class="align-middle">{{ $user->phone }}</td>
	                       			<td class="align-middle">
	                       				<form action="{{ route('users.destroy', $user->id ) }}" method="POST">
                                        {{ csrf_field() }}
                                        {{ method_field('DELETE') }}

	                       				<a data-toggle="tooltip" title="Xem chi tiết" href="{{ route('users.show',$user->id)}}" type="submit" class="btn btn-warning">
                                        	<i class="fa fa-info-circle" aria-hidden="true"></i>
                                    	</a><br>
                                    	@can('update',$user)
                                        <a data-toggle="tooltip" title="Sửa" href="{{route('users.edit',$user->id)}}" type="submit" class="btn btn-primary">
                                            <i class="fa fa-edit" aria-hidden="true"></i>
                                        </a><br>
                                        @endcan
                                        @can('delete',$user)
                                        <button type="submit" class="btn btn-danger" data-toggle="tooltip" title="Xóa">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </button>
                                        @endcan
                                    </form>
	                       		</tr>
	                       	@endforeach

	                        </tbody>
	                    </table>
	                    {!!$users->links()!!}
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
@endsection
