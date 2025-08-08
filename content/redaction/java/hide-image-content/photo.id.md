
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Gambar dalam PHOTO dengan Overlay Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk menutupi area gambar sensitif dalam berkas PHOTO dengan overlay. Lindungi konten pribadi sambil menjaga tata letak berkas tetap tidak berubah."

############################# Header ############################
title: "Amankan Konten Gambar dalam Berkas PHOTO dengan Overlay Menggunakan Java" 
description: "Lindungi data gambar pribadi dan bisnis dalam berkas PHOTO dengan Java. Alat sederhana dirancang untuk perlindungan cepat dan efektif."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java alat andal untuk menyembunyikan atau menghapus konten dalam berkas PHOTO. Lindungi dokumen dengan menutupi teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Sembunyikan Konten dalam Berkas Photo dengan Overlay"
    content: |
      GroupDocs.Redaction for Java memudahkan menyembunyikan area sensitif dalam aplikasi Java Anda.
      
      1. Inisialisasi Redactor dan muat berkas Photo Anda.
      2. Tetapkan preferensi redaksi sesuai kebutuhan.
      3. Pilih area gambar dan pilih warna overlay.
      4. Jalankan redaksi dan simpan berkas.
   
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
        // Tutup bagian gambar dalam PHOTO dengan overlay

        // Muat berkas menggunakan Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Tentukan warna dan ukuran overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Tandai area gambar yang ingin ditutupi
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Terapkan overlay dan simpan hasilnya
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten Sensitif dengan Mudah"
  description: "GroupDocs.Redaction for Java memungkinkan Anda menyembunyikan atau menghapus data pribadi dalam berbagai jenis dokumen. Jaga berkas Anda tetap bersih dan siap untuk dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Kontrol Penuh atas Redaksi"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Temukan teks sensitif dalam dokumen dan ganti untuk melindungi informasi."

    # feature loop
    - title: "Overlay Area Gambar"
      content: "Gunakan overlay untuk menutup gambar utuh atau bagian tertentu."

    # feature loop
    - title: "Hapus Metadata"
      content: "Bersihkan metadata untuk mencegah eksposur data yang tidak diinginkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Data Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan bagaimana menutup konten gambar dengan overlay dalam dokumen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat dokumen untuk diedit
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Tetapkan ukuran, warna, dan posisi overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Target area gambar pada halaman satu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Terapkan overlay untuk menyembunyikan konten
              redactor.apply(redaction);

              // Simpan berkas yang diedit
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
    title: "Amankan Berkas PHOTO dengan Redaksi Java"
    exclude: "PHOTO"
    description: "Dengan Java, Anda dapat menyembunyikan atau menghapus data sensitif dalam berkas PHOTO. Cara tepercaya untuk melindungi dokumen resmi."
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