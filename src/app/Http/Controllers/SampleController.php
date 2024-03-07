<?php

namespace App\Http\Controllers;

use App\Models\Sample;
use Illuminate\Http\Request;

class SampleController extends Controller
{
    public function show() {
        $sample = Sample::all();
        return $sample;
    }
}
