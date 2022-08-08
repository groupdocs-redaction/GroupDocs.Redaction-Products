---
layout: "autogen"
draft: false
path: "redaction/net/text/csv"
otherformats: PPT POT PPTX DOT RTF DOTM PPSX DOCM DOTX POTM XLS PPSM  

head_title: "Redact Informasi Sensitif dari Dokumen melalui .NET Core"
head_description: "Terapkan redaksi teks menggunakan frasa tepat atau ekspresi reguler untuk dokumen dengan format berbeda"

title: "Redact File CSV melalui C# di .NET Core Apps"
description: "Cari & Ganti Teks di Dokumen Office & OpenOffice, Spreadsheet & Presentasi serta CSV di Windows, Linux & macOS"

submenu:
    enable: true

about:
    enable: true
    title: "Penyuntingan Dokumen untuk .NET API"
    content: |
        Antarmuka format-independen tunggal untuk menyunting informasi sensitif dan rahasia dari PDF, Word, Excel, dokumen dan gambar PowerPoint, termasuk kemampuan untuk mengubah metadata dan menghapus komentar. Dengan alat GroupDocs.Redaction Anda dapat menyunting teks dan menyimpan dokumen yang telah disunting dalam PDF, mengubah semua halaman menjadi gambar raster atau menyimpan dokumen dalam format aslinya untuk pengeditan lebih lanjut.

steps:
    enable: true
    title_left: "Redact Teks Tepat dari CSV melalui C#"
    content_left: |
        [GroupDocs.Redaction](/id/redaction/net/) memudahkan pengembang .NET untuk menambahkan fitur redaksi file CSV dengan beberapa langkah mudah.

        * Buat instance kelas [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) & muat file CSV
        * Buat instance kelas [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) untuk menemukan dan mengganti teks
        * Panggil metode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) dengan objek ExactPhraseRedaction
        
    title_right: "Memulai dengan Redaction API"
    content_right: |
        Instal dari baris perintah sebagai ```nuget install GroupDocs.Redaction``` atau melalui Package Manager Console dari Visual Studio dengan ```Install-Package GroupDocs.Redaction```. 
        Atau, dapatkan penginstal MSI offline atau DLL dalam file ZIP dari [downloads](https://downloads.groupdocs.com/redaction/net), dan rujuk di project Anda secara manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.csv"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
        

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---