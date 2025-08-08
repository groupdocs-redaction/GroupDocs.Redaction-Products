
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Metadata Tersembunyi di IMAGE dengan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk membersihkan metadata dalam file IMAGE. Pastikan informasi pribadi tetap tersembunyi."

############################# Header ############################
title: "Bersihkan Metadata dari File IMAGE dengan Java" 
description: "Jaga agar dokumen IMAGE Anda aman menggunakan alat yang dibangun untuk Java. Hapus rincian sensitif dengan sederhana."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memungkinkan pengembang Java untuk menghapus konten sensitif — termasuk teks, gambar, dan metadata — dari file IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Membersihkan Metadata dalam File Image"
    content: |
      Mulai menggunakan GroupDocs.Redaction dalam aplikasi Java Anda untuk menghapus metadata tersembunyi dengan cepat.
      
      1. Buat Redactor dan buka dokumen Image Anda.
      2. Pilih bidang metadata untuk dihapus.
      3. Terapkan pengaturan redaksi.
      4. Simpan file yang sudah dibersihkan.
   
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
        // Bersihkan metadata tersembunyi dari IMAGE

        // Muat file Anda menggunakan Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Setel bidang metadata untuk dihapus
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Terapkan perubahan dan simpan
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bersihkan Konten di Setiap File"
  description: "GroupDocs.Redaction for Java membantu menghapus teks pribadi, rincian gambar tersembunyi, dan metadata dari dokumen Anda sebelum dibagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Utama"
  features:
    # feature loop
    - title: "Pembersihan Teks"
      content: "Cari kata atau angka pribadi dan hapus dengan aman."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Sembunyikan bagian sensitif dari gambar menggunakan overlay."

    # feature loop
    - title: "Penghapusan Metadata"
      content: "Bersihkan bidang metadata yang mungkin berisi informasi pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Metadata Sensitif"
      content: |
        Panduan ini menunjukkan cara membersihkan bidang seperti Penulis dan Judul dari dokumen IMAGE.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka IMAGE di redactor
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Pilih metadata Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Pilih metadata Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Terapkan redaksi
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
    title: "Bersihkan Metadata dalam IMAGE dengan Java"
    exclude: "IMAGE"
    description: "Gunakan Java untuk menghapus data tersembunyi dalam file IMAGE. Sangat baik untuk pembersihan dokumen sebelum dibagikan atau diarsipkan."
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