
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Tutup Teks Pribadi dalam PDF dengan Overlay Menggunakan Java"
head_description: "GroupDocs.Redaction for Java memungkinkan Anda menyembunyikan informasi sensitif dalam file PDF dengan menempatkan kotak berwarna. Lindungi data tanpa merubah tampilan file Anda."

############################# Header ############################
title: "Masker Teks dalam Dokumen PDF Menggunakan Overlay di Java" 
description: "Kendalikan sepenuhnya konten file PDF dengan Java. Gunakan redaksi untuk melindungi rincian keuangan, hukum, atau pribadi."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa yang Ditawarkan GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan cara bagi pengembang Java untuk menyembunyikan atau menghapus konten dari file PDF. Tutup teks, gambar, dan metadata di berbagai jenis dokumen.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Info Rahasia dalam File Pdf"
    content: |
      GroupDocs.Redaction for Java memudahkan pengembang Java untuk menyembunyikan konten pribadi dengan beberapa langkah sederhana.
      
      1. Mulai Redactor dan muat file Pdf Anda.
      2. Atur preferensi redaksi Anda.
      3. Pilih apa yang harus dicari dan pilih warna overlay Anda.
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
        // Tutup teks dalam PDF menggunakan overlay berwarna

        // Lepaskan jalur file ke Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Sesuaikan pengaturan redaksi
            // Atur teks target dan warna
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan dan simpan PDF yang telah direda
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Kendalikan Apa yang Terlihat dalam Dokumen"
  description: "GroupDocs.Redaction for Java memungkinkan Anda memblokir atau menghapus bagian dari file Anda sambil menjaga agar mudah dilihat dan dibagikan."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang Berkuasa"
  features:
    # feature loop
    - title: "Target dan sembunyikan teks"
      content: "Cari dokumen Anda dan sembunyikan kata atau frasa tertentu untuk melindungi info pribadi."

    # feature loop
    - title: "Tutup gambar"
      content: "Tambahkan overlay untuk menyembunyikan visual sepenuhnya atau sebagian."

    # feature loop
    - title: "Hapus metadata"
      content: "Bersihkan rincian dokumen tersembunyi untuk menghindari eksposur yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Teks Menggunakan Regex"
      content: |
        Contoh ini menggunakan ekspresi reguler untuk menemukan dan menyembunyikan konten tertentu.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat file yang ingin Anda proses
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Atur pola teks dan warna overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Terapkan redaksi
              redactor.apply(redaction);

              // Simpan perubahan Anda
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
    title: "Lindungi File PDF dengan Java"
    exclude: "PDF"
    description: "Gunakan Java untuk menutup atau menghapus konten dalam dokumen PDF. Cara yang baik untuk menjaga informasi pribadi tetap aman dan terjamin."
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