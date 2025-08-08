
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Edit Metadata dalam JPEG Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk membersihkan atau mengubah metadata dalam file JPEG. Lindungi privasi dengan menghapus data tersembunyi."

############################# Header ############################
title: "Hapus Metadata dari File JPEG Menggunakan Java" 
description: "Jaga agar dokumen JPEG Anda aman dengan alat Java yang sederhana yang menghapus rincian pribadi."
subtitle: "Fitur Utama dari GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang Java untuk menghapus teks yang tidak diinginkan, gambar, dan metadata dari file JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Metadata dalam Dokumen Jpeg"
    content: |
      GroupDocs.Redaction memudahkan Anda menghapus metadata dalam proyek Java Anda.
      
      1. Buat Redactor dan muat file Jpeg Anda.
      2. Pilih opsi untuk menghapus semua bidang metadata.
      3. Jalankan redaksi untuk membersihkan file.
      4. Simpan file yang diperbarui tanpa data tersembunyi.
   
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
        // Bersihkan metadata dari file JPEG

        // Muat file menggunakan Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Siapkan pembersihan metadata
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Jalankan dan simpan perubahan
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Dokumen Anda"
  description: "GroupDocs.Redaction for Java membantu menghapus konten pribadi dari banyak jenis dokumen. Jaga informasi sensitif keluar dari file yang Anda bagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi Utama"
  features:
    # feature loop
    - title: "Hapus Teks"
      content: "Temukan dan hapus kata atau frasa pribadi dari file Anda."

    # feature loop
    - title: "Sembunyikan Konten Gambar"
      content: "Tambahkan overlay untuk menutupi area gambar yang memiliki informasi sensitif."

    # feature loop
    - title: "Edit Metadata"
      content: "Bersihkan atau mengubah bidang metadata untuk menghindari mengekspos informasi pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Bidang Metadata Tersembunyi"
      content: |
        Contoh ini menunjukkan cara menghapus atau mengedit metadata seperti Penulis dan Judul dalam dokumen JPEG.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file JPEG dengan redactor
          final Redactor redactor = new Redactor("source.jpg");
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

              // Jalankan redaksi
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Simpan file yang bersih
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
    title: "Hapus Metadata dari JPEG Menggunakan Java"
    exclude: "JPEG"
    description: "Gunakan Java untuk menghapus data tersembunyi dari file JPEG dan melindungi informasi sensitif."
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