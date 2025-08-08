
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sembunyikan Teks dalam XLSX dengan Overlay C#"
head_description: "GroupDocs.Redaction for .NET membantu menyembunyikan teks dalam file XLSX menggunakan kotak berwarna. Jaga informasi tetap aman tanpa mengubah format dokumen Anda."

############################# Header ############################
title: "Tutupi Teks dalam File XLSX Menggunakan Overlay dan .NET" 
description: "Gunakan C# dan GroupDocs.Redaction for .NET untuk menambahkan overlay sederhana yang memblokir teks sensitif dalam file XLSX Anda."
subtitle: "Fitur GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Bagaimana GroupDocs.Redaction for .NET Membantu"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memungkinkan pengembang yang menggunakan C# untuk menyembunyikan konten yang tidak diinginkan dalam file XLSX. Tutup apa saja — dari kata hingga gambar — di berbagai jenis file.

############################# Steps ############################
steps:
    enable: true
    title: "Tetap aman dengan informasi sensitif dalam dokumen Xlsx"
    content: |
      GroupDocs.Redaction for .NET membantu pengembang .NET melindungi file. Sembunyikan konten pribadi dengan hanya beberapa baris kode.
      
      1. Buat objek Redactor baru dengan jalur file Xlsx Anda.
      2. Sesuaikan pengaturan penghapusan sesuai kebutuhan.
      3. Tambahkan pola pencarian dan pilih warna untuk blok overlay.
      4. Jalankan penghapusan dan simpan file Anda.
   
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
        // Tutupi teks pribadi dalam XLSX menggunakan overlay

        // Muat file dengan Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Pilih bagaimana penghapusan akan bekerja
            // Masukkan teks yang ingin disembunyikan dan pilih warna overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Proses file dan simpan perubahan
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur penghapusan cerdas"
  description: "Gunakan GroupDocs.Redaction for .NET untuk menghapus atau menyembunyikan konten dalam berbagai jenis file. Jaga detail pribadi jauh dari pandangan publik."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Alat redaksi yang praktis"
  features:
    # feature loop
    - title: "Ubah teks apa pun"
      content: "Cari dan perbarui string apa pun dalam dokumen untuk melindungi data."

    # feature loop
    - title: "Sembunyikan konten gambar"
      content: "Tambahkan kotak atau persegi panjang untuk menutupi bagian sensitif dari gambar."

    # feature loop
    - title: "Bersihkan metadata"
      content: "Hapus atau timpa detail file latar belakang sebelum berbagi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cocokkan dan sembunyikan dengan regex"
      content: |
        Pelajari cara mendeteksi dan meredaksi konten menggunakan ekspresi reguler
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka dokumen target
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Siapkan pola dan warna overlay
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Terapkan aturan penghapusan
              redactor.Apply(redaction);

              // Ekspor versi yang telah dihapus
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
    title: "Gunakan .NET untuk Menyembunyikan Info dalam File XLSX"
    exclude: "XLSX"
    description: "Tambahkan overlay atau hapus bagian dari dokumen XLSX Anda untuk melindungi detail sensitif dengan bantuan .NET."
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