
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ms/redaction/java/metadata/title/doc"
otherformats: BMP DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Sunting Metadata | Java"
ad_description: "Tajuk Redact dari DOC Metadata dalam Java"
############################# Head ############################
head_title: "Redact Tajuk dari DOC Fail dalam Java Menggunakan GroupDocs.Redaction API"
head_description: "GroupDocs.Redaction adalah API sanitasi yang kuat yang membolehkan anda membuang atau mengedit maklumat sulit dari lebih 30 jenis dokumen."

############################# Header ############################
title: "Redact Tajuk dari DOC Fail dalam Java Menggunakan GroupDocs.Redaction API"
description: "GroupDocs.Redaction adalah API sanitasi yang kuat yang membolehkan anda membuang atau mengedit maklumat sulit dari lebih 30 jenis dokumen."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apakah Metadata Redaction?"
    content: |
        Menyimpan dokumen dalam format asal memerlukan memadam atau menyunting metadatanya untuk mengalih keluar semua data sulit. Untuk tujuan ini GroupDocs.Redaction menyediakan API redaksi metadata. GroupDocs.Redaction API membolehkan sama ada menyimpan dokumen yang disunting dalam PDF, mengubah semua halaman menjadi gambar raster atau menyimpan dokumen yang disunting dalam format asalnya untuk penyuntingan selanjutnya. Semua format fail termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lain-lain mempunyai beberapa sifat metadata. Ciri-ciri ini termasuk nama pengarang, kategori, nama syarikat, komen, masa penciptaan, terakhir dikemas kini dan banyak lagi.Terdapat juga beberapa data tersembunyi yang berkaitan dengan fail yang boleh dilihat menggunakan pelbagai alat dan teknik. Dengan GroupDocs.Redaction API anda boleh menggunakan redaksi metadata pada mana-mana sifat metadata ini. Anda boleh menukar atau memadamnya dengan menapis metadata yang anda inginkan. Dalam panduan ini, kami akan menerangkan bagaimana anda boleh menyunting Tajuk dari fail DOC dalam Java menggunakan GroupDocs.Redaction API.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Sunting Metadata Tajuk dalam Java"
      content_left: |
        Kod berikut membolehkan anda mencari dan menyunting data sensitif dari dokumen DOC. Anda boleh menetapkan skop untuk redaksi dengan menetapkan penapis, cth. kepada Metadatafilter.title. Ia akan meninggalkan padanan ungkapan biasa dibatalkan dalam semua item metadata, kecuali harta “Tajuk”: 

      title_right: "Cara Menyunting Metadata DOC"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail DOC
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk mencari dan menggantikan data sensitif dari metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gunakan MetadataFilters.title dalam kod di bawah
        * Panggil kaedah simpan dengan objek [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "c23f466bec11e0405e2a3e74be681d09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Keluarkan Metadata DOC dalam Java"
      content_left: |
        Anda boleh menggantikan semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimum) menggunakan kelas EraseMetadataredAction. Kod berikut menunjukkan bagaimana anda boleh menapis dan kemudian mengalih keluar sifat metadata daripada dokumen DOC. Contoh di bawah mengosongkan semua sifat dokumen: 
        
      title_right: "Padamkan Metadata Tajuk dari Fail DOC"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail DOC
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk membuang metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gantikan MetadataFilter.all dengan metadatafilter.title dalam kod di bawah
        * Panggil kaedah simpan dengan objek [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

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