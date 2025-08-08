
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redaksi Teks dalam WORD Menggunakan Overlay Java"
head_description: "Gunakan GroupDocs.Redaction for Java untuk menutupi teks sensitif dalam file WORD dengan blok warna sambil menjaga struktur dokumen tetap utuh."

############################# Header ############################
title: "Overlay Redaksi dalam File WORD dengan Java" 
description: "Sembunyikan rincian penting dalam dokumen WORD Anda menggunakan overlay berwarna yang didukung oleh Java dan GroupDocs.Redaction for Java."
subtitle: "Apa yang Bisa Dilakukan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengguna Java kontrol penuh atas redaksi WORD. Sembunyikan apa pun yang Anda inginkan—teks, visual, atau metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Info Pribadi dalam Format Word"
    content: |
      GroupDocs.Redaction for Java memberikan cara cepat bagi pengembang Java untuk membersihkan file dan mengamankan kontennya.
      
      1. Mulai Redactor dan muat file Word.
      2. Pilih opsi redaksi Anda.
      3. Tambahkan pola teks dan warna overlay.
      4. Jalankan redaksi dan simpan file.
   
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
        // Sembunyikan teks menggunakan overlay dalam WORD

        // Gunakan Redactor untuk membuka dokumen
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Atur preferensi redaksi
            // Tambahkan kata kunci dan pilih warna
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Terapkan dan simpan file Anda yang telah direda
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Kemampuan Redaksi Lebih Lanjut"
  description: "Gunakan GroupDocs.Redaction for Java untuk menghapus baik konten yang terlihat maupun tersembunyi dari file sambil menjaga tata letak tetap utuh."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Output yang sederhana dan bersih"
  features:
    # feature loop
    - title: "Ganti teks"
      content: "Tutup kata atau istilah yang seharusnya tidak terlihat."

    # feature loop
    - title: "Masker visual"
      content: "Gunakan overlay berwarna untuk menyembunyikan gambar atau bagian darinya."

    # feature loop
    - title: "Hapus metadata"
      content: "Hapus rincian yang tersembunyi dalam properti file."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Berbasis Regex"
      content: |
        Pelajari cara menggunakan regex untuk otomatis menyembunyikan konten tertentu
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat dokumen untuk direda
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Tentukan pola regex dan warna overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Terapkan redaksi
              redactor.apply(redaction);

              // Simpan versi bersih Anda
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
    title: "Redaksi Konten dalam WORD dengan Java"
    exclude: "WORD"
    description: "Jaga dokumen WORD Anda tetap pribadi dengan menyembunyikan atau menghapus data sensitif menggunakan Java."
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