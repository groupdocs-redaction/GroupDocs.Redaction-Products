
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari EXCEL Menggunakan Python"
head_description: "Dengan cepat bersihkan informasi sensitif dari berkas EXCEL Anda dengan GroupDocs.Redaction for Python via .NET dan Python."

############################# Header ############################
title: "Temukan dan Hapus Teks Pribadi dalam Berkas EXCEL dengan Python" 
description: "Gunakan Python dan GroupDocs.Redaction for Python via .NET untuk membersihkan data sensitif dari dokumen EXCEL Anda. Baik untuk penggunaan kerja atau pribadi, konten Anda tetap aman."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan kepada pengembang Python semua yang mereka butuhkan untuk membersihkan berkas EXCEL. Hapus teks, gambar, komentar, dan metadata dengan kode yang sederhana.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Meredaksi Teks dalam Berkas Excel"
    content: |
      Dengan GroupDocs.Redaction for Python via .NET dalam proyek Python via .NET Anda, Anda dapat dengan mudah menghapus atau menyembunyikan konten pribadi.
      
      1. Buat Redactor dan buka berkas Excel Anda.
      2. Pilih pengaturan redaksi Anda.
      3. Masukkan teks yang ingin dicari dan apa yang ingin diganti.
      4. Jalankan redaksi dan simpan berkas yang diperbarui.
   
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

        # Cara meredaksi teks dalam berkas EXCEL

        # Atur opsi redaksi Anda
        # Pilih teks untuk dicari dan yang ingin diganti
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Buka berkas Anda dengan konstruktor Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Terapkan penghapusan dan simpan berkas EXCEL baru Anda
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi Lainnya"
  description: "GroupDocs.Redaction for Python via .NET membantu Anda membersihkan konten sensitif di berbagai format file. Jaga dokumen Anda tetap aman dan dapat dibagikan."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Alat redaksi dalam aksi"
  features:
    # feature loop
    - title: "Ganti teks pribadi"
      content: "Cari dan ganti teks yang sesuai. Bekerja dengan pencarian cerdas dan pola regex."

    # feature loop
    - title: "Tutup konten gambar"
      content: "Sembunyikan bagian gambar menggunakan overlay. Sesuaikan penampilan halaman."

    # feature loop
    - title: "Hapus detail tersembunyi"
      content: "Hapus metadata seperti informasi penulis, komentar, dan cap waktu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Pola dengan Regex"
      content: |
        Gunakan regex untuk menemukan dan membersihkan pola teks seperti email, nomor telepon, atau detail akun.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Tentukan pola regex EMAIL dan teks pengganti
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Buka berkas yang perlu Anda bersihkan
          with gr.Redactor("source.xslx") as redactor:

              # Terapkan aturan redaksi
              result = redactor.apply(redaction)

              # Simpan versi akhir dari berkas
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
    title: "Redaksi Konten di EXCEL Menggunakan Python"
    exclude: "EXCEL"
    description: "Gunakan Python untuk menghapus teks pribadi dari berkas EXCEL. Pastikan konten Anda aman untuk disimpan atau dibagikan."
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