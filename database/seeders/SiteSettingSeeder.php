<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SiteSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('site_settings')->insert([
            'logo'=>'upload/logo/logo.webp',
            'support_phone' => '1212121212',
            'phone_one' => '876543312',
            'email' => 'support@fiamme.com',
            'company_address' => 'noida',
            'facebook' => 'frontend/assets/imgs/theme/icons/icon-facebook-white.svg',
            'twitter' => 'frontend/assets/imgs/theme/icons/icon-twitter-white.svg',
            'youtube' => 'frontend/assets/imgs/theme/icons/icon-instagram-white.svg',
            'copyright' => 'Fiamme All Reserved'

        ]);
    }
}
