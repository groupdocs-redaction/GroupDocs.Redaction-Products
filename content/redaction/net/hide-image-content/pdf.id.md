
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sembunyikan Gambar di PDF dengan Overlay Menggunakan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat melindungi gambar sensitif dalam file PDF dengan menambahkan overlay berwarna. Amankan informasi pribadi tanpa mengubah tata letak dokumen."

############################# Header ############################
title: "Lindungi Gambar Sensitif dalam Dokumen PDF dengan Overlay Menggunakan .NET" 
description: "Jaga keamanan data bisnis dan pribadi dalam file PDF menggunakan C#. Alat kami membantu Anda mencapai perlindungan data yang kuat."
subtitle: "Fitur GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan pengembang C# alat yang kuat untuk menyembunyikan atau menghapus konten dari file PDF. Lindungi dokumen dengan menutup teks, gambar, dan metadata di berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Data Bisnis dalam Dokumen Pdf"
    content: |
      GroupDocs.Redaction for .NET: Dirancang untuk membantu aplikasi .NET Anda melindungi dokumen. Redaksi informasi pribadi dengan cepat.
      
      1. Buat instance Redactor dan berikan jalur ke file Pdf yang ingin Anda amankan.
      2. Sesuaikan pengaturan redaksi untuk mendapatkan hasil yang Anda butuhkan.
      3. Pilih area gambar dan atur warna overlay.
      4. Proses file dan simpan dokumen yang telah direduksi.
   
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
        // Sembunyikan konten gambar sensitif dalam PDF

        // Muati file menggunakan konstruktor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Atur warna dan ukuran overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pilih area untuk redaksi
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Terapkan overlay pada gambar dan simpan file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten dalam Dokumen"
  description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menyembunyikan atau menghapus konten dalam berbagai format file. Lindungi informasi rahasia sambil menjaga dokumen tetap mudah dibaca dan dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi Lanjutan"
  features:
    # feature loop
    - title: "Edit Teks di Mana Saja"
      content: "Cari dan ganti teks sensitif di seluruh dokumen Anda untuk menjaga data pribadi tetap aman."

    # feature loop
    - title: "Tutup Gambar"
      content: "Terapkan overlay ke seluruh gambar atau area yang dipilih untuk menyembunyikan visual yang sensitif."

    # feature loop
    - title: "Tangani Metadata"
      content: "Hapus atau ubah metadata tersembunyi untuk mencegah kebocoran data secara tidak sengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Overlay untuk Menyembunyikan Data Gambar"
      content: |
        Contoh ini menunjukkan bagaimana cara menutupi informasi sensitif dalam gambar dokumen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muati dokumen untuk direduksi
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Atur pengaturan overlay: ukuran, posisi, dan warna
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Targetkan area gambar tertentu di halaman pertama
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Terapkan overlay untuk menyembunyikan gambar
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
    title: "Amankan Konten PDF dengan Redaksi .NET"
    exclude: "PDF"
    description: "Gunakan .NET untuk menyembunyikan atau menghapus konten sensitif dalam file PDF. Solusi efektif untuk mengamankan dokumen resmi dan rahasia."
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