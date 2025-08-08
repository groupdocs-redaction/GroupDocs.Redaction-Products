
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Metadata dari File PPTX Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk menghapus atau menyunting metadata tersembunyi dalam file PPTX Anda. Lindungi konten Anda dan jaga agar dokumen Anda tetap bersih."

############################# Header ############################
title: "Bersihkan Metadata di PPTX dengan Alat Java" 
description: "Bersihkan rincian pribadi yang tersimpan dalam metadata menggunakan Java. Sangat baik untuk dokumen pribadi dan bisnis."
subtitle: "Fitur Utama dari GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang Java untuk menghapus konten pribadi dalam file PPTX. Hapus metadata, sembunyikan gambar, dan bersihkan teks dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata dalam File Pptx"
    content: |
      Dengan GroupDocs.Redaction, proyek Java Anda dapat membersihkan metadata tersembunyi hanya dalam beberapa langkah.
      
      1. Siapkan Redactor dan muat file Pptx Anda.
      2. Pilih bidang metadata mana yang akan dihapus.
      3. Jalankan proses redaksi.
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
        // Hapus metadata dari PPTX

        // Gunakan Redactor untuk membuka file
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Atur bidang metadata yang akan dihapus
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
  title: "Lebih Banyak Alat Redaksi yang Bisa Anda Gunakan"
  description: "GroupDocs.Redaction for Java membantu Anda menghapus informasi sensitif dari semua jenis file utama. Jaga dokumen tetap bersih dan siap dibagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Privasi Terintegrasi"
  features:
    # feature loop
    - title: "Hapus Teks Sensitif"
      content: "Temukan dan hapus nama, email, dan informasi pribadi lainnya dari file Anda."

    # feature loop
    - title: "Sembunyikan Bagian Gambar"
      content: "Tambahkan overlay untuk menutupi area dalam gambar yang ingin Anda sembunyikan."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus data latar belakang seperti penulis atau judul sebelum membagikan file Anda."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Contoh Penghapusan Bidang Metadata"
      content: |
        Contoh ini menunjukkan bagaimana Anda dapat menghapus metadata seperti penulis dan judul dari file PPTX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file PPTX Anda
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Targetkan metadata Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Targetkan metadata Judul
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Terapkan aturan redaksi
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Simpan file yang sudah direduksi
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
    title: "Hapus Metadata dari PPTX dengan Java"
    exclude: "PPTX"
    description: "Java memudahkan untuk menghapus data tersembunyi dalam file PPTX. Sangat baik untuk menjaga keamanan dokumen sebelum dibagikan."
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