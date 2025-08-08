
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Metadata dari File PPTX dengan C#"
head_description: "GroupDocs.Redaction for .NET membantu Anda menghapus atau mengedit metadata di file PPTX. Lindungi dokumen Anda dengan menghapus data latar belakang yang pribadi."

############################# Header ############################
title: "Hapus Metadata di PPTX Menggunakan Alat .NET" 
description: "Sembunyikan metadata sensitif dalam file PPTX menggunakan C#. Ideal untuk privasi bisnis dan pribadi."
subtitle: "Fungsi Inti GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ditujukan untuk pengembang C# yang perlu menghapus data dari file PPTX. Segera bersihkan teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata Tersembunyi di File Pptx"
    content: |
      GroupDocs.Redaction membantu solusi .NET Anda membersihkan data tersembunyi dengan mudah.
      
      1. Buat instance Redactor dan muat file Pptx.
      2. Konfigurasikan aturan redaksi untuk field metadata.
      3. Terapkan redaksi untuk menghapus data.
      4. Simpan file yang telah direduksi.
   
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
        // Hapus metadata di PPTX

        // Buka file menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Atur redaksi untuk pembersihan metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Terapkan dan simpan file
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Tambahan untuk File Apa Pun"
  description: "GroupDocs.Redaction for .NET mendukung meredaksi konten di berbagai format. Pastikan data Anda tetap pribadi dan file Anda bersih."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat Privasi Terintegrasi"
  features:
    # feature loop
    - title: "Cari dan Hapus Teks"
      content: "Segera hapus teks pribadi dari file Anda."

    # feature loop
    - title: "Tutup Gambar dengan Overlay"
      content: "Sembunyikan bagian gambar yang tidak boleh terlihat."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus field tersembunyi seperti penulis, judul, dan lainnya untuk tetap aman."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bersihkan Field Metadata"
      content: |
        Contoh ini menunjukkan cara membersihkan metadata dari file PPTX dengan aman.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Impor file PPTX Anda
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Redaksi field Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Redaksi field Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Proses redaksi
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Ekspor file yang telah direduksi
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Bersihkan Metadata di File PPTX Menggunakan .NET"
    exclude: "PPTX"
    description: "Dengan mudah hapus metadata latar belakang dari file PPTX menggunakan .NET. Sempurna untuk keselamatan dokumen."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi Gambar"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Format gambar populer"

        # format loop 6
        - name: "Redaksi Foto"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Format foto"

        # format loop 7
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Presentasi PowerPoint Open XML"

        # format loop 10
        - name: "Redaksi JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Gambar JPEG"


---