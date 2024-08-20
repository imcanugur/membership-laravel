<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $companyIds = DB::table('companies')->pluck('id');

        for ($i = 1; $i <= 10; $i++) {
            DB::table('users')->insert([
                'name' => 'name' . $i,
                'surname' => 'surname' . $i,
                'email' => 'name' . $i . '.surname' . $i . '@example.com',
                'phone' => '123456789' . $i,
                'company_id' => $companyIds->random(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
