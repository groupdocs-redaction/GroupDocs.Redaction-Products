
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ms/redaction/net/metadata/category/ppsx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Sunting Metadata Sensitif daripada PPSX Dokumen dalam C#"
head_description: "Gunakan redaksi metadata dengan menggunakan penapis untuk dokumen dengan format yang berbeza"

############################# Header ############################
title: "Nama kategori Redact dari PPSX Metadata dalam C#"
description: "GroupDocs.Redaction s menyediakan API fleksibel yang membolehkan untuk mencari & mengganti/membuang sebarang sifat metadata menggunakan penapis."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apakah Metadata Redaction?"
    content: |
        Redaction merujuk kepada penyingkiran maklumat yang tidak diingini atau sulit dari dokumen elektronik. Semua format fail termasuk PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan lain-lain mempunyai beberapa sifat metadata. Ciri-ciri ini termasuk nama pengarang, kategori, nama syarikat, komen, masa penciptaan, terakhir dikemas kini dan banyak lagi. Kadang-kadang anda perlu memadamkan medan metadata yang tidak diingini sepenuhnya atau anda mungkin mahu mengemas kini nilainya. Terdapat juga beberapa data tersembunyi yang berkaitan dengan fail yang boleh dilihat menggunakan pelbagai alat dan teknik. Terdapat banyak kes apabila anda tidak mahu data ini diakses oleh sesiapa sahaja. Dengan GroupDocs.Redaction API anda boleh menggunakan redaksi metadata pada mana-mana sifat metadata ini. Anda boleh menukar atau memadamnya dengan menapis metadata yang anda inginkan. Dalam panduan ini, kami akan menerangkan bagaimana anda boleh menyunting nama kategori dari metadata PPSX dalam C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Sunting PPSX Metadata dalam C#"
      content_left: |
        Kod berikut membolehkan anda mencari dan menyunting data sensitif dari dokumen PPSX. Anda boleh menetapkan ruang lingkup untuk redaksi dengan menetapkan penapis, mis. Ke MetadataFilter.category. - ia akan membiarkan padanan ungkapan biasa dibatalkan di semua item metadata, kecuali harta “Kategori”:
        

      title_right: "Cara Menyunting Metadata PPSX"
      content_right: |
        * Buat contoh [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) kelas & muat naik fail PPSX
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) untuk mencari dan menggantikan data sensitif dari metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gunakan Metadatafilter.Category dalam kod di bawah
        * Panggil [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) kaedah dengan objek [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "852b461c316559151cb6075b4ecde2ce"
      gistfile: "RedactCategoryMetadata.cs"

    - title_left: "Keluarkan Metadata PPSX dalam C#"
      content_left: |
        Anda boleh menggantikan semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimum) menggunakan kelas EraseMetadataredAction. Kod berikut menunjukkan bagaimana anda boleh menapis dan kemudian mengalih keluar sifat metadata daripada dokumen PPSX. Contoh di bawah mengosongkan semua sifat dokumen:
        
        
      title_right: "Padamkan Metadata PPSX"
      content_right: |
        * Buat contoh [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) kelas & muat naik fail PPSX
        * Buat contoh [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) untuk mengalih keluar metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gantikan Metadatafilter.All dengan metadatafilter.category dalam kod di bawah 
        * Panggil [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) kaedah dengan objek [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Keperluan Sistem"
      content_left: |
        GroupDocs.Redaction for .NET menyokong mana-mana sistem operasi 32-bit atau 64-bit di mana platform .NET dipasang. Ia tidak memerlukan sebarang perisian luaran atau alat pihak ketiga untuk dipasang. Untuk panduan keperluan sistem yang lengkap, sila lawati [keperluan sistem](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Arahan Pemasangan"
      content_right: |
        Pasang dari baris arahan sebagai ```nuget install GroupDocs.Redaction ```atau melalui Konsol Pengurus Pakej Visual Studio dengan ```Pasang-Pakej GroupDocs.Redaction```. 
        Sebagai alternatif, dapatkan pemasang MSI luar talian atau DLL dalam fail ZIP dari [muat turun](https://downloads.groupdocs.com/redaction/net), dan rujuknya dalam projek anda secara manual.

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