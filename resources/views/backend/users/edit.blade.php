@extends('backend.layouts.master')
@section('content-header')
    <!-- Content Header -->
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Sửa User</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">User</a></li>
                    <li class="breadcrumb-item active">Sửa User</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
    <!-- Content -->
    <div class="container-fluid">
        <!-- Main row -->
        <div class="row">
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Sửa User</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form role="form" method="post" action="{{ route('users.update',$users->id)}}">
                        @csrf
                        {{ method_field('PUT') }}
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <div class="card-body">
                        	@if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <div class="form-group">
	                            <label for="exampleInputEmail1">Địa chỉ mail: </label>
	                            <input type="email" name="mail_address" class="form-control" id="" placeholder="Nhập email" value="{{$users->mail_address}}">
	                            @error('mail_address')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
	                        </div>
                            
                            
	                        {{-- <div class="form-group">
	                            <label for="exampleInputEmail1">Mật khẩu: </label>
	                            <input type="password" name="password" class="form-control" id="" placeholder="Password (Ít nhất 8 kí tự)">
	                        </div> --}}
	                        {{-- @error('password')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror --}}

                            <div class="form-group">
	                            <label for="exampleInputEmail1">Tên: </label>
	                            <input type="text" name="name" class="form-control" id="" placeholder="Nhập tên người dùng" value="{{$users->name}}">
	                        </div>
	                        @error('name')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

                            <div class="form-group">
                                <label>Địa chỉ: </label>
                                <input type="text" name="address" class="form-control" id="" value="{{$users->address}}">
                            </div>
                            @error('address')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

                            <div class="form-group">
	                            <label for="exampleInputEmail1">Số điện thoại: </label>
	                            <input type="tel" id="" name="phone" class="form-control" id="" value="{{$users->phone}}">
	                        </div>
	                        @error('phone')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

                            {{-- <div class="form-group">
                                <label for="exampleInputFile">Hình ảnh: </label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="exampleInputFile" name="avatar" multiple >
                                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>

                                    </div>

                                    <div class="input-group-append">
                                        <span class="input-group-text" id="">Ảnh: </span>
                                    </div>               
                                </div>
                                <div>
                                	<img class="table-avatar" alt="Avatar" class="avatar" 
                                        src="{{asset('uploads/users/' . $users->avatar)}}"
                                         style="max-inline-size: 200px; ">
                                </div>
                                @error('image')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                                @if ( Session::has('images') )
                                <div class="alert alert-danger">{{ Session::get('images') }}</div>
                                @endif
                            </div> --}}

                            <div class="form-group">
                                <label for="exampleInputEmail1">Mô tả user:</label>
                                <textarea name="content" value="{{$users->content}}" class="textarea" placeholder="Place some text here">
	                                {!! $users->content !!}

	                            </textarea>
                            </div>

                            <div class="form-group">
	                            <label>Quyền</label><br>
	                            <label class="radio-inline">
	                            	<input type="radio" name="role" value="1" @if($users->role == 1) {{"checked"}} @endif >Admin
	                            </label>
	                            <label class="radio-inline">
	                            	<input type="radio" name="role" value="0" @if($users->role == 0 ) {{"checked"}} @endif >User
	                            </label>
	                        </div>
                            
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="{{ route('users.index') }}" class="btn btn-warning" id=""><i class="fa fa-asterisk" aria-hidden="true"> SỬA</i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- /.row (main row) -->
    </div><!-- /.container-fluid -->
@endsection