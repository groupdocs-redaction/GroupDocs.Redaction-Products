
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari PPTX Menggunakan C#"
head_description: "Segera sembunyikan konten pribadi dalam presentasi PPTX Anda dengan GroupDocs.Redaction for .NET dan C#. Redaksi cepat, pengaturan sederhana."

############################# Header ############################
title: "Edit atau Sembunyikan Teks Sensitif dalam Dokumen PPTX dengan .NET" 
description: "Jaga presentasi Anda tetap bersih dan pribadi. Gunakan GroupDocs.Redaction for .NET dan C# untuk menghapus apapun yang tidak ingin Anda bagikan."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberi pengembang C# apa yang mereka perlukan untuk menghapus konten sensitif dari file PPTX. Ini menangani teks, visual, komentar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Langkah untuk Membersihkan Presentasi Pptx"
    content: |
      Gunakan GroupDocs.Redaction for .NET dalam aplikasi .NET Anda untuk menghapus atau menutupi konten sensitif hanya dalam beberapa langkah.
      
      1. Mulai Redactor baru dan muat file Pptx Anda.
      2. Pilih aturan redaksi yang ingin Anda terapkan.
      3. Atur teks untuk dicari dan apa yang akan diganti.
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
        // Meredak presentasi PPTX

        // Buka file dengan Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Pilih pengaturan redaksi
            // Pilih teks untuk dicari dan diganti
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Terapkan perubahan dan simpan file yang diperbarui
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi yang Dapat Anda Gunakan"
  description: "GroupDocs.Redaction for .NET membantu Anda menemukan dan menyembunyikan teks sensitif, gambar, dan data tersembunyi di berbagai jenis file. Sempurna untuk berbagi file dengan aman."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opsi redaksi yang tersedia"
  features:
    # feature loop
    - title: "Ganti teks tersembunyi"
      content: "Cari dan tukar kata atau frasa rahasia di mana saja dalam file. Regex juga didukung."

    # feature loop
    - title: "Tutup gambar"
      content: "Gunakan blok untuk menyembunyikan gambar atau area yang ingin Anda sembunyikan. Kontrol bentuk, ukuran, dan warna."

    # feature loop
    - title: "Hapus detail tersembunyi"
      content: "Bersihkan metadata seperti nama penulis, tanggal terakhir diedit, atau komentar untuk membuat file Anda bersih."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redak Menggunakan Pola Regex"
      content: |
        Temukan dan bersihkan data seperti alamat email atau ID menggunakan regex. Bagus untuk redaksi yang dapat diulang.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file Anda
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Tulis pola regex EMAIL dan atur pengganti
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Terapkan pengaturan redasi Anda
              redactor.Apply(redaction);

              // Simpan versi yang telah diredak
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
    title: "Bersihkan File PPTX dengan .NET"
    exclude: "PPTX"
    description: "Jadikan dokumen PPTX Anda lebih aman untuk dibagikan dengan menyembunyikan teks pribadi menggunakan .NET. Hasil yang cepat dan dapat diandalkan."
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