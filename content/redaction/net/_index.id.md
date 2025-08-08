---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: id
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Redaksi data sensitif dalam dokumen Anda menggunakan .NET"
head_description: "Lindungi dokumen bisnis Anda dengan GroupDocs.Redaction for .NET. Meredaksi, menyembunyikan, atau menghapus konten rahasia dari file PDF, dokumen Word, Excel, PowerPoint, dan gambar dengan mudah."

############################# Header ############################
title: "Aman kan Konten Anda dengan GroupDocs.Redaction"
description: "Redaksi, sembunyikan, atau hapus secara permanen informasi sensitif dan metadata dari PDF, dokumen Word, spreadsheet, presentasi, dan gambar menggunakan solusi .NET kami yang kuat."
words:
  for: "untuk"

actions:
  main: "Unduh Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Lisensi"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Siap untuk Memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis atau minta lisensi."

release:
  title: "Versi {0} Diluncurkan"
  notes: "Lihat apa yang baru"
  downloads: "Unduhan"

code:
  title: "Cara Meredaksi Konten File"
  more: "Lebih banyak contoh"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Serahkan file input ke instance Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Konfigurasikan opsi redaksi
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Jalankan proses redaksi
        RedactorChangeLog result = redactor.Apply(red);

        // Simpan file yang sudah direduksi
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction Dalam Sekilas"
  description: "Tambahkan redaksi konten bertipe profesional ke aplikasi .NET Anda"
  features:
    # feature loop
    - title: "Redaksi Konten Teks"
      content: "GroupDocs.Redaction for .NET memungkinkan Anda untuk menemukan dan meredaksi teks sensitif. Teks dapat diganti atau disembunyikan menggunakan overlay gambar berwarna untuk keamanan tambahan. Didukung di berbagai format termasuk PDF dan dokumen Office, fitur ini membantu melindungi data pribadi dan memperlancar kepatuhan bisnis."

    # feature loop
    - title: "Redaksi Gambar"
      content: "Secara otomatis deteksi dan redaksi gambar—baik sepenuhnya atau sebagian—pada halaman dokumen. Tentukan kriteria pencarian dan area target untuk menyembunyikan konten visual sensitif secara efisien."

    # feature loop
    - title: "Kelola Metadata File"
      content: "Banyak jenis file mengandung metadata tersembunyi, seperti nama pengarang dalam file Word atau data EXIF dalam gambar. GroupDocs.Redaction for .NET memudahkan untuk menemukan dan meredaksi informasi ini demi memastikan privasi data yang komprehensif."

    # feature loop
    - title: "Redaksi Objek Dokumen"
      content: "Pastikan perlindungan konten lengkap dengan meredaksi elemen spesifik dokumen seperti anotasi, komentar, dan objek tersemat dalam format seperti PDF."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independensi Platform"
  description: "GroupDocs.Redaction for .NET kompatibel dengan berbagai sistem operasi, kerangka kerja pengembangan, dan manajer paket."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Format File yang Didukung"
  description: |
    GroupDocs.Redaction for .NET mendukung operasi dengan [format file](https://docs.groupdocs.com/redaction/net/supported-document-formats/) berikut.
  groups:
    # group loop
    - color: "green"
      content: |
        ### Format MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Format Office Lainnya
        * **Portabel:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Format Teks:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Format Lainnya
        * **Web:** HTM, HTML, MD
        * **Gambar:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBook:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for .NET Fitur"
  description: "Ekstrak dan redaksi data dari PDF, dokumen Office, dan gambar dengan kecepatan dan ketepatan tinggi."

  items:
    # feature loop
    - icon: "search"
      title: "Pencarian Fleksibel"
      content: "Lakukan pencarian sensitif dapat menggunakan opsi pencarian peka huruf besar-kecil atau tidak peka huruf besar-kecil untuk meredaksi frasa atau istilah tertentu."

    # feature loop
    - icon: "text"
      title: "Ganti atau Hapus Teks"
      content: "Temukan dan ganti atau hapus teks sensitif di seluruh dokumen Anda."

    # feature loop
    - icon: "image"
      title: "Sembunyikan Teks dengan Gambar"
      content: "Gunakan overlay gambar berwarna untuk menutupi konten yang direduksi secara visual alih-alih mengganti teks."

    # feature loop
    - icon: "search"
      title: "Kemampuan Pencarian Canggih"
      content: "Gunakan ekspresi reguler untuk redaksi konten yang tepat dan fleksibel di set data yang kompleks."

    # feature loop
    - icon: "table"
      title: "Redaksi Terbatas"
      content: "Target halaman tertentu atau area halaman yang ditentukan untuk membatasi redaksi hanya pada bagian yang relevan."

    # feature loop
    - icon: "template"
      title: "Redaksi Metadata"
      content: "Temukan dan redaksi properti metadata untuk melindungi kepemilikan dan detail pembuatan dokumen."

    # feature loop
    - icon: "pdf"
      title: "Format Output Fleksibel"
      content: "Ekspor file yang telah direduksi ke PDF atau format lain yang didukung sambil menjaga integritas tata letak."

    # feature loop
    - icon: "template"
      title: "Penghapusan Metadata Lengkap"
      content: "Hapus semua metadata dari dokumen dalam satu tindakan untuk memastikan privasi mutlak."

    # feature loop
    - icon: "hyperlink"
      title: "Aturan Redaksi Berbasis XML"
      content: "Tentukan kebijakan redaksi dalam format XML untuk pemrosesan otomatis yang dapat diulang di berbagai file."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Contoh Kode"
  description: "Contoh penggunaan umum GroupDocs.Redaction for .NET dalam aksi"
  items:
    # code sample loop
    - title: "Redaksi dengan Ekspresi Reguler"
      content: |
        GroupDocs.Redaction for .NET memungkinkan pengembang C# untuk meredaksi teks menggunakan [ekspresi reguler](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) dan menyembunyikannya dengan overlay gambar:
        {{< landing/code title="Redaksi Dokumen Word Menggunakan Ekspresi Reguler">}}
        ```csharp {style=abap}
        // Buat instance dari kelas Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Tentukan aturan redaksi menggunakan ekspresi reguler
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Sembunyikan semua teks yang cocok dengan overlay kotak biru
            redactor.Apply(redaction);

            // Simpan dokumen Word yang telah direduksi
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Pembersihan Metadata"
      content: |
        Gunakan API kami untuk [menghapus](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) semua metadata dari format file yang didukung:
        {{< landing/code title="Hapus Semua Metadata dari Presentasi">}}
        ```csharp {style=abap}   
        // Berikan path presentasi ke Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Konfigurasikan opsi redaksi
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Hapus semua metadata dari presentasi
            redactor.Apply(redaction);

            // Simpan file presentasi yang telah dibersihkan
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
