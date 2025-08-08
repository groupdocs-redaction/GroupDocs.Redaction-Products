
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Metadata Tersembunyi di IMAGE dengan C#"
head_description: "Gunakan GroupDocs.Redaction for .NET untuk membersihkan metadata di file IMAGE Anda. Pastikan rincian pribadi tetap pribadi."

############################# Header ############################
title: "Hapus Metadata di File IMAGE melalui .NET" 
description: "Jaga file IMAGE Anda tetap aman menggunakan C#. Lindungi data bisnis dan pribadi dengan cara yang sederhana."
subtitle: "Apa yang Anda Dapatkan dengan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction membantu pengguna C# membersihkan file dengan menghapus teks, bagian gambar, dan metadata yang tidak diinginkan dalam file IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Metadata di File Image"
    content: |
      Mulai dengan GroupDocs.Redaction di aplikasi .NET Anda untuk membersihkan metadata file.
      
      1. Buat Redactor dan buka file Image Anda.
      2. Pilih opsi untuk menghapus entri metadata tersembunyi.
      3. Terapkan pengaturan redaksi.
      4. Simpan hasilnya.
   
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
        // Hapus metadata tersembunyi dari file IMAGE

        // Buka file dengan Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Tambah aturan redaksi untuk metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Proses dan simpan
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bersihkan Konten di Dokumen Mana Pun"
  description: "GroupDocs.Redaction for .NET menghapus teks pribadi, bagian gambar, atau field tersembunyi. Jadikan dokumen aman untuk dibagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Utama"
  features:
    # feature loop
    - title: "Redaksi Teks"
      content: "Temukan dan hapus kata-kata dan angka pribadi."

    # feature loop
    - title: "Penutupan Gambar"
      content: "Tambahkan masker gambar untuk menutup informasi visual."

    # feature loop
    - title: "Redaksi Metadata"
      content: "Bersihkan field metadata yang dapat membocorkan informasi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Metadata Sensitif"
      content: |
        Contoh ini menjelaskan cara menghapus field metadata tertentu dalam dokumen IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka IMAGE dengan redactor
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Target field Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Target field Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Redaksi field tersebut
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Simpan dokumen Anda
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
    title: "Hapus Metadata dari IMAGE Menggunakan .NET"
    exclude: "IMAGE"
    description: "Hapus data sensitif dari file IMAGE dengan redaksi .NET. Jaga file Anda tetap aman untuk dibagikan atau disimpan."
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