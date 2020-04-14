<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use App\Http\Requests\CreateUserRequest;
use App\Http\Requests\StoreUserRequest;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Illuminate\Auth\Access\Response;
use Illuminate\Support\Facades\Gate;
use App\Mail\WelcomeMail;
use Illuminate\Support\Facades\Mail;
use Session;

class UsersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $this->authorize('viewAny', Auth::user());
        $users = User::paginate(20);
        //Cache
        $user = Cache::remember('users' , 86400 ,function(){
            return User::get();
        });
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
        $this->authorize('create', User::class);
        $users = User::get();
        
        return view('backend.users.create')->with(['users' => $users]);
    }

    // Dashboard
    public function dashboard()
    {
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
            $users->avatar = $new_avatar;
        }
        $users->content = $request->get('content');
        $users->role = $request->get('role');
        $save = $users->save();
        // Mail
        Mail::to($users->mail_address)->send(new WelcomeMail());

        // Flash
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
        $users = User::find($id);
        return view('backend.users.show')->with(['users'=>$users]);
    }

    // Search
    public function search(Request $request){
        $search = $request->get('search');
        $users = User::where('name', 'like', '%' . $search. '%')->orWhere('address', 'like', '%'.$search. '%')->orWhere('phone',$search)->paginate(5);
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
        $users = User::find($id);
        $user = Auth::user();
        if ($user->can('update', $user)){
            return view('backend.users.edit',['users' => $users]);
        }
        else return abort('404');
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
        $users = User::find($id);
        $users->mail_address = $request->get('mail_address');
        $users->name = $request->get('name');
        $users->address = $request->get('address');
        $users->phone = $request->get('phone');
        $users->content = $request->get('content');
        $users->role = $request->get('role');
        // $this->authorize('update', User::class);
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
    public function destroy($id)
    {
        $user = User::find($id);
        // $this->authorize('delete', User::class);
        $save = $user->delete();
        if ($save){
            $request->session()->flash('delete',' Bạn đã sửa thành công');
        }
        else {
            $request->session()->flash('delete-error',' Bạn đã sửa không thành công');
        }
        return redirect()->route('users.index')->with('thongbao','Bạn đã xóa thành công');
    }

    public function language(Request $request,$language)
    {
        //
        if($language) {
            Session::put('language',$language);
        }
        return redirect()->back();
    }
}
