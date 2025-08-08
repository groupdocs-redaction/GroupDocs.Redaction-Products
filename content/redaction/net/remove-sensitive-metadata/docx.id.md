
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Metadata dari DOCX Menggunakan C#"
head_description: "Gunakan GroupDocs.Redaction for .NET untuk menghapus atau mengubah metadata tersembunyi di file DOCX. Lindungi dokumen Anda dari pengungkapan detail pribadi."

############################# Header ############################
title: "Hapus Metadata di File DOCX dengan .NET" 
description: "Gunakan C# untuk membersihkan metadata sensitif dari file DOCX. Jaga data bisnis dan pribadi Anda tetap terlindungi."
subtitle: "Fitur Terbaik GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang C# untuk menyembunyikan atau menghapus konten di file DOCX. Segera bersihkan teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Data Tersembunyi di File Docx"
    content: |
      GroupDocs.Redaction membantu proyek .NET Anda untuk menghapus metadata yang tidak diinginkan dengan cepat.
      
      1. Buat instance Redactor dan buka file Docx Anda.
      2. Atur redaksi untuk menargetkan entri metadata.
      3. Terapkan perubahan untuk membersihkan dokumen.
      4. Simpan file yang sudah dibersihkan.
   
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
        // Hapus metadata dari dokumen DOCX

        // Muat file menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Atur pengaturan penghapusan metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Terapkan dan simpan perubahan
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan Info Sensitif di Dokumen Mana Pun"
  description: "GroupDocs.Redaction for .NET memungkinkan Anda membersihkan konten sensitif di banyak jenis file. Buat dokumen Anda lebih aman untuk dibagikan atau disimpan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opsi Redaksi Cerdas"
  features:
    # feature loop
    - title: "Hapus Teks Pribadi"
      content: "Cari dan hapus teks pribadi atau bisnis dari file Anda."

    # feature loop
    - title: "Tutup Gambar"
      content: "Tutupi gambar atau area yang dipilih untuk menyembunyikan konten rahasia."

    # feature loop
    - title: "Hapus Metadata"
      content: "Bersihkan entri metadata yang tersembunyi untuk menghindari kebocoran rincian latar belakang."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bersihkan Field Metadata"
      content: |
        Contoh ini menunjukkan cara menghapus data tersembunyi dari file DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muat file DOCX Anda
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Target field Penulis untuk dihapus
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Target field Judul untuk dihapus
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Jalankan proses redaksi
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Simpan file Anda yang diperbarui
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
    title: "Hapus Metadata di DOCX dengan .NET"
    exclude: "DOCX"
    description: "Hapus metadata yang tidak diinginkan di file DOCX menggunakan .NET. Cara yang sederhana untuk melindungi rincian tersembunyi file Anda."
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