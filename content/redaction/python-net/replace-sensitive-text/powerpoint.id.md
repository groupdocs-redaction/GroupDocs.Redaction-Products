
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari POWERPOINT Menggunakan Python"
head_description: "Dengan cepat lindungi data sensitif dalam berkas POWERPOINT Anda menggunakan GroupDocs.Redaction for Python via .NET dan Python."

############################# Header ############################
title: "Temukan dan Sembunyikan Teks Sensitif di Berkas POWERPOINT dengan Python" 
description: "Gunakan GroupDocs.Redaction for Python via .NET dan Python untuk menghapus atau menyembunyikan konten pribadi dalam berkas POWERPOINT Anda. Jaga semua informasi tetap rahasia apakah itu terkait pribadi atau pekerjaan."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberi pengembang Python alat untuk membersihkan berkas POWERPOINT secara menyeluruh. Hapus konten, gambar, catatan, dan metadata dengan mudah.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Membersihkan Teks dalam Berkas Powerpoint"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET di aplikasi Python via .NET Anda untuk dengan cepat menghapus atau mengganti data sensitif.
      
      1. Mulai Redactor dan buka berkas Powerpoint Anda.
      2. Pilih opsi redaksi yang Anda perlukan.
      3. Atur teks yang ingin dicari dan dengan teks pengganti.
      4. Jalankan redaksi dan simpan berkas akhir.
   
    code:
      platform: "python-net"
      copy_title: "Salin"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Contoh redaksi"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "klik untuk menyalin"
        copy_done: "disalin"
      links:
        #  loop
        - title: "Lebih banyak contoh"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Dokumentasi"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Cara meredaksi teks dalam berkas POWERPOINT

        # Pilih pengaturan redaksi yang Anda butuhkan
        # Masukkan yang ingin dicari dan yang ingin diganti
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Muatan berkas Anda menggunakan konstruktor Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Jalankan redaksi dan simpan berkas POWERPOINT terakhir
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Alat untuk Menghapus Data Pribadi"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda membersihkan konten pribadi di berbagai format. Ideal untuk berbagi atau arsip yang aman."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opsi dan alat redaksi"
  features:
    # feature loop
    - title: "Temukan dan ganti teks"
      content: "Dengan cepat tukar kata atau angka yang sensitif. Bekerja dengan regex dan pencarian kata kunci."

    # feature loop
    - title: "Tutup bagian gambar"
      content: "Tutup area tertentu dengan bentuk atau overlay. Sesuaikan gambar sesuai kebutuhan."

    # feature loop
    - title: "Hapus informasi tersembunyi"
      content: "Hapus metadata seperti siapa yang membuat berkas, komentar, atau riwayat perubahan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Pola Menggunakan Regex"
      content: |
        Gunakan ekspresi reguler untuk mencari dan menghapus pola seperti email, informasi kontak, atau detail pribadi lainnya.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Tetapkan pola regex EMAIL dan nilai pengganti
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Buka presentasi yang ingin dibersihkan
          with gr.Redactor("source.pptx") as redactor:

              # Terapkan langkah-langkah redaksi
              result = redactor.apply(redaction)

              # Simpan berkas yang telah redaksi
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Salin"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Dokumentasi"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Siap untuk memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis atau minta lisensi"
  items:
    #  loop
    - title: "Unduh PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Lisensi"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redaksi Konten di POWERPOINT Menggunakan Python"
    exclude: "POWERPOINT"
    description: "Dengan Python, Anda dapat membersihkan berkas POWERPOINT dengan menghapus atau menyembunyikan teks pribadi. Jaga semuanya aman."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Presentasi PowerPoint Open XML"


---