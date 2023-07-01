
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ms/redaction/java/metadata/createdtime/pptx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Sunting Metadata | Java"
ad_description: "Redaksi Metadata Daripada Dokumen PPTX dalam Java"
############################# Head ############################
head_title: "Redaksi Metadata Daripada Dokumen PPTX dalam Java"
head_description: "Cari, ganti, alih keluar atau edit metadata pelbagai jenis dokumen dengan menggunakan penapis untuk memilih sifat metadata tertentu menggunakan GroupDocs.Redaction s API untuk Java."

############################# Header ############################
title: "Redaksi Metadata Daripada Dokumen PPTX dalam Java"
description: "Cari, ganti, alih keluar atau edit metadata pelbagai jenis dokumen dengan menggunakan penapis untuk memilih sifat metadata tertentu menggunakan GroupDocs.Redaction s API untuk Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Bermula dengan Metadata Redaction"
    content: |
        Kadang-kadang anda perlu memadamkan medan metadata yang tidak diingini sepenuhnya atau anda mungkin mahu mengemas kini nilainya. Terdapat juga data tersembunyi yang berkaitan dengan fail yang boleh dilihat menggunakan pelbagai alat dan teknik. Terdapat banyak situasi di mana anda tidak mahu data ini dapat diakses oleh sesiapa sahaja. Redaction bermaksud penyingkiran maklumat yang tidak diingini atau sulit dari pelbagai dokumen. Semua format fail termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lain-lain mempunyai struktur metadata tertentu. Sifat metadata termasuk nama pengarang, kategori, nama syarikat, komen, masa penciptaan dan terakhir dikemas kini dan lain-lain Dengan GroupDocs.Redaction API anda boleh memohon redaksi metadata ke mana-mana medan metadata ini. Anda boleh menukar atau memadamnya dengan menapis metadata yang anda inginkan. Dalam panduan ini, kami akan menerangkan bagaimana anda boleh menggunakan redaksi metadata dari dokumen PPTX dalam Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact Metadata PPTX Fail"
      content_left: |
        Kod berikut membolehkan anda mencari dan menyunting data sensitif dari dokumen PPTX. Anda boleh menetapkan skop untuk redaksi dengan menetapkan penapis, mis. Ke Metadatafilter.createdTime. Ia akan meninggalkan padanan ungkapan biasa dibatalkan dalam semua item metadata, kecuali harta “CreatedTime”: 

      title_right: "Langkah-langkah untuk Redact Metadata Createdtime"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail PPTX
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk mencari dan menggantikan data sensitif dari metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gunakan Metadatafilters.createdTime dalam kod di bawah
        * Panggil kaedah simpan dengan objek [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java"
      
    - title_left: "Keluarkan Metadata CreatedTime dalam Java"
      content_left: |
        Anda boleh menggantikan semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimum) menggunakan kelas EraseMetadataredAction. Kod berikut menunjukkan bagaimana anda boleh menapis dan kemudian mengalih keluar sifat metadata daripada dokumen PPTX. Contoh di bawah mengosongkan semua sifat dokumen: 
        
      title_right: "Cara Memadamkan Metadata PPTX"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail PPTX
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk membuang metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gantikan Metadatafilter.All dengan metadatafilter.createdTime dalam kod di bawah
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