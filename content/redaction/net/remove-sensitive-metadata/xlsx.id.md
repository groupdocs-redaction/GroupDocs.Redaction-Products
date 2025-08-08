
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bersihkan Metadata di File XLSX dengan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menghapus metadata dari file XLSX dengan aman. Bersihkan informasi tersembunyi yang dapat mengungkap data pribadi."

############################# Header ############################
title: "Hapus Metadata dari File XLSX Menggunakan .NET" 
description: "Lindungi detail sensitif di file XLSX Anda dengan C#. Redaksi yang mudah untuk dokumen pribadi dan pekerjaan."
subtitle: "Jelajahi Apa yang Dapat Dilakukan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang C# untuk membersihkan konten di dokumen XLSX. Tutupi atau hapus teks, gambar, dan metadata dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Metadata di File Xlsx"
    content: |
      Dengan GroupDocs.Redaction, aplikasi .NET Anda dapat dengan cepat menghapus data tersembunyi.
      
      1. Siapkan Redactor dan buka file Xlsx Anda.
      2. Tentukan metadata mana yang ingin Anda hapus.
      3. Terapkan aturan redaksi.
      4. Simpan file akhir.
   
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
        // Bersihkan metadata tersembunyi di XLSX

        // Buka file dengan Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Atur metadata yang akan dihapus
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Terapkan redaksi dan simpan
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Info Sensitif dalam Dokumen"
  description: "Gunakan GroupDocs.Redaction for .NET untuk menghapus atau menyembunyikan konten dalam banyak format file. Jaga file tetap pribadi dan siap untuk dibagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi Semua dalam Satu"
  features:
    # feature loop
    - title: "Ganti atau Hapus Teks"
      content: "Lindungi data pribadi dengan mencari dan menghapus teks sensitif."

    # feature loop
    - title: "Sembunyikan Bagian Gambar"
      content: "Gunakan overlay untuk menutupi area gambar dengan visual pribadi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Bersihkan field metadata tersembunyi yang mungkin menyimpan rincian pribadi atau bisnis."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cara Menghapus Metadata"
      content: |
        Contoh kode ini menghapus properti metadata dalam dokumen XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka dokumen
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Target metadata Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Target metadata Judul
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
    title: "Hapus Metadata di XLSX Dengan .NET"
    exclude: "XLSX"
    description: ".NET memudahkan untuk membersihkan metadata dari file XLSX. Jaga file Anda tetap bersih dan aman."
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