---
layout: "auto-gen-gist"
draft: false
path: "redaction/java/metadata/version/xltx"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
ad_headline: "Sunting Metadata | java_Camel"

head_title: "Redact Metadata Versi dari XLTX Document di Java"
head_description: "GroupDocs.Redaction adalah API sanitasi yang kuat yang memungkinkan Anda untuk menghapus atau mengedit informasi rahasia dari lebih dari 30 jenis dokumen."

title: "Redact Metadata Versi dari XLTX Document di Java"
description: "GroupDocs.Redaction adalah API sanitasi yang kuat yang memungkinkan Anda untuk menghapus atau mengedit informasi rahasia dari lebih dari 30 jenis dokumen."

button:
    enable: true

about:
    enable: true
    title: "Apa itu Metadata Redaksi?"
    content: |
        Menyimpan dokumen dalam format asli memerlukan penghapusan atau penyuntingan metadatanya untuk menghapus semua data rahasia. Untuk tujuan ini GroupDocs.Redaction menyediakan API redaksi metadata. GroupDocs.Redaction API memungkinkan untuk menyimpan dokumen yang disunting dalam PDF, mengubah semua halaman menjadi gambar raster atau menyimpan dokumen yang disunting dalam format aslinya untuk pengeditan lebih lanjut. Semua format file termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lainnya memiliki beberapa properti metadata. Properti ini termasuk nama penulis, kategori, nama perusahaan, komentar, waktu pembuatan, pembaruan terakhir dan banyak lagi. Ada juga beberapa data tersembunyi yang terkait dengan file yang dapat dilihat menggunakan berbagai alat dan teknik. Dengan GroupDocs.Redaction API Anda dapat menerapkan redaksi metadata ke salah satu properti metadata ini. Anda dapat mengubah atau menghapusnya dengan memfilter metadata yang Anda inginkan. Dalam panduan ini kami akan menjelaskan bagaimana Anda dapat menyunting metadata Versi dari dokumen XLTX di Java.

steps:
    enable: true
    block:
    - title_left: "Redact XLTX Metadata di Java"
      content_left: |
        Kode berikut memungkinkan Anda untuk mencari dan menyunting data sensitif dari dokumen XLTX. Anda dapat mengatur ruang lingkup untuk redaksi dengan mengatur filter, mis. ke MetadataFilter.Version. Ini akan membuat kecocokan ekspresi reguler dibatalkan di semua item metadata, kecuali properti "Versi":
        
      title_right: "Cara Redact XLTX Metadata"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file XLTX
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk menemukan dan mengganti data sensitif dari metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Gunakan MetadataFilters.Version dalam kode di bawah ini 
        * Panggil metode simpan dengan objek [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)
        
      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"

    - title_left: "Hapus XLTX Metadata di Java"
      content_left: |
        Anda dapat mengganti semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimal) menggunakan kelas EraseMetadataRedaction. Kode berikut menunjukkan bagaimana Anda dapat memfilter dan kemudian menghapus properti metadata dari dokumen XLTX. Contoh di bawah ini mengosongkan semua properti dokumen:
        
      title_right: "Cara Menghapus Metadata Versi"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file XLTX
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk menghapus metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Ganti MetadataFilter.All dengan MetadataFilter.Version dalam kode di bawah ini
        * Panggil metode simpan dengan objek [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)
        
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

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---