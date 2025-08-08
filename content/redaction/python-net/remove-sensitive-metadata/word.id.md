
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bersihkan Metadata dari File WORD dengan Python"
head_description: "Gunakan GroupDocs.Redaction for Python via .NET untuk menghapus metadata tersembunyi di file WORD. Lindungi dokumen agar tidak mengungkapkan informasi pribadi atau internal."

############################# Header ############################
title: "Hapus Metadata di WORD Menggunakan Alat Python" 
description: "Jaga agar file Anda aman dengan menghapus metadata yang tidak diinginkan menggunakan Python. Sangat cocok untuk perusahaan dan pengguna individu."
subtitle: "Fitur GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction diperuntukkan bagi pengembang Python yang ingin menjaga file WORD tetap pribadi. Ini memungkinkan Anda menghapus teks, menyembunyikan bagian gambar, dan membersihkan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata Tersembunyi di Word"
    content: |
      Dengan GroupDocs.Redaction, aplikasi Python via .NET Anda dapat dengan cepat membersihkan metadata dokumen.
      
      1. Buat objek Redactor dan buka file Word.
      2. Tentukan aturan redaksi untuk bidang metadata.
      3. Jalankan redaksi untuk menghapus data yang dipilih.
      4. Simpan versi bersih dari file.
   
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

        # Bersihkan metadata di WORD

        # Pilih metadata untuk dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Buka dokumen menggunakan Redactor
        with gr.Redactor("input.docx") as redactor:

            # Terapkan redaksi dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Lebih dari Sekadar Metadata"
  description: "Redaksi teks, tutupi gambar, dan hapus metadata menggunakan GroupDocs.Redaction for Python via .NET. Jaga agar dokumen Anda tetap bersih dan pribadi."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opsi Perlindungan Dokumen"
  features:
    # feature loop
    - title: "Temukan dan Ganti Teks"
      content: "Hapus atau ganti kata dan frasa yang mengandung data pribadi atau sensitif."

    # feature loop
    - title: "Tambahkan Penutup Gambar"
      content: "Tempatkan overlay untuk menyembunyikan bagian gambar di dokumen Anda."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus nama penulis, judul, komentar, dan informasi tersembunyi lainnya."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Metadata dari File WORD"
      content: |
        Contoh ini menunjukkan cara menghapus bidang seperti Penulis dan Judul dari dokumen WORD.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Targetkan metadata Penulis
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Targetkan metadata Judul
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Impor dokumen Anda
          with gr.Redactor("source.docx") as redactor:

              # Jalankan alat redaksi
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Simpan file yang diperbarui
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Hapus Metadata di WORD dengan Python"
    exclude: "WORD"
    description: "Gunakan Python untuk membersihkan metadata tersembunyi dari WORD. Jaga agar file Anda aman sebelum berbagi atau mengarsipkan."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi Gambar"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Format gambar populer"

        # format loop 6
        - name: "Redaksi Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Format foto"

        # format loop 7
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Presentasi PowerPoint Open XML"

        # format loop 10
        - name: "Redaksi JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Gambar JPEG"


---