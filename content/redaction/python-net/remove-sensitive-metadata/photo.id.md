
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Metadata di PHOTO dengan Python"
head_description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menghapus data tersembunyi dari file PHOTO dan menghindari kebocoran informasi pribadi."

############################# Header ############################
title: "Bersihkan Metadata dari PHOTO Menggunakan Alat Python" 
description: "Lindungi dokumen PHOTO Anda dengan menghapus informasi tersembunyi menggunakan alat Python yang mudah digunakan."
subtitle: "Fitur Utama dari GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan pengguna Python cara untuk membersihkan file dengan menghapus konten tersembunyi dari teks, gambar, dan metadata di PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Langkah-langkah untuk Menghapus Metadata dari Photo"
    content: |
      Gunakan GroupDocs.Redaction dalam proyek Python via .NET Anda untuk membersihkan metadata dokumen hanya dalam beberapa langkah.
      
      1. Siapkan Redactor dan buka file Photo Anda.
      2. Pilih bidang metadata yang akan dihapus.
      3. Terapkan redaksi untuk membersihkan file.
      4. Simpan versi akhir.
   
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

        # Hapus metadata di dokumen PHOTO

        # Pilih metadata yang akan dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Gunakan Redactor untuk membuka file Anda
        with gr.Redactor("input.jpeg") as redactor:

            # Jalankan dan simpan
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bersihkan File Sebelum Berbagi"
  description: "GroupDocs.Redaction for Python via .NET membantu menghapus data yang tidak boleh terlihat. Hapus teks, gambar, dan detail tersembunyi hanya dalam beberapa klik."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi yang Berguna"
  features:
    # feature loop
    - title: "Penghapusan Teks"
      content: "Cari dan hapus kata sensitif, angka, atau pola."

    # feature loop
    - title: "Penutupan Gambar"
      content: "Tutup bagian gambar yang menyimpan data pribadi."

    # feature loop
    - title: "Pembersihan Metadata"
      content: "Hapus detail file seperti Penulis, Judul, atau Komentar."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Metadata Spesifik"
      content: |
        Ikuti contoh ini untuk menghapus bidang Penulis dan Judul di dokumen PHOTO.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Targetkan bidang Penulis
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Targetkan bidang Judul
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Muat file ke dalam redactor
          with gr.Redactor("source.jpeg") as redactor:

              # Redaksi metadata yang dipilih
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
    title: "Redaksi Metadata dari PHOTO dengan Python"
    exclude: "PHOTO"
    description: "Gunakan Python untuk membersihkan metadata tersembunyi dari file PHOTO. Jaga dokumen tetap bersih dan aman."
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