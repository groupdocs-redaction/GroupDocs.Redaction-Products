
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redaksi Gambar dalam PPTX dengan Overlay Menggunakan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menyembunyikan konten gambar sensitif dalam file PPTX dengan menerapkan overlay berwarna. Lindungi data rahasia tanpa mengubah struktur dokumen Anda."

############################# Header ############################
title: "Redaksi Gambar Sensitif dalam Dokumen PPTX Menggunakan .NET" 
description: "Lindungi data pribadi dan bisnis dalam file PPTX dengan C#. Alat kami membuat redaksi gambar cepat dan efektif."
subtitle: "Apa yang Ditawarkan GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan pengembang C# alat untuk menyembunyikan atau menghapus konten dari file PPTX. Lindungi dokumen Anda dengan mereduksi teks, gambar, dan metadata secara efisien.

############################# Steps ############################
steps:
    enable: true
    title: "Jaga Keamanan Data Bisnis dalam Dokumen Pptx"
    content: |
      GroupDocs.Redaction for .NET: Membantu aplikasi .NET mengamankan dokumen dengan menyembunyikan informasi sensitif.
      
      1. Siapkan instance Redactor dan muat file Pptx.
      2. Konfigurasi pengaturan redaksi sesuai kebutuhan Anda.
      3. Pilih area gambar dan tentukan warna overlay.
      4. Proses redaksi dan simpan file Anda.
   
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
        // Redaksi area gambar sensitif dalam PPTX

        // Buka file menggunakan Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definisikan warna dan dimensi overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area untuk redaksi
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
  title: "Alat Redaksi Dokumen"
  description: "GroupDocs.Redaction for .NET memungkinkan Anda untuk menyembunyikan atau menghapus konten sensitif dalam berbagai jenis file. Lindungi informasi sambil menjaga dokumen tetap bersih dan dapat dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang Kuat"
  features:
    # feature loop
    - title: "Cari & Ganti Teks"
      content: "Temukan dan redaksi teks pribadi untuk meningkatkan keamanan dokumen."

    # feature loop
    - title: "Redaksi Konten Gambar"
      content: "Tutup seluruh gambar atau area yang dipilih dengan overlay untuk menyembunyikan visual pribadi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus atau modifikasi metadata tersembunyi untuk mencegah kebocoran data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana cara merevisi gambar yang sensitif dalam dokumen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muati dokumen
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Atur ukuran, posisi, dan warna overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Tentukan area untuk redaksi di halaman satu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Terapkan overlay
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
    title: "Redaksi Konten PPTX dengan .NET"
    exclude: "PPTX"
    description: "Gunakan .NET untuk menyembunyikan atau menghapus konten sensitif dalam file PPTX. Solusi yang andal untuk keamanan dokumen."
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