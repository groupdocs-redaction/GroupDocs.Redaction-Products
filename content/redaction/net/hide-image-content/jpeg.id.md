
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sembunyikan Gambar di JPEG dengan Overlay Menggunakan C#"
head_description: "Lindungi gambar pribadi dalam file JPEG dengan GroupDocs.Redaction for .NET dengan menambahkan overlay berwarna. Jaga informasi sensitif tetap aman tanpa mengubah tata letak file."

############################# Header ############################
title: "Tutup Gambar Sensitif dalam File JPEG dengan Overlay Menggunakan .NET" 
description: "Jaga keamanan gambar pribadi dan bisnis Anda dalam file JPEG menggunakan C#. Alat sederhana kami membuat perlindungan file menjadi mudah dan andal."
subtitle: "Fitur Utama GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan pengembang C# alat untuk menyembunyikan atau menghapus konten dalam file JPEG. Tutup teks, gambar, dan metadata untuk mengamankan dokumen Anda dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data Sensitif dalam File Jpeg"
    content: |
      GroupDocs.Redaction for .NET dirancang untuk membantu aplikasi .NET Anda menyembunyikan konten pribadi dengan cepat.
      
      1. Buat objek Redactor dan berikan jalur ke file Jpeg Anda.
      2. Atur opsi redaksi untuk mencocokkan kebutuhan Anda.
      3. Tandai area gambar dan pilih warna overlay.
      4. Jalankan redaksi dan simpan file yang dilindungi.
   
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
        // Tutup konten gambar dalam file JPEG

        // Buka file menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Atur ukuran dan warna overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area untuk overlay
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Terapkan overlay dan simpan file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten Apa Saja dalam Dokumen"
  description: "GroupDocs.Redaction for .NET memudahkan untuk menyembunyikan atau menghapus konten dalam berbagai format file. Lindungi informasi sensitif sambil menjaga file Anda tetap rapi dan mudah dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi untuk Kontrol Penuh"
  features:
    # feature loop
    - title: "Edit Teks di Mana Saja"
      content: "Temukan dan ganti teks sensitif di seluruh dokumen Anda untuk melindungi data pribadi."

    # feature loop
    - title: "Masker Gambar"
      content: "Terapkan overlay pada gambar atau area tertentu untuk menjaga visual sensitif tetap tersembunyi."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau perbarui metadata tersembunyi untuk mencegah kebocoran data yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana cara menyembunyikan area gambar sensitif dalam file.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file untuk editing
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Atur ukuran, posisi, dan warna overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Pilih area gambar yang spesifik di halaman satu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Terapkan overlay untuk menyembunyikan gambar
              redactor.Apply(redaction);

              // Simpan file yang telah direduksi
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
    title: "Lindungi File JPEG dengan Redaksi .NET"
    exclude: "JPEG"
    description: "Dengan .NET, Anda dapat dengan mudah menyembunyikan atau menghapus konten sensitif dalam file JPEG. Solusi yang dapat diandalkan untuk menjaga dokumen Anda tetap aman dan profesional."
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