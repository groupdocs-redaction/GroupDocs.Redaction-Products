---
############################# Static ############################
layout: "autogen"
draft: false
path: "ms/redaction/net/text/pot"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Sunting Maklumat Sensitif daripada POT Dokumen melalui .NET Teras"
head_description: "Guna redaksi teks menggunakan frasa tepat atau ungkapan biasa untuk dokumen dengan format yang berbeza"

############################# Header ############################
title: "Redaksi POT Fail melalui C# dalam .NET Apl Teras"
description: "Cari & Gantikan Teks dalam Dokumen Office & OpenOffice, Hamparan & Pembentangan serta POT pada Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Penyuntingan Dokumen untuk .NET API"
    content: |
        Antara muka bebas format tunggal untuk menyunting maklumat sensitif dan terperingkat daripada dokumen dan imej PDF, Word, Excel, PowerPoint, termasuk keupayaan untuk menukar metadata dan mengalih keluar ulasan. Dengan alat GroupDocs.Redaction for .NET anda boleh menyunting teks dan menyimpan dokumen yang disunting dalam PDF, mengubah semua halaman menjadi imej raster atau menyimpan dokumen dalam format asalnya untuk pengeditan selanjutnya.

############################# Steps ############################
steps:
    enable: true
    title_left: "Sunting Teks Tepat daripada POT melalui C#"
    content_left: |
        [GroupDocs.Redaction](ms//redaction/net/) memudahkan .NET pembangun menambahkan POT ciri redaksi fail dengan beberapa langkah mudah.

        *   Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & muatkan fail POT
        *   Buat contoh kelas [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) untuk mencari dan menggantikan teks
        *   Panggil kaedah [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek ExactPhraseRedaction
        
    title_right: "Bermula dengan Redaction API"
    content_right: |
        Pasang daripada baris arahan sebagai ```nuget install GroupDocs.Redaction``` atau melalui Package Manager Console of Visual Studio dengan ```Install-Pakej GroupDocs.Redaction```. 
        Sebagai alternatif, dapatkan pemasang MSI luar talian atau DLL dalam fail ZIP daripada [muat turun](https://downloads.groupdocs.com/redaction/net) dan rujuknya dalam projek anda secara manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pot"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
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