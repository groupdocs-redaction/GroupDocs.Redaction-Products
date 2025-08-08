
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Teks dalam Presentasi PPTX dengan Overlay Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk memblokir konten sensitif dalam file PPTX dengan overlay berwarna. Pertahankan slide utuh sambil menyembunyikan info kunci."

############################# Header ############################
title: "Masker Teks dalam Presentasi PPTX dengan Java" 
description: "Dengan mudah lindungi rincian pribadi atau bisnis dalam slide PPTX Anda menggunakan Java dan GroupDocs.Redaction for Java."
subtitle: "Jelajahi Fitur GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa yang Dilakukan GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memungkinkan pengembang Java menyembunyikan atau menghapus teks, gambar, atau metadata dalam presentasi PPTX hanya dalam beberapa langkah.

############################# Steps ############################
steps:
    enable: true
    title: "Redaksi Konten Pribadi dalam Slide Pptx"
    content: |
      GroupDocs.Redaction for Java memudahkan perlindungan konten bagi pengembang Java.
      
      1. Siapkan Redactor dengan jalur presentasi Anda.
      2. Pilih bagaimana redaksi harus berperilaku.
      3. Tambahkan pola teks dan warna overlay.
      4. Redaksikan slide dan simpan.
   
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
        // Gunakan overlay untuk memblokir teks dalam PPTX

        // Inisialisasi Redactor dengan presentasi Anda
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Pilih preferensi redaksi Anda
            // Atur teks dan warna overlay
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Jalankan redaksi dan simpan slide deck
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi yang Kuat"
  description: "GroupDocs.Redaction for Java memungkinkan Anda memblokir atau menghapus konten sensitif dalam presentasi Anda tanpa merusak tata letak atau format."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fitur yang bekerja di seluruh slide"
  features:
    # feature loop
    - title: "Sembunyikan atau ganti teks"
      content: "Lindungi nama, istilah, atau catatan yang tidak seharusnya terlihat."

    # feature loop
    - title: "Tutup area visual"
      content: "Tambahkan overlay pada gambar atau bagian grafik dari slide."

    # feature loop
    - title: "Bersihkan metadata"
      content: "Hapus informasi di balik layar yang dapat mengungkapkan kepemilikan atau riwayat pengeditan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Teks dengan Regex"
      content: |
        Gunakan ekspresi reguler untuk menemukan dan menutupi kata sensitif
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka file presentasi
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Tentukan pola pencarian dan warna overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Jalankan aturan redaksi
              redactor.apply(redaction);

              // Simpan versi final
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Lindungi Slide PPTX dengan Alat Java"
    exclude: "PPTX"
    description: "Tutup konten sensitif atau hapus sepenuhnya dari presentasi PPTX menggunakan fitur redaksi Java."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Presentasi PowerPoint Open XML"


---