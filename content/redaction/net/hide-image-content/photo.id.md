
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Tambah Overlay untuk Menyembunyikan Gambar dalam PHOTO Menggunakan C#"
head_description: "Sembunyikan konten gambar sensitif dalam file PHOTO dengan GroupDocs.Redaction for .NET dengan menerapkan overlay. Jaga data pribadi tetap aman sambil menjaga tata letak dokumen tetap utuh."

############################# Header ############################
title: "Sembunyikan Konten Gambar dalam File PHOTO Menggunakan Overlay dengan .NET" 
description: "Lindungi gambar pribadi dan bisnis Anda dalam file PHOTO menggunakan C#. Alat yang mudah digunakan untuk perlindungan konten yang efektif."
subtitle: "Fitur Utama GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan pengembang C# cara ampuh untuk menyembunyikan atau menghapus konten dalam file PHOTO. Lindungi dokumen Anda dengan menutup teks, gambar, dan metadata dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Konten dalam File Photo"
    content: |
      GroupDocs.Redaction for .NET membuat perlindungan konten dalam aplikasi .NET Anda menjadi cepat dan sederhana.
      
      1. Buat objek Redactor dan tentukan file Photo Anda.
      2. Sesuaikan pengaturan redaksi sesuai kebutuhan.
      3. Pilih area gambar dan atur warna overlay.
      4. Jalankan redaksi dan simpan file yang aman.
   
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
        // Terapkan overlay untuk menyembunyikan gambar dalam PHOTO

        // Muati file dengan Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Atur ukuran dan warna overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area gambar untuk disembunyikan
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Terapkan overlay dan simpan perubahan
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Dengan Mudah Redaksi Konten Sensitif"
  description: "GroupDocs.Redaction for .NET membantu Anda menyembunyikan atau menghapus konten sensitif dalam banyak jenis file. Lindungi data pribadi sambil menjaga dokumen Anda tetap bersih dan mudah dibaca."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang All-in-One"
  features:
    # feature loop
    - title: "Edit Teks dalam Dokumen"
      content: "Cari dan ganti teks pribadi dalam dokumen Anda untuk melindungi informasi sensitif."

    # feature loop
    - title: "Sembunyikan Area Gambar"
      content: "Tambahkan overlay pada gambar atau bagian yang dipilih untuk menutupi visual yang sensitif."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus metadata tersembunyi untuk menghindari kebocoran informasi yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Data Gambar dengan Overlay"
      content: |
        Contoh kode ini menunjukkan bagaimana menutupi area gambar dalam file menggunakan overlay.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muati file untuk editing
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Tetapkan posisi, ukuran, dan warna overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Tandai area gambar di halaman satu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Terapkan overlay untuk menutupi gambar
              redactor.Apply(redaction);

              // Simpan file yang direduksi
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
    title: "Amankan File PHOTO dengan Redaksi .NET"
    exclude: "PHOTO"
    description: "Dengan .NET, Anda dapat menyembunyikan atau menghapus konten pribadi dalam file PHOTO. Cara yang sederhana dan efektif untuk mengamankan dokumen resmi."
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