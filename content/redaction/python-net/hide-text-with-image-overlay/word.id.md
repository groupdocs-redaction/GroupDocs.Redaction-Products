
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Teks dalam WORD Menggunakan Overlay Python"
head_description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan teks pribadi dalam dokumen WORD menggunakan blok warna. Tata letak Anda tetap utuh."

############################# Header ############################
title: "Gunakan Overlay untuk Menyembunyikan Teks dalam WORD dengan Python" 
description: "Lindungi informasi kunci dalam dokumen WORD dengan menempatkan blok overlay menggunakan Python dan GroupDocs.Redaction for Python via .NET."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Dengan GroupDocs.Redaction for Python via .NET, pengembang Python dapat menyembunyikan atau menghapus konten dalam dokumen WORD — seperti nama, angka, dan lainnya.

############################# Steps ############################
steps:
    enable: true
    title: "Redaksi Konten Pribadi dalam Word"
    content: |
      GroupDocs.Redaction for Python via .NET memudahkan pengembang Python via .NET menyembunyikan data sensitif dengan cepat.
      
      1. Buat Redactor dan muat berkas Word Anda.
      2. Atur opsi redaksi.
      3. Pilih teks yang ingin disembunyikan dan warna overlay.
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

        # Tutup teks dalam WORD menggunakan overlay

        # Pilih apa yang ingin direduksi
        # Masukkan teks dan atur warna
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Muat berkas menggunakan Redactor
        with gr.Redactor("input.docx") as redactor:

            # Redaksi dan simpan
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Cara untuk Menyembunyikan Informasi"
  description: "Gunakan GroupDocs.Redaction for Python via .NET untuk membersihkan berkas Anda dengan menyembunyikan konten yang terlihat dan tersembunyi tanpa mengubah tampilan mereka."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fitur yang berfokus pada privasi"
  features:
    # feature loop
    - title: "Sembunyikan atau Ganti Teks"
      content: "Lindungi informasi penting dengan menghapus atau mengganti kata."

    # feature loop
    - title: "Tutup Gambar"
      content: "Blokir gambar sensitif dengan bentuk padat."

    # feature loop
    - title: "Hapus Data Tersembunyi"
      content: "Hapus metadata yang mungkin mengungkap informasi sistem atau pengguna."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Temukan dan Sembunyikan Teks dengan Regex"
      content: |
        Contoh ini menunjukkan cara menggunakan ekspresi reguler untuk mencocokkan dan menyembunyikan konten.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur pola dan warna overlay
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Buka berkas untuk diedit
          with gr.Redactor("source.docx") as redactor:

              # Terapkan redaksi
              result = redactor.apply(redaction)

              # Simpan salinan Anda yang diperbarui
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
    title: "Lindungi Konten WORD dengan Python"
    exclude: "WORD"
    description: "Gunakan Python untuk menyembunyikan atau menghapus informasi sensitif dalam berkas WORD tanpa mempengaruhi struktur atau tata letak."
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