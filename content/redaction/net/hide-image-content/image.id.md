
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Lindungi Gambar dalam IMAGE dengan Menambahkan Overlay Menggunakan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menyembunyikan data gambar sensitif dalam file IMAGE menggunakan overlay berwarna. Amankan informasi penting sambil menjaga desain asli file."

############################# Header ############################
title: "Sembunyikan Gambar Pribadi dalam File IMAGE Menggunakan Overlay dengan .NET" 
description: "Jaga gambar bisnis dan pribadi Anda tetap terlindung dalam file IMAGE menggunakan C#. Alat sederhana untuk perlindungan konten yang cepat dan efektif."
subtitle: "Fitur Utama GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET menyediakan pengembang C# dengan alat yang kuat untuk menyembunyikan atau menghapus konten dalam file IMAGE. Lindungi dokumen Anda dengan menyembunyikan teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data dalam File Image dengan Overlay"
    content: |
      Gunakan GroupDocs.Redaction for .NET untuk dengan cepat menyembunyikan konten pribadi dalam aplikasi .NET Anda.
      
      1. Buat instance Redactor dan berikan jalur file Image Anda.
      2. Sesuaikan pengaturan redaksi sesuai kebutuhan.
      3. Pilih area gambar dan tentukan warna overlay.
      4. Proses file dan simpan versi yang aman.
   
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
        // Lindungi konten gambar dalam IMAGE

        // Buka file menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Definisikan dimensi dan warna overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area yang ingin disembunyikan
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Terapkan overlay dan simpan hasilnya
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten dalam Berbagai Format File"
  description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menyembunyikan atau menghapus konten di berbagai format file. Lindungi data sensitif sambil menjaga format yang bersih dan mudah dibaca."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Kontrol Penuh atas Redaksi"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Telusuri dokumen dan ganti teks sensitif untuk melindungi informasi pribadi."

    # feature loop
    - title: "Overlay Gambar"
      content: "Terapkan overlay berwarna untuk menutupi seluruh gambar atau bagian yang dipilih."

    # feature loop
    - title: "Edit Metadata"
      content: "Hapus atau ubah bidang metadata tersembunyi untuk mencegah kebocoran data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tutup Konten Gambar dengan Overlay"
      content: |
        Contoh kode ini menunjukkan cara menerapkan overlay untuk menyembunyikan konten gambar sensitif.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka file untuk redaksi
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Atur ukuran, warna, dan posisi overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Pilih area gambar di halaman satu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Tambahkan overlay untuk menyembunyikan konten gambar
              redactor.Apply(redaction);

              // Simpan file yang diperbarui
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
    title: "Sembunyikan Konten dalam File IMAGE Menggunakan Redaksi .NET"
    exclude: "IMAGE"
    description: "Gunakan .NET untuk menyembunyikan atau menghapus data sensitif dalam file IMAGE. Metode yang dapat diandalkan untuk mengamankan dokumen resmi dan melindungi informasi rahasia."
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