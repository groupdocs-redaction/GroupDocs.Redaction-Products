
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Teks dalam XLSX Menggunakan Python dan Overlay"
head_description: "GroupDocs.Redaction for Python via .NET membantu Anda menyembunyikan teks dalam berkas XLSX dengan menambahkan overlay berwarna. Jaga data Anda tetap pribadi tanpa mengubah tata letak berkas."

############################# Header ############################
title: "Sembunyikan Teks dalam Berkas XLSX Menggunakan Overlay Python" 
description: "Lindungi teks sensitif dalam berkas XLSX Anda dengan GroupDocs.Redaction for Python via .NET dan Python dengan meletakkan overlay sederhana."
subtitle: "Apa yang Anda Dapatkan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa yang Bisa Dilakukan GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan pengembang Python alat untuk menyembunyikan atau menghapus teks, gambar, dan lebih banyak lagi dalam berkas XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data dalam Berkas Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET memungkinkan pengembang Python via .NET untuk menyembunyikan info pribadi hanya dalam beberapa baris kode.
      
      1. Mulai dengan membuat Redactor dan muat berkas Xlsx Anda.
      2. Tetapkan opsi redaksi yang sesuai untuk situasi Anda.
      3. Tambahkan pola teks yang ingin Anda sembunyikan dan pilih warna.
      4. Jalankan redaksi dan simpan berkas Anda.
   
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
        import groupdocs.pydrawing as grd

        # Sembunyikan konten pribadi dalam XLSX dengan overlay

        # Setel preferensi redaksi
        # Pilih teks untuk ditutupi dan warna overlay
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Gunakan Redactor untuk memuat berkas Anda
        with gr.Redactor("input.xslx") as redactor:

            # Redaksi dan simpan berkas
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Berguna"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda menyembunyikan atau menghapus konten dari berbagai jenis berkas. Jaga informasi pribadi atau bisnis tetap terlindungi."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opsi redaksi yang mudah digunakan"
  features:
    # feature loop
    - title: "Temukan dan Edit Teks"
      content: "Cari teks spesifik dan ganti atau sembunyikan."

    # feature loop
    - title: "Tutup Konten Gambar"
      content: "Gambar overlay di foto untuk menutup area pribadi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Bersihkan informasi latar belakang sebelum membagikan berkas Anda."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Teks Menggunakan Pola Regex"
      content: |
        Contoh ini menunjukkan bagaimana menemukan dan menyembunyikan konten menggunakan ekspresi reguler.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur pola teks dan warna overlay
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Buka berkas yang ingin Anda edit
          with gr.Redactor("source.xslx") as redactor:

              # Terapkan aturan redaksi
              result = redactor.apply(redaction)

              # Simpan versi yang telah direduksi
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Sembunyikan Data dalam XLSX dengan Redaksi Python"
    exclude: "XLSX"
    description: "Gunakan alat Python untuk menyembunyikan atau menghapus bagian sensitif dari berkas XLSX Anda dengan cepat."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Presentasi PowerPoint Open XML"


---