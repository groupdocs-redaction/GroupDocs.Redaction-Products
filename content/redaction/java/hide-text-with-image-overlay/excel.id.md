
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Tutup Teks dalam EXCEL dengan Overlay dan Java"
head_description: "Lindungi konten sensitif dalam file EXCEL dengan menerapkan overlay warna menggunakan GroupDocs.Redaction for Java. Pertahankan tata letak dokumen tetap utuh."

############################# Header ############################
title: "Redaksi Data EXCEL dengan Overlay di Java" 
description: "Gunakan kode Java untuk menyembunyikan info sensitif dalam spreadsheet EXCEL. Cara efektif untuk menjaga data tetap pribadi."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Mengapa Memilih GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java dikembangkan untuk pengembang Java yang ingin menyembunyikan atau membersihkan konten dalam spreadsheet EXCEL dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Sembunyikan Info dalam Spreadsheet Excel"
    content: |
      GroupDocs.Redaction for Java membantu pengembang Java melindungi file dengan menyembunyikan info pribadi hanya dalam beberapa baris.
      
      1. Mulai Redactor dan muat spreadsheet Anda.
      2. Atur aturan redaksi yang diperlukan.
      3. Pilih teks dan warna overlay.
      4. Terapkan dan simpan file.
   
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
        // Gunakan overlay untuk menyembunyikan teks dalam EXCEL

        // Buat Redactor dan muat file Anda
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Pilih aturan redaksi
            // Masukkan apa yang harus disembunyikan dan pilih warna
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan redaksi dan simpan file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Perlindungan Data Dasar"
  description: "Sembunyikan atau hapus info sensitif dari spreadsheet Anda tanpa merusak tata letak atau artinya menggunakan GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Dirancang untuk pembersihan data yang aman"
  features:
    # feature loop
    - title: "Edit atau sembunyikan teks"
      content: "Temukan dan tutup teks yang perlu dilindungi."

    # feature loop
    - title: "Tutup visual sensitif"
      content: "Terapkan blok warna di atas area grafik atau gambar."

    # feature loop
    - title: "Hapus metadata"
      content: "Bersihkan riwayat dokumen, nama penulis, atau cap waktu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Menggunakan Regex"
      content: |
        Gunakan regex untuk menemukan dan menyembunyikan teks secara otomatis
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka spreadsheet Anda
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Atur pola dan rincian overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Terapkan redaksi
              redactor.apply(redaction);

              // Simpan versi yang telah dibersihkan
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
    title: "Redaksi Lembar EXCEL dengan Java"
    exclude: "EXCEL"
    description: "Sembunyikan atau hapus data sensitif dalam EXCEL menggunakan overlay dan alat dari Java."
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