
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari XLSX Menggunakan Python"
head_description: "Lindungi berkas XLSX Anda dengan menyembunyikan atau menghapus data sensitif menggunakan GroupDocs.Redaction for Python via .NET dan Python."

############################# Header ############################
title: "Sembunyikan atau Hapus Teks Pribadi dalam Berkas XLSX Menggunakan Python" 
description: "Dengan GroupDocs.Redaction for Python via .NET dan Python, Anda dapat menghapus teks pribadi dari dokumen XLSX—cepat dan andal."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan kepada pengembang Python segala yang mereka butuhkan untuk menghapus atau menyembunyikan data pribadi dalam berkas XLSX—teks, gambar, catatan, dan lainnya.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Menghapus Konten dalam Berkas Xlsx"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET dalam aplikasi Python via .NET Anda untuk menghapus atau menyembunyikan konten sensitif dengan cepat.
      
      1. Mulai Redactor dan buka berkas Xlsx.
      2. Pilih pengaturan redaksi yang Anda perlukan.
      3. Tentukan teks pencarian dan apa yang harus diganti.
      4. Terapkan redaksi dan simpan berkas Anda.
   
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

        # Cara meredaksi teks dalam berkas XLSX

        # Pilih preferensi redaksi Anda
        # Tetapkan nilai pencarian dan pengganti
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Gunakan konstruktor Redactor untuk memuat berkas Anda
        with gr.Redactor("input.xslx") as redactor:

            # Terapkan perubahan dan simpan XLSX yang diperbarui
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi Tambahan"
  description: "GroupDocs.Redaction for Python via .NET membuatnya mudah untuk menyembunyikan atau menghapus informasi pribadi di berbagai format. Bagikan hanya apa yang seharusnya terlihat."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Fitur untuk mereduksi teks, gambar, dan metadata"
  features:
    # feature loop
    - title: "Ganti Teks Pribadi"
      content: "Temukan dan ganti kata atau pola yang sesuai. Mendukung pencarian regex dan kata kunci."

    # feature loop
    - title: "Sembunyikan Gambar Sensitif"
      content: "Tutup bagian berkas Anda dengan overlay. Sesuaikan sesuai kebutuhan."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus informasi tersembunyi seperti riwayat dokumen, nama penulis, atau tag internal."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Menggunakan Pola Regex"
      content: |
        Temukan pola teks seperti nomor telepon, ID, atau email dengan regex dan hapus dengan cepat.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Tetapkan pola regex EMAIL dan teks pengganti
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Buka dokumen yang ingin Anda bersihkan
          with gr.Redactor("source.xslx") as redactor:

              # Terapkan aturan redaksi
              result = redactor.apply(redaction)

              # Simpan berkas yang sudah direduksi
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
    title: "Redaksi Konten dalam XLSX Menggunakan Python"
    exclude: "XLSX"
    description: "Jaga data sensitif tetap pribadi dengan menghapusnya dari berkas XLSX menggunakan alat Python."
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