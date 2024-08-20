<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserCreate extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'company_name' => 'required',
            'name' => 'required|string',
            'surname' => 'required|string',
            'email' => 'required|email|unique:users,email',
            'phone' => 'required|string|unique:users,phone',
        ];
    }

    public function messages(): array {
        return [
            'company_name.required' => 'Şirket Alanı Zorunludur!',
            'name.required' => "İsim Alanı Zorunludur!",
            'surname.required' => 'Soyisim Alanı Zorunludur!',
            'email.required' => 'E-Posta Alanı Zorunludur!',
            'email.email' => 'Geçerli bir e-posta adresi giriniz.',
            'email.unique' => 'Bu e-posta adresi zaten kayitli.',
            'phone.required' => 'Telefon Alanı Zorunludur!',

        ];
    }
}
