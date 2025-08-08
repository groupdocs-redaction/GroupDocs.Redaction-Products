
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Edit Metadata di JPEG Menggunakan Python"
head_description: "GroupDocs.Redaction for Python via .NET membantu Anda menghapus atau memperbarui metadata di dokumen JPEG. Hapus bidang tersembunyi yang dapat mengungkapkan detail pribadi."

############################# Header ############################
title: "Bersihkan Metadata di JPEG melalui Python" 
description: "Amankan file JPEG Anda dengan menghapus metadata tersembunyi menggunakan alat sederhana yang dirancang untuk Python."
subtitle: "Fitur Inti dari GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan pengembang Python alat sederhana untuk menghapus teks, gambar, dan metadata dari dokumen JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Langkah-langkah untuk Membersihkan Metadata Jpeg"
    content: |
      GroupDocs.Redaction membuat penghapusan metadata cepat dan mudah untuk aplikasi Python via .NET Anda.
      
      1. Atur Redactor dan buka dokumen Jpeg Anda.
      2. Pilih opsi untuk menghapus bidang metadata.
      3. Jalankan redaksi untuk membersihkan file.
      4. Simpan versi baru tanpa data tersembunyi.
   
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

        # Bersihkan metadata di JPEG

        # Pilih bidang metadata untuk dibersihkan
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Buka file menggunakan Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Terapkan redaksi dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Privasi di Setiap File"
  description: "GroupDocs.Redaction for Python via .NET memberi Anda kendali atas data sensitif di dokumen. Hapus konten tersembunyi dalam teks, gambar, dan metadata."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fitur Redaksi Metadata"
  features:
    # feature loop
    - title: "Temukan dan Hapus Teks"
      content: "Pindai kata kunci atau info pribadi dan hapus dari dokumen."

    # feature loop
    - title: "Sembunyikan Detail Gambar"
      content: "Tutup area gambar yang tidak seharusnya terlihat oleh orang lain."

    # feature loop
    - title: "Edit Metadata File"
      content: "Ubah atau hapus bidang metadata untuk melindungi info dokumen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Edit Bidang Metadata"
      content: |
        Contoh ini membahas penghapusan atau perubahan bidang seperti Penulis dan Judul dalam dokumen JPEG.
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

          # Buka file JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Jalankan proses pembersihan
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Simpan versi baru
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
    title: "Bersihkan Metadata JPEG dengan Python"
    exclude: "JPEG"
    description: "Gunakan Python untuk menghapus data tersembunyi dan pribadi dari dokumen JPEG Anda dengan cepat dan mudah."
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