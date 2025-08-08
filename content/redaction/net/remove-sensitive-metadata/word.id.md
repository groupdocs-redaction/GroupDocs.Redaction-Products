
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hapus Metadata dari WORD Menggunakan C#"
head_description: "Gunakan GroupDocs.Redaction for .NET untuk menemukan dan menghapus metadata tersembunyi di file WORD. Jaga dokumen Anda tetap pribadi dan aman dari pengungkapan yang tidak diinginkan."

############################# Header ############################
title: "Hapus Metadata di File WORD Menggunakan .NET" 
description: "Lindungi data pribadi dan perusahaan di file WORD menggunakan C#. Alat sederhana untuk privasi file yang terpercaya."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction membantu pengembang C# melindungi konten di file WORD. Bersihkan teks, gambar, dan metadata dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata dari File Word"
    content: |
      Dengan GroupDocs.Redaction, Anda dapat dengan cepat membersihkan metadata dokumen di lingkungan .NET Anda.
      
      1. Inisialisasi objek Redactor dan buka dokumen Word Anda.
      2. Atur aturan untuk menghapus semua metadata tersembunyi.
      3. Jalankan redaksi untuk menghapus tag sensitif.
      4. Simpan dokumen Anda yang sudah dibersihkan.
   
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
        // Hapus metadata dari file WORD

        // Buka dokumen menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Atur opsi penghapusan metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redaksi dan simpan file yang sudah dibersihkan
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Data Rahasia dari Dokumen"
  description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menghapus konten pribadi dari berbagai format. Jaga file Anda tetap aman sambil mempertahankan strukturnya."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat Redaksi Metadata dan Konten"
  features:
    # feature loop
    - title: "Ganti Teks Sensitif"
      content: "Temukan teks dalam dokumen dan aman menghapus atau mengubahnya untuk melindungi informasi pribadi."

    # feature loop
    - title: "Sembunyikan Gambar"
      content: "Tutup area sensitif gambar dengan overlay untuk menyembunyikan data visual."

    # feature loop
    - title: "Hapus Metadata"
      content: "Temukan dan bersihkan data tersembunyi untuk menghindari kebocoran informasi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Edit atau Hapus Metadata Tersembunyi"
      content: |
        Contoh ini menunjukkan cara menargetkan dan membersihkan entri metadata dalam dokumen WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muat file untuk redaksi
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Hapus metadata Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Hapus metadata Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Jalankan proses redaksi
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Ekspor dokumen yang telah dibersihkan
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
    title: "Redaksi Metadata di WORD dengan .NET"
    exclude: "WORD"
    description: "Gunakan .NET untuk membersihkan metadata tersembunyi dari file WORD. Alat sederhana untuk menjaga informasi sensitif tetap aman."
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