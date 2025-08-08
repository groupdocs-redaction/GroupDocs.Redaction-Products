
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Menutupi Gambar dalam JPEG dengan Overlay Menggunakan Java"
head_description: "Jaga agar gambar sensitif tetap pribadi dalam berkas JPEG dengan GroupDocs.Redaction for Java. Tambahkan overlay untuk menyembunyikan informasi tanpa mengubah tata letak dokumen Anda."

############################# Header ############################
title: "Sembunyikan Gambar Sensitif dalam Berkas JPEG dengan Overlay Menggunakan Java" 
description: "Lindungi gambar pribadi dan bisnis dalam berkas JPEG menggunakan Java. Alat sederhana untuk membantu Anda mengamankan dokumen."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java alat untuk menyembunyikan atau menghapus konten dalam berkas JPEG. Lindungi dokumen Anda dengan menutupi teks, gambar, dan metadata dengan mudah.

############################# Steps ############################
steps:
    enable: true
    title: "Sembunyikan Data Pribadi dalam Berkas Jpeg"
    content: |
      GroupDocs.Redaction for Java memudahkan aplikasi Java Anda untuk menutupi konten pribadi.
      
      1. Inisialisasi objek Redactor dan muat berkas Jpeg Anda.
      2. Sesuaikan pengaturan redaksi sesuai kebutuhan Anda.
      3. Pilih area gambar dan pilih warna overlay.
      4. Terapkan redaksi dan simpan berkas.
   
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
        // Sembunyikan data gambar dalam JPEG

        // Muat berkas menggunakan Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Tentukan ukuran dan warna overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Pilih area yang ingin ditutup
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Terapkan overlay dan simpan perubahan
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan Data Sensitif dalam Dokumen"
  description: "GroupDocs.Redaction for Java membantu Anda menyembunyikan atau menghapus konten pribadi dari berbagai jenis berkas. Pastikan dokumen Anda tetap bersih dan siap untuk dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi Serba Ada"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Cari dokumen Anda untuk teks pribadi dan ganti untuk melindungi data sensitif."

    # feature loop
    - title: "Tutup Konten Gambar"
      content: "Gunakan overlay untuk menyembunyikan seluruh gambar atau bagian tertentu."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus metadata yang tersembunyi untuk mencegah eksposur informasi sensitif."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Overlay untuk Menyembunyikan Konten Gambar"
      content: |
        Contoh ini menunjukkan bagaimana menyembunyikan area gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat berkas untuk redaksi
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Tetapkan ukuran, posisi, dan warna overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Pilih area gambar di halaman satu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Terapkan overlay untuk menyembunyikan gambar
              redactor.apply(redaction);

              // Simpan berkas yang diperbarui
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
    title: "Amankan Berkas JPEG dengan Redaksi Java"
    exclude: "JPEG"
    description: "Gunakan Java untuk menyembunyikan atau menghapus data sensitif dalam berkas JPEG. Solusi tepercaya untuk melindungi dokumen penting Anda."
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