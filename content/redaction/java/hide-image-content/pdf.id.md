
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Menutupi Gambar dalam PDF dengan Overlay Menggunakan Java"
head_description: "Dengan GroupDocs.Redaction for Java, Anda dapat menyembunyikan gambar pribadi dalam berkas PDF dengan meletakkan overlay berwarna. Lindungi visual sensitif sambil menjaga desain dokumen Anda tetap utuh."

############################# Header ############################
title: "Sembunyikan Gambar Rahasia dalam Berkas PDF dengan Overlay Menggunakan Java" 
description: "Lindungi data pribadi dan bisnis dalam berkas PDF menggunakan Java. Alat kami membuat redaksi gambar menjadi sederhana dan efektif."
subtitle: "Fitur GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java menawarkan alat efektif bagi pengembang Java untuk menyembunyikan atau menghapus konten dalam berkas PDF. Lindungi teks, gambar, dan metadata untuk menjaga keamanan dokumen Anda di berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Informasi Bisnis dalam Berkas Pdf"
    content: |
      GroupDocs.Redaction for Java membantu aplikasi Java Anda mengamankan dokumen. Redaksi gambar pribadi dalam beberapa langkah yang efektif.
      
      1. Inisialisasi Redactor dan tentukan jalur ke berkas Pdf Anda.
      2. Pilih pengaturan redaksi untuk hasil terbaik.
      3. Pilih area gambar dan pilih warna overlay.
      4. Proses dan simpan berkas yang telah diamankan.
   
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
        // Menutupi gambar sensitif dalam PDF

        // Muat berkas dengan Redactor
        final Redactor redactor = new Redactor("input.pdf");
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
  title: "Sembunyikan Konten dalam Dokumen"
  description: "Dengan GroupDocs.Redaction for Java, Anda dapat menyembunyikan atau menghapus data sensitif dalam berbagai format berkas. Lindungi informasi pribadi sambil menjaga berkas tetap mudah dibaca dan didistribusikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opsi Redaksi yang Kuat"
  features:
    # feature loop
    - title: "Modifikasi Teks di Mana Saja"
      content: "Cari dan ganti kata-kata sensitif di seluruh dokumen Anda untuk mengamankan konten pribadi."

    # feature loop
    - title: "Sembunyikan Gambar"
      content: "Tambahkan overlay ke gambar atau bagian-bagiannya untuk menjaga visual sensitif tetap tersembunyi."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus atau edit metadata tersembunyi untuk mencegah kebocoran informasi yang tidak diinginkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Menutupi Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana cara menyembunyikan visual rahasia dalam dokumen menggunakan overlay.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka dokumen untuk diedit
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Tentukan ukuran, warna, dan posisi overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Pilih area gambar yang akan diredaksi di halaman satu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Tambahkan overlay untuk menutupi data sensitif
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
    title: "Lindungi Berkas PDF dengan Redaksi Java"
    exclude: "PDF"
    description: "Gunakan Java untuk menyembunyikan atau menghapus data sensitif dalam berkas PDF. Ideal untuk mengamankan dokumen resmi dan pribadi."
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