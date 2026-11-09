@echo off
chcp 65001 >nul
title Setup & Push Profil GitHub - BakwanJagungg
cls
echo ============================================================
echo   SETUP & PUBLISH PROFILE README GITHUB (BakwanJagungg)
echo ============================================================
echo.
echo SYARAT UTAMA AGAR PROFIL TAMPIL DI HALAMAN DEPAN GITHUB:
echo 1. Anda HARUS membuat repositori baru di browser:
echo      Nama Repositori : BakwanJagungg  (persis sama dengan username)
echo      Visibilitas     : Public         (WAJIB Public)
echo      README          : KOSONGKAN      (Jangan centang Add README)
echo.
echo    -> Link pembuatan: https://github.com/new
echo.
echo ============================================================
echo Tekan sembarang tombol jika repositori 'BakwanJagungg'
echo SUDAH Anda buat di https://github.com/new ...
echo ============================================================
pause >nul

echo.
echo [1/4] Memeriksa status repositori git lokal...
if not exist ".git" (
    git init -b main
)

echo [2/4] Memastikan konfigurasi remote origin...
git remote remove origin 2>nul
git remote add origin https://github.com/BakwanJagungg/BakwanJagungg.git

echo [3/4] Menyiapkan file dan membuat commit...
git add .
git commit -m "feat: setup aesthetic GitHub profile README with C, Arduino IoT, EGRBS and JSFS projects"

echo.
echo [4/4] Mengirim (push) ke GitHub (branch: main)...
git push -u origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================================
    echo   BERHASIL! Profile README telah terbit di GitHub!
    echo   Buka: https://github.com/BakwanJagungg
    echo ============================================================
) else (
    echo.
    echo ============================================================
    echo   [INFO / PERHATIAN PUSH]
    echo   Jika proses push gagal, penyebab umumnya:
    echo   1. Repositori 'BakwanJagungg' belum dibuat di https://github.com/new
    echo   2. Perlu otentikasi login GitHub (Git Credential Manager)
    echo   3. Jika diminta Login / Token, silakan masukkan kredensial GitHub Anda.
    echo ============================================================
)

echo.
pause
