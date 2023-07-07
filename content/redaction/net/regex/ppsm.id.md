---
############################# Static ############################
layout: "autogen"
draft: false
path: "id/redaction/net/regex/ppsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact PPSM Dokumen menggunakan Ekspresi Reguler melalui .NET Core"
head_description: "Kurangi informasi sensitif menggunakan ekspresi reguler dari dokumen dengan format berbeda"

############################# Header ############################
title: "Bersihkan PPSM File melalui C# dan Ekspresi Reguler di .NET Aplikasi Inti"
description: "Temukan dan hapus informasi sensitif dari Dokumen, Spreadsheet & Presentasi Office & OpenOffice serta PPSM di Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redaksi Teks Dokumen untuk .NET API"
    content: |
        Antarmuka tunggal format-independen untuk sanitasi informasi sensitif dan rahasia dari dokumen dan gambar PDF, Word, Excel, PowerPoint, termasuk kemampuan untuk mengubah metadata dan menghapus komentar. Dengan alat GroupDocs.Redaction for .NET Anda dapat menyunting informasi rahasia dan menyimpan dokumen yang telah disunting di PDF, mengubah semua halaman menjadi gambar raster atau menyimpan dokumen dalam format aslinya untuk pengeditan lebih lanjut.

############################# Steps ############################
steps:
    enable: true
    title_left: "Sunting Teks dari PPSM menggunakan Ekspresi Reguler melalui C#"
    content_left: |
        [GroupDocs.Redaction](id//redaction/net/) memungkinkan pengembang .NET menggunakan kekuatan penuh ekspresi reguler untuk menyunting file PPSM dengan beberapa langkah mudah.

        *   Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & muat PPSM file
        *   Buat instance kelas [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) untuk menemukan dan mengganti teks
        *   Panggil metode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek RegexRedaction
        
    title_right: "Mulai dengan API Redaksi"
    content_right: |
        Instal dari baris perintah sebagai ```nuget install GroupDocs.Redaction``` atau melalui Package Manager Console Visual Studio dengan ```Install-Package GroupDocs.Redaction```. 
        Atau, dapatkan penginstal MSI offline atau DLL dalam file ZIP dari [downloads](https://downloads.groupdocs.com/redaction/net), dan rujuk ke project Anda secara manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.ppsm"))
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