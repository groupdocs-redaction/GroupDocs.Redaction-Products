
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Tutup Gambar dalam IMAGE dengan Overlay Menggunakan Python"
head_description: "Sembunyikan konten gambar sensitif dalam file IMAGE menggunakan overlay berwarna dengan GroupDocs.Redaction for Python via .NET. Pertahankan tata letak asli file Anda sambil mengamankan visual penting."

############################# Header ############################
title: "Tutup Gambar Sensitif dalam File IMAGE Menggunakan Overlay Python" 
description: "Lindungi data gambar pribadi dan bisnis dalam file IMAGE menggunakan Python. Alat sederhana untuk perlindungan yang cepat dan efektif."
subtitle: "Fitur GroupDocs.Redaction for Python via .NET yang Anda Butuhkan" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET menyediakan pengembang Python alat untuk menyembunyikan atau menghapus konten dalam file IMAGE. Amankan dokumen Anda dengan menutupi teks, gambar, dan metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Sembunyikan Konten Pribadi dalam File Image"
    content: |
      GroupDocs.Redaction for Python via .NET memudahkan Anda menyembunyikan data sensitif dalam aplikasi Python via .NET Anda.
      
      1. Inisialisasi Redactor dan arahkan ke file Image Anda.
      2. Konfigurasikan pengaturan redaksi sesuai kebutuhan.
      3. Pilih bagian gambar dan tentukan warna overlay.
      4. Proses file dan simpan versi yang telah diredaksi.
   
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

        # Tutup konten gambar dalam IMAGE

        # Tentukan ukuran dan warna overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Pilih area untuk disembunyikan
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Muat file menggunakan Redactor
        with gr.Redactor("input.png") as redactor:

            # Terapkan overlay dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Data di Berbagai Tipe Dokumen"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda untuk menyembunyikan atau menghapus konten sensitif dalam berbagai format file. Jaga dokumen Anda tetap bersih, aman, dan mudah untuk dibagi."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat untuk Mengendalikan Setiap Redaksi"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks Sensitif"
      content: "Pindai dokumen Anda untuk mengganti teks pribadi dan menjaga data tetap aman."

    # feature loop
    - title: "Tutup Gambar dengan Overlay"
      content: "Tambahkan overlay berwarna untuk menyembunyikan gambar atau bagian tertentu."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus atau edit metadata tersembunyi untuk memastikan tidak ada kebocoran data pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Konten Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan cara menerapkan overlay untuk melindungi data gambar sensitif dalam dokumen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tetapkan ukuran, warna, dan posisi overlay
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
          with gr.Redactor("source.png") as redactor:

              # Terapkan overlay untuk menyembunyikan konten gambar
              result = redactor.apply(redaction)

              # Simpan file setelah redaksi
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
    title: "Lindungi Konten dalam File IMAGE dengan Python"
    exclude: "IMAGE"
    description: "Dengan Python, Anda dapat menyembunyikan atau menghapus informasi sensitif dalam file IMAGE. Cara terpercaya untuk menjaga dokumen aman dan profesional."
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