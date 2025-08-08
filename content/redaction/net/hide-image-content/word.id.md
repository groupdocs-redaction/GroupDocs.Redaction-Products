
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Tutup Gambar dalam WORD dengan Overlay Menggunakan C#"
head_description: "Sembunyikan area gambar sensitif dalam file WORD menggunakan GroupDocs.Redaction for .NET. Tambahkan overlay berwarna untuk melindungi data pribadi sambil menjaga tata letak dokumen tetap utuh."

############################# Header ############################
title: "Sembunyikan Gambar Pribadi dalam File WORD Menggunakan Overlay dengan .NET" 
description: "Lindungi data pribadi dan bisnis Anda dalam dokumen WORD menggunakan C#. Dapatkan perlindungan konten yang andal dengan alat sederhana kami."
subtitle: "Fitur Utama GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan pengembang C# alat untuk menyembunyikan atau menghapus konten dari file WORD. Lindungi dokumen dengan menutup teks sensitif, gambar, dan metadata dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data Sensitif dalam File Word"
    content: |
      GroupDocs.Redaction for .NET membantu aplikasi .NET Anda dengan cepat menyembunyikan konten pribadi dalam dokumen.
      
      1. Buat objek Redactor dan tentukan jalur file Word.
      2. Atur parameter redaksi untuk memenuhi kebutuhan Anda.
      3. Tandai area gambar dan tentukan warna overlay.
      4. Proses dan simpan file yang telah direduksi.
   
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
        // Tutup gambar sensitif dalam WORD

        // Muati file melalui konstruktor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Definisikan warna dan dimensi overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area gambar untuk redaksi
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
  title: "Sembunyikan atau Hapus Konten Dokumen"
  description: "GroupDocs.Redaction for .NET memudahkan untuk menyembunyikan atau menghapus data dalam berbagai format file. Lindungi informasi sensitif sambil menjaga dokumen tetap bersih dan terbaca."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang Detail"
  features:
    # feature loop
    - title: "Ganti Teks di Mana Saja"
      content: "Cari dan ubah teks sensitif di seluruh dokumen Anda untuk melindungi informasi pribadi."

    # feature loop
    - title: "Masker Gambar"
      content: "Tambahkan overlay pada area gambar tertentu atau seluruh gambar untuk menyembunyikan visual pribadi."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau edit metadata tersembunyi untuk mencegah kebocoran informasi yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tambahkan Overlay untuk Menyembunyikan Konten Gambar"
      content: |
        Contoh ini menunjukkan bagaimana melindungi data sensitif dalam gambar dokumen menggunakan overlay.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka dokumen untuk pengeditan
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Atur ukuran, lokasi, dan warna overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Fokus pada area gambar tertentu di halaman satu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Terapkan redaksi overlay
              redactor.Apply(redaction);

              // Simpan perubahan pada file
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
    title: "Lindungi Konten WORD dengan Redaksi .NET"
    exclude: "WORD"
    description: ".NET memungkinkan Anda untuk menyembunyikan atau menghapus konten sensitif dalam file WORD. Cara yang dapat diandalkan untuk melindungi dokumen resmi dan rahasia."
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