
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Gambar dalam IMAGE dengan Overlay Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk menutupi area gambar sensitif dalam berkas IMAGE dengan overlay berwarna. Jaga data penting tetap aman tanpa mengubah tata letak dokumen."

############################# Header ############################
title: "Lindungi Gambar Pribadi dalam Berkas IMAGE Menggunakan Overlay dengan Java" 
description: "Amankan gambar bisnis dan pribadi dalam berkas IMAGE dengan Java. Alat mudah untuk perlindungan data yang cepat dan andal."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberi pengembang Java kemampuan untuk menyembunyikan atau menghapus konten dalam berkas IMAGE. Lindungi dokumen dengan menutupi teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Aman kan Konten dalam Berkas Image Menggunakan Overlay"
    content: |
      Cepat tutupi area sensitif di aplikasi Java Anda dengan GroupDocs.Redaction for Java.
      
      1. Buat objek Redactor dan tentukan jalur berkas Image Anda.
      2. Tetapkan opsi redaksi sesuai kebutuhan.
      3. Tandai bagian gambar dan pilih warna overlay.
      4. Proses dan simpan berkas yang telah diredaksi.
   
    code:
      platform: "java"
      copy_title: "Salin"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Contoh redaksi"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "klik untuk menyalin"
        copy_done: "disalin"
      links:
        #  loop
        - title: "Lebih banyak contoh"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Dokumentasi"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Sembunyikan konten gambar dalam IMAGE

        // Muat berkas menggunakan Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Tentukan dimensi dan warna overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Pilih area yang ingin dilindungi
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Terapkan overlay dan simpan berkas
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten Sensitif dalam Setiap Dokumen"
  description: "GroupDocs.Redaction for Java membantu Anda menyembunyikan atau menghapus konten pribadi dalam berbagai format dokumen. Pastikan dokumen tetap bersih dan aman untuk distribusi."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi dengan Kontrol Penuh"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Temukan teks sensitif dalam dokumen dan ganti untuk melindungi informasi."

    # feature loop
    - title: "Tutup Gambar dengan Overlay"
      content: "Gunakan overlay untuk menyembunyikan gambar utuh atau bagian tertentu."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau edit metadata tersembunyi untuk mencegah kebocoran data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masker Area Gambar dengan Overlay"
      content: |
        Contoh kode ini menunjukkan bagaimana menyembunyikan bagian gambar sensitif menggunakan overlay.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka berkas untuk diedit
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Tentukan ukuran, warna, dan posisi overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Pilih area gambar di halaman pertama
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Terapkan overlay untuk menyamarkan konten
              redactor.apply(redaction);

              // Simpan berkas yang dimodifikasi
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Salin"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Dokumentasi"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Siap untuk memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis atau minta lisensi"
  items:
    #  loop
    - title: "Unduh Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Lisensi"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Amankan Berkas IMAGE dengan Redaksi Java"
    exclude: "IMAGE"
    description: "Dengan Java, Anda dapat dengan mudah menyembunyikan atau menghapus konten sensitif dalam berkas IMAGE. Solusi tepercaya untuk menjaga keamanan dokumen."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi Gambar"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Format gambar populer"

        # format loop 6
        - name: "Redaksi Foto"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Format foto"

        # format loop 7
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Presentasi PowerPoint Open XML"

        # format loop 10
        - name: "Redaksi JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Gambar JPEG"


---