
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari WORD Menggunakan Java"
head_description: "Jaga file WORD Anda aman dengan menyunting data sensitif menggunakan GroupDocs.Redaction for Java dan Java. Pembersihan yang cepat dan sederhana."

############################# Header ############################
title: "Edit atau Hapus Teks dalam File WORD dengan Java" 
description: "Lindungi konten penting dalam file WORD Anda menggunakan GroupDocs.Redaction for Java dan Java. Redaksi data bisnis, hukum, atau pribadi dengan percaya diri."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Apa Itu GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java memberikan pengembang Java cara yang terpercaya untuk meredaksi file WORD. Bersihkan teks, gambar, komentar, dan detail tersembunyi hanya dengan beberapa baris kode.

############################# Steps ############################
steps:
    enable: true
    title: "Langkah-langkah untuk Meredaksi Dokumen Word"
    content: |
      Gunakan GroupDocs.Redaction for Java dalam proyek Java Anda untuk membersihkan file sebelum membagikannya.
      
      1. Buat Redactor dan muat dokumen Word.
      2. Tetapkan opsi redaksi yang Anda inginkan.
      3. Pilih teks yang ingin Anda cari dan ganti.
      4. Terapkan redaksi dan simpan file Anda.
   
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
        // Redaksi dokumen WORD

        // Muat file menggunakan Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Pilih aturan redaksi Anda
            // Masukkan teks pencarian dan pengganti
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Jalankan redaksi dan simpan file baru
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Fitur Redaksi"
  description: "GroupDocs.Redaction for Java dapat membantu Anda membersihkan informasi sensitif dari berbagai jenis file. Hapus teks, gambar, dan metadata tersembunyi dengan cepat."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redaksi teks, gambar, dan metadata"
  features:
    # feature loop
    - title: "Cari dan ganti teks"
      content: "Temukan konten tertentu dan gantikan atau hapus di seluruh file. Dukungan regex."

    # feature loop
    - title: "Tutup bagian halaman"
      content: "Gunakan overlay untuk menyembunyikan foto atau bagian dari dokumen."

    # feature loop
    - title: "Bersihkan metadata"
      content: "Hapus informasi tambahan seperti penulis, timestamp, atau edit yang dilacak."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi dengan Pola Regex"
      content: |
        Cari teks menggunakan ekspresi reguler untuk menyembunyikan konten seperti nomor telepon, tanggal, atau ID.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Muat dokumen Anda
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Tetapkan pola regex EMAIL dan nilai pengganti
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Terapkan redaksi
              redactor.apply(redaction);

              // Simpan dokumen yang diperbarui
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
    title: "Redaksi Konten di WORD dengan Java"
    exclude: "WORD"
    description: "Sembunyikan atau hapus konten pribadi dan sensitif dari dokumen WORD menggunakan Java. Cara sederhana untuk menjaga file Anda aman."
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