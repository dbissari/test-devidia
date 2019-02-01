<?php

namespace App\Http\Requests;


class ClientRequest extends Request
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
            'nom'=>'required|between:5,30|unique:clients',
            'telephone'=>'required|between:10,20|unique:clients',
            'email'=>'required|between:10,50|unique:clients',
        ];
    }
}
