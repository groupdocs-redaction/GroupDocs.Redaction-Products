---
layout: "auto-gen-gist"
draft: false
path: "redaction/net/metadata/company/pptx"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 

head_title: "Redact Metadata Sensitif dari Dokumen di C#"
head_description: "Terapkan redaksi metadata dengan menerapkan filter untuk dokumen dengan format berbeda"

title: "Redact Nama Perusahaan dari PPTX Metadata di C#"
description: "GroupDocs.Redactions menyediakan API fleksibel yang memungkinkan untuk mencari & mengganti/menghapus properti metadata apa pun menggunakan filter."

button:
    enable: true

about:
    enable: true
    title: "Apa itu Metadata Redaksi?"
    content: |
        Redaksi mengacu pada penghapusan informasi yang tidak diinginkan atau rahasia dari dokumen elektronik. Semua format file termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lainnya memiliki beberapa properti metadata. Properti ini termasuk nama penulis, kategori, nama perusahaan, komentar, waktu pembuatan, pembaruan terakhir, dan banyak lagi. Terkadang Anda perlu menghapus sepenuhnya bidang metadata yang tidak diinginkan atau Anda mungkin ingin memperbarui nilainya. Ada juga beberapa data tersembunyi yang terkait dengan file yang dapat dilihat menggunakan berbagai alat dan teknik. Ada banyak kasus ketika Anda tidak ingin data ini diakses oleh siapa pun. Dengan GroupDocs.Redaction API Anda dapat menerapkan redaksi metadata ke salah satu properti metadata ini. Anda dapat mengubah atau menghapusnya dengan memfilter metadata yang Anda inginkan. Dalam panduan ini kami akan menjelaskan bagaimana Anda dapat menyunting nama perusahaan dari metadata PPTX di C#.

steps:
    enable: true
    block:
    - title_left: "Redaksi PPTX Metadata di C#"
      content_left: |
        Kode berikut memungkinkan Anda untuk mencari dan menyunting data sensitif dari dokumen PPTX. Anda dapat mengatur ruang lingkup untuk redaksi dengan mengatur filter, mis. ke MetadataFilter.Company. - itu akan membiarkan kecocokan ekspresi reguler dibatalkan di semua item metadata, kecuali properti "Perusahaan":
        
      title_right: "Cara Redact PPTX Metadata"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & unggah file PPTX
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) untuk menemukan dan mengganti data sensitif dari metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Gunakan MetadataFilter.Company dalam kode di bawah ini 
        * Panggil metode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek [MetadataSearchRedaction](https://apireference.groupdocs. com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "28e28d1f0f09bbb1286cd97b95b22712"
      gistfile: "RedactCompanyMetadata.cs"

    - title_left: "Hapus PPTX Metadata di C#"
      content_left: |
        Anda dapat mengganti semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimal) menggunakan kelas EraseMetadataRedaction. Kode berikut menunjukkan bagaimana Anda dapat memfilter dan kemudian menghapus properti metadata dari dokumen PPTX. Contoh di bawah ini mengosongkan semua properti dokumen:
        
      title_right: "Hapus PPTX Metadata"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & unggah file PPTX
        * Buat instance [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) untuk menghapus metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Ganti MetadataFilter.All dengan MetadataFilter.Company dalam kode di bawah ini 
        * Panggil metode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek [MetadataSearchRedaction](https://apireference.groupdocs. com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Persyaratan sistem"
      content_left: |
        GroupDocs.Redaction untuk .NET mendukung sistem operasi 32-bit atau 64-bit tempat platform .NET diinstal. Itu tidak memerlukan perangkat lunak eksternal atau alat pihak ketiga untuk diinstal. Untuk panduan persyaratan sistem lengkap, silakan kunjungi [persyaratan sistem](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "instruksi instalasi"
      content_right: |
        Instal dari baris perintah sebagai ```nuget install GroupDocs.Redaction``` atau melalui Package Manager Console dari Visual Studio dengan ```Install-Package GroupDocs.Redaction```. 
        Atau, dapatkan penginstal MSI offline atau DLL dalam file ZIP dari [downloads](https://downloads.groupdocs.com/redaction/net), dan rujuk di project Anda secara manual.

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---
