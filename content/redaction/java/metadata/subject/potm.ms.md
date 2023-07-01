
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ms/redaction/java/metadata/subject/potm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Sunting Metadata | Java"
ad_description: "Sunting Metadata Subjek daripada Fail POTM dalam Java"
############################# Head ############################
head_title: "Sunting Metadata Subjek dari Fail POTM di Java"
head_description: "GroupDocs.Redaction s menyediakan API fleksibel yang membolehkan untuk mencari & mengganti/membuang sebarang sifat metadata menggunakan penapis."

############################# Header ############################
title: "Sunting Metadata Subjek dari Fail POTM di Java"
description: "GroupDocs.Redaction s menyediakan API fleksibel yang membolehkan untuk mencari & mengganti/membuang sebarang sifat metadata menggunakan penapis."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Mengenai GroupDocs.Redaction for Java"
    content: |
        Redaction merujuk kepada penyingkiran maklumat yang tidak diingini atau sulit dari dokumen elektronik. Semua format fail termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lain-lain mempunyai beberapa sifat metadata. Ciri-ciri ini termasuk nama pengarang, kategori, nama syarikat, komen, masa penciptaan, terakhir dikemas kini dan banyak lagi. Kadang-kadang anda perlu memadamkan medan metadata yang tidak diingini sepenuhnya atau anda mungkin mahu mengemas kini nilainya. Terdapat juga beberapa data tersembunyi yang berkaitan dengan fail yang boleh dilihat menggunakan pelbagai alat dan teknik. Terdapat banyak kes apabila anda tidak mahu data ini diakses oleh sesiapa sahaja. Dengan GroupDocs.Redaction API anda boleh menggunakan redaksi metadata pada mana-mana sifat metadata ini. Anda boleh menukar atau memadamnya dengan menapis metadata yang anda inginkan. Dalam panduan ini, kami akan menerangkan bagaimana anda boleh menyunting subjek daripada metadata POTM dalam Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Mengemas kini Metadata Subjek dalam Java"
      content_left: |
        Kod berikut membolehkan anda mencari dan menyunting data sensitif dari dokumen POTM. Anda boleh menetapkan skop untuk redaksi dengan menetapkan penapis, mis. ke Metadatafilter.subject. Ia akan meninggalkan padanan ungkapan biasa dibatalkan dalam semua item metadata, kecuali harta “Subjek”: 

      title_right: "Cara Menyunting Metadata POTM"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail POTM
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk mencari dan menggantikan data sensitif dari metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gunakan MetadataFilters.subject dalam kod di bawah
        * Panggil kaedah simpan dengan objek [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "f38d8b4c0acad38e154dc7f64018e51e"
      gistfile: "RedactSubjectMetadata.java"
      
    - title_left: "Padamkan Medan Metadata dalam Java"
      content_left: |
        Anda boleh menggantikan semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimum) menggunakan kelas EraseMetadataredAction. Kod berikut menunjukkan bagaimana anda boleh menapis dan kemudian mengalih keluar sifat metadata daripada dokumen POTM. Contoh di bawah mengosongkan semua sifat dokumen: 
        
      title_right: "Alih Keluar Metadata POTM Melalui GroupDocs.Redaction"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail POTM
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk membuang metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Ganti MetadataFilter.all dengan metadatafilter.Subject dalam kod di bawah
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
        
      title_right: "Mengapa Menggunakan GroupDocs.Redaction?"
      content_right: |
        * Benarkan pengguna menambah format dokumen tersuai dan jenis redaksi
        * Cara mudah untuk menyunting pelbagai jenis metadata: nama pengarang, versi, tajuk, subjek, perihalan dan banyak lagi
        * Keupayaan untuk menetapkan dokumen rendering julat halaman sebagai PDF
        * Tiada perisian tambahan diperlukan untuk mengalih keluar maklumat sensitif
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