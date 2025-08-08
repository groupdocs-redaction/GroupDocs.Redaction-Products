
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari DOCX dengan Java"
head_description: "Amankan konten dalam file DOCX Anda menggunakan GroupDocs.Redaction for Java. Redaksi teks, gambar, dan metadata yang cepat dan efisien."

############################# Header ############################
title: "Edit atau Hapus Teks dalam Dokumen DOCX Menggunakan Java" 
description: "Lindungi konten pribadi atau bisnis dalam file DOCX Anda dengan Java dan GroupDocs.Redaction for Java."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa Itu GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java membantu pengembang Java untuk membersihkan dan menyunting file DOCX. Hapus teks, gambar, komentar, dan data tersembunyi dengan efisiensi.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Menyunting Konten di File Docx"
    content: |
      Gunakan GroupDocs.Redaction for Java dalam proyek Java Anda untuk membersihkan file sebelum dibagikan.
      
      1. Buat Redactor dan muat file.
      2. Pilih opsi redaksi Anda.
      3. Masukkan teks yang dicari dan penggantinya.
      4. Terapkan redaksi dan simpan file.
   
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
        // Redaksi konten dalam file DOCX

        // Muat dokumen menggunakan Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Atur opsi redaksi
            // Tentukan apa yang ditemukan dan diganti
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan redaksi dan simpan
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Opsi Redaksi"
  description: "GroupDocs.Redaction for Java memungkinkan Anda membersihkan konten sensitif dari berbagai jenis file. Jaga dokumen Anda aman tanpa kehilangan struktur."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Alat untuk menghapus konten"
  features:
    # feature loop
    - title: "Ganti teks"
      content: "Temukan konten tertentu dan ganti di seluruh dokumen."

    # feature loop
    - title: "Sembunyikan gambar atau bagian"
      content: "Tutup visual sensitif dengan overlay berwarna."

    # feature loop
    - title: "Hapus data tersembunyi"
      content: "Bersihkan metadata seperti nama penulis, tanggal, atau properti dokumen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Berdasarkan Regex"
      content: |
        Gunakan ekspresi reguler untuk mendeteksi dan menyunting pola seperti nomor telepon atau email.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat dokumen
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Tetapkan pola regex EMAIL dan teks pengganti
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Jalankan redaksi
              redactor.apply(redaction);

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
    title: "Bersihkan File DOCX dengan Java"
    exclude: "DOCX"
    description: "Redaksi atau ganti konten sensitif dalam dokumen DOCX menggunakan alat yang disediakan oleh Java."
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