
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Tutup Gambar dalam File PHOTO Menggunakan Overlay Python"
head_description: "Terapkan overlay untuk menyembunyikan data gambar sensitif dalam file PHOTO dengan GroupDocs.Redaction for Python via .NET. Pertahankan desain dokumen Anda tidak terganggu sambil melindungi informasi pribadi."

############################# Header ############################
title: "Sembunyikan Gambar Sensitif dalam File PHOTO dengan Overlay dari Python" 
description: "Lindungi konten gambar dalam file PHOTO dengan Python. Alat sederhana untuk mendapatkan perlindungan data yang cepat dan efektif."
subtitle: "Fitur Kunci GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberi pengembang Python alat kuat untuk menyembunyikan atau menghapus konten dalam file PHOTO. Lindungi data penting dengan cara yang efisien dengan menutup teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Area Gambar dalam File Photo"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET untuk dengan mudah menutupi area gambar sensitif dalam aplikasi Python via .NET Anda.
      
      1. Buat objek Redactor dan tautkan dengan file Photo Anda.
      2. Konfigurasikan pengaturan redaksi untuk sesuai dengan tugas Anda.
      3. Soroti bagian gambar dan atur warna overlay.
      4. Terapkan redaksi dan simpan file yang dilindungi.
   
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

        # Gunakan overlay untuk menyembunyikan data gambar dalam PHOTO

        # Atur dimensi dan warna overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Pilih area gambar untuk disembunyikan
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Buka file dengan Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Terapkan overlay dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksikan Data Pribadi dalam Berbagai Format"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda menutupi atau menghapus konten sensitif dalam berbagai tipe file. Jimpan dokumen tetap bersih dan siap dibagi."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi Semua dalam Satu"
  features:
    # feature loop
    - title: "Temukan dan Edit Teks"
      content: "Cari teks sensitif dan ganti untuk melindungi dokumen Anda."

    # feature loop
    - title: "Sembunyikan Gambar dengan Overlay"
      content: "Tambahkan overlay untuk menutupi gambar penuh atau bagian tertentu."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus metadata untuk mencegah kebocoran data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tutup Seksi Gambar dengan Overlay"
      content: |
        Contoh kode ini memperlihatkan bagaimana menutupi area gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tentukan ukuran, warna, dan penempatan overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pilih area gambar pada halaman pertama
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Buka file untuk redaksi
          with gr.Redactor("source.jpeg") as redactor:

              # Terapkan overlay untuk menyembunyikan konten
              result = redactor.apply(redaction)

              # Simpan file yang diproteksi
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Redaksi Konten Sensitif dalam PHOTO dengan Python"
    exclude: "PHOTO"
    description: "Sembunyikan atau hapus data pribadi dalam file PHOTO menggunakan Python. Cara mudah untuk mengamankan dokumen resmi."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi Gambar"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Format gambar populer"

        # format loop 6
        - name: "Redaksi Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Format foto"

        # format loop 7
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Presentasi PowerPoint Open XML"

        # format loop 10
        - name: "Redaksi JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Gambar JPEG"


---