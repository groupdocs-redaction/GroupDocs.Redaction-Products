
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Tutup Gambar Sensitif dalam POWERPOINT Menggunakan Overlay dengan Python"
head_description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan area gambar pribadi dalam file POWERPOINT menggunakan overlay. Lindungi informasi tanpa mengubah desain dokumen."

############################# Header ############################
title: "Tutup Gambar Pribadi dalam Dokumen POWERPOINT Menggunakan Overlay Python" 
description: "Jaga gambar sensitif aman dalam file POWERPOINT dengan Python. Alat sederhana untuk perlindungan data yang kuat."
subtitle: "Jelajahi Fitur GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberi pengembang Python alat untuk menyembunyikan atau menghapus konten sensitif dalam file POWERPOINT. Lindungi dokumen Anda dengan menutupi teks, gambar, dan metadata secara efisien.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Dokumen Powerpoint Anda"
    content: |
      GroupDocs.Redaction for Python via .NET memudahkan aplikasi Python via .NET untuk melindungi konten sensitif dalam dokumen.
      
      1. Buat objek Redactor dan muat file Powerpoint.
      2. Sesuaikan opsi redaksi untuk memenuhi persyaratan Anda.
      3. Pilih area gambar dan pilih warna overlay.
      4. Terapkan redaksi dan simpan dokumen Anda.
   
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

        # Masker konten gambar dalam file POWERPOINT

        # Atur ukuran dan warna overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Tentukan area untuk ditutup
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Muat file dengan Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Terapkan overlay dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lindungi Data Pribadi dalam Dokumen"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda untuk menyembunyikan atau menghapus konten sensitif dalam berbagai format dokumen. Jaga file Anda tetap aman dan siap untuk dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi All-in-One"
  features:
    # feature loop
    - title: "Cari dan Edit Teks"
      content: "Temukan teks pribadi dalam dokumen dan gantikan agar tetap aman."

    # feature loop
    - title: "Masker Area Gambar"
      content: "Tutup gambar atau bagian tertentu dengan overlay untuk menjaga privasi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus metadata untuk mencegah berbagi informasi secara tidak sengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Overlay untuk Menyembunyikan Data Gambar"
      content: |
        Contoh ini menunjukkan bagaimana melindungi gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tetapkan ukuran, posisi, dan warna overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Tandai area gambar pada halaman pertama
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Buka dokumen untuk redaksi
          with gr.Redactor("source.pptx") as redactor:

              # Terapkan overlay untuk menutup data
              result = redactor.apply(redaction)

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
    title: "Jaga File POWERPOINT Anda dengan Python"
    exclude: "POWERPOINT"
    description: "Dengan Python, Anda dapat dengan mudah menyembunyikan atau menghapus data sensitif dalam file POWERPOINT. Solusi terpercaya untuk melindungi dokumen penting."
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