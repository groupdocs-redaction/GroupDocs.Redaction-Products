
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari EXCEL Menggunakan Java"
head_description: "Lindungi spreadsheet EXCEL Anda dengan menghapus konten sensitif menggunakan GroupDocs.Redaction for Java dan Java. Redaksi yang cepat dan sederhana."

############################# Header ############################
title: "Edit atau Hapus Teks dalam File EXCEL dengan Java" 
description: "Bersihkan file EXCEL Anda dengan GroupDocs.Redaction for Java dan Java. Bagus untuk melindungi data bisnis atau pribadi."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java semua yang mereka butuhkan untuk membersihkan file EXCEL. Edit atau sembunyikan teks, gambar, metadata, dan catatan dengan presisi.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Meredaksi Konten di File Excel"
    content: |
      Gunakan GroupDocs.Redaction for Java dalam proyek Java Anda untuk menghapus atau menutupi teks yang tidak ingin Anda bagikan.
      
      1. Buat Redactor dan muat file Excel.
      2. Pilih pengaturan redaksi Anda.
      3. Tentukan apa yang akan dicari dan apa yang akan diganti.
      4. Jalankan redaksi dan simpan file Anda.
   
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
        // Cara meredaksi teks dalam file EXCEL

        // Muat file dengan Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Tetapkan aturan redaksi Anda
            // Masukkan teks target dan pengganti
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan dan simpan file yang dibersihkan
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Tambahan"
  description: "GroupDocs.Redaction for Java membantu membersihkan konten pribadi di banyak jenis dokumen. Bagus untuk privasi sebelum berbagi."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Fitur redaksi teks, gambar, dan metadata"
  features:
    # feature loop
    - title: "Ganti teks pribadi"
      content: "Temukan dan ubah kata-kata yang cocok di seluruh file. Gunakan pola pencarian atau pencocokan tepat."

    # feature loop
    - title: "Sembunyikan bagian gambar"
      content: "Tambahkan kotak overlay untuk menyembunyikan gambar atau sel. Pilih warna, ukuran, dan posisi."

    # feature loop
    - title: "Hapus informasi latar belakang"
      content: "Bersihkan data tersembunyi seperti kepemilikan, timestamp, atau komentar dokumen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Pola dengan Regex"
      content: |
        Gunakan ekspresi reguler untuk menemukan dan menyembunyikan pola seperti alamat email atau nomor akun.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file yang ingin Anda bersihkan
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Buat pola regex EMAIL dan tetapkan teks pengganti
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Jalankan proses redaksi
              redactor.apply(redaction);

              // Simpan versi terbaru
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
    title: "Redaksi Konten di EXCEL Menggunakan Java"
    exclude: "EXCEL"
    description: "Bersihkan data pribadi dari file EXCEL menggunakan Java. Cara cerdas untuk menjaga spreadsheet Anda aman."
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