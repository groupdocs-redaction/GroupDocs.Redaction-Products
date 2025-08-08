
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Bersihkan Metadata dalam PDF Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk menghapus atau memperbarui metadata tersembunyi dalam file PDF. Hapus informasi pribadi sebelum membagikan dokumen Anda."

############################# Header ############################
title: "Menghapus Metadata dari File PDF dengan Java" 
description: "Lindungi informasi pribadi dan bisnis Anda dalam file PDF menggunakan Java. Alat sederhana yang membantu melindungi data Anda."
subtitle: "Fitur Utama dari GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang Java untuk menyembunyikan teks, konten gambar, dan metadata dalam dokumen PDF.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Metadata dalam Dokumen Pdf"
    content: |
      Mulailah dengan GroupDocs.Redaction untuk melindungi metadata dalam proyek Java Anda.
      
      1. Atur Redactor dan buka file Pdf Anda.
      2. Pilih untuk menghapus semua bidang metadata.
      3. Jalankan redaksi untuk membersihkan data tersembunyi.
      4. Simpan file dengan metadata yang dihapus.
   
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
        // Bersihkan metadata dalam file PDF

        // Gunakan Redactor untuk membuka file
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Atur pengaturan redaksi metadata
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Terapkan dan simpan perubahan Anda
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hapus Informasi Sensitif dari File"
  description: "GroupDocs.Redaction for Java memungkinkan Anda membersihkan konten pribadi dalam berbagai format dokumen. Jadikan file Anda aman dan mudah dibagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Inti Redaksi"
  features:
    # feature loop
    - title: "Redaksi Teks"
      content: "Temukan dan hapus kata-kata pribadi atau sensitif dalam dokumen Anda."

    # feature loop
    - title: "Tutup Gambar"
      content: "Tempatkan overlay pada gambar untuk menyembunyikan visual pribadi."

    # feature loop
    - title: "Penghapusan Metadata"
      content: "Hapus metadata tersembunyi yang bisa membocorkan informasi pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Metadata Tersembunyi"
      content: |
        Contoh ini menunjukkan cara mengubah atau menghapus metadata dalam file PDF.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file PDF menggunakan redactor
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Targetkan bidang metadata Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Targetkan bidang metadata Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Jalankan pembersihan metadata
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Simpan file akhir
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
    title: "Amankan File PDF dengan Redaksi Metadata Java"
    exclude: "PDF"
    description: "Hapus bidang tersembunyi dalam file PDF Anda menggunakan Java. Lindungi privasi dengan alat pembersihan metadata yang sederhana."
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