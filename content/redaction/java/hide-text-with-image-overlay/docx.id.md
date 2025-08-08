
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sembunyikan Teks dalam DOCX dengan Overlay Menggunakan Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk memblokir teks pribadi dalam file DOCX. Pertahankan tata letak yang tidak berubah sambil menjaga data sensitif tersembunyi."

############################# Header ############################
title: "Lindungi Teks DOCX dengan Overlay di Java" 
description: "Sembunyikan dengan cepat rincian pribadi, hukum, atau bisnis dalam file DOCX dengan Java dan GroupDocs.Redaction for Java."
subtitle: "Alat Kunci dalam GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan alat bagi pengembang Java untuk membersihkan file DOCX. Redaksi nama, angka, atau catatan dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Redaksi Konten Sensitif dalam Docx"
    content: |
      Bersihkan dokumen dalam proyek Java Anda menggunakan GroupDocs.Redaction for Java.
      
      1. Inisialisasi Redactor dengan file Anda.
      2. Pilih bagaimana redaksi harus bekerja.
      3. Pilih teks untuk disembunyikan dan warna overlay.
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
        // Tutup teks dengan overlay dalam DOCX

        // Buat Redactor dan muat dokumen Anda
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Pilih opsi redaksi
            // Pilih teks dan warna
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Simpan versi yang telah direda
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi untuk Penggunaan Sehari-hari"
  description: "GroupDocs.Redaction for Java memberikan opsi sederhana untuk menyembunyikan rincian sensitif di seluruh dokumen sambil tetap menjadikannya dapat digunakan."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opsi redaksi yang mudah"
  features:
    # feature loop
    - title: "Temukan dan ubah teks"
      content: "Sembunyikan atau ganti kata dalam hitungan detik."

    # feature loop
    - title: "Blok bagian gambar"
      content: "Masker bagian dari gambar atau konten yang dipindai."

    # feature loop
    - title: "Hapus informasi latar belakang"
      content: "Hapus metadata tersembunyi seperti kepemilikan atau tanggal."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Temukan Teks dengan Regex dan Sembunyikan"
      content: |
        Gunakan pencocokan pola untuk otomatis menyembunyikan frase kunci
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka dokumen yang ingin Anda redaksi
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Atur pola regex dan gaya overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Terapkan logika redaksi
              redactor.apply(redaction);

              // Simpan dokumen bersih Anda
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
    title: "Redaksi File DOCX Menggunakan Java"
    exclude: "DOCX"
    description: "Lindungi konten sensitif dalam DOCX dengan menyembunyikannya atau menghapusnya menggunakan alat di Java."
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