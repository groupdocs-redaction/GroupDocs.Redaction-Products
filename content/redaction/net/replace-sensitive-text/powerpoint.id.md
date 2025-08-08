
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari POWERPOINT Menggunakan C#"
head_description: "Lindungi file POWERPOINT Anda dengan GroupDocs.Redaction for .NET dan C#. Cara cepat dan mudah untuk meredak teks."

############################# Header ############################
title: "Temukan dan Hapus Teks Sensitif dalam File POWERPOINT dengan .NET" 
description: "Gunakan C# dan GroupDocs.Redaction for .NET untuk melindungi file pribadi atau kerja Anda. Informasi pribadi Anda tetap tersembunyi."
subtitle: "Fitur Kunci dari GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa Itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberi pengguna C# alat untuk membersihkan dokumen POWERPOINT. Redak teks, gambar, catatan, dan data latar belakang.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Meredak File Powerpoint"
    content: |
      Dengan GroupDocs.Redaction for .NET, mudah untuk menemukan dan mengganti konten pribadi dalam aplikasi .NET.
      
      1. Buat Redactor dan buka file Powerpoint Anda.
      2. Pilih pengaturan redaksi Anda.
      3. Tentukan apa yang dicari dan teks pengganti yang ingin digunakan.
      4. Mulai redaksi dan simpan file yang diperbarui.
   
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
        // Langkah-langkah untuk meredak konten dalam dokumen POWERPOINT

        // Buka file dengan Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Sesuaikan pengaturan redaksi Anda
            // Pilih apa yang dicari dan apa yang akan diganti
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Jalankan redaksi dan simpan file POWERPOINT baru Anda
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Alat Redaksi"
  description: "GroupDocs.Redaction for .NET memberi Anda cara yang kuat untuk menyembunyikan atau menghapus informasi pribadi di berbagai jenis file. Bagus untuk berbagi dengan aman."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Alat dan pengaturan redaksi yang tersedia"
  features:
    # feature loop
    - title: "Tukar teks pribadi"
      content: "Cari dan ganti kecocokan dengan opsi teks cerdas, termasuk dukungan regex."

    # feature loop
    - title: "Sembunyikan gambar pribadi"
      content: "Tutup gambar atau bagian dari halaman. Anda dapat menyesuaikan warna dan ukuran overlay."

    # feature loop
    - title: "Hapus metadata tersembunyi"
      content: "Hapus informasi seperti nama penulis, riwayat pengeditan, dan komentar untuk melindungi identitas Anda."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Regex untuk Redaksi yang Lebih Cerdas"
      content: |
        Temukan dan hapus pola data seperti email atau ID dengan ekspresi reguler.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file yang ingin Anda bersihkan
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Tetapkan pola regex EMAIL dan pilih teks pengganti
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Jalankan proses redaksi
              redactor.Apply(redaction);

              // Simpan file akhir yang telah diredak
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
    title: "Cara Meredak POWERPOINT dengan .NET"
    exclude: "POWERPOINT"
    description: "Gunakan .NET untuk membersihkan file POWERPOINT. Jaga konten Anda tetap pribadi dan aman dari kebocoran."
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