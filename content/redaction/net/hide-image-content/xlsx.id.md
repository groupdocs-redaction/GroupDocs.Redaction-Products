
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masker Gambar dalam File XLSX dengan Overlay Menggunakan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menyembunyikan konten gambar sensitif dalam file XLSX dengan menerapkan overlay berwarna. Lindungi data penting sambil menjaga struktur dokumen tetap utuh."

############################# Header ############################
title: "Masker Gambar Sensitif dalam Dokumen XLSX Menggunakan .NET" 
description: "Pastikan privasi data dalam file XLSX menggunakan C#. Alat kami dirancang untuk membuat redaksi gambar cepat dan efektif."
subtitle: "Fitur Utama GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET menawarkan pengembang C# cara sederhana untuk menyembunyikan atau menghapus konten dari file XLSX. Lindungi dokumen Anda dengan redaksi teks, gambar, dan metadata di berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data Pribadi dalam Dokumen Xlsx"
    content: |
      GroupDocs.Redaction for .NET: Membantu aplikasi .NET Anda mengamankan dokumen secara efisien.
      
      1. Buat instance Redactor dan muat file Xlsx.
      2. Atur parameter redaksi untuk sesuai dengan kebutuhan Anda.
      3. Tentukan area gambar dan pilih warna overlay.
      4. Terapkan redaksi dan simpan file output.
   
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
        // Masker bagian gambar sensitif dalam XLSX

        // Inisialisasi Redactor dengan jalur file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Pilih ukuran dan warna overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Tandai area untuk redaksi
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
  title: "Fitur Redaksi Dokumen"
  description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menghapus atau menyembunyikan konten di berbagai format file. Jaga data sensitif tetap pribadi sambil mempertahankan tata letak yang bersih."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi yang Kuat"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Cepat temukan dan redaksi teks rahasia untuk melindungi data sensitif."

    # feature loop
    - title: "Maskir Konten Gambar"
      content: "Terapkan overlay ke seluruh gambar atau area tertentu untuk menyembunyikan visual pribadi."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau sesuaikan metadata tersembunyi untuk mencegah kebocoran data yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Konten Gambar dengan Overlay"
      content: |
        Pelajari cara menyembunyikan area gambar sensitif dalam dokumen Anda.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Buka dokumen untuk redaksi
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Definisikan atribut overlay: ukuran, lokasi, warna
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Targetkan area gambar tertentu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Terapkan overlay pada area gambar
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
    title: "Maskir Konten XLSX dengan Redaksi .NET"
    exclude: "XLSX"
    description: "Gunakan .NET untuk menyembunyikan atau menghapus konten sensitif dalam file XLSX. Solusi praktis untuk mengamankan dokumen bisnis dan pribadi."
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