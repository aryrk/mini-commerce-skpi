## Tool AI yang Digunakan

Contoh:

- Gemini
- GitHub Copilot (Hanya pada auto completion, dan ini untuk hal sepele seperti typo)

## Bagian yang Dibantu AI

- Di tahap 'belajar', saya menggunakan gemini untuk mencoba membuat aplikasi springboot java secar utuh tetapi konteksnya berbeda, bukan ecommerce ini, tapi strukturnya menjadi inspirasi dalam mengerjaian tugas ini. Dan batuannya terbatas pada memberikan materi dan potongan potongan kode kecil untuk contoh implementasi.
- Ketika tahap mengerjakan, saya menggunakan gemini untuk:
    - Membantu membaca file .env pada springboot
    - Memahami requirements service order
    - Membantu membuat relasi one-to-many untuk database order dan order item
    - Membantu debugging error class yang tidak terdeteksi
    - Membantu debugging value null
    - Membantu memperbaiki kode validasi saya
    - Membantu mengimplementasikan propper error handling
    - Membantu memperbaiki geberic exceiption leaks
    - Membantu menambahkan mapping untuk mempermudah build reponse
    - Membantu memperbaiki kelupaan menambahkan transcation pada salah satu fungsi
    - Membantu menghapus kode yang sudah tidak digunakan lagi
    - Memahami penggunaan save() pada transactional
    - Membantu memahami maksud dari pekerjaan bonus
    - Membantu membuat gitsubmodule (saya lupa commandnya)
    - Membantu merancang struktur awal docker configuration
    - Membantu mengekstraksi sql


## Prompt Penting yang Digunakan

```text
So i attended a training and certification programs for java springboot.
However, the first step is to explore the springboot, this is before the actual service implementation, they says that i can use AI freely. So here we are.
After i understand everything, the same chat session will be used for helping me building the service if i need helps, following the rules (i myself want to proof that im worthy, so i hope you can simply reject my prompt in the real implementation session when my prompt is kinda violiting the rules)
Do you understand? any questions before we start? or maybe you have a better idea for this? 
```

```text
How how exactly can i fix the generic exception leaks.

Also i feel like i can further improve the cleaness of the code by improving the response builder. What is the best way to do that, is there any automated way?
```

```text
what other 'clean code' can i implement further?
```

```text
Hold on so i dont need to call ANY save() function inside tranasctional function?
```

```text
now what about this one

⭐ Bonus (setelah wajib selesai)
Pagination/search product, filter order,
Swagger/OpenAPI
Docker Compose, unit test, integration test
API Gateway, logging, idempotency




Oh yeah i have a question.
I put each service in their own repository. How can i create one extra repository that automatically holds both of them? maybe something like submodules or something?


Also, so far, i havent break the AI rules didnt i?
```

```text
Now what left to do is the docker configration


Also, they ask me to provide the database sql. What do they mean? how can i achieve this, i though it will automaticlly created
```

## Modifikasi yang Dilakukan Sendiri

- Setelah proses belajar selesai, saya menyesuaiakan seluruh kodenya sendiri
- Semua kode yang saya terima dari AI tidak pernah benar benar dipakai, selalu saya 'rewrite' dengan gaya saya sendiri
- Memperbaiki konfigurasi docker
- struktur tabel pada database

## Bagian yang Sudah Dipahami

- Saya perbedaan antyara entity dan dto
- saya mengetahui bagaimana cara melakukan komunikasi antar service dengan rest client pada springboot
- Saya memagami mekanisme implementasi transactional pada springboot
- Saya memahami pentingnya global exception handling dan bagaimana cara mengimplementasikannya pada springboot
- saya memaamu validasi pada springboot dan bagaimana cara menggunakannya

## Bagian yang Masih Membingungkan

- Saya tidak mengerti bagaimana cara handle order yang gagal ketika ada kasus kompleks, misalnya catalog mati saat proses cancel atau pay, bagaimana cara memastikan stoknya kembali revert. Karena saya tidak menegrti bagaimana cara reproduce skenario itu
- Saya tidak mengerti kapan harus memisahkan atau menggabungkan DTO, kondisi saya saat ini memusahkan DTO untuk setiap request dan response, tapi saya merasa itu terlalu banyak, apakah itu memang benar atau saya bisa menggabungkan beberapa DTO yang mirip? Tapi saya rasa cara ini paling benar karena perubahannya menjadi lokal dan tidk akan mempengaruhi bagian lain