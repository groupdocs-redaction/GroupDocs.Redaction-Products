
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Metadata dari WORD Menggunakan Java"
head_description: "Dengan GroupDocs.Redaction for Java, Anda dapat dengan cepat menghapus metadata tersembunyi dari file WORD. Jaga agar dokumen Anda aman dan pribadi."

############################# Header ############################
title: "Bersihkan Metadata Tersembunyi dalam File WORD dengan Java" 
description: "Lindungi file WORD Anda dengan menghapus informasi pribadi menggunakan alat Java. Sangat baik untuk penggunaan bisnis dan pribadi."
subtitle: "Bagaimana GroupDocs.Redaction for Java Membantu Anda" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang Java untuk menghapus data dari file WORD. Bersihkan metadata, teks, dan gambar dengan efektif.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata dalam File Word"
    content: |
      Gunakan GroupDocs.Redaction untuk membersihkan metadata dari dokumen dalam aplikasi Java Anda.
      
      1. Mulai objek Redactor dan muat file Word Anda.
      2. Tetapkan aturan untuk menghapus bidang metadata tersembunyi.
      3. Terapkan redaksi untuk menghapus metadata.
      4. Simpan file yang diperbarui.
   
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
        // Hapus metadata tersembunyi dari WORD

        // Muat file dengan Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Konfigurasi pengaturan redaksi metadata
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Jalankan redaksi dan simpan
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Alat untuk Menghapus Informasi Pribadi"
  description: "Gunakan GroupDocs.Redaction for Java untuk membersihkan teks, gambar, dan metadata dari berbagai format file. Bagikan file Anda tanpa mengekspos data sensitif."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi Metadata dan Konten"
  features:
    # feature loop
    - title: "Hapus Teks Pribadi"
      content: "Cari konten sensitif dalam file dan hapus atau ubah sesuai kebutuhan."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Sembunyikan bagian tertentu dari gambar yang mungkin mengandung rincian pribadi."

    # feature loop
    - title: "Hapus Bidang Metadata"
      content: "Hapus tag tersembunyi seperti penulis, judul, dan lainnya untuk memastikan privasi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bersihkan Bidang Metadata dalam Dokumen"
      content: |
        Contoh ini menjelaskan cara menghapus metadata seperti Penulis dan Judul dalam file WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat file untuk diproses
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Hapus bidang Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Hapus bidang Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Lakukan redaksi
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Simpan file bersih
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Hapus Metadata dalam WORD dengan Java"
    exclude: "WORD"
    description: "Java memungkinkan Anda membersihkan metadata tersembunyi dari file WORD. Cara sederhana untuk melindungi dokumen Anda."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi Gambar"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Format gambar populer"

        # format loop 6
        - name: "Redaksi Foto"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Format foto"

        # format loop 7
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Presentasi PowerPoint Open XML"

        # format loop 10
        - name: "Redaksi JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Gambar JPEG"


---