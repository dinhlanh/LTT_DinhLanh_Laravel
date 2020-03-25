@component('mail::message')
# Xin chào bạn

Chúc mừng bạn đã đăng kí tài khoản thành công

{{-- {!! $users->name !!} --}}

{{-- @component('mail::button', ['url' => ''])
Button Text
@endcomponent --}}

Thanks,<br>
{{ config('app.name') }}
@endcomponent
