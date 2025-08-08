
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Edit Metadata di JPEG Menggunakan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat membersihkan atau mengubah metadata di file JPEG Anda. Hapus detail tersembunyi yang dapat mengandung data pribadi."

############################# Header ############################
title: "Hapus Metadata dari File JPEG Menggunakan .NET" 
description: "Lindungi detail pribadi di file JPEG Anda menggunakan C#. Alat sederhana untuk meningkatkan keamanan dokumen."
subtitle: "Fitur Terbaik GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction membantu pengembang C# menghapus teks, gambar, dan metadata dari file JPEG dengan alat yang sederhana.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Metadata di Dokumen Jpeg"
    content: |
      GroupDocs.Redaction memudahkan untuk menghapus metadata di aplikasi .NET Anda.
      
      1. Siapkan Redactor dan muat file Jpeg yang ingin dibersihkan.
      2. Pilih pengaturan untuk menghapus semua metadata.
      3. Jalankan redaksi untuk membersihkan file.
      4. Simpan file Anda dengan metadata yang telah dibersihkan.
   
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
        // Hapus metadata dari file JPEG

        // Gunakan Redactor untuk memuat file
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Konfigurasi redaksi metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Terapkan dan simpan
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hapus Data Sensitif dari Dokumen"
  description: "GroupDocs.Redaction for .NET memungkinkan Anda untuk menyembunyikan atau membersihkan konten pribadi di berbagai format. Lindungi data sensitif sambil menjaga file tetap berguna dan jelas."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi Utama"
  features:
    # feature loop
    - title: "Cari dan Hapus Teks"
      content: "Temukan kata-kata sensitif atau frasa dalam file Anda dan bersihkan."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Gunakan overlay untuk menyembunyikan bagian privat dari gambar."

    # feature loop
    - title: "Edit Metadata"
      content: "Hapus atau ubah metadata untuk menghindari membagikan data pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bersihkan Field Metadata Tersembunyi"
      content: |
        Contoh ini menunjukkan cara menghapus atau mengedit metadata tersembunyi dalam dokumen JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file JPEG dengan redactor
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Tambah redaksi untuk field Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Tambah redaksi untuk field Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Jalankan proses redaksi
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Simpan dokumen yang sudah dibersihkan
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
    title: "Bersihkan Metadata JPEG dengan .NET"
    exclude: "JPEG"
    description: "Gunakan .NET untuk menghapus data tersembunyi dari dokumen JPEG Anda. Cara yang bagus untuk melindungi rincian sensitif."
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