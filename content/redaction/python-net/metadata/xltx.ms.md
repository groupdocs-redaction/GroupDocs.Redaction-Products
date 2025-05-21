
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ms/redaction/net/metadata/xltx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "Gunakan Penyuntingan Metadata pada PDF, DOCX, PPT, PPTX, XLS, XLSX dalam .NET"
head_description: "API GroupDocs.Redactions .NET membenarkan pembangun perisian menggunakan redaksi metadata pada format fail yang berbeza seperti PDF DOC DOCX RTF XLSX CSV PPT PPTX & imej"

############################# Header ############################
title: "Redact & Tapis Metadata daripada PDF, DOCX, PPT, PPTX, XLS, XLSX & Lagi"
description: "API GroupDocs.Redactions .NET membenarkan pembangun perisian menyunting atau menapis metadata daripada pelbagai format fail seperti PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX dan banyak lagi yang lain"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apakah Redaksi Metadata?"
    content: |
        Metadata ialah sejenis data yang menyediakan maklumat tentang data lain. Dengan kata lain anda ramai yang menganggap metadata sebagai rujukan kepada data. Ia membantu untuk meringkaskan maklumat asas tentang data yang boleh digunakan untuk menjejak dan mengurus data dengan mudah. GroupDocs.Redaction for .NET ialah API asli yang berkuasa yang membenarkan pembangun perisian menyunting maklumat sensitif dan terperingkat daripada pelbagai jenis dokumen tanpa memasang sebarang perisian luaran atau alat pihak ketiga. Ia telah menyediakan sokongan untuk pelbagai penapis seperti pengarang, syarikat, kategori, saiz dokumen, tarikh dibuat, tajuk, LastPrinted, komen dan sebagainya. Ia membantu pengguna untuk menggunakan redaksi metadata pada pelbagai format dokumen popular seperti dokumen pemprosesan perkataan, Excel lembaran kerja, pembentangan, PDF dan fail imej raster. Pembangun juga boleh mengemas kini, menggantikan atau memadam metadata dengan menggunakan penapis atau menggunakan carian. Selain itu, pembangun boleh menggunakan berbilang redaksi dengan mudah dalam satu panggilan. Jadi lebih baik cuba untuk mengautomasikan proses redaksi dokumen dan metadata anda dengan memuat turun API dan meneroka ciri asas dan lanjutannya.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Cara Membersihkan Metadata daripada XLTX Dokumen dalam C#"
      content_left: |
        GroupDocs.Redaction for .NET ialah API berkuasa yang membolehkan pengaturcara menyunting, menyembunyikan atau menggantikan maklumat terperingkat daripada pelbagai jenis dokumen popular menggunakan penapis atau carian mengikut ungkapan biasa.
        Contoh kod .NET berikut menunjukkan cara menggunakan redaksi metadata untuk menggantikan semua atau metadata khusus dalam dokumen dengan nilai kosong atau minimum.

      title_right: "Gunakan Redaksi Metadata pada Fail XLTX."
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Panggil Redactor.Apply kaedah dengan EraseMetadataRedaction objek [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction)
        * Panggil Redactor.Save kaedah untuk menyimpan dokumen ke fail "*_Redacted.*" dalam format asal        
      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "cara_membersihkan_metadata_dotnet.cs"

    - title_left: "Redact Metadata daripada XLTX Fail melalui .NET"
      content_left: |
        GroupDocs.Redaction .NET API menjadikan kehidupan pembangun mudah dengan membantu mereka membenamkan automasi dokumen dan melaporkan kerja dengan hanya beberapa baris kod tanpa sebarang kebergantungan luaran.
        Contoh kod C# .NET berikut menunjukkan cara pembangun perisian boleh mengalih keluar data sensitif daripada metadata dokumen dengan hanya beberapa baris kod.
        
      title_right: "Penyuntingan Metadata daripada XLTX Fail"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Buat contoh [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        * Panggil [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 
        * Panggil Redactor.Save kaedah untuk menyimpan dokumen ke fail "*_Redacted.*" dalam format asal
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "Keperluan Sistem"
      content_left: |
        GroupDocs.Redaction for .NET API disokong pada semua platform dan sistem pengendalian utama. Untuk panduan keperluan sistem yang lengkap, sila lawati [keperluan sistem](https://docs.groupdocs.com/redaction/net/system-requirements/) Sebelum melaksanakan kod di bawah, sila pastikan bahawa anda mempunyai prasyarat berikut dipasang pada anda sistem:
        * Sistem Pengendalian: Microsoft Windows, Linux, MacOS
        * Persekitaran Pembangunan: Visual Studio, Xamarin, MonoDevelop dsb
        * Rangka Kerja: .NET Rangka Kerja, .NET Standard, .NET Teras, Mono
        * Dapatkan versi terkini GroupDocs.Redaction .NET API daripada [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Mengapa Menggunakan GroupDocs.Redaction"
      content_right: |
        * Benarkan pengguna menambah format dokumen tersuai dan jenis suntingan
        * Tiada perisian tambahan diperlukan untuk mengalih keluar maklumat sensitif
        * Keupayaan untuk menetapkan dokumen pemaparan julat halaman sebagai PDF
        * Cara mudah untuk menyunting pelbagai jenis metadata: nama pengarang, versi, tajuk, subjek, penerangan dan banyak lagi
        * Pengekstrakan maklumat dokumen - jenis fail, kiraan halaman dsb.
        * Sokongan penuh untuk pelbagai format data

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