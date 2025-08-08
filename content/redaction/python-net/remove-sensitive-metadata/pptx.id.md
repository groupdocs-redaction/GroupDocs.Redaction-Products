
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Metadata dari File PPTX Menggunakan Python"
head_description: "GroupDocs.Redaction for Python via .NET membantu membersihkan data tersembunyi di file PPTX. Hapus detail yang dapat mengungkapkan informasi sensitif."

############################# Header ############################
title: "Hapus Metadata di PPTX dengan Python" 
description: "Hapus metadata pribadi yang disimpan di file PPTX menggunakan Python. Cara cerdas untuk melindungi informasi Anda."
subtitle: "Alat Utama di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Lebih Banyak Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction dirancang untuk pengembang Python yang ingin menjaga dokumen tetap bersih. Gunakan untuk menghapus teks, menutupi gambar, atau menghapus metadata dari file PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Bersihkan Metadata di File Pptx"
    content: |
      Gunakan GroupDocs.Redaction untuk dengan cepat menghapus metadata dari aplikasi Python via .NET Anda.
      
      1. Buat Redactor dan buka dokumen Pptx.
      2. Pilih metadata yang ingin Anda hapus.
      3. Terapkan redaksi untuk menghapus data tersembunyi.
      4. Simpan file yang diperbarui.
   
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

        # Hapus metadata dari PPTX

        # Pilih bidang yang akan dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Buka file Anda dengan Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Jalankan dan simpan perubahan
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Cara Lain untuk Menyembunyikan Informasi Sensitif"
  description: "GroupDocs.Redaction for Python via .NET mendukung redaksi di berbagai format. Cara cepat untuk menghapus konten pribadi dari dokumen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat Redaksi File"
  features:
    # feature loop
    - title: "Cari dan Hapus Teks"
      content: "Hapus kata atau frasa yang mengandung data pribadi atau sensitif dengan cepat."

    # feature loop
    - title: "Tambahkan Penutup Gambar"
      content: "Tutup bagian gambar yang tidak boleh dibagikan."

    # feature loop
    - title: "Hapus Metadata Tersembunyi"
      content: "Hapus nama penulis, judul, dan tag tersembunyi lainnya."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Contoh: Hapus Bidang Metadata"
      content: |
        Ikuti contoh ini untuk menghapus bidang metadata umum dari file PPTX sebelum berbagi.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tandai bidang Penulis untuk redaksi
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Tandai bidang Judul untuk redaksi
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Muat file
          with gr.Redactor("source.pptx") as redactor:

              # Terapkan redaksi
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Ekspor file yang bersih
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
    title: "Gunakan Python untuk Membersihkan Metadata dari PPTX"
    exclude: "PPTX"
    description: "Hapus data latar belakang dari PPTX dengan Python. Sangat baik untuk privasi dan kepatuhan."
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