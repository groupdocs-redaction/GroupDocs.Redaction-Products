
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bersihkan Metadata Tersembunyi dalam IMAGE Menggunakan Python"
head_description: "GroupDocs.Redaction for Python via .NET membantu Anda menghapus metadata pribadi dari dokumen IMAGE. Jaga file bersih dan aman."

############################# Header ############################
title: "Hapus Metadata di File IMAGE dengan Python" 
description: "Gunakan alat Python untuk melindungi dokumen IMAGE. Hapus info tersembunyi sebelum berbagi atau menerbitkan."
subtitle: "Fitur Utama dari GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan pengembang Python alat untuk menghapus data sensitif dari file IMAGE — termasuk teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Menghapus Metadata dari File Image"
    content: |
      GroupDocs.Redaction membantu pengembang Python via .NET membersihkan metadata dokumen hanya dalam beberapa langkah.
      
      1. Siapkan Redactor dan muat file Image Anda.
      2. Pilih metadata yang ingin Anda hapus.
      3. Jalankan proses redaksi.
      4. Simpan file Anda yang diperbarui.
   
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

        # Bersihkan bidang tersembunyi di file IMAGE

        # Pilih bidang metadata untuk redaksi
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Gunakan Redactor untuk membuka file
        with gr.Redactor("input.png") as redactor:

            # Proses dan ekspor
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bersihkan Data Sensitif dari File Mana Saja"
  description: "GroupDocs.Redaction for Python via .NET menghapus teks, gambar, dan metadata yang tidak boleh dibagikan. Bekerja dengan banyak format."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat Redaksi Utama"
  features:
    # feature loop
    - title: "Hapus Teks"
      content: "Hapus kata atau pola dari file Anda untuk melindungi info sensitif."

    # feature loop
    - title: "Tutup Gambar"
      content: "Tutup bagian gambar yang perlu tetap pribadi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus data tersembunyi dari properti file seperti Penulis atau Judul."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Bidang Metadata"
      content: |
        Contoh ini menunjukkan cara menghapus metadata seperti Penulis dan Judul dalam file IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Pilih bidang Penulis
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Pilih bidang Judul
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Buka file dalam redactor
          with gr.Redactor("source.png") as redactor:

              # Jalankan redaksi
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Simpan dokumen akhir
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
    title: "Gunakan Python untuk Menghapus Metadata IMAGE"
    exclude: "IMAGE"
    description: "Dengan cepat membersihkan metadata dalam file IMAGE menggunakan Python. Jaga dokumen Anda aman dan pribadi."
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