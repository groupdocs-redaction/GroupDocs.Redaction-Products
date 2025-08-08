
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bersihkan Metadata di POWERPOINT dengan C#"
head_description: "Hapus metadata yang tidak diinginkan dari file POWERPOINT menggunakan GroupDocs.Redaction for .NET. Lindungi privasi Anda dengan menghapus data tersembunyi."

############################# Header ############################
title: "Hapus Metadata di POWERPOINT melalui .NET" 
description: "Lindungi data dokumen di file POWERPOINT dengan alat sederhana yang dirancang untuk C#. Hapus metadata hanya dalam beberapa langkah."
subtitle: "Fitur GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Lebih Banyak Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction adalah toolkit redaksi untuk pengembang C#, membantu Anda bekerja dengan redaksi teks, gambar, dan metadata dalam file POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Metadata dari Dokumen Powerpoint"
    content: |
      Dengan GroupDocs.Redaction, aplikasi .NET Anda dapat dengan mudah menghapus metadata dari dokumen.
      
      1. Mulailah dengan objek Redactor dan muat file Anda.
      2. Pilih field metadata untuk dihapus.
      3. Terapkan pengaturan redaksi.
      4. Ekspor dokumen terakhir yang telah dibersihkan.
   
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
        // Singkirkan metadata di POWERPOINT

        // Buka dokumen dengan redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Atur opsi pembersihan metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Terapkan redaksi dan simpan
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Dokumen dengan Redaksi"
  description: "GroupDocs.Redaction for .NET membantu menghapus konten tersembunyi dari dokumen sehingga Anda dapat membagikannya dengan aman. Bekerja dengan banyak format dan jenis konten."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Kemampuan Redaksi"
  features:
    # feature loop
    - title: "Hapus Teks Pribadi"
      content: "Temukan kata-kata atau frasa sensitif dan keluarkan dari dokumen Anda."

    # feature loop
    - title: "Tutup Data Gambar"
      content: "Gunakan overlay untuk menutupi area di gambar yang perlu tetap tersembunyi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Bersihkan field metadata yang mungkin mengandung informasi tersembunyi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bersihkan Field Metadata Tersembunyi"
      content: |
        Contoh ini memandu Anda dalam menghapus data tertanam seperti Penulis dan Judul dari file POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Impor file ke redactor
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Hapus data Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Hapus data Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Jalankan redaksi
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
    title: "Bersihkan File POWERPOINT Menggunakan .NET"
    exclude: "POWERPOINT"
    description: "Gunakan .NET untuk menghapus data tersembunyi dalam file POWERPOINT. Ideal untuk membersihkan dokumen rahasia."
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