
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sembunyikan Teks Sensitif dalam POWERPOINT dengan Overlay C#"
head_description: "GroupDocs.Redaction for .NET memungkinkan Anda menyembunyikan bagian dari file POWERPOINT dengan penghapusan overlay sederhana. Jaga dokumen tetap aman tanpa mengubah struktur."

############################# Header ############################
title: "Redaksi Teks dalam POWERPOINT dengan Overlay Menggunakan .NET" 
description: "Lindungi konten dalam file POWERPOINT Anda dengan menempatkan blok overlay dengan bantuan C# dan GroupDocs.Redaction for .NET."
subtitle: "Alat di dalam GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang Alat Ini"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET membantu pengguna C# membersihkan dokumen POWERPOINT dengan menutupi atau menghapus teks, metadata, atau gambar sesuai kebutuhan.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan konten dalam dokumen Powerpoint"
    content: |
      Gunakan GroupDocs.Redaction for .NET dalam aplikasi .NET Anda untuk membersihkan file sebelum distribusi.
      
      1. Berikan jalur file ke instance Redactor baru.
      2. Tetapkan apa dan bagaimana Anda ingin meredaksi.
      3. Tentukan pola teks dan atur warna overlay.
      4. Redak dan simpan file Anda yang diperbarui.
   
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
        // Overlay teks dalam POWERPOINT untuk menyembunyikan rincian

        // Gunakan Redactor untuk membuka file Anda
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Sesuaikan pengaturan untuk redaksi
            // Pilih teks dan warna pemblokiran
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Jalankan dan simpan file yang telah dihapus
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan data sensitif dengan mudah"
  description: "Gunakan GroupDocs.Redaction for .NET untuk menghapus atau menutup konten di berbagai jenis dokumen — ideal untuk melindungi data dalam file hukum, bisnis, atau pribadi."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Penghapusan dokumen yang fleksibel"
  features:
    # feature loop
    - title: "Tukar teks"
      content: "Cari kata atau angka dan ganti atau sembunyikan mereka."

    # feature loop
    - title: "Redaksi foto atau bagian"
      content: "Tambahkan overlay pada gambar atau titik tertentu di halaman."

    # feature loop
    - title: "Hapus data tambahan"
      content: "Bersihkan metadata yang dapat mengungkap informasi tersembunyi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Temukan & redaksi dengan regex"
      content: |
        Ini menunjukkan bagaimana regex dapat membantu mengidentifikasi dan menyembunyikan teks
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file yang perlu diradaksi
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Siapkan aturan Anda menggunakan regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Jalankan proses redaksi
              redactor.Apply(redaction);

              // Simpan versi yang telah dibersihkan
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Sembunyikan Konten dalam POWERPOINT Menggunakan .NET"
    exclude: "POWERPOINT"
    description: "Tambahkan overlay atau hapus data dari file POWERPOINT Anda untuk menjaga konten sensitif tetap pribadi menggunakan .NET."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Presentasi PowerPoint Open XML"


---