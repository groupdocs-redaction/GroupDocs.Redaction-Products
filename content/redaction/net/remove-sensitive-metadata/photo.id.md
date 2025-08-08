
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Metadata di PHOTO dengan C#"
head_description: "GroupDocs.Redaction for .NET membantu Anda menghapus data tersembunyi di file PHOTO yang dapat mengungkapkan informasi pribadi atau bisnis."

############################# Header ############################
title: "Hapus Metadata dari PHOTO dengan .NET" 
description: "Lindungi dokumen Anda dengan mudah dengan menghapus informasi tersembunyi dari file PHOTO menggunakan C#."
subtitle: "Sorotan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction membantu pengembang C# menyembunyikan konten pribadi di file PHOTO, termasuk teks, bagian gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata di File Photo"
    content: |
      Gunakan GroupDocs.Redaction dalam proyek .NET Anda untuk membersihkan metadata dokumen.
      
      1. Mulai Redactor dan buka file Photo Anda.
      2. Atur aturan untuk menghapus metadata.
      3. Terapkan redaksi dan bersihkan file.
      4. Simpan file hasilnya.
   
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
        // Hapus metadata dari dokumen PHOTO

        // Gunakan Redactor untuk memuat dokumen
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Atur field metadata untuk redaksi
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Bersihkan dokumen dan simpan
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hapus Informasi Pribadi dari File"
  description: "GroupDocs.Redaction for .NET memberi Anda cara untuk menghapus data pribadi dari teks, gambar, dan rincian file. Sempurna untuk keamanan data."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi yang Berguna"
  features:
    # feature loop
    - title: "Pembersihan Teks"
      content: "Pemindai dan hapus teks yang tidak boleh dibagikan."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Tambahkan penutup di bagian gambar dengan rincian pribadi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus data tersembunyi file sebelum membagikan atau menerbitkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Field Metadata Tersembunyi"
      content: |
        Contoh ini memandu Anda untuk menghapus metadata di dokumen PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muat file PHOTO ke redactor
          using (Redactor redactor  = new Redactor("source.jpeg"))
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

              // Proses dokumen
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Simpan versi yang telah dibersihkan
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
    title: "Gunakan .NET untuk Meredaksi Metadata PHOTO"
    exclude: "PHOTO"
    description: "Jagalah dokumen PHOTO Anda tetap aman dengan membersihkan metadata menggunakan alat .NET."
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