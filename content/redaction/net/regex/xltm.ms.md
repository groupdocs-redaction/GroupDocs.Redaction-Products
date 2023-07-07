---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ms/redaction/net/regex/xltm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTX  

############################# Head ############################
head_title: "Sunting XLTM Dokumen menggunakan Ungkapan Biasa melalui .NET Teras"
head_description: "Menyunting maklumat sensitif menggunakan ungkapan biasa daripada dokumen format yang berbeza"

############################# Header ############################
title: "Bersihkan XLTM Fail melalui C# dan Ungkapan Biasa dalam .NET Apl Teras"
description: "Cari dan alih keluar maklumat sensitif daripada Dokumen Office & OpenOffice, Hamparan & Pembentangan serta XLTM pada Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Penyuntingan Teks Dokumen untuk API .NET."
    content: |
        Antara muka bebas format tunggal untuk pembersihan maklumat sensitif dan terperingkat daripada dokumen dan imej PDF, Word, Excel, PowerPoint, termasuk keupayaan untuk menukar metadata dan mengalih keluar ulasan. Dengan alat GroupDocs.Redaction for .NET anda boleh menyunting maklumat terperingkat dan menyimpan dokumen yang disunting dalam PDF, mengubah semua halaman menjadi imej raster atau menyimpan dokumen dalam format asalnya untuk pengeditan selanjutnya.

############################# Steps ############################
steps:
    enable: true
    title_left: "Sunting Teks daripada XLTM menggunakan Ungkapan Biasa melalui C#"
    content_left: |
        [GroupDocs.Redaction](ms//redaction/net/) membenarkan .NET pembangun menggunakan kekuatan penuh ungkapan biasa untuk menyunting fail XLTM dengan beberapa langkah mudah.

        *   Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & muatkan fail XLTM
        *   Buat contoh kelas [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) untuk mencari dan menggantikan teks
        *   Panggil kaedah [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek RegexRedaction
        
    title_right: "Bermula dengan Redaction API"
    content_right: |
        Pasang daripada baris arahan sebagai ```nuget install GroupDocs.Redaction``` atau melalui Package Manager Console of Visual Studio dengan ```Install-Pakej GroupDocs.Redaction```. 
        Sebagai alternatif, dapatkan pemasang MSI luar talian atau DLL dalam fail ZIP daripada [muat turun](https://downloads.groupdocs.com/redaction/net) dan rujuknya dalam projek anda secara manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xltm"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
        	redactor.Save();
        }
        ```

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