
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Gambar dalam EXCEL dengan Overlay Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk menutupi gambar sensitif dalam berkas EXCEL. Tambahkan overlay berwarna untuk melindungi informasi pribadi sambil menjaga desain dokumen tetap utuh."

############################# Header ############################
title: "Sembunyikan Gambar Sensitif dalam Berkas EXCEL dengan Overlay Menggunakan Java" 
description: "Lindungi visual pribadi dan bisnis dalam berkas EXCEL dengan Java. Alat mudah untuk perlindungan data yang tepercaya."
subtitle: "Temukan Fitur GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java alat untuk menyembunyikan atau menghapus konten dalam berkas EXCEL. Lindungi teks, gambar, dan metadata untuk menjaga data sensitif.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Data Anda dalam Berkas Excel"
    content: |
      GroupDocs.Redaction for Java membantu aplikasi Java menyembunyikan konten sensitif dalam dokumen dengan efektif.
      
      1. Buat objek Redactor dan muat berkas Excel Anda.
      2. Tetapkan opsi redaksi agar sesuai dengan kebutuhan Anda.
      3. Pilih area gambar yang ingin ditutupi dan pilih warna overlay.
      4. Terapkan redaksi dan simpan dokumen Anda.
   
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
        // Sembunyikan konten gambar dalam EXCEL

        // Buka berkas dengan Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Tentukan ukuran dan warna overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Tandai area yang ingin disembunyikan
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Terapkan perubahan dan simpan berkas
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan atau Hapus Konten dalam Dokumen"
  description: "GroupDocs.Redaction for Java memungkinkan Anda menutupi atau menghapus data sensitif dalam berbagai jenis berkas. Jaga dokumen Anda tetap bersih dan aman."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi Lanjutan"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Cari dokumen untuk teks pribadi dan ganti untuk menjaga keamanan data."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Sembunyikan bagian gambar atau visual secara keseluruhan dengan overlay berwarna."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus metadata tersembunyi untuk menghindari berbagi informasi tambahan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tutup Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana cara menyembunyikan area gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka berkas untuk diedit
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Tetapkan dimensi overlay, warna, dan posisi
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

              // Terapkan overlay untuk menutupi data
              redactor.apply(redaction);

              // Simpan dokumen yang diredaksi
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
    title: "Amankan Berkas EXCEL dengan Redaksi Java"
    exclude: "EXCEL"
    description: "Gunakan Java untuk menyembunyikan atau menghapus informasi pribadi dalam berkas EXCEL.Cara mudah untuk memastikan privasi dokumen."
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