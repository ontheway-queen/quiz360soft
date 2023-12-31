<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class CheckNumberRule implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
     $ramb =  DB::table('test_row')->where('unique_number',$value)->count();

if($ramb > 0){
    return true;
}
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Please Give Your Correct Number';
    }
}
