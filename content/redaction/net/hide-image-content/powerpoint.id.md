
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sembunyikan Gambar Sensitif dalam POWERPOINT Menggunakan Overlay dengan C#"
head_description: "Gunakan GroupDocs.Redaction for .NET untuk menerapkan overlay pada gambar dalam file POWERPOINT, menjaga informasi pribadi tersembunyi sambil menjaga tata letak tetap utuh."

############################# Header ############################
title: "Sembunyikan Gambar Pribadi dalam Dokumen POWERPOINT Menggunakan Overlay dengan .NET" 
description: "Lindungi data pribadi dan perusahaan dalam file POWERPOINT menggunakan C#. Alat sederhana untuk privasi dokumen yang kuat."
subtitle: "Fitur Utama GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET menyediakan pengembang C# alat sederhana untuk menyembunyikan atau menghapus konten dalam file POWERPOINT. Lindungi dokumen Anda dengan menutup teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Informasi Sensitif dalam Dokumen Powerpoint"
    content: |
      GroupDocs.Redaction for .NET dirancang untuk membantu aplikasi .NET Anda melindungi konten dokumen dengan cepat.
      
      1. Buat objek Redactor dan tentukan file Powerpoint.
      2. Sesuaikan pengaturan redaksi sesuai kebutuhan Anda.
      3. Pilih area gambar dan pilih warna overlay.
      4. Terapkan redaksi dan simpan dokumen.
   
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
        // Sembunyikan data gambar dalam file POWERPOINT

        // Muati file menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Atur warna dan dimensi overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area untuk ditutup
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Terapkan overlay dan simpan dokumen
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Data Sensitif dalam Dokumen"
  description: "GroupDocs.Redaction for .NET memungkinkan Anda untuk menyembunyikan atau menghapus konten dalam berbagai jenis dokumen. Lindungi data pribadi sambil menjaga file tetap mudah digunakan dan dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang Kaya Fitur"
  features:
    # feature loop
    - title: "Temukan dan Edit Teks"
      content: "Cari teks sensitif dalam dokumen dan ganti untuk melindungi data pribadi."

    # feature loop
    - title: "Tutup Konten Gambar"
      content: "Gunakan overlay untuk menutupi gambar atau bagian yang dipilih, memastikan visual pribadi tetap tersembunyi."

    # feature loop
    - title: "Bersihkan Metadata Tersembunyi"
      content: "Hapus atau ubah metadata tersembunyi untuk mencegah kebocoran data yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Lindungi Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana cara menyembunyikan konten sensitif dalam gambar dokumen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muati dokumen untuk redaksi
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Atur ukuran, posisi, dan warna overlay
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

              // Simpan dokumen yang telah direduksi
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
    title: "Amankan Konten POWERPOINT dengan Redaksi .NET"
    exclude: "POWERPOINT"
    description: "Gunakan .NET untuk menutup atau menghapus konten pribadi dalam file POWERPOINT. Cara yang terpercaya untuk melindungi dokumen sensitif."
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