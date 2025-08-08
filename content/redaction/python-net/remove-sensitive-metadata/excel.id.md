
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bersihkan Metadata dari EXCEL Menggunakan Python"
head_description: "Gunakan GroupDocs.Redaction for Python via .NET untuk menghapus metadata dari dokumen EXCEL. Hilangkan data tersembunyi dan lindungi informasi sensitif."

############################# Header ############################
title: "Hapus Metadata Tersembunyi di EXCEL dengan Python" 
description: "Kendalikan file EXCEL Anda dengan Python. Hapus data yang tidak diinginkan untuk menjaga privasi file Anda."
subtitle: "Fitur Utama GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction dirancang untuk pengembang Python yang perlu membersihkan dan melindungi file EXCEL. Hapus metadata, teks, dan gambar yang tidak diinginkan dengan mudah.

############################# Steps ############################
steps:
    enable: true
    title: "Langkah-langkah untuk Membersihkan Metadata di File Excel"
    content: |
      Dalam aplikasi Python via .NET, GroupDocs.Redaction membantu menghapus metadata dalam beberapa langkah mudah.
      
      1. Mulai Redactor dan buka file Excel Anda.
      2. Pilih bidang metadata untuk dihapus.
      3. Jalankan proses redaksi.
      4. Ekspor file final.
   
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

        # Hapus data tersembunyi di EXCEL

        # Pilih metadata untuk dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Buka file Anda dengan redactor
        with gr.Redactor("input.xslx") as redactor:

            # Proses dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bersihkan Semua Jenis Data Sensitif"
  description: "GroupDocs.Redaction for Python via .NET memberikan Anda alat untuk menghapus metadata, teks, dan gambar dalam berbagai format. Sempurna untuk berbagi dokumen yang aman."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Alat Metadata dan Privasi"
  features:
    # feature loop
    - title: "Hapus Teks Pribadi"
      content: "Deteksi dan hapus informasi pribadi atau tersembunyi dari dokumen Anda."

    # feature loop
    - title: "Masker Detail Gambar"
      content: "Tutup bagian gambar untuk memblokir visual pribadi."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus bidang metadata yang tersembunyi yang mungkin mengandung data sensitif."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Metadata Penulis dan Judul"
      content: |
        Lihat bagaimana GroupDocs.Redaction for Python via .NET menghapus bidang metadata spesifik dari dokumen EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Hapus informasi Penulis
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Hapus bidang Judul
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Buka dokumen untuk redaksi
          with gr.Redactor("source.xslx") as redactor:

              # Terapkan perubahan
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Simpan dokumen yang bersih
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
    title: "Bersihkan Metadata di EXCEL dengan Python"
    exclude: "EXCEL"
    description: "Gunakan Python untuk menghapus metadata sensitif dari file EXCEL Anda. Amankan konten sebelum berbagi."
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