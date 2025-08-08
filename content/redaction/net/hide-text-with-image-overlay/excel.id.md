
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sembunyikan Konten dalam EXCEL dengan Penghapusan Overlay dan C#"
head_description: "Tutup teks dalam dokumen EXCEL menggunakan blok warna solid dengan GroupDocs.Redaction for .NET. Cara mudah untuk melindungi konten pribadi."

############################# Header ############################
title: "Penghapusan Overlay untuk File EXCEL di .NET" 
description: "Gunakan kode C# untuk menyembunyikan teks dan melindungi data di dalam file EXCEL Anda. Solusi bersih untuk keamanan dokumen."
subtitle: "Apa yang Termasuk dalam GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Mengapa Memilih GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET dibuat untuk pengembang C# yang ingin meredaksi atau menghapus konten di file EXCEL. Gunakan untuk bekerja dengan teks, metadata, dan gambar.

############################# Steps ############################
steps:
    enable: true
    title: "Redak info sensitif dalam format Excel"
    content: |
      GroupDocs.Redaction for .NET adalah alat sederhana bagi pengembang .NET untuk membersihkan dokumen sebelum dibagikan.
      
      1. Mulai Redactor dan muat file Excel Anda.
      2. Tentukan pengaturan penghapusan untuk tugas Anda.
      3. Tambahkan kata kunci atau frasa untuk dihapus dan pilih warna.
      4. Jalankan alat dan simpan perubahannya.
   
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
        // Gunakan overlay untuk menyembunyikan teks dalam EXCEL

        // Buat Redactor dan muat file Anda
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Pilih aturan penghapusan
            // Masukkan apa yang ingin disembunyikan dan pilih warna
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan penghapusan dan simpan file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur kunci untuk perlindungan data"
  description: "GroupDocs.Redaction for .NET memungkinkan Anda untuk menyembunyikan atau menghapus data di dalam dokumen Anda tanpa kehilangan tata letak atau makna."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Dirancang untuk keamanan dokumen"
  features:
    # feature loop
    - title: "Ubah konten teks"
      content: "Ganti atau sembunyikan kata-kata yang dipilih di seluruh file."

    # feature loop
    - title: "Redaksi visual"
      content: "Sembunyikan foto atau area dengan blok sederhana."

    # feature loop
    - title: "Bersihkan metadata"
      content: "Hapus data latar belakang seperti nama penulis atau stempel waktu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi teks regex"
      content: |
        Berikut cara menggunakan regex untuk menemukan dan menyembunyikan konten dalam file
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muat dokumen untuk diproses
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Tambahkan pola dan pengaturan overlay
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Terapkan perubahannya
              redactor.Apply(redaction);

              // Simpan dan tutup dokumen yang telah dihapus
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
    title: "Redaksi File EXCEL dengan .NET"
    exclude: "EXCEL"
    description: "Tutupi konten sensitif dalam EXCEL menggunakan overlay persegi atau redaksi bersih dengan fitur .NET."
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