
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redak Teks Sensitif di PDF dengan C#"
head_description: "Lindungi informasi pribadi dalam file PDF Anda menggunakan GroupDocs.Redaction for .NET. Cari dan redak data sensitif dengan cepat."

############################# Header ############################
title: "Hapus Teks Sensitif dari Dokumen PDF Menggunakan .NET" 
description: "Gunakan C# dan GroupDocs.Redaction for .NET untuk mengontrol penuh atas konten dalam file PDF Anda. Redak data pribadi, hukum, atau rahasia secara akurat."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan kepada pengembang C# semua yang mereka butuhkan untuk meredak konten PDF. Bersihkan teks, gambar, anotasi, komentar, dan metadata dalam jenis file populer.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Meredak Konten dalam File Pdf"
    content: |
      Lindungi dokumen Anda di aplikasi .NET mana pun menggunakan GroupDocs.Redaction for .NET. Redak teks sensitif dengan cepat dan tepat.
      
      1. Inisialisasi Redactor dan muat file Pdf Anda.
      2. Atur opsi redaksi yang Anda butuhkan.
      3. Tentukan teks yang dicari dan teks pengganti.
      4. Jalankan redaksi dan simpan file.
   
    code:
      platform: "net"
      copy_title: "Salin"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Contoh redaksi"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "klik untuk menyalin"
        copy_done: "disalin"
      links:
        #  loop
        - title: "Lebih banyak contoh"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Dokumentasi"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Cara meredak teks dalam file PDF

        // Muat file Anda menggunakan konstruktor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Atur preferensi redaksi Anda
            // Pilih apa yang dicari dan apa yang akan diganti
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Terapkan redaksi dan simpan file PDF baru
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Cara untuk Meredak Dokumen"
  description: "GroupDocs.Redaction for .NET membantu menghapus atau menyembunyikan konten sensitif dalam berbagai format file. Jaga dokumen tetap bersih dan aman untuk dibagikan."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Alat dan opsi redaksi"
  features:
    # feature loop
    - title: "Ganti teks rahasia"
      content: "Temukan dan ganti teks yang cocok di mana saja dalam file Anda. Mendukung regex dan opsi pencarian cerdas."

    # feature loop
    - title: "Sembunyikan gambar sensitif"
      content: "Tutup gambar atau area tertentu dengan overlay. Sesuaikan pengaturan halaman, warna, dan lainnya."

    # feature loop
    - title: "Hapus metadata tersembunyi"
      content: "Hapus data tersembunyi seperti kepemilikan, cap waktu, atau komentar untuk melindungi privasi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redak Teks dengan Regex"
      content: |
        Gunakan ekspresi reguler untuk mencari dan meredak pola teks sensitif seperti email atau ID.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka dokumen yang ingin Anda bersihkan
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Tentukan pola regex EMAIL dan teks yang akan digunakan sebagai pengganti
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Terapkan aturan redaksi
              redactor.Apply(redaction);

              // Simpan file yang telah diredak
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Salin"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "klik untuk menyalin"
          copy_done: "disalin"
        top_links:
          #  loop
          - title: "Unduh hasil"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "Lebih banyak contoh"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Dokumentasi"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Siap untuk memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis atau minta lisensi"
  items:
    #  loop
    - title: "Unduh Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Lisensi"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redak Konten dalam PDF Menggunakan .NET"
    exclude: "PDF"
    description: "Lindungi data resmi dan pribadi dengan meredak teks dalam file PDF menggunakan alat .NET. Jaga dokumen tetap aman dan pribadi."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Presentasi PowerPoint Open XML"


---