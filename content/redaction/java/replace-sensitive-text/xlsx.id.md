
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari XLSX dengan Java"
head_description: "Lindungi data XLSX Anda dengan menyunting teks dan metadata menggunakan GroupDocs.Redaction for Java. Perlindungan yang efektif dan efisien."

############################# Header ############################
title: "Bersihkan File XLSX Menggunakan Java" 
description: "Hapus konten sensitif dari file XLSX menggunakan Java dan GroupDocs.Redaction for Java. Jaga spreadsheet Anda tetap aman."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Mengapa Menggunakan GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java alat untuk membersihkan file XLSX. Redaksi teks, metadata, gambar, dan lebih banyak lagi dengan beberapa baris kode.

############################# Steps ############################
steps:
    enable: true
    title: "Redaksi Data dari File Xlsx"
    content: |
      Gunakan GroupDocs.Redaction for Java dalam aplikasi Java apapun untuk menghapus teks atau konten tersembunyi sebelum dibagikan.
      
      1. Buat instance Redactor dan muat file Anda.
      2. Pilih opsi redaksi yang Anda inginkan.
      3. Pilih teks yang akan dicari dan penggantinya.
      4. Terapkan redaksi dan simpan dokumen Anda.
   
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
        // Cara meredaksi spreadsheet XLSX

        // Buat Redactor dan muat file Anda
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Pilih pengaturan redaksi Anda
            // Masukkan teks pencarian dan pengganti
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan perubahan dan simpan
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Yang Berguna"
  description: "GroupDocs.Redaction for Java membantu menghapus konten pribadi dari berbagai file. Bersihkan dokumen tanpa kehilangan format."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Perlindungan konten yang cerdas"
  features:
    # feature loop
    - title: "Cari dan ganti teks"
      content: "Temukan dan pembaruan atau sembunyikan data sensitif dalam sel."

    # feature loop
    - title: "Sembunyikan visual"
      content: "Tutup grafik, gambar, atau rentang menggunakan overlay berwarna."

    # feature loop
    - title: "Hapus metadata"
      content: "Hapus informasi penulis, tanggal pembuatan, dan data latar belakang lainnya."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Menggunakan Regex"
      content: |
        Temukan dan redaksi nilai seperti nomor akun atau pola menggunakan regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file yang ingin Anda proses
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Tambahkan aturan regex EMAIL dan penggantinya
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Terapkan aturan redaksi
              redactor.apply(redaction);

              // Simpan file yang diperbarui
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
    title: "Redaksi Konten di XLSX dengan Java"
    exclude: "XLSX"
    description: "Bersihkan dan lindungi file XLSX menggunakan fitur Java untuk redaksi dan penghapusan konten."
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