
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bersihkan Metadata di PDF Menggunakan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menghapus atau memperbarui metadata di file PDF. Bersihkan data tersembunyi yang mungkin mengekspos informasi pribadi."

############################# Header ############################
title: "Bersihkan Metadata di File PDF dengan .NET" 
description: "Lindungi informasi bisnis dan pribadi yang sensitif di file PDF menggunakan C#. Alat yang mudah digunakan untuk perlindungan data yang andal."
subtitle: "Fitur Utama GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat yang mudah digunakan bagi pengembang C# untuk meredaksi konten dalam file PDF. Menutupi teks, gambar, dan metadata di berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata dari Dokumen Pdf"
    content: |
      Gunakan GroupDocs.Redaction untuk dengan cepat mengamankan metadata dokumen di aplikasi .NET Anda.
      
      1. Buat instance Redactor dan muat file Pdf Anda.
      2. Atur redaksi untuk menghapus semua metadata tersembunyi.
      3. Terapkan redaksi untuk membersihkan dokumen.
      4. Simpan file yang diperbarui.
   
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
        // Hapus metadata dari file PDF

        // Muat file dengan Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Konfigurasi penghapusan metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Terapkan perubahan dan simpan file
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Data Sensitif dalam Dokumen"
  description: "GroupDocs.Redaction for .NET membantu Anda menyembunyikan atau menghapus konten rahasia dalam berbagai format file. Pertahankan data pribadi tetap aman sambil menjaga dokumen tetap jelas dan profesional."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi yang Kuat"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Cari teks sensitif dalam dokumen Anda dan ganti atau hapus untuk melindungi privasi."

    # feature loop
    - title: "Sembunyikan Konten Gambar"
      content: "Tambahkan overlay pada gambar atau area tertentu untuk menutupi visual yang sensitif."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau edit metadata tersembunyi untuk mencegah kebocoran data yang tidak diinginkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Entri Metadata Tersembunyi"
      content: |
        Contoh ini menunjukkan cara mengubah metadata dalam file PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muat file PDF ke dalam redactor
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Atur redaksi untuk properti Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Atur redaksi untuk properti Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Jalankan redaksi pada dokumen
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Simpan file yang sudah dibersihkan
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
    title: "Lindungi File PDF dengan Redaksi Metadata .NET"
    exclude: "PDF"
    description: "Gunakan .NET untuk menghapus data tersembunyi dari file PDF. Cara yang sederhana dan efektif untuk mengamankan informasi sensitif dalam dokumen Anda."
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