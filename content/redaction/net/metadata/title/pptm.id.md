
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "id/redaction/net/metadata/title/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Pengeditan Metadata dari Dokumen di C#"
head_description: "Redaksi metadata sensitif dalam C# dengan menerapkan filter untuk dokumen dengan format berbeda"

############################# Header ############################
title: "Redact Judul Metadata dari PPTM Document di C#"
description: "GroupDocs.Redactions API memungkinkan untuk mencari dan kemudian memperbarui atau menghapus data rahasia apa pun dari metadata dokumen."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apa itu Metadata Redaksi?"
    content: |
        Sebagian besar orang prihatin dengan redaksi teks dokumen. Tetapi redaksi metadata sama pentingnya. Metadata adalah data tersembunyi dari sebuah dokumen yang dapat berisi informasi rahasia yang mungkin tidak ingin Anda bagikan dengan orang lain. Redaksi metadata mengacu pada penghapusan informasi yang tidak diinginkan atau rahasia dari dokumen elektronik. Metadata dokumen meliputi nama penulis, kategori, nama perusahaan, komentar, waktu pembuatan, terakhir diperbarui dan banyak lagi. Terkadang Anda perlu menghapus sepenuhnya bidang metadata yang tidak diinginkan atau Anda mungkin ingin memperbarui nilainya. Dengan GroupDocs.Redaction API Anda dapat menerapkan redaksi metadata ke salah satu properti metadata ini. Anda dapat mengubah atau menghapusnya dengan memfilter metadata yang Anda inginkan. Dalam panduan ini kami akan menjelaskan bagaimana Anda dapat menyunting metadata judul dari dokumen PPTM di C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact Judul dari PPTM Document"
      content_left: |
        Kode berikut memungkinkan Anda untuk mencari dan menyunting data sensitif dari dokumen PPTM. Anda dapat mengatur ruang lingkup untuk redaksi dengan mengatur filter, mis. ke MetadataFilter.Title. - itu akan membiarkan kecocokan ekspresi reguler dibatalkan di semua item metadata, kecuali properti "Judul":
        

      title_right: "Cara Redact PPTM Metadata"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & unggah file PPTM
        * Buat instance kelas [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) untuk menemukan dan mengganti data sensitif dari metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Gunakan MetadataFilter.Title dalam kode di bawah ini 
        * Panggil metode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek [MetadataSearchRedaction](https://apireference.groupdocs. com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Hapus PPTM Metadata di C#"
      content_left: |
        Anda dapat mengganti semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimal) menggunakan kelas EraseMetadataRedaction. Kode berikut menunjukkan bagaimana Anda dapat memfilter dan kemudian menghapus properti metadata dari dokumen DOCX. Contoh di bawah ini mengosongkan semua properti dokumen:
        
        
      title_right: "Hapus PPTM Metadata"
      content_right: |
        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & unggah file PPTM
        * Buat instance [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) untuk menghapus metadata dokumen
        * Tetapkan cakupan untuk redaksi dengan menyetel filter, mis. Ganti MetadataFilter.All dengan MetadataFilter.Title dalam kode di bawah ini 
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