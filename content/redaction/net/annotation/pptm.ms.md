---
############################# Static ############################
layout: "autogen"
draft: false
path: "ms/redaction/net/annotation/pptm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Sunting Anotasi dalam PPTM Dokumen menggunakan Ungkapan Biasa melalui .NET Teras"
head_description: "Menyunting maklumat sensitif dalam anotasi menggunakan ungkapan biasa daripada dokumen format yang berbeza"

############################# Header ############################
title: "Redaksi PPTM Anotasi Fail melalui C# dan Ungkapan Biasa dalam .NET Apl Teras"
description: "Cari dan alih keluar maklumat sensitif daripada Dokumen Office & OpenOffice, Hamparan & Pembentangan serta PPTM pada Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redaksi Anotasi Dokumen untuk .NET API"
    content: |
        Antara muka bebas format tunggal untuk pembersihan maklumat sensitif dan terperingkat daripada dokumen dan imej PDF, Word, Excel, PowerPoint, termasuk keupayaan untuk menukar metadata dan mengalih keluar anotasi. Dengan alat GroupDocs.Redaction for .NET anda boleh menyunting maklumat terperingkat dan menyimpan dokumen yang disunting dalam PDF, mengubah semua halaman menjadi imej raster atau menyimpan dokumen dalam format asalnya untuk pengeditan selanjutnya.

############################# Steps ############################
steps:
    enable: true
    title_left: "Sunting Anotasi daripada PPTM menggunakan Ungkapan Biasa melalui C#"
    content_left: |
        [GroupDocs.Redaction](ms//redaction/net/) membenarkan .NET pembangun menggunakan kekuatan penuh ungkapan biasa untuk menyunting fail PPTM dengan beberapa langkah mudah.

        *   Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & muatkan fail PPTM
        *   Buat contoh kelas [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) untuk mencari dan menggantikan ulasan
        *   Panggil kaedah [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek AnnotationRedaction
        
    title_right: "Cara menggunakan GroupDocs Redaction API"
    content_right: |
        Pasang pakej daripada baris arahan sebagai ```nuget install GroupDocs.Redaction``` atau melalui Package Manager Console of Visual Studio dengan ```Install-Package GroupDocs.Redaction```. 
        Sebagai alternatif, dapatkan pemasang MSI luar talian atau DLL dalam fail ZIP daripada [muat turun](https://downloads.groupdocs.com/redaction/net) dan rujuknya dalam projek anda secara manual.  
        
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