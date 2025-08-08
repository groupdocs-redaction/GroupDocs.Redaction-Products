
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Metadata dari XLSX Menggunakan Java"
head_description: "GroupDocs.Redaction for Java membantu membersihkan metadata tersembunyi dari file XLSX. Jaga agar dokumen Anda tetap pribadi dan bebas dari rincian yang tidak diinginkan."

############################# Header ############################
title: "Bersihkan Metadata dari File XLSX di Java" 
description: "Gunakan Java untuk menghapus rincian pribadi atau tersembunyi dalam dokumen XLSX Anda. Ideal untuk penggunaan kerja dan pribadi."
subtitle: "Lihat Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang Java untuk mengontrol konten dalam file XLSX. Hapus teks, metadata, dan gambar sesuai kebutuhan.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata dari File Xlsx"
    content: |
      GroupDocs.Redaction membantu proyek Java Anda menghilangkan metadata sensitif dengan cepat.
      
      1. Mulai Redactor dan buka file Xlsx.
      2. Pilih bidang metadata mana yang akan dihapus.
      3. Jalankan redaksi untuk menghapusnya dari file.
      4. Simpan versi yang sudah dibersihkan.
   
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
        // Hapus metadata tersembunyi dalam file XLSX

        // Buka file menggunakan Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Pilih bidang metadata yang akan dihapus
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Terapkan redaksi dan simpan file Anda
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Amankan File Anda dengan Menyembunyikan Info Sensitif"
  description: "Dengan GroupDocs.Redaction for Java, Anda dapat membersihkan data pribadi dari berbagai jenis dokumen. Cara sederhana untuk menjaga keamanan file Anda."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur untuk Menghapus Konten"
  features:
    # feature loop
    - title: "Hapus Teks"
      content: "Cari dan hapus kata-kata atau frasa yang menyimpan data pribadi."

    # feature loop
    - title: "Tutup Gambar"
      content: "Sembunyikan bagian gambar yang berisi bagian pribadi atau sensitif."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus informasi latar belakang yang bisa mengungkapkan rincian pribadi atau bisnis."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Contoh Penghapusan Metadata"
      content: |
        Contoh ini menunjukkan cara menghapus metadata seperti Penulis atau Judul dari file XLSX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka dokumen Anda
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Pilih bidang Penulis untuk redaksi
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Pilih bidang Judul untuk redaksi
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Jalankan alat redaksi
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Simpan hasilnya
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
    title: "Penghapusan Metadata dalam XLSX Menggunakan Java"
    exclude: "XLSX"
    description: "Gunakan alat Java untuk menghapus data tersembunyi dari file XLSX. Bagikan dokumen yang bersih dan aman."
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