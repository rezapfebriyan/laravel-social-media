<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>
 
## Tentang Tuwiter Web App

Tuwiter App ini adalah website seperti twitter, namun hanya dapat membuat status, memfollow dan unfollow user lainnya.
Dibuat menggunakan Breeze (Tailwind CSS) dan MySQL.

## Requirement sistem

- Laravel 8.0, yang di install dan bisa running di komputer kamu. Guide install laravel ada disini (https://laravel.com/docs/8.x/installation)
- PHP 7 keatas
- MySQL
- Local server untuk running database, Misalnya MAMP, Apache atau WAMP (XAMPP untuk Windows)

## Setup

- jalankan perintah 'composer install' untuk install requirement-requirement dari code di repo
- Edit .env dan buat nama database yang anda inginkan (disini saya memberikan nama dbnya "network")
- buat database baru (terserah mau buat lewat CLI atau MySQL GUI). kosongkan saja data dan table nya karena isinya nanti tinggal anda import dari file .sql pada repo ini
- jalankan 'php artisan migrate:refresh' untuk membuat tabel-tabel yang diperlukan kedalam database
- jalankan 'php artisan serve' untuk menjalankan app
- buka http://localhost:8000 (atau sesuakian dengan port di .env)
- jika muncul website Tuwiter di localhost anda, berarti setup sudah berhasil

