













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "id/redaction/java/text/xlt"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLTM XLTX  

############################# Head ############################
head_title: "Redact XLT Text melalui Exact Phrase/Regular Expression di Java"
head_description: "GroupDocs.Redactions Java API memungkinkan pengembang untuk menyunting teks dari PDF DOC DOCX RTF XLSX CSV PPT PPTX & gambar melalui frasa yang tepat atau ekspresi reguler di Java"

############################# Header ############################
title: "Cara Redact, Sembunyikan atau Hapus Teks dari XLT File menggunakan Java"
description: "GroupDocs.Redactions Java API memungkinkan untuk menyunting, menyembunyikan atau menghapus teks sensitif dari dokumen pengolah kata, lembar kerja, presentasi, PDF & gambar."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apa itu Redaksi Teks?"
    content: |
        Redaksi Teks adalah proses menghilangkan teks atau informasi rahasia atau yang tidak diinginkan dari dokumen digital sambil membiarkan sisa dokumen atau paragraf yang memuatnya tetap utuh. Redaksi membantu pengguna serta organisasi untuk melindungi informasi sensitif mereka dengan menyembunyikan atau menghapusnya secara permanen. Dengan menggunakan GroupDocs.Redaction, pengguna Java API sekarang dapat menyunting, menyembunyikan, atau menghapus teks sensitif dari dokumen pengolah kata, lembar kerja, presentasi, PDF, dan file gambar raster. API menyediakan berbagai pilihan dan metode untuk redaksi informasi pribadi dalam dokumen. Ini mendukung pencarian dan penyuntingan menggunakan pencocokan tepat atau ekspresi reguler, Gunakan redaksi tekstual (kode pengecualian) atau grafis (persegi panjang berwarna) dan banyak lagi. Jadi mengapa tidak mencobanya dan mengotomatiskan proses redaksi dokumen Anda dengan mengunduh API dan menjelajahi fitur dasar dan lanjutannya.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redact XLT Exact Phrase di Java"
      content_left: |
        GroupDocs.Redaction memungkinkan untuk dengan mudah menyunting data yang bersifat sensitif atau pribadi dari dokumen Anda. Kasus redaksi paling populer adalah menghapus teks dari dokumen. 

        Kode berikut dapat digunakan untuk menerapkan redaksi tekstual ke bagian tertentu dari dokumen melalui frase yang tepat. Ini memungkinkan pengguna untuk mengganti frasa persis pribadi "Michal Clark" dengan pribadi (atau kode pengecualian apa pun),

      title_right: "Hapus Data Sensitif dari XLT"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file XLT
        * Panggil metode Redactor.apply dengan instance baru kelas ExactPhraseRedaction
        * Panggil metode redactor.save dengan objek [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Panggil metode redactor.save untuk menyimpan perubahan 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "Redaksi Teks Peka Huruf Besar-kecil di XLT"
      content_left: |
        Contoh berikut memungkinkan pengguna untuk melakukan redaksi peka huruf besar-kecil frasa yang tepat untuk menghapus atau menyembunyikan potongan teks tertentu di dalam dokumen. Secara default, penelusuran untuk frasa persis tidak peka huruf besar-kecil. 
        
      title_right: "Lakukan Redaksi Peka Huruf Besar-kecil melalui Java"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file XLT
        * Panggil metode Redactor.apply dengan instance baru kelas ExactPhraseRedaction
        * Panggil metode redactor.save dengan objek [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Panggil metode redactor.save untuk menyimpan perubahan 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "Redact Teks di XLT melalui Kotak Warna"
      content_left: |
        Alih-alih menghapus teks yang diedit atau menempatkan string di sana, Anda juga dapat meletakkan kotak warna di atas teks yang diedit. Dalam hal ini teks yang cocok akan dihapus dan persegi panjang berwarna akan ditempatkan di atas teks yang disunting.
        
      title_right: "Gunakan Kotak Warna untuk Menghapus Teks di Java"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file XLT
        * Panggil metode Redactor.apply dengan instance baru kelas ExactPhraseRedaction
        * Panggil metode redactor.save dengan objek [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Panggil metode redactor.save untuk menyimpan perubahan 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "Persyaratan sistem"
      content_left: |
        GroupDocs.Redaction untuk Java API didukung di semua platform dan sistem operasi utama. Untuk panduan persyaratan sistem lengkap, silakan kunjungi [persyaratan sistem](https://docs.groupdocs.com/redaction/java/system-requirements) Sebelum menjalankan kode di bawah, pastikan Anda telah menginstal prasyarat berikut di sistem Anda :
        * Sistem Operasi: Microsoft Windows, Linux, MacOS
        * Lingkungan Pengembangan: NetBeans, Intellij IDEA, Eclipse dll
        * Lingkungan Runtime Java: J2SE 6.0 dan yang lebih baru
        * Dapatkan versi terbaru GroupDocs.Redaction untuk Java dari [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Mengapa Menggunakan GroupDocs.Redaction"
      content_right: |
        * Izinkan pengguna untuk menambahkan format dokumen khusus dan jenis redaksi
        * Tidak diperlukan perangkat lunak tambahan untuk menghapus informasi sensitif
        * Kemampuan untuk mengatur dokumen rendering rentang halaman sebagai PDF
        * Cara mudah untuk menyunting berbagai jenis metadata: nama penulis, versi, judul, subjek, deskripsi, dan banyak lagi
        * Ekstraksi informasi dokumen - jenis file, jumlah halaman, dll.

############################# Demos ############################
demos:
    enable: true

############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---