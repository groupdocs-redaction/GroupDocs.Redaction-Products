---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "id/redaction/net/annotation/pptm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact Anotasi dalam PPTM Dokumen menggunakan Ekspresi Reguler melalui .NET Inti"
head_description: "Kurangi informasi sensitif dalam anotasi menggunakan ekspresi reguler dari dokumen dengan format berbeda"

############################# Header ############################
title: "Redact PPTM Anotasi File melalui C# dan Ekspresi Reguler di .NET Aplikasi Inti"
description: "Temukan dan hapus informasi sensitif dari Dokumen, Spreadsheet & Presentasi Office & OpenOffice serta PPTM di Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redaksi Anotasi Dokumen untuk .NET API"
    content: |
        Antarmuka tunggal format-independen untuk sanitasi informasi sensitif dan rahasia dari dokumen dan gambar PDF, Word, Excel, PowerPoint, termasuk kemampuan untuk mengubah metadata dan menghapus anotasi. Dengan alat GroupDocs.Redaction for .NET Anda dapat menyunting informasi rahasia dan menyimpan dokumen yang telah disunting di PDF, mengubah semua halaman menjadi gambar raster atau menyimpan dokumen dalam format aslinya untuk pengeditan lebih lanjut.

############################# Steps ############################
steps:
    enable: true
    title_left: "Sunting Anotasi dari PPTM menggunakan Ekspresi Reguler melalui C#"
    content_left: |
        [GroupDocs.Redaction](id//redaction/net/) memungkinkan pengembang .NET menggunakan kekuatan penuh ekspresi reguler untuk menyunting file PPTM dengan beberapa langkah mudah.

        *   Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & muat PPTM file
        *   Buat instance kelas [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) untuk menemukan dan mengganti komentar
        *   Panggil metode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek AnnotationRedaction
        
    title_right: "Cara menggunakan GroupDocs Redaction API"
    content_right: |
        Instal paket dari baris perintah sebagai ```nuget install GroupDocs.Redaction``` atau melalui Package Manager Console Visual Studio dengan ```Install-Package GroupDocs.Redaction```. 
        Atau, dapatkan penginstal MSI offline atau DLL dalam file ZIP dari [downloads](https://downloads.groupdocs.com/redaction/net), dan rujuk ke project Anda secara manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pptm"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
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