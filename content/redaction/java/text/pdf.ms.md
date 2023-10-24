---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ms/redaction/java/text/pdf"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact PDF Teks melalui Frasa Tepat /Ungkapan Biasa dalam Java"
head_description: "GroupDocs.Redaction s Java API membolehkan pemaju menyunting teks dari PDF DOC DOCX RTF XLSX CSV PPT PPTX & imej melalui frasa tepat atau ungkapan biasa dalam Java"

############################# Header ############################
title: "Cara Menyunting, Menyembunyikan atau Mengalih Keluar Teks daripada PDF Fail menggunakan Java"
description: "GroupDocs.Redaction s Java API membolehkan untuk menyunting, menyembunyikan atau membuang teks sensitif daripada dokumen pemprosesan perkataan, lembaran kerja, persembahan, PDF s & imej."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apakah Redaksi Teks?"
    content: |
        Redaksi Teks adalah proses membuang teks atau maklumat sulit atau tidak diingini dari dokumen digital sambil meninggalkan keseluruhan dokumen atau perenggan yang mengandunginya. Redaction membantu pengguna serta organisasi untuk melindungi maklumat sensitif mereka dengan menyembunyikan atau membuangnya secara kekal. Menggunakan GroupDocs.Redaction Java Pengguna API kini boleh menyunting, menyembunyikan atau mengalih keluar teks sensitif daripada dokumen pemprosesan perkataan, lembaran kerja, persembahan, PDF dan fail imej raster. API menyediakan pelbagai pilihan dan kaedah untuk redaksi maklumat peribadi dalam dokumen. Ia menyokong carian dan redact menggunakan padanan tepat atau ungkapan biasa, Gunakan teks (kod pengecualian) atau grafik (segi empat berwarna) redaksi dan banyak lagi. Jadi mengapa tidak mencubanya dan mengautomasikan proses redaksi dokumen anda dengan memuat turun API dan meneroka ciri asas dan lanjutannya. 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redact PDF Frasa Tepat dalam Java"
      content_left: |
        GroupDocs.Redaction membolehkan untuk menyunting data sensitif atau peribadi dengan mudah daripada dokumen anda. Kes redaksi yang paling popular adalah untuk mengeluarkan teks dari dokumen. 

        Kod berikut boleh digunakan untuk menerapkan redaksi teks pada bahagian tertentu dokumen melalui frasa yang tepat. Ia membolehkan pengguna untuk menggantikan frasa tepat peribadi “Michal Clark” dengan peribadi (atau mana-mana kod pengecualian),

      title_right: "Keluarkan Data Sensitif daripada PDF"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail PDF
        * Panggil kaedah Redactor.Apply dengan contoh baru kelas ExactPhraSeredAction
        * Panggil kaedah redactor.save dengan objek [ExactPhraSeredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Panggil kaedah redactor.save untuk menyimpan perubahan 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redactexactphrase.java"
      
    - title_left: "Redaksi Teks Sensitif Kes di PDF"
      content_left: |
        Contoh berikut membolehkan pengguna melakukan redaksi sensitif huruf huruf tepat untuk membuang atau menyembunyikan teks tertentu di dalam dokumen. Secara lalai, cari frasa yang tepat adalah kes tidak sensitif. 
        
      title_right: "Lakukan Redaksi Sensitif Kes melalui Java"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail PDF
        * Panggil kaedah Redactor.Apply dengan contoh baru kelas ExactPhraSeredAction
        * Panggil kaedah redactor.save dengan objek [ExactPhraSeredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Panggil kaedah redactor.save untuk menyimpan perubahan 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "casesensitiveredaction.java"

    - title_left: "Redact Teks dalam PDF melalui Kotak Warna"
      content_left: |
        Daripada mengeluarkan teks yang disunting atau meletakkan rentetan di sana, ia juga mungkin untuk meletakkan kotak warna di atas teks yang disunting. Dalam kes ini teks yang dipadankan akan dikeluarkan dan segi empat tepat berwarna akan diletakkan di atas teks yang disunting.
        
      title_right: "Gunakan Kotak Warna untuk Mengalih Keluar Teks dalam Java"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail PDF
        * Panggil kaedah Redactor.Apply dengan contoh baru kelas ExactPhraSeredAction
        * Panggil kaedah redactor.save dengan objek [ExactPhraSeredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Panggil kaedah redactor.save untuk menyimpan perubahan 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redacttextusingcolorbox.java"

    - title_left: "Keperluan Sistem"
      content_left: |
        GroupDocs.Redaction for Java API disokong pada semua platform utama dan sistem operasi. Untuk panduan keperluan sistem yang lengkap, sila lawati [keperluan sistem](https://docs.groupdocs.com/redaction/java/system-requirements) Sebelum melaksanakan kod di bawah, sila pastikan bahawa anda mempunyai prasyarat berikut yang dipasang pada sistem anda:
        * Sistem Operasi: Microsoft Windows, Linux, Mac OS
        * Persekitaran Pembangunan: NetBeans, IDEA Intellij, Eclipse dan lain-lain
        * Java Runtime Environment: J2SE 6.0 dan ke atas
        * Dapatkan versi terbaru GroupDocs.Redaction for Java dari [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Mengapa Menggunakan GroupDocs.Redaction"
      content_right: |
        * Benarkan pengguna menambah format dokumen tersuai dan jenis redaksi
        * Tiada perisian tambahan diperlukan untuk mengalih keluar maklumat sensitif
        * Keupayaan untuk menetapkan dokumen rendering julat halaman sebagai PDF
        * Cara mudah untuk menyunting pelbagai jenis metadata: nama pengarang, versi, tajuk, subjek, perihalan dan banyak lagi
        * Pengekstrakan maklumat dokumen - jenis fail, kiraan halaman dll.

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