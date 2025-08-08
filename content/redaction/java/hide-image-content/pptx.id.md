
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Gambar dalam PPTX dengan Overlay Menggunakan Java"
head_description: "Dengan GroupDocs.Redaction for Java, Anda dapat menyembunyikan gambar sensitif dalam berkas PPTX dengan menambahkan overlay berwarna. Lindungi informasi rahasia sambil menjaga tata letak dokumen tetap utuh."

############################# Header ############################
title: "Sembunyikan Gambar Sensitif dalam Dokumen PPTX Menggunakan Java" 
description: "Lindungi data pribadi dan bisnis dalam berkas PPTX menggunakan Java. Alat kami membuat redaksi gambar cepat dan sederhana."
subtitle: "Manfaat Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java menyediakan pengembang Java dengan alat praktis untuk menyembunyikan atau menghapus konten dalam berkas PPTX. Lindungi dokumen dengan menyembunyikan teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data Pribadi dalam Dokumen Pptx"
    content: |
      GroupDocs.Redaction for Java memudahkan aplikasi Java untuk mengamankan dokumen dengan menyembunyikan konten sensitif.
      
      1. Inisialisasi Redactor dan muat berkas Pptx.
      2. Tetapkan opsi redaksi sesuai kebutuhan Anda.
      3. Pilih area gambar dan tentukan warna overlay.
      4. Terapkan redaksi dan simpan berkas yang diperbarui.
   
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
        // Sembunyikan bagian gambar sensitif dalam PPTX

        // Buka dokumen menggunakan Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Pilih warna dan ukuran overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Tandai area yang ingin disembunyikan
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Terapkan perubahan dan simpan dokumen
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Konten"
  description: "GroupDocs.Redaction for Java membantu Anda menyembunyikan atau menghapus informasi sensitif dalam banyak format berkas. Jaga dokumen tetap aman sambil mempertahankan penampilan yang profesional."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi Lanjutan"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Cari teks pribadi dengan cepat dan redaksikan untuk mengamankan dokumen."

    # feature loop
    - title: "Tutup Gambar dengan Overlay"
      content: "Sembunyikan seluruh gambar atau area yang dipilih dengan menerapkan overlay."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau edit metadata tersembunyi untuk mencegah berbagi informasi rahasia."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Menutupi Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana cara menutupi gambar sensitif dalam dokumen Anda.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat dokumen Anda
          final Redactor redactor = new Redactor("source.pptx");
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
    title: "Redaksi Konten PPTX Menggunakan Java"
    exclude: "PPTX"
    description: "Terapkan Java untuk menyembunyikan atau menghapus konten sensitif dalam berkas PPTX. Solusi tepercaya untuk perlindungan dokumen."
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