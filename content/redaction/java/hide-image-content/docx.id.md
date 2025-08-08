
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Gambar dalam DOCX dengan Overlay Menggunakan Java"
head_description: "Dengan GroupDocs.Redaction for Java, Anda dapat menyembunyikan gambar sensitif dalam berkas DOCX dengan menerapkan overlay berwarna. Lindungi informasi pribadi tanpa mengubah tata letak dokumen Anda."

############################# Header ############################
title: "Sembunyikan Gambar Rahasia dalam Dokumen DOCX dengan Overlay Menggunakan Java" 
description: "Lindungi data bisnis dan pribadi dalam berkas DOCX menggunakan Java. Alat kami membantu Anda menjaga informasi sensitif tetap aman dan dokumen tetap bersih."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java menawarkan alat kepada pengembang Java untuk menyembunyikan atau menghapus konten dalam berkas DOCX. Lindungi teks, gambar, dan metadata dalam berbagai format dokumen.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Data dalam Dokumen Docx"
    content: |
      GroupDocs.Redaction for Java memberi kekuatan kepada aplikasi Java Anda untuk melakukan redaksi dokumen. Lindungi konten pribadi dengan cepat dan efisien.
      
      1. Buat Redactor dan set jalur berkas ke dokumen Docx Anda.
      2. Sesuaikan pengaturan redaksi sesuai kebutuhan Anda.
      3. Pilih area gambar yang ingin ditutupi dan pilih warna overlay.
      4. Jalankan proses redaksi dan simpan berkas.
   
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
        // Sembunyikan bagian gambar sensitif dalam DOCX

        // Muat dokumen menggunakan Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Tentukan warna dan ukuran overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Tandai area yang akan diredaksi
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
  title: "Sembunyikan Konten Sensitif dalam Berkas"
  description: "Dengan GroupDocs.Redaction for Java, Anda dapat menghapus atau menghapus konten dari berbagai format berkas. Jaga agar dokumen Anda tetap aman dan dapat dibaca."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi untuk Dokumen"
  features:
    # feature loop
    - title: "Edit Konten Teks"
      content: "Cari dan ganti teks sensitif di seluruh berkas Anda untuk menjaga privasi data."

    # feature loop
    - title: "Overlay Gambar"
      content: "Tutup seluruh gambar atau bagian-bagian tertentu untuk menyembunyikan informasi visual yang rahasia."

    # feature loop
    - title: "Hapus Metadata"
      content: "Bersihkan metadata tersembunyi dari dokumen untuk mencegah eksposur data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Overlay Gambar untuk Menyembunyikan Data Sensitif"
      content: |
        Contoh ini menunjukkan bagaimana menerapkan overlay untuk menutupi area gambar yang rahasia dalam dokumen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka dokumen untuk diedit
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Tentukan ukuran, warna, dan posisi overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Pilih area target di halaman satu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Terapkan overlay untuk menutupi gambar
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
    title: "Redaksi Berkas DOCX dengan Java"
    exclude: "DOCX"
    description: "Gunakan Java untuk menyembunyikan atau menghapus data pribadi dalam berkas DOCX. Sempurna untuk menjaga bisnis dan dokumen rahasia tetap aman."
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