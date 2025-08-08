
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masker Gambar dalam EXCEL dengan Overlay Menggunakan C#"
head_description: "Sembunyikan gambar pribadi dalam file EXCEL menggunakan GroupDocs.Redaction for .NET. Tempatkan overlay berwarna untuk menjaga data sensitif tetap aman sambil menjaga tata letak dokumen."

############################# Header ############################
title: "Tutup Gambar Sensitif dalam File EXCEL Menggunakan Overlay dengan .NET" 
description: "Lindungi data pribadi dan bisnis dalam file EXCEL menggunakan C#. Dapatkan perlindungan data yang cepat dan andal dengan alat kami."
subtitle: "Jelajahi Fitur GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan pengembang C# alat untuk menyembunyikan atau menghapus konten sensitif dalam file EXCEL. Tutup teks, gambar, dan metadata untuk menjaga dokumen tetap aman.

############################# Steps ############################
steps:
    enable: true
    title: "Jaga Keamanan Data Anda dalam File Excel"
    content: |
      GroupDocs.Redaction for .NET membantu aplikasi .NET Anda mengamankan dokumen dengan menyembunyikan konten sensitif.
      
      1. Buat instance Redactor dan berikan jalur file Excel.
      2. Konfigurasi opsi redaksi untuk hasil yang diinginkan.
      3. Pilih area gambar dan warna overlay.
      4. Terapkan redaksi dan simpan file.
   
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
        // Masker konten gambar dalam EXCEL

        // Muati dokumen menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Siapkan ukuran dan warna overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area untuk disembunyikan
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Terapkan dan simpan perubahan
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten Apa Saja dalam Dokumen"
  description: "GroupDocs.Redaction for .NET membantu Anda menyembunyikan atau menghapus konten sensitif dalam berbagai format dokumen. Lindungi data sambil menjaga dokumen tetap mudah digunakan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opsi Redaksi yang Kuat"
  features:
    # feature loop
    - title: "Cari dan Edit Teks"
      content: "Temukan teks sensitif dan ganti untuk melindungi data pribadi dalam dokumen Anda."

    # feature loop
    - title: "Overlay Area Gambar"
      content: "Tutup gambar atau bagian tertentu dengan overlay untuk menjaga privasi visual."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus bidang metadata tersembunyi untuk menghindari kebocoran informasi yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masker Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana cara menutupi informasi sensitif dalam gambar dokumen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file untuk pengeditan
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Tentukan ukuran, warna, dan penempatan overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Targetkan bagian gambar tertentu di halaman pertama
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Terapkan overlay untuk menyembunyikan gambar
              redactor.Apply(redaction);

              // Simpan dokumen akhir
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Lindungi File EXCEL dengan Alat Redaksi .NET"
    exclude: "EXCEL"
    description: "Gunakan .NET untuk menyembunyikan atau menghapus informasi sensitif dalam file EXCEL. Solusi terpercaya untuk keamanan dokumen."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi Gambar"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Format gambar populer"

        # format loop 6
        - name: "Redaksi Foto"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Format foto"

        # format loop 7
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Presentasi PowerPoint Open XML"

        # format loop 10
        - name: "Redaksi JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Gambar JPEG"


---