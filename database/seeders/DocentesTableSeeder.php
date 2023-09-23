<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Docente;

class DocentesTableSeeder extends Seeder
{
    public function run(): void
    {
        Docente::factory(5)->create();
    }
}
