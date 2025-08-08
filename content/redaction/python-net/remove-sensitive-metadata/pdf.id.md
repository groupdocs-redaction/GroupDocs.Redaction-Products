
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Metadata dari PDF Menggunakan Python"
head_description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda membersihkan data tersembunyi dari file PDF. Hindari berbagi informasi pribadi dengan mengedit atau menghapus metadata."

############################# Header ############################
title: "Hapus Metadata di File PDF dengan Python" 
description: "Gunakan Python dan GroupDocs.Redaction for Python via .NET untuk membersihkan informasi sensitif dari dokumen PDF Anda. Kendalikan data Anda dengan alat redaksi yang efektif."
subtitle: "Apa yang Dapat Dilakukan oleh GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction membantu pengembang Python membersihkan dokumen PDF dengan menghapus teks, konten gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata di Dokumen Pdf"
    content: |
      Mulailah melindungi file Anda menggunakan GroupDocs.Redaction di aplikasi Python via .NET.
      
      1. Buat Redactor dan muat file Pdf Anda.
      2. Tambahkan aturan untuk menghapus metadata tersembunyi.
      3. Jalankan redaksi untuk menghapus entri metadata.
      4. Simpan file tanpa data tersembunyi.
   
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

        # Hapus metadata dari dokumen PDF

        # Pilih bidang metadata untuk dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Buka file menggunakan Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redaksi dan simpan dokumen Anda
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bersihkan Konten Tersembunyi di Dokumen"
  description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menghapus teks, gambar, dan metadata dengan aman. Jaga privasi file Anda sebelum dibagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opsi Redaksi"
  features:
    # feature loop
    - title: "Penghapusan Teks"
      content: "Cari dan hapus teks sensitif dari seluruh dokumen."

    # feature loop
    - title: "Penutupan Gambar"
      content: "Sembunyikan bagian tertentu dari gambar dengan overlay sederhana."

    # feature loop
    - title: "Pembersihan Metadata"
      content: "Hapus metadata yang tidak diinginkan yang mungkin mengungkapkan data pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Edit dan Hapus Bidang Metadata"
      content: |
        Contoh ini menjelaskan cara menghapus metadata tersembunyi di file PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Hapus metadata Penulis
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Hapus metadata Judul
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Buka file di Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Jalankan proses redaksi
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
    title: "Bersihkan Metadata dari PDF dengan Python"
    exclude: "PDF"
    description: "Hapus bidang data tersembunyi di PDF menggunakan Python. Cara cerdas untuk melindungi privasi dan menjaga file Anda bersih."
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