---
layout: "auto-gen-gist"
draft: false
path: "redaction/java/metadata/company/ppsx"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
ad_headline: "Sunting Metadata | java_Camel"

head_title: "Redaksi Metadata Dari PPSX Dokumen di Java"
head_description: "Cari, ganti, hapus, atau edit metadata dari berbagai jenis dokumen dengan mudah dengan menerapkan filter untuk memilih properti metadata tertentu menggunakan GroupDocs.Redactions API untuk Java."

title: "Redaksi Metadata Dari PPSX Dokumen di Java"
description: "Cari, ganti, hapus, atau edit metadata dari berbagai jenis dokumen dengan mudah dengan menerapkan filter untuk memilih properti metadata tertentu menggunakan GroupDocs.Redactions API untuk Java."

button:
    enable: true

about:
    enable: true
    title: "Memulai dengan Metadata Redaksi"
    content: |
        Terkadang Anda perlu menghapus bidang metadata yang tidak diinginkan sepenuhnya atau Anda mungkin ingin memperbarui nilainya. Ada juga data tersembunyi yang terkait dengan file yang dapat dilihat menggunakan berbagai alat dan teknik. Ada banyak situasi di mana Anda tidak ingin data ini dapat diakses oleh siapa pun. Redaksi berarti penghapusan informasi yang tidak diinginkan atau rahasia dari berbagai dokumen. Semua format file termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lainnya memiliki struktur metadata tertentu. Properti metadata termasuk nama penulis, kategori, nama perusahaan, komentar, waktu pembuatan dan terakhir diperbarui, dll. Dengan GroupDocs.Redaction API Anda dapat menerapkan redaksi metadata ke salah satu bidang metadata ini. Anda dapat mengubah atau menghapusnya dengan memfilter metadata yang Anda inginkan. Dalam panduan ini kami akan menjelaskan bagaimana Anda dapat menerapkan redaksi metadata dari dokumen PPSX di Java.

steps:
    enable: true
    block:
    - title_left: "Redact Metadata dari PPSX File"
      content_left: |
        Kode berikut memungkinkan Anda untuk mencari dan menyunting data sensitif dari dokumen PPSX. Anda dapat mengatur ruang lingkup untuk redaksi dengan mengatur filter, mis. ke MetadataFilter.Company. Ini akan membuat kecocokan ekspresi reguler dibatalkan di semua item metadata, kecuali properti "Perusahaan":
        
      title_right: "Langkah-langkah untuk Redact Metadata"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file PPSX
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk menemukan dan mengganti data sensitif dari metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Gunakan MetadataFilters.Company dalam kode di bawah ini 
        * Panggil metode simpan dengan objek [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)
        
      gisthash: "5b04349a19f1627145ab6a9f8f0f5fc0"
      gistfile: "RedactCompanyMetadata.java"

    - title_left: "Hapus PPSX Metadata di Java"
      content_left: |
        Anda dapat mengganti semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimal) menggunakan kelas EraseMetadataRedaction. Kode berikut menunjukkan bagaimana Anda dapat memfilter dan kemudian menghapus properti metadata dari dokumen PPSX. Contoh di bawah ini mengosongkan semua properti dokumen:
        
      title_right: "Cara Menghapus Metadata Perusahaan"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & unggah file PPSX
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) untuk menghapus metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Ganti MetadataFilter.All dengan MetadataFilter.Company dalam kode di bawah ini
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
