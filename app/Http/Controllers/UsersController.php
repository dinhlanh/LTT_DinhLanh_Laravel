<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use App\Http\Requests\CreateUserRequest;
use App\Http\Requests\StoreUserRequest;
// use App\Http\Controllers\CreateUserRequest;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
// use App\Http\Controllers\Validator;


class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        //
        // $users = \DB::table('users')->get();
        // dd($users);
        
        // $users = User::get();
        // phân trang
        $users = User::paginate(20);
        // $users = User::orderByRaw('created_at DESC')->paginate(20);
        // $users = Cache::remember('user' , 86400 ,function(){
        //     return User::orderByRaw('created_at DESC')->paginate(20);
        // });
        // $users = User::simplePaginate(20);
        return view('backend.users.index')->with(['users'=>$users]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $users = User::get();
        
       return view('backend.users.create')->with([
            'users' => $users
        ]);
    }

    public function dashboard()
    {
        //
       return view('backend.dashboard');
    }
    

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function store(Request $request)
    public function store(CreateUserRequest $request)
    {
        //
        // dd($request);
        $users = new User();
        
        $users->mail_address = $request->get('mail_address');
        $users->password = bcrypt($request->password);
        $users->name = $request->get('name');
        $users->address = $request->get('address');
        $users->phone = $request->get('phone');
        $get_avatar = $request->file('avatar');
        if ($get_avatar) {
            $get_name_avatar = $get_avatar->getClientOriginalName();
            $name_avatar = current(explode('.', $get_name_avatar));
            $new_avatar = $name_avatar . rand(0,99). '.' .$get_avatar->getClientOriginalExtension();
            $get_avatar->move('uploads/users',$new_avatar);
            // $profileavatar = date('YmdHis') . "." . $get_avatar->getClientOriginalExtension();
            // Storage::disk('public')->putFileAs('images/users/', $get_avatar, $profileavatar);
            $users->avatar = $new_avatar;
        }

        $users->content = $request->get('content');
        $users->role = $request->get('role');
        $save = $users->save();
        
        // dd($users);
        // // $save = 1;
        if($save){
            $request->session()->flash('thanhcong',' Tạo mới thành công');
        }else{
            $request->session()->flash('error',' Tạo mới không thành công');
        }
        return redirect()->route('users.index');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $users = User::find($id);
        // $users = User::get();
        return view('backend.users.show')->with(['users'=>$users]);
    }

    public function search(Request $request){
        $search = $request->get('search');
        $users = User::where('name', 'like', '%' . $search. '%')->orWhere('phone',$search)->paginate(5);
        return view('backend.users.index',['users' => $users]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $users = User::find($id);
        // $categories = Category::get();
        return view('backend.users.edit',['users' => $users]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(StoreUserRequest $request, $id)
    {
        //
        $users = User::find($id);
        $users->mail_address = $request->get('mail_address');
        $users->password = bcrypt($request->password);
        $users->name = $request->get('name');
        $users->address = $request->get('address');
        $users->phone = $request->get('phone');
        // $get_avatar = $request->file('avatar');
        $users->content = $request->get('content');
        $users->role = $request->get('role');
        $save = $users->save();
        if($save){
            $request->session()->flash('sua',' Bạn đã sửa thành công');
        }else{
            $request->session()->flash('sua-error',' Bạn đã sửa không thành công');
        }
        return redirect()->route('users.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($user)
    {
        //
        $user = User::find($id);
        // dd($id);
        $user->delete();
        return redirect()->route('users.index')->with('thongbao','Bạn đã xóa thành công');
    }
}
