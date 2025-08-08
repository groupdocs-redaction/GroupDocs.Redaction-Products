
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Tutup Teks Sensitif dalam DOCX Menggunakan Overlay dan C#"
head_description: "Gunakan GroupDocs.Redaction for .NET untuk melindungi teks pribadi dalam file DOCX dengan overlay persegi sederhana. Jaga tata letak dokumen Anda tetap utuh dan data Anda tersembunyi."

############################# Header ############################
title: "Tutup Teks dalam DOCX dengan Overlay Menggunakan .NET" 
description: "Sembunyikan konten sensitif dalam dokumen DOCX Anda menggunakan kode C#. Sangat baik untuk perlindungan dokumen hukum, bisnis, atau pribadi."
subtitle: "Fitur GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET membantu pengembang C# menyembunyikan atau menghapus konten pribadi dalam file DOCX. Gunakan untuk menutup teks, gambar, dan metadata dalam berbagai format file.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus data pribadi dari dokumen Docx"
    content: |
      GroupDocs.Redaction for .NET membantu pengembang .NET membersihkan dokumen hanya dengan beberapa baris kode.
      
      1. Buat Redactor dan berikan jalur file Anda.
      2. Tentukan bagaimana penghapusan harus bekerja.
      3. Masukkan teks yang ingin disembunyikan dan pilih warna overlay.
      4. Redak file dan simpan.
   
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
        // Sembunyikan teks di DOCX menggunakan blok overlay

        // Buat Redactor dan muat file
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Atur preferensi penghapusan Anda
            // Masukkan teks dan atur warna blok
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redak dan simpan dokumen yang diperbarui
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih banyak cara untuk membersihkan dokumen"
  description: "Dengan GroupDocs.Redaction for .NET, hapus tipe file yang berbeda untuk menjaga konten Anda tetap aman dan profesional."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Penghapusan cerdas yang terintegrasi"
  features:
    # feature loop
    - title: "Edit atau hapus teks"
      content: "Temukan frasa tertentu dan sembunyikan atau ganti mereka."

    # feature loop
    - title: "Sembunyikan area gambar"
      content: "Tutup titik sensitif dalam gambar atau halaman yang dipindai."

    # feature loop
    - title: "Hapus metadata tersembunyi"
      content: "Hapus info tak terlihat yang dapat mengekspos data pengguna atau sistem."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex untuk menghapus konten"
      content: |
        Lihat bagaimana ekspresi reguler dapat menemukan dan menyembunyikan kata-kata sensitif
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file target
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Tentukan pola dan warna
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Terapkan logika penghapusan
              redactor.Apply(redaction);

              // Ekspor dokumen yang telah dihapus
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
    title: "Sembunyikan Konten dalam DOCX dengan .NET"
    exclude: "DOCX"
    description: "Lindungi data sensitif dalam dokumen DOCX dengan menutupnya menggunakan overlay atau menghapusnya sepenuhnya menggunakan alat .NET."
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