













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "id/redaction/java/metadata/createdtime/docx"
otherformats: BMP DOC DOCM DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Sunting Metadata | java_Camel"
ad_description: ""

############################# Head ############################
head_title: "Redaksi Metadata Dari DOCX Dokumen di Java"
head_description: "Cari, ganti, hapus, atau edit metadata dari berbagai jenis dokumen dengan mudah dengan menerapkan filter untuk memilih properti metadata tertentu menggunakan GroupDocs.Redactions API untuk Java."

############################# Header ############################
title: "Redaksi Metadata Dari DOCX Dokumen di Java"
description: "Cari, ganti, hapus, atau edit metadata dari berbagai jenis dokumen dengan mudah dengan menerapkan filter untuk memilih properti metadata tertentu menggunakan GroupDocs.Redactions API untuk Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Memulai dengan Metadata Redaksi"
    content: |
        Terkadang Anda perlu menghapus bidang metadata yang tidak diinginkan sepenuhnya atau Anda mungkin ingin memperbarui nilainya. Ada juga data tersembunyi yang terkait dengan file yang dapat dilihat menggunakan berbagai alat dan teknik. Ada banyak situasi di mana Anda tidak ingin data ini dapat diakses oleh siapa pun. Redaksi berarti penghapusan informasi yang tidak diinginkan atau rahasia dari berbagai dokumen. Semua format file termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lainnya memiliki struktur metadata tertentu. Properti metadata termasuk nama penulis, kategori, nama perusahaan, komentar, waktu pembuatan dan terakhir diperbarui, dll. Dengan GroupDocs.Redaction API Anda dapat menerapkan redaksi metadata ke salah satu bidang metadata ini. Anda dapat mengubah atau menghapusnya dengan memfilter metadata yang Anda inginkan. Dalam panduan ini kami akan menjelaskan bagaimana Anda dapat menerapkan redaksi metadata dari dokumen DOCX di Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact Metadata dari DOCX File"
      content_left: |
        Kode berikut memungkinkan Anda untuk mencari dan menyunting data sensitif dari dokumen DOCX. Anda dapat mengatur ruang lingkup untuk redaksi dengan mengatur filter, mis. ke MetadataFilter.Createdtime. Ini akan membuat kecocokan ekspresi reguler dibatalkan di semua item metadata, kecuali properti "Createdtime": 

      title_right: "Langkah-langkah untuk Redact Createdtime Metadata"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file DOCX
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk menemukan dan mengganti data sensitif dari metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Gunakan MetadataFilters.Createdtime dalam kode di bawah ini
        * Panggil metode save dengan objek [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java"
      
    - title_left: "Hapus Metadata Createdtime di Java"
      content_left: |
        Anda dapat mengganti semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimal) menggunakan kelas EraseMetadataRedaction. Kode berikut menunjukkan bagaimana Anda dapat memfilter dan kemudian menghapus properti metadata dari dokumen DOCX. Contoh di bawah ini mengosongkan semua properti dokumen: 
        
      title_right: "Cara Menghapus Metadata DOCX"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file DOCX
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk menghapus metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Ganti MetadataFilter.All dengan MetadataFilter.Createdtime dalam kode di bawah ini
        * Panggil metode save dengan objek [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

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

############################# About Formats ############################
about_formats:
    enable: true

############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---