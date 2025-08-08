
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Metadata dari POWERPOINT dengan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk membersihkan metadata tersembunyi dari file POWERPOINT dan menjaga dokumen Anda tetap pribadi dan aman."

############################# Header ############################
title: "Hapus Metadata dalam POWERPOINT menggunakan Java" 
description: "Lindungi file Anda dengan alat yang mudah digunakan untuk Java. Hapus metadata dalam beberapa langkah."
subtitle: "Apa yang Anda Dapatkan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction adalah alat redaksi untuk pengembang Java. Ini membantu Anda membersihkan teks, gambar, dan metadata dalam file POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Membersihkan Metadata dari File Powerpoint"
    content: |
      Dengan GroupDocs.Redaction, aplikasi Java Anda dapat dengan cepat membersihkan metadata dari dokumen.
      
      1. Buat objek Redactor dan muat dokumen.
      2. Pilih bidang metadata yang ingin Anda hapus.
      3. Terapkan pengaturan redaksi Anda.
      4. Ekspor dokumen Anda tanpa data tersembunyi.
   
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
        // Hapus metadata dari file POWERPOINT

        // Buka file Anda dengan redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Atur metadata yang akan dihapus
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Bersihkan dan simpan file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Jaga Keamanan File Anda dengan Redaksi"
  description: "GroupDocs.Redaction for Java membantu membersihkan konten pribadi atau tersembunyi sehingga dokumen dapat dibagikan dengan aman. Mendukung banyak jenis file."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Apa yang Dapat Anda Redaksi"
  features:
    # feature loop
    - title: "Hapus Teks Sensitif"
      content: "Temukan dan hapus kata-kata pribadi atau rahasia dari file Anda."

    # feature loop
    - title: "Sembunyikan Area Gambar"
      content: "Tutup bagian gambar yang tidak boleh terlihat."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus bidang yang dapat mengungkapkan rincian tersembunyi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Bidang Metadata Tersembunyi"
      content: |
        Contoh ini menunjukkan cara menghapus informasi yang tertanam seperti Penulis dan Judul dari dokumen POWERPOINT.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file menggunakan redactor
          final Redactor redactor = new Redactor("source.pptx");
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

              // Terapkan redaksi
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Simpan dokumen yang diperbarui
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
    title: "Bersihkan Metadata POWERPOINT di Java"
    exclude: "POWERPOINT"
    description: "Gunakan Java untuk menghapus data pribadi dari file POWERPOINT. Sempurna untuk membersihkan dan membagikan dokumen yang sensitif."
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