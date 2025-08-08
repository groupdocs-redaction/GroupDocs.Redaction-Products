
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Tutup Gambar dalam DOCX dengan Overlay Menggunakan C#"
head_description: "Gunakan GroupDocs.Redaction for .NET untuk menutup gambar sensitif dalam file DOCX dengan overlay berwarna. Lindungi data pribadi sambil menjaga tata letak dokumen tetap tidak berubah."

############################# Header ############################
title: "Tutup Gambar Sensitif dalam Dokumen DOCX Menggunakan Overlay dengan .NET" 
description: "Lindungi informasi pribadi dan bisnis dalam file DOCX menggunakan C#. Alat kami membuat perlindungan data menjadi sederhana dan andal."
subtitle: "Fitur GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan pengembang C# alat untuk menyembunyikan atau menghapus konten dalam file DOCX. Lindungi dokumen dengan menutup teks, gambar, dan metadata di berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data dalam File Docx"
    content: |
      GroupDocs.Redaction for .NET: Dibangun untuk membantu aplikasi .NET Anda mengamankan dokumen. Redaksi informasi sensitif hanya dalam beberapa langkah.
      
      1. Inisialisasi Redactor dan berikan jalur ke file Docx Anda.
      2. Konfigurasi opsi redaksi untuk memenuhi kebutuhan Anda.
      3. Pilih area gambar dan pilih warna overlay.
      4. Jalankan redaksi dan simpan file.
   
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
        // Tutup area gambar sensitif dalam DOCX

        // Muati file melalui konstruktor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Atur warna dan ukuran overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Tentukan area redaksi
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
  title: "Redaksi Konten dalam File"
  description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menyembunyikan atau menghapus konten sensitif dalam banyak jenis file. Jaga dokumen tetap aman sambil mempertahankan keterbacaan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opsi Redaksi Fleksibel"
  features:
    # feature loop
    - title: "Edit Teks dengan Mudah"
      content: "Temukan dan ganti teks pribadi di seluruh dokumen Anda untuk meningkatkan keamanan data."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Terapkan overlay pada gambar penuh atau bagian tertentu untuk melindungi informasi visual."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau ubah metadata tersembunyi untuk menghindari kebocoran data yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Terapkan Overlay untuk Menyembunyikan Detail Gambar"
      content: |
        Contoh ini menggambarkan bagaimana menyembunyikan area sensitif dalam gambar dokumen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muati dokumen yang ingin Anda redaksi
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Tentukan parameter overlay: ukuran, posisi, warna
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Targetkan area tertentu di halaman pertama
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Tempatkan overlay pada gambar
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
    title: "Lindungi File DOCX dengan Redaksi .NET"
    exclude: "DOCX"
    description: "Gunakan .NET untuk menutup atau menghapus data sensitif dalam file DOCX. Ideal untuk menjaga dokumen rahasia tetap aman."
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