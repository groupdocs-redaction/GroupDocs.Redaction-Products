
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redaksi Teks dalam PPTX Menggunakan Overlay dan C#"
head_description: "Sembunyikan konten pribadi dalam dokumen PPTX dengan menutupnya menggunakan persegi berwarna melalui GroupDocs.Redaction for .NET. Jaga tata letak tetap seperti semula."

############################# Header ############################
title: "Redaksi Teks dalam PPTX dengan Overlay Menggunakan .NET" 
description: "Dengan C# dan GroupDocs.Redaction for .NET, mudah untuk melindungi data sensitif dalam file PPTX dengan menyembunyikannya dari pandangan."
subtitle: "Jelajahi GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa yang Dilakukan GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberi Anda kekuatan untuk menutupi atau menghapus konten dalam dokumen PPTX menggunakan C#. Sembunyikan apa pun mulai dari nama hingga catatan, dalam beberapa langkah saja.

############################# Steps ############################
steps:
    enable: true
    title: "Sembunyikan konten pribadi dalam file Pptx Anda"
    content: |
      Dengan GroupDocs.Redaction for .NET, pengembang .NET dapat melindungi dokumen dalam beberapa langkah sederhana.
      
      1. Mulai Redactor dengan jalur ke file yang ingin Anda bersihkan.
      2. Pilih aturan penghapusan yang sesuai dengan kebutuhan Anda.
      3. Pilih pola untuk dicocokkan dan warna untuk overlay gambar.
      4. Jalankan penghapusan dan simpan file yang diperbarui.
   
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
        // Gunakan overlay untuk menutupi teks dalam PPTX

        // Inisialisasi Redactor dengan file Anda
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Tentukan bagaimana penghapusan harus berperilaku
            // Atur apa yang harus disembunyikan dan warna overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Jalankan dan simpan perubahan
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih banyak cara untuk melindungi file Anda"
  description: "GroupDocs.Redaction for .NET memberi Anda alat untuk menyembunyikan data dalam berbagai format tanpa mengubah tata letak."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fitur yang penting"
  features:
    # feature loop
    - title: "Ganti teks sesuai kebutuhan"
      content: "Tukar teks untuk menjaga informasi penting agar tidak diakses oleh pengguna yang tidak berwenang."

    # feature loop
    - title: "Sembunyikan area gambar"
      content: "Sembunyikan gambar sepenuhnya atau bagian tertentu dengan menggambar kotak overlay."

    # feature loop
    - title: "Hapus data tersembunyi"
      content: "Hapus metadata yang ter嵌入 yang bisa mengungkap rincian pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi ekspresi reguler"
      content: |
        Contoh ini menunjukkan bagaimana mencari dan menyembunyikan teks dengan ekspresi reguler
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muat file untuk redaksi
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Atur aturan redaksi: teks yang dicari dan warna blok
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Terapkan logika penghapusan
              redactor.Apply(redaction);

              // Simpan hasil yang telah dihapus
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
    title: "Amankan Teks PPTX dengan Alat .NET"
    exclude: "PPTX"
    description: "Tutup area pribadi atau hapus data tersembunyi dalam file PPTX dengan menggunakan fitur redaksi .NET."
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