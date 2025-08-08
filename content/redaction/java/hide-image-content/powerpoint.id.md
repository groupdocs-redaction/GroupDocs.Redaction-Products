
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Menutupi Gambar Sensitif dalam POWERPOINT dengan Overlay Menggunakan Java"
head_description: "Sembunyikan konten gambar pribadi dalam berkas POWERPOINT dengan GroupDocs.Redaction for Java. Tambahkan overlay untuk menjaga dokumen tetap aman tanpa mempengaruhi tata letak."

############################# Header ############################
title: "Lindungi Gambar Pribadi dalam Dokumen POWERPOINT dengan Overlay Menggunakan Java" 
description: "Jaga agar visual pribadi dan bisnis tetap aman dalam berkas POWERPOINT dengan Java. Alat yang mudah digunakan untuk perlindungan privasi yang kuat."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberi pengembang Java kemampuan untuk menyembunyikan atau menghapus konten dalam berkas POWERPOINT. Amankan dokumen Anda dengan menutupi teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Sembunyikan Data Sensitif dalam Dokumen Powerpoint"
    content: |
      GroupDocs.Redaction for Java membantu aplikasi Java Anda menyembunyikan konten pribadi dalam dokumen dengan cepat.
      
      1. Buat objek Redactor dan muat berkas Powerpoint.
      2. Tentukan preferensi redaksi untuk tugas tersebut.
      3. Pilih area gambar dan tentukan warna overlay.
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
        // Sembunyikan data gambar dalam berkas POWERPOINT

        // Buka berkas dengan Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Tentukan warna dan ukuran overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Pilih area yang akan ditutupi
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
  description: "GroupDocs.Redaction for Java membantu Anda menutupi atau menghapus konten pribadi di berbagai format dokumen. Jaga berkas tetap aman untuk berbagi dan penyimpanan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi untuk Semua Kebutuhan"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Dengan cepat cari kata-kata sensitif dan redaksikan untuk memastikan privasi data."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Terapkan overlay pada gambar atau bagian gambar untuk menjaga privasi."

    # feature loop
    - title: "Hapus Metadata Tersembunyi"
      content: "Hapus metadata tak terlihat untuk menghindari kebocoran data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Konten Gambar Menggunakan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana menempatkan overlay pada area gambar sensitif dalam dokumen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat berkas untuk redaksi
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Tetapkan ukuran, warna, dan posisi overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Tandai bagian gambar di halaman pertama
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Terapkan overlay untuk menutupi data
              redactor.apply(redaction);

              // Simpan dokumen yang diperbarui
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
    title: "Lindungi Berkas POWERPOINT dengan Redaksi Java"
    exclude: "POWERPOINT"
    description: "Dengan Java, Anda dapat menutupi atau menghapus data sensitif dalam berkas POWERPOINT. Solusi yang dapat diandalkan untuk keamanan dokumen."
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