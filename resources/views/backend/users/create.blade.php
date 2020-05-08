@extends('backend.layouts.master')
@section('content-header')
    <!-- Content Header -->
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Tạo Admin</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Trang Chủ</a></li>
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Thêm mới Admin</li>
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
                        <h3 class="card-title">Tạo Admin</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form role="form" method="post" action="{{ route('users.store')}}" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{ csrf_token()}}">
	                	@csrf 
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
	                            <input type="email" name="mail_address" class="form-control" id="" placeholder="Nhập email">
	                        </div>
	                        @error('mail_address')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

	                        <div class="form-group">
	                            <label for="exampleInputEmail1">Mật khẩu: </label>
	                            <input type="password" name="password" class="form-control" id="" placeholder="Password (Ít nhất 8 kí tự)">
	                        </div>
	                        @error('password')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

                            <div class="form-group">
	                            <label for="exampleInputEmail1">Tên: </label>
	                            <input type="text" name="name" class="form-control" id="" placeholder="Nhập tên người dùng">
	                        </div>
	                        @error('name')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

                            <div class="form-group">
                                <label>Địa chỉ: </label>
                                <input type="text" name="address" class="form-control" id="" placeholder="Nhập địa chỉ">
                            </div>
                            @error('address')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

                            <div class="form-group">
	                            <label for="exampleInputEmail1">Số điện thoại: </label>
	                            <input type="number" name="phone" class="form-control" id="" placeholder="Nhập số điện thoại">
	                        </div>
	                        @error('phone')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror

                            <div class="form-group">
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
                                @error('avatar')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                                @if ( Session::has('avatar') )
                                <div class="alert alert-danger">{{ Session::get('avatar') }}</div>
                                @endif
                            </div>
                            <div class="form-group" >
                                <label for="exampleInputEmail1">Mô tả Admin: </label>
                                <textarea name="content" class="textarea" id="tex" placeholder="Place some text here"
                                          style="width: 100%; height: 500px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                          
                            </div>
                            @error('content')
                                <p style="color: red;padding-left: 6px;">{{ $message }}</p>
                            @enderror

                            <div class="form-group">
	                            <label>Quyền: </label><br>
	                            <label class="radio-inline">
	                            	<input type="radio" name="role" value="1" checked=""> Admin
	                            </label>&nbsp &nbsp
	                            <label class="radio-inline">
	                            	<input type="radio" name="role" value="0" checked=""> User
	                            </label>
	                        </div>
                            @error('role')
                                <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-danger">Huỷ bỏ</button>
                            <button type="submit" class="btn btn-success">Tạo mới</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
