<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'mail_address' => 'required|min:10|max:100',
            'name' => 'required|min:8|max:100',
            'address' => 'required|min:8|max:255',
            'phone' => 'required|numeric',
            'role' => 'required',
        ];
    }

    public function messages()
    {
        return [
                'required' => ':attribute không được để trống',
                'min' => ':attribute không được nhỏ hơn :min',
                'max' => ':attribute không được lớn hơn :max',
                'unique'=> ':attribute đã tồn tại',
                'numeric' => ':attribute phải là số',
                'mail_address' => ':attribute không đúng cấu trúc email ',
                'image' => ':attribute phải là một ảnh', 
                'mimes'=>':attribute không đúng định dạng',       
        ];
    }

    public function attribute()
    {
        return [
                'mail_address' => 'Tên email',
                'name' => 'Tên mail',
                'address' => 'Địa chỉ',
                'phone' => 'Sô điện thoại',
                'image' => 'Ảnh admin',
                'role' => 'Quyền'
        ];
    }
}