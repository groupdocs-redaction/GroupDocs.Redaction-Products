
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Gambar dalam WORD dengan Overlay Menggunakan Java"
head_description: "Dengan GroupDocs.Redaction for Java, Anda dapat menutupi gambar sensitif dalam berkas WORD menggunakan overlay berwarna. Lindungi data pribadi tanpa mengubah tata letak dokumen."

############################# Header ############################
title: "Lindungi Gambar Sensitif dalam Berkas WORD Menggunakan Java" 
description: "Aman kan visual pribadi dan bisnis dalam dokumen WORD dengan Java. Redaksi gambar yang cepat dan andal dibuat sederhana."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberi pengembang Java alat mudah untuk menyembunyikan atau menghapus konten dari berkas WORD. Redaksi teks, gambar, dan metadata di berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Jaga Data Rahasia dalam Berkas Word"
    content: |
      GroupDocs.Redaction for Java memudahkan aplikasi Java untuk menyembunyikan informasi pribadi dalam dokumen.
      
      1. Inisialisasi Redactor dan muat berkas Word.
      2. Tentukan pengaturan redaksi yang Anda butuhkan.
      3. Tandai area gambar dan pilih warna overlay.
      4. Jalankan redaksi dan simpan dokumen yang diperbarui.
   
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
        // Sembunyikan konten gambar sensitif dalam WORD

        // Muat berkas menggunakan Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Pilih ukuran dan warna overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Tandai area gambar untuk menutupi
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
  title: "Alat untuk Menyembunyikan dan Menghapus Konten"
  description: "GroupDocs.Redaction for Java membantu Anda menyembunyikan atau menghapus data sensitif dalam berbagai format berkas. Jaga dokumen Anda tetap aman dan terstruktur dengan baik."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi yang Efektif"
  features:
    # feature loop
    - title: "Cari & Ganti Teks"
      content: "Cari dokumen untuk teks pribadi dan ganti untuk memastikan keamanan data."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Sembunyikan gambar utuh atau area yang dipilih dengan menerapkan overlay."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus atau ubah metadata tersembunyi untuk melindungi informasi rahasia."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Overlay untuk Menyembunyikan Data Gambar"
      content: |
        Contoh ini menunjukkan bagaimana melindungi konten gambar sensitif dalam dokumen dengan overlay.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat dokumen
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Tetapkan properti overlay seperti ukuran, posisi, dan warna
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Tandai area gambar di halaman pertama
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Tutup area dengan overlay
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
    title: "Sembunyikan Konten dalam Berkas WORD dengan Java"
    exclude: "WORD"
    description: "Gunakan Java untuk menyembunyikan atau menghapus data sensitif dalam berkas WORD. Cara efektif untuk menjaga keamanan dokumen."
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