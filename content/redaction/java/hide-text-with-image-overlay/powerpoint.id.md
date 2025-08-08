
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Lindungi Teks dalam POWERPOINT dengan Overlay Java"
head_description: "Dengan GroupDocs.Redaction for Java, Anda dapat memblokir teks pribadi dalam slide POWERPOINT menggunakan kotak overlay sederhana—tanpa mengubah tata letaknya."

############################# Header ############################
title: "Sembunyikan Teks dalam POWERPOINT Menggunakan Overlay dan Java" 
description: "Gunakan Java dan GroupDocs.Redaction for Java untuk menjaga slide POWERPOINT Anda aman dengan menyembunyikan konten sensitif."
subtitle: "Di Dalam GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java membantu pengembang Java membersihkan slide POWERPOINT dengan memblokir atau menghapus konten sensitif seperti teks, metadata, atau gambar.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Presentasi Powerpoint Sebelum Berbagi"
    content: |
      Gunakan GroupDocs.Redaction for Java di aplikasi Java untuk menyembunyikan atau menghapus bagian sensitif dari slide Anda.
      
      1. Buat Redactor baru dengan jalur file slide Anda.
      2. Tentukan preferensi redaksi Anda.
      3. Atur pola teks dan warna overlay.
      4. Jalankan dan simpan file yang telah direda.
   
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
        // Overlay area teks dalam POWERPOINT

        // Buka file dengan Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Sesuaikan pengaturan redaksi
            // Masukkan teks dan pilih warna overlay
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redaksikan dan simpan file yang diperbarui
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Sederhana untuk Slide Sensitif"
  description: "GroupDocs.Redaction for Java memudahkan untuk memblokir atau menghapus konten dari slide, tidak peduli kasus penggunaannya."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Alat redaksi yang beradaptasi"
  features:
    # feature loop
    - title: "Temukan dan ganti teks"
      content: "Lindungi frasa atau label sensitif di mana saja di slide."

    # feature loop
    - title: "Tutup bagian visual"
      content: "Tambahkan overlay pada area slide yang dipilih atau gambar."

    # feature loop
    - title: "Hapus konten tersembunyi"
      content: "Bersihkan metadata slide atau catatan revisi sebelum berbagi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex untuk Redaksi Teks"
      content: |
        Pelajari cara mendeteksi dan meredaksi teks menggunakan pencocokan pola
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat slide deck
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Terapkan aturan regex Anda
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Jalankan redaksi
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
    title: "Lindungi Slide POWERPOINT dengan Java"
    exclude: "POWERPOINT"
    description: "Gunakan redaksi overlay dan alat pembersihan dari Java untuk menjaga slide POWERPOINT Anda tetap pribadi."
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