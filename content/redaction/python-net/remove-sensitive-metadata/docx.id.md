
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bersihkan Metadata di DOCX Menggunakan Python"
head_description: "Gunakan GroupDocs.Redaction for Python via .NET untuk menghapus detail tersembunyi dalam file DOCX. Lindungi data Anda dengan menghapus entri metadata yang sensitif."

############################# Header ############################
title: "Hapus Metadata Tersembunyi dari File DOCX dengan Python" 
description: "Dengan Python, Anda dapat menghapus metadata tersembunyi dari file DOCX menggunakan GroupDocs.Redaction for Python via .NET. Jaga kebersihan dan privasi file Anda."
subtitle: "Fitur Utama di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan pengembang Python kemampuan untuk menghapus data tersembunyi dalam file DOCX. Bersihkan teks, visual, dan metadata dari dokumen dengan cepat.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata dari File Docx"
    content: |
      GroupDocs.Redaction memberikan aplikasi Python via .NET Anda alat untuk menghapus metadata dengan cepat.
      
      1. Mulai Redactor dan muat dokumen Docx Anda.
      2. Siapkan bidang metadata untuk dihapus.
      3. Terapkan redaksi untuk membersihkan konten tersembunyi.
      4. Simpan versi akhir dari file.
   
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

        # Bersihkan metadata di file DOCX

        # Pilih entri metadata untuk dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Gunakan Redactor untuk membuka dokumen
        with gr.Redactor("input.docx") as redactor:

            # Terapkan redaksi dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Amankan Setiap Bagian dari Dokumen"
  description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat membersihkan teks, gambar, dan metadata dalam berbagai format file. Ideal untuk privasi dan keamanan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat Redaksi Dokumen dalam Aksi"
  features:
    # feature loop
    - title: "Pembersih Teks"
      content: "Temukan dan hapus nama, istilah, atau kata-kata pribadi lainnya."

    # feature loop
    - title: "Tutup Gambar"
      content: "Sembunyikan bagian gambar dengan menempatkan overlay warna."

    # feature loop
    - title: "Penghapusan Metadata"
      content: "Hapus informasi dokumen tersembunyi seperti nama penulis atau detail perangkat lunak."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Contoh: Hapus Metadata Tersembunyi"
      content: |
        Inilah cara menghapus bidang Penulis dan Judul dari dokumen DOCX menggunakan redaksi.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Pilih untuk menghapus bidang Penulis
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Pilih untuk menghapus bidang Judul
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Buka file DOCX
          with gr.Redactor("source.docx") as redactor:

              # Jalankan redaksi metadata
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Simpan file yang bersih
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
    title: "Hapus Metadata di DOCX dengan Python"
    exclude: "DOCX"
    description: "Hapus metadata tersembunyi dalam file DOCX menggunakan Python. Sangat baik untuk mengamankan file Anda sebelum berbagi atau mengarsipkan."
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