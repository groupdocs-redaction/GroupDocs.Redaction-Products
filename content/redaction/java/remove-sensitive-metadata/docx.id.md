
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Metadata dari DOCX dengan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk membersihkan metadata tersembunyi dalam file DOCX Anda. Pastikan dokumen Anda tidak mengungkapkan informasi pribadi."

############################# Header ############################
title: "Bersihkan Metadata dalam Dokumen DOCX Menggunakan Java" 
description: "Hapus metadata yang tidak diinginkan dari file DOCX Anda dengan Java. Jaga agar file Anda tetap pribadi dan aman untuk dibagikan atau disimpan."
subtitle: "Alat Utama di Dalam GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction membantu pengembang Java menghapus konten pribadi dari file DOCX. Redaksi teks, gambar, dan metadata dengan efektif.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Informasi Tersembunyi dari File Docx"
    content: |
      GroupDocs.Redaction memudahkan Anda menghapus metadata dalam aplikasi Java Anda.
      
      1. Inisialisasi Redactor dan muat file Docx.
      2. Atur alat untuk menghapus bidang metadata tertentu.
      3. Terapkan redaksi untuk menghapus informasi tersembunyi.
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
        // Hapus metadata dari file DOCX

        // Buka file dengan Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Pilih metadata mana yang akan dihapus
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Terapkan dan simpan perubahan
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Data Sensitif dalam Dokumen"
  description: "GroupDocs.Redaction for Java memungkinkan Anda menyembunyikan konten pribadi dari semua jenis file. Pastikan tidak ada data tersembunyi yang terbagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat Redaksi Metadata, Teks, dan Gambar"
  features:
    # feature loop
    - title: "Redaksi Teks"
      content: "Temukan dan hapus teks sensitif di seluruh dokumen Anda."

    # feature loop
    - title: "Overlay Gambar"
      content: "Tutup bagian gambar untuk menyembunyikan visual pribadi."

    # feature loop
    - title: "Pembersihan Metadata"
      content: "Hapus metadata latar belakang yang mungkin mengungkapkan informasi tersembunyi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cara Menghapus Metadata"
      content: |
        Contoh ini menunjukkan cara menghapus properti tersembunyi seperti Penulis dan Judul dari file DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka dokumen DOCX Anda
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Pilih bidang Penulis untuk dibersihkan
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Pilih bidang Judul untuk dibersihkan
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Jalankan redaksi
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
    title: "Bersihkan Metadata dari DOCX dengan Java"
    exclude: "DOCX"
    description: "Gunakan Java untuk menghapus metadata tersembunyi dari dokumen DOCX. Cocok untuk privasi dan perlindungan data."
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