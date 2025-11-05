<?php

namespace App\Http\Requests\Post;

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
            'user_id' => 'required|integer',
            'title' => 'required|string|min:10|max:250',
            'content' => 'required|string|min:10',
            'url' => 'required|string',
        ];
    }

    protected function prepareForValidation(): void
    {
        $this->merge([
            'user_id' => fake()->randomElement(User::all()->pluck('id')),
            'url' => Str::slug($this->title),
        ]);

    }

    public function messages(): array
    {
        return [
            'title.required' => "Обязательное поле",
            'title.min' => "Минимум 10 знаков",
            'title.max' => "Максимум 250 знаков",
            'content.required' => "Обязательное поле",
            'content.min' => "Минимум 10 знаков",
        ];
    }
}
