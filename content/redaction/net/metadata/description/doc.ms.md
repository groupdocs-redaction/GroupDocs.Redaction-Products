
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ms/redaction/net/metadata/description/doc"
otherformats: BMP DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redaksi Metadata daripada Dokumen dalam C#"
head_description: "Redact metadata sensitif dalam C# dengan menggunakan penapis untuk dokumen format yang berbeza"

############################# Header ############################
title: "Redact Huraian Metadata daripada DOC Dokumen dalam C#"
description: "GroupDocs.Redaction s API membolehkan untuk mencari dan kemudian mengemas kini atau mengalih keluar sebarang data sulit dari metadata dokumen."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apakah Metadata Redaction?"
    content: |
        Kebanyakan orang prihatin dengan redaksi teks dokumen. Tetapi redaksi metadata sama pentingnya. Metadata adalah data tersembunyi dokumen yang boleh mengandungi maklumat sulit yang anda mungkin tidak mahu berkongsi dengan yang lain. Redaksi metadata merujuk kepada penyingkiran maklumat yang tidak diingini atau sulit dari dokumen elektronik. Metadata dokumen termasuk nama pengarang, kategori, nama syarikat, komen, masa penciptaan, terakhir dikemas kini dan banyak lagi. Kadang-kadang anda perlu memadamkan medan metadata yang tidak diingini sepenuhnya atau anda mungkin mahu mengemas kini nilainya. Dengan GroupDocs.Redaction API anda boleh menggunakan redaksi metadata pada mana-mana sifat metadata ini. Anda boleh menukar atau memadamnya dengan menapis metadata yang anda inginkan. Dalam panduan ini, kami akan menerangkan bagaimana anda boleh menyunting metadata penerangan daripada dokumen DOC dalam C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact Description from DOC Dokumen"
      content_left: |
        Kod berikut membolehkan anda mencari dan menyunting data sensitif dari dokumen DOC. Anda boleh menetapkan skop untuk redaksi dengan menetapkan penapis, mis. Ke Metadatafilter.description. Ia akan meninggalkan padanan ungkapan biasa dibatalkan dalam semua item metadata, kecuali sifat “Penerangan”:
        

      title_right: "Cara Menyunting Metadata DOC"
      content_right: |
        * Buat contoh [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) kelas & muat naik fail DOC
        * Buat contoh kelas [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) untuk mencari dan menggantikan data sensitif dari metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gunakan Metadatafilter.Description dalam kod di bawah
        * Panggil [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) kaedah dengan objek [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "15e3f0329c4e24c0f77f785b87753e0d"
      gistfile: "RedactDescriptionMetadata.cs"

    - title_left: "Keluarkan Metadata DOC dalam C#"
      content_left: |
        Anda boleh menggantikan semua atau metadata tertentu dalam dokumen dengan nilai kosong (kosong atau minimum) menggunakan kelas EraseMetadataredAction. Kod berikut menunjukkan bagaimana anda boleh menapis dan kemudian mengalih keluar sifat metadata daripada dokumen DOC. Contoh di bawah mengosongkan semua sifat dokumen:
        
        
      title_right: "Padamkan Metadata DOC"
      content_right: |
        * Buat contoh [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) kelas & muat naik fail DOC
        * Buat contoh [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) untuk mengalih keluar metadata dokumen
        * Tetapkan skop untuk redaksi dengan menetapkan penapis, contohnya Gantikan MetadataFilter.all dengan metadatafilter.Description dalam kod di bawah 
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