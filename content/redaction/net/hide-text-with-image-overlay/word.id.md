
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Gunakan Overlay untuk Menyembunyikan Teks dalam WORD melalui C#"
head_description: "GroupDocs.Redaction for .NET memudahkan untuk menutup teks sensitif dalam WORD dengan blok warna. Jaga dokumen tetap utuh saat menyembunyikan apa yang penting."

############################# Header ############################
title: "Overlay Redaksi Teks dalam File WORD dengan .NET" 
description: "Lindungi informasi penting dalam file WORD menggunakan overlay persegi yang ditulis dalam C#. Ideal untuk keamanan dan kepatuhan."
subtitle: "Lihat apa yang bisa dilakukan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenalkan GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Pengembang yang bekerja dengan C# dapat menggunakan GroupDocs.Redaction for .NET untuk menyembunyikan atau menghapus bagian dari dokumen WORD. Sembunyikan nama, angka, atau data lainnya dalam beberapa baris kode.

############################# Steps ############################
steps:
    enable: true
    title: "Redak data pribadi dalam file Word"
    content: |
      GroupDocs.Redaction for .NET membantu pengembang .NET menghapus konten sensitif dengan cepat. Ikuti langkah-langkah ini untuk mengamankan file Anda.
      
      1. Inisialisasi Redactor dengan jalur ke file Word Anda.
      2. Tetapkan aturan untuk meredaksi konten.
      3. Pilih pola teks dan warna untuk menutupinya.
      4. Terapkan redaksi dan simpan file yang telah diedit.
   
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
        // Redaksi teks dalam WORD menggunakan overlay gambar

        // Muat file Anda dengan Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Tentukan apa yang perlu dihapus
            // Tambahkan teks yang cocok dan warna overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Jalankan penghapusan dan simpan file akhir
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat redaksi tambahan"
  description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menjaga file tetap bersih dengan menghapus informasi yang terlihat dan tersembunyi sambil mempertahankan tata letak."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Output yang bersih dan aman"
  features:
    # feature loop
    - title: "Ganti teks yang terbuka"
      content: "Sembunyikan kata atau frasa yang mungkin melanggar data penting."

    # feature loop
    - title: "Tutup gambar"
      content: "Tandai gambar sensitif dengan blok padat."

    # feature loop
    - title: "Hapus info tersembunyi"
      content: "Bersihkan metadata latar belakang untuk menjaga file pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan teks yang cocok dengan regex"
      content: |
        Contoh ini menunjukkan bagaimana menggunakan ekspresi reguler untuk menemukan dan menutup konten sensitif
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka dokumen untuk dihapus
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Pilih pola dan warna
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Jalankan aturan penghapusan
              redactor.Apply(redaction);

              // Simpan dan tinjau salinan yang telah dihapus
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
    title: "Lindungi File WORD Anda Menggunakan .NET"
    exclude: "WORD"
    description: "Dengan .NET, Anda dapat menyembunyikan teks atau menghapus metadata dalam format WORD tanpa merusak tata letak atau format."
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