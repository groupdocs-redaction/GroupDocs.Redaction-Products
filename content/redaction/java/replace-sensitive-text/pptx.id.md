
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari PPTX Menggunakan Java"
head_description: "Lindungi detail sensitif dalam presentasi PPTX Anda dengan GroupDocs.Redaction for Java dan Java. Redaksi yang cepat dan efisien."

############################# Header ############################
title: "Bersihkan Teks di File PPTX dengan Java" 
description: "Gunakan GroupDocs.Redaction for Java dan Java untuk menyembunyikan atau menghapus konten dalam slide PPTX Anda. Bagus untuk keperluan bisnis, hukum, atau pribadi."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java cara yang solid untuk mengedit atau menyembunyikan konten dalam file PPTX. Kerja dengan teks, gambar, metadata, dan komentar dengan kontrol penuh.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Redaksi Konten dalam Presentasi Pptx"
    content: |
      Dengan GroupDocs.Redaction for Java, Anda dapat membersihkan presentasi Java Anda dalam beberapa langkah cepat.
      
      1. Buat Redactor dan muat file Pptx Anda.
      2. Pilih pengaturan redaksi yang sesuai dengan kebutuhan Anda.
      3. Tetapkan istilah pencarian dan isi pengganti.
      4. Terapkan perubahan dan simpan file yang diperbarui.
   
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
        // Redaksi teks dalam presentasi PPTX

        // Muat dokumen Anda menggunakan Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Tetapkan opsi redaksi
            // Pilih teks untuk dicari dan apa yang harus diganti
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redaksi dan simpan file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Tambahan"
  description: "GroupDocs.Redaction for Java memudahkan untuk menyembunyikan atau menghapus konten pribadi dari berbagai jenis file. Sempurna untuk menjaga data Anda aman sebelum dibagikan."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opsi untuk menghapus teks, gambar, dan metadata"
  features:
    # feature loop
    - title: "Ganti teks di mana saja"
      content: "Cari dan ganti kata atau frasa di seluruh slide. Berfungsi dengan teks persis atau pola."

    # feature loop
    - title: "Sembunyikan konten visual"
      content: "Tutup bagian dari slide atau gambar menggunakan kotak overlay dengan warna pilihan Anda."

    # feature loop
    - title: "Hapus metadata"
      content: "Hapus data latar belakang seperti penulis, tanggal pembuatan, atau catatan yang mungkin mengandung informasi pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Berdasarkan Regex"
      content: |
        Gunakan ekspresi reguler untuk menemukan dan menghapus pola seperti email, nomor telepon, atau kode.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file Anda
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Tambahkan pola regex EMAIL dan pengganti
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Terapkan redaksi berdasarkan pola
              redactor.apply(redaction);

              // Simpan versi yang bersih
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redaksi Konten dalam PPTX Menggunakan Java"
    exclude: "PPTX"
    description: "Hapus detail pribadi atau sensitif dari dokumen PPTX menggunakan Java. Cara yang andal untuk menjaga file Anda aman."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Presentasi PowerPoint Open XML"


---