
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari DOCX Menggunakan C#"
head_description: "Lindungi konten pribadi di file DOCX Anda dengan cepat menggunakan GroupDocs.Redaction for .NET dan C#. Mudah digunakan, cepat menghasilkan hasil."

############################# Header ############################
title: "Temukan dan Sembunyikan Teks Sensitif dalam Dokumen DOCX dengan .NET" 
description: "Baik untuk penggunaan pribadi atau bisnis, GroupDocs.Redaction for .NET dan C# membantu menjaga informasi pribadi di luar pandangan."
subtitle: "Bagaimana GroupDocs.Redaction for .NET Membantu Anda" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan kepada pengembang C# alat untuk menemukan dan membersihkan konten sensitif dalam file DOCX. Bekerja dengan teks, gambar, catatan, dan banyak lagi.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Meredak Konten dalam File Docx"
    content: |
      Ikuti langkah cepat ini dalam proyek .NET Anda untuk membersihkan teks pribadi dengan GroupDocs.Redaction for .NET.
      
      1. Mulai Redactor baru dan muat file Docx.
      2. Pilih pengaturan redaksi yang Anda inginkan.
      3. Masukkan teks yang ingin dicari dan apa yang ingin Anda ganti.
      4. Jalankan redaksi dan simpan file Anda.
   
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
        // Meredak teks dalam file DOCX

        // Muat file Anda menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Pilih opsi redaksi yang sesuai dengan kebutuhan Anda
            // Tentukan apa yang dicari dan apa yang akan diganti
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Jalankan alat dan simpan file yang telah diredak
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi Lainnya"
  description: "Dengan GroupDocs.Redaction for .NET, mudah untuk menghapus konten tersembunyi atau terlihat dari berbagai jenis file. Bagus untuk berbagi dengan aman."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ikhtisar alat redaksi"
  features:
    # feature loop
    - title: "Ganti teks pribadi"
      content: "Cari teks tertentu di mana saja dalam file dan ganti. Bekerja dengan teks biasa atau pola."

    # feature loop
    - title: "Tutup gambar sensitif"
      content: "Tutup bagian gambar atau seluruh halaman dengan overlay. Anda mengontrol warna, ukuran, dan posisi."

    # feature loop
    - title: "Hapus data tersembunyi"
      content: "Hapus metadata seperti nama, komentar, atau cap waktu untuk memastikan tidak ada yang tertinggal."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Temukan dan Redak Pola dengan Regex"
      content: |
        Gunakan regex untuk mencari jenis data tertentu seperti alamat email atau nomor ID dan membersihkannya secara otomatis.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file yang perlu dibersihkan
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Buat aturan regex EMAIL dan string pengganti
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Jalankan redaksi menggunakan pengaturan Anda
              redactor.Apply(redaction);

              // Simpan file yang diperbarui
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
    title: "Redak Data dalam DOCX Menggunakan .NET"
    exclude: "DOCX"
    description: "Lindungi informasi pribadi atau resmi dengan menyembunyikannya dalam dokumen DOCX menggunakan .NET. Sederhana dan efektif."
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