<?php

namespace App\Http\Requests\Tag;

use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Str;

class StoreRequest extends FormRequest
{


    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'title' => 'required|string|min:3|max:50|unique:posts,title',
        ];
    }

    public function messages(): array
    {
        return [
            'title.required' => "Обязательное поле",
            'title.min' => "Минимум 3 знакa",
            'title.max' => "Максимум 50 знаков",
            'title.unique' => "Тег должен быть уникальным",
        ];
    }
}
