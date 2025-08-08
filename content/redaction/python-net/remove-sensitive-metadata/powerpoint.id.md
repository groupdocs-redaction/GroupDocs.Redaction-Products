
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Metadata di POWERPOINT Menggunakan Python"
head_description: "Amankan dokumen POWERPOINT Anda dengan GroupDocs.Redaction for Python via .NET dengan menghapus metadata tersembunyi yang mungkin mengandung informasi pribadi."

############################# Header ############################
title: "Bersihkan Metadata dari POWERPOINT dengan Python" 
description: "Dapatkan kontrol lebih baik atas file Anda menggunakan alat Python yang cepat menghapus metadata tersembunyi."
subtitle: "Fitur Utama dari GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction dirancang untuk pengembang Python membantu menghapus teks, gambar, dan metadata dalam file POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Langkah-langkah untuk Menghapus Metadata di Powerpoint"
    content: |
      GroupDocs.Redaction memungkinkan aplikasi Python via .NET Anda membersihkan metadata dari dokumen dalam beberapa klik.
      
      1. Buat instansi Redactor dan buka dokumen Anda.
      2. Pilih bidang metadata yang ingin dihapus.
      3. Konfigurasikan dan terapkan pengaturan redaksi.
      4. Simpan versi akhir tanpa data tersembunyi.
   
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

        # Hapus metadata dari POWERPOINT

        # Pilih metadata untuk dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Muat file ke dalam redactor
        with gr.Redactor("input.pptx") as redactor:

            # Bersihkan dan simpan dokumen
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Lanjutan untuk POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET membantu membersihkan file dengan menghapus konten sensitif. Bekerja dengan berbagai format file dan tipe data."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opsi Redaksi Utama"
  features:
    # feature loop
    - title: "Hapus Teks Pribadi"
      content: "Cari dan hapus kata atau frasa yang tidak boleh dibagikan."

    # feature loop
    - title: "Tutup Bagian Gambar"
      content: "Sembunyikan bagian gambar yang mengandung visual pribadi atau sensitif."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus bidang metadata seperti Penulis, Judul, dan Komentar dari file Anda."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cara Menghapus Metadata Tersembunyi"
      content: |
        Contoh ini menunjukkan bagaimana menghapus metadata yang tertanam seperti Penulis dan Judul dari dokumen POWERPOINT Anda.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Hapus bidang Penulis
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Hapus bidang Judul
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Buka file dalam redactor
          with gr.Redactor("source.pptx") as redactor:

              # Lakukan redaksi
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
    title: "Pembersihan Metadata untuk POWERPOINT Menggunakan Python"
    exclude: "POWERPOINT"
    description: "Gunakan Python untuk membersihkan data pribadi dari dokumen POWERPOINT. Bagus untuk keperluan hukum, bisnis, dan pribadi."
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