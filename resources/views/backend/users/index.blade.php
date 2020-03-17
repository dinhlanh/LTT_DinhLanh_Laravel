@extends('backend.layouts.master')
@section('content-header')
	<!-- Content Header -->
	<div class="container-fluid">
	    <div class="row mb-2">
	        <div class="col-sm-6">
	            <h1 class="m-0 text-dark">Danh sách người dùng</h1>
	            
	        </div><!-- /.col -->
	        <div class="col-sm-6">
	            <ol class="breadcrumb float-sm-right">
	                <li class="breadcrumb-item"><a href="#">Home</a></li>
	                <li class="breadcrumb-item"><a href="#">Admin</a></li>
	                <li class="breadcrumb-item active">Danh sách</li>
	            </ol>
	        </div><!-- /.col -->
	    </div><!-- /.row -->
	</div><!-- /.container-fluid -->
	<!-- Content -->
	<div class="container-fluid">
	    <!-- Main row -->
	    <div class="row">

	        <div class="col-12">
	            <div class="card">
	                <div class="card-header">
	                    <h3 class="card-title">Danh sách Admin</h3><br>
	                    <a href="{{ route('users.create')}}" type="submit" class="btn btn-success">
                            <i class="fa fa-plus-square" aria-hidden="true"></i> Thêm mới
                        </a>
                        @if(session('thongbao'))
                            <div class="alert alert-info">
                                {{session('thongbao')}}
                            </div>
                        @endif
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
						
						
	                    <div class="card-tools">
	                        <div class="input-group input-group-sm" style="width: 150px;">
	                            <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

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
	                            <th>Số điện thoại</th>
	                            {{-- <th>Content</th> --}}
	                            <th>Hành động</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                       	@foreach($users as $key => $user)
	                       		<tr style="text-align: center;">
	                       			<td>{{ $user->id }}</td>
	                       			<td>{{ $user->mail_address }}</td>
	                       			<td>{{ $user->name }}</td>
	                       			<td>
	                       				<ul class="list-inline">
	                                        <li class="list-inline-item">
	                                            <img class="table-avatar" alt="Avatar" class="avatar" 
	                                                src="{{asset('uploads/users/' . $user->avatar)}}"
	                                                 style="max-inline-size: 100px; border-radius: 50%; ">
	                                        </li>
                                		</ul>
	                       			</td>
	                       			<td>{{ $user->address }}</td>
	                       			<td>{{ $user->phone }}</td>
	                       			{{-- <td>{{ $user->content }}</td> --}}
	                       			<td>
	                       				<a data-toggle="tooltip" title="Xem chi tiết" href="{{ route('users.show',$user->id)}}" type="submit" class="btn btn-warning">
                                        <i class="fa fa-info-circle" aria-hidden="true"></i>
                                    </a>
                                        <a data-toggle="tooltip" title="Sửa" href="{{route('users.edit',$user->id)}}" type="submit" class="btn btn-primary">
                                            <i class="fa fa-edit" aria-hidden="true"></i>
                                        </a>
                                        <a data-toggle="tooltip" title="Xóa" href="{{ route('users.destroy',$user->id)}}" type="submit" class="btn btn-danger">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </a>
                                        {{-- <form action="{{ route('users.destroy', $user->id ) }}" method="POST">
                                        	@csrf
                                        	<input name="_method" type="hidden" value="DELETE">
		                                    {{ csrf_field() }}
		                                    {{ method_field('DELETE') }}
		                                    <button type="submit" class="btn btn-warning">
		                                        <i class="fa fa-btn fa-trash"></i>Xoá
		                                    </button>
		                                </form> --}}
		                       		</td>
	                       		</tr>
	                       	@endforeach

	                        </tbody>
	                    </table>
	                    {!! $users->links() !!}
	                    {{-- {{$users->links()}} --}}
	                </div>
	                <!-- /.card-body -->
	            </div>
	            <!-- /.card -->
	        </div>
	    </div>
	    <!-- /.row (main row) -->
	</div><!-- /.container-fluid -->
@endsection