
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Blok Teks dalam XLSX dengan Overlay Java"
head_description: "GroupDocs.Redaction for Java memungkinkan Anda menutup informasi sensitif dalam file XLSX dengan blok warna. Sembunyikan data sambil menjaga layout tetap utuh."

############################# Header ############################
title: "Sembunyikan Data dalam XLSX dengan Overlay Menggunakan Java" 
description: "Gunakan Java dan GroupDocs.Redaction for Java untuk menyembunyikan konten pribadi dalam file XLSX tanpa mempengaruhi format."
subtitle: "Fitur Utama GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Mengapa GroupDocs.Redaction for Java Bekerja"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memungkinkan pengembang Java mengamankan file XLSX. Sembunyikan teks, gambar, atau metadata dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Info dalam Dokumen Xlsx"
    content: |
      Jaga agar dokumen Anda tetap aman menggunakan kode sederhana dengan GroupDocs.Redaction for Java di Java.
      
      1. Buat Redactor dengan jalur file.
      2. Atur logika redaksi Anda.
      3. Pilih kata kunci dan warna overlay.
      4. Redaksikan dan simpan file.
   
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
        // Sembunyikan info dalam XLSX menggunakan blok

        // Muat file dengan Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Atur preferensi redaksi
            // Tambahkan teks dan warna untuk diblokir
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Simpan dokumen yang diperbarui
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Privasi Terintegrasi"
  description: "Gunakan GroupDocs.Redaction for Java untuk memblokir atau menghapus konten dalam file Anda sambil menjaga struktur tidak terganggu."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Alat privasi yang mudah"
  features:
    # feature loop
    - title: "Ubah atau sembunyikan teks"
      content: "Edit atau redaksi kata-kata tertentu dengan mudah."

    # feature loop
    - title: "Masker bagian gambar"
      content: "Tambahkan overlay untuk menyembunyikan foto atau detail grafis."

    # feature loop
    - title: "Hapus informasi tersembunyi"
      content: "Bersihkan metadata seperti informasi pengguna atau riwayat file."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Regex untuk Redaksi Konten"
      content: |
        Temukan dan sembunyikan teks secara otomatis dengan pencocokan pola
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Buka lembar kerja
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Tentukan pola dan warna overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Terapkan aturan redaksi
              redactor.apply(redaction);

              // Ekspor hasil Anda
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
    title: "Redaksi Data XLSX Menggunakan Java"
    exclude: "XLSX"
    description: "Gunakan overlay atau hapus konten dalam file XLSX untuk menjaga data sensitif tetap pribadi dengan Java."
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