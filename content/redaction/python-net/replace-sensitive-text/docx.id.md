
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari DOCX Menggunakan Python"
head_description: "Lindungi berkas DOCX Anda dengan menghapus konten sensitif menggunakan GroupDocs.Redaction for Python via .NET dan Python. Proses redaksi yang cepat dan efektif."

############################# Header ############################
title: "Edit atau Sembunyikan Teks Pribadi dalam Berkas DOCX dengan Python" 
description: "Kendalikan konten DOCX Anda menggunakan GroupDocs.Redaction for Python via .NET dan Python. Cocok untuk penggunaan pribadi atau bisnis."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan alat kepada pengembang Python untuk membersihkan konten dari berkas DOCX. Redaksi teks, gambar, komentar, dan metadata dengan mudah.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Menghapus Teks dalam Berkas Docx"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET dalam aplikasi Python via .NET Anda untuk menghapus atau menyembunyikan teks pribadi. Proses redaksi yang cepat dan efisien.
      
      1. Buat Redactor dan buka berkas Docx Anda.
      2. Tentukan aturan redaksi yang Anda inginkan.
      3. Pilih teks untuk dicari dan apa yang harus diganti.
      4. Jalankan redaksi dan simpan berkas baru Anda.
   
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

        # Cara meredaksi teks dalam berkas DOCX

        # Pilih pengaturan redaksi Anda
        # Masukkan apa yang dicari dan apa yang ingin diganti
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Buka berkas Anda menggunakan konstruktor Redactor
        with gr.Redactor("input.docx") as redactor:

            # Terapkan perubahan dan simpan berkas DOCX yang diperbarui
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Lainnya"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda menghapus atau menyembunyikan teks sensitif di berbagai format. Bagikan berkas yang bersih dan aman dengan percaya diri."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Alat untuk redaksi teks, gambar, dan metadata"
  features:
    # feature loop
    - title: "Temukan dan Ganti Teks Pribadi"
      content: "Cari kata atau pola tertentu dan ganti. Bekerja dengan ekspresi reguler dan pencarian kata kunci."

    # feature loop
    - title: "Tutup Gambar Sensitif"
      content: "Overlay atau sembunyikan area gambar. Ubah warna, opasitas, dan ukuran sesuai kebutuhan."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus informasi tersembunyi seperti nama penulis, cap waktu, dan catatan internal untuk menjaga privasi berkas Anda."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Regex untuk Meredaksi Pola"
      content: |
        Cari email, ID, atau pola menggunakan ekspresi reguler dan ganti dengan mudah.
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

          # Buka berkas yang ingin Anda bersihkan
          with gr.Redactor("source.docx") as redactor:

              # Terapkan pengaturan redaksi Anda
              result = redactor.apply(redaction)

              # Simpan dokumen yang telah direduksi
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
    title: "Redaksi Konten di DOCX Menggunakan Python"
    exclude: "DOCX"
    description: "Gunakan Python untuk menghapus teks sensitif dari berkas DOCX. Jaga dokumen pribadi dan pekerjaan Anda terlindungi."
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