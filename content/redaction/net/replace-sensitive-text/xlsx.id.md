
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari XLSX Menggunakan C#"
head_description: "Lindungi file XLSX Anda menggunakan GroupDocs.Redaction for .NET dan C#. Redaksi cepat dan mudah."

############################# Header ############################
title: "Edit atau Sembunyikan Teks Sensitif dalam Dokumen XLSX dengan .NET" 
description: "Dengan GroupDocs.Redaction for .NET dan C#, Anda dapat menghapus informasi pribadi atau bisnis dari file XLSX Anda dan menjaga agar aman untuk dibagikan."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memungkinkan pengembang C# untuk mencari dan menghapus info sensitif dari file XLSX. Ini bekerja dengan teks, gambar, catatan, dan data file.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Meredak Teks dalam File Xlsx"
    content: |
      Gunakan GroupDocs.Redaction for .NET dalam proyek .NET Anda untuk menyembunyikan atau menghapus informasi sensitif hanya dalam beberapa langkah.
      
      1. Buat Redactor dan muat file Xlsx.
      2. Pilih pengaturan redaksi yang sesuai dengan kebutuhan Anda.
      3. Masukkan teks yang ingin dicari dan apa yang ingin diganti.
      4. Jalankan proses redaksi dan simpan file yang diperbarui.
   
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
        // Meredak teks dari file XLSX

        // Gunakan Redactor untuk membuka file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Pilih opsi redaksi Anda
            // Atur teks pencarian dan penggantinya
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Terapkan redaksi dan simpan file yang telah dibersihkan
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Alat untuk Redaksi"
  description: "GroupDocs.Redaction for .NET membantu membersihkan berbagai jenis konten—teks, gambar, atau metadata—agar file Anda siap untuk dibagikan dengan aman."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opsi redaksi ditampilkan"
  features:
    # feature loop
    - title: "Ganti teks sensitif"
      content: "Cari di dalam file dan ganti apa pun yang bersifat rahasia. Mendukung teks sederhana dan pola."

    # feature loop
    - title: "Tutup area gambar"
      content: "Gunakan overlay untuk menyembunyikan data visual. Pilih warna, ukuran area, dan tata letak halaman."

    # feature loop
    - title: "Hapus data tambahan"
      content: "Hapus metadata seperti nama penulis, cap waktu, atau catatan internal untuk menghindari kebocoran."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redak dengan Aturan Regex"
      content: |
        Gunakan regex untuk mencari dan membersihkan pola seperti nomor telepon, email, atau rincian pribadi lainnya.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file untuk mulai
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Tulis aturan regex EMAIL dan pilih penggantian
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Jalankan redaksi berdasarkan pola Anda
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
    title: "Sembunyikan Info dalam XLSX dengan .NET"
    exclude: "XLSX"
    description: "Bersihkan dokumen XLSX Anda dengan menghapus teks pribadi atau sensitif menggunakan alat .NET. Jaga data Anda tetap pribadi."
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