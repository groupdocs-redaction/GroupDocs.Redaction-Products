
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Metadata dari EXCEL dengan Java"
head_description: "Lindungi dokumen EXCEL Anda dengan membersihkan metadata tersembunyi menggunakan GroupDocs.Redaction for Java. Jaga agar rincian pribadi tidak terekspos."

############################# Header ############################
title: "Bersihkan Metadata dalam File EXCEL Menggunakan Java" 
description: "Dengan Java, hapus data sensitif dari file EXCEL. Cara cerdas untuk menjaga keamanan dokumen Anda."
subtitle: "Mengapa Memilih GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan alat kepada pengembang Java untuk mengontrol konten dalam file EXCEL. Hapus teks, metadata, dan gambar sesuai kebutuhan.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Menghapus Metadata dari File Excel"
    content: |
      Dalam Java, GroupDocs.Redaction memudahkan untuk membersihkan metadata dokumen.
      
      1. Buat Redactor dan muat file Excel Anda.
      2. Tetapkan aturan untuk menghapus data tersembunyi.
      3. Jalankan proses pembersihan.
      4. Simpan dokumen yang sudah dibersihkan.
   
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
        // Hapus metadata tersembunyi dari EXCEL

        // Mulai redactor dan buka file
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Atur opsi untuk penghapusan metadata
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Bersihkan dan simpan dokumen
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hapus Konten Sensitif dari File"
  description: "Dengan GroupDocs.Redaction for Java, Anda dapat menghapus metadata, meredaksi teks, dan menyembunyikan area gambar dalam banyak jenis file. Sangat berguna untuk penggunaan hukum, pribadi, atau korporat."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat untuk Membersihkan Metadata dan Konten"
  features:
    # feature loop
    - title: "Temukan dan Hapus Teks"
      content: "Cari teks yang sensitif dan hapus untuk melindungi informasi."

    # feature loop
    - title: "Tutup Konten Gambar"
      content: "Sembunyikan area gambar yang bersifat rahasia dengan menggunakan overlay."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus rincian yang tertanam yang mungkin mengandung data pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Fokus pada Bidang Metadata Tertentu"
      content: |
        Contoh ini menjelaskan cara menghapus bidang seperti Penulis dan Judul dari file EXCEL.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat file ke dalam redactor
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Pilih bidang Penulis
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Pilih bidang Judul
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
    title: "Pembersihan Metadata dalam EXCEL Menggunakan Java"
    exclude: "EXCEL"
    description: "Gunakan alat Java untuk menghapus data tersembunyi dari file EXCEL. Bagikan dokumen bersih dan aman."
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