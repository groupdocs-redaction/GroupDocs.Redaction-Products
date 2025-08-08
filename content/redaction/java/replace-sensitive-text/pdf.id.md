
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Menyunting Teks Sensitif di PDF Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk menemukan dan menghapus data pribadi dari file PDF Anda. Penyuntingan teks yang cepat, andal, dan efisien."

############################# Header ############################
title: "Hapus Data Sensitif dari File PDF Menggunakan Java" 
description: "Bersihkan file PDF menggunakan Java dan GroupDocs.Redaction for Java. Redaksi konten pribadi, hukum, atau bisnis dengan efisien."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java cara yang sederhana untuk membersihkan file PDF. Hapus atau ganti teks, gambar, komentar, dan data tersembunyi.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Menyunting Teks di File Pdf"
    content: |
      Dengan GroupDocs.Redaction for Java, pengembang Java dapat menghapus konten sensitif dalam beberapa langkah.
      
      1. Buat Redactor dan muat file Pdf Anda.
      2. Pilih pengaturan redaksi yang diinginkan.
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
        // Cara membersihkan file PDF

        // Buat Redactor dan muat dokumen
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Tetapkan aturan redaksi Anda
            // Tambahkan teks untuk dihapus dan teks pengganti
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan redaksi dan simpan file baru
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi Tambahan"
  description: "GroupDocs.Redaction for Java menghapus informasi sensitif di berbagai format. Redaksi teks, gambar, dan metadata sambil tetap menjaga file dapat dibaca."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Alat untuk redaksi teks dan gambar"
  features:
    # feature loop
    - title: "Temukan dan ganti teks"
      content: "Cari kata atau frasa dan ganti. Berfungsi dengan teks biasa atau regex."

    # feature loop
    - title: "Tutup konten gambar"
      content: "Sembunyikan gambar atau bagian gambar menggunakan overlay berwarna."

    # feature loop
    - title: "Bersihkan metadata"
      content: "Hapus nama penulis, tanggal, atau detail tersembunyi lainnya sebelum dibagikan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Teks dengan Regex"
      content: |
        Gunakan regex untuk menemukan dan menyembunyikan pola seperti email, ID, atau format kustom.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka dokumen yang ingin Anda edit
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Tambahkan pola regex EMAIL dan teks pengganti
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Terapkan redaksi pada konten yang sesuai
              redactor.apply(redaction);

              // Simpan versi yang telah disunting
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
    title: "Redaksi File PDF dengan Java"
    exclude: "PDF"
    description: "Lindungi informasi pribadi atau bisnis dengan mendekati konten PDF menggunakan alat dari Java."
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