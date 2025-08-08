
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Lindungi Gambar dalam WORD dengan Overlay Menggunakan Python"
head_description: "Tutup gambar sensitif dalam file WORD dengan GroupDocs.Redaction for Python via .NET. Terapkan overlay untuk melindungi data pribadi sambil mempertahankan tata letak dokumen."

############################# Header ############################
title: "Tutup Gambar Pribadi dalam File WORD Menggunakan Python" 
description: "Lindungi visual pribadi dan bisnis dalam dokumen WORD dengan Python. Alat redaksi cepat dan efisien yang dapat Anda andalkan."
subtitle: "Fitur Inti GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET menawarkan alat bagi pengembang Python untuk menyembunyikan atau menghapus konten dalam file WORD. Lindungi konten sensitif, gambar, dan metadata dalam berbagai format dokumen.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Informasi Sensitif dalam File Word"
    content: |
      GroupDocs.Redaction for Python via .NET membantu aplikasi Python via .NET Anda melindungi dokumen dengan menutupi konten pribadi dengan overlay.
      
      1. Buat objek Redactor dan muat file Word.
      2. Sesuaikan pengaturan redaksi sesuai kebutuhan.
      3. Pilih area gambar dan atur warna overlay.
      4. Terapkan overlay dan simpan file yang telah diredaksi.
   
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

        # Tutup bagian gambar sensitif dalam WORD

        # Tentukan warna dan ukuran overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Pilih area gambar yang akan disembunyikan
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Muat file menggunakan Redactor
        with gr.Redactor("input.docx") as redactor:

            # Terapkan dan simpan dokumen
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi Lanjutan"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda untuk menyembunyikan atau menghapus konten sensitif dalam beberapa format dokumen. Jaga file tetap bersih dan aman untuk dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Toolkit Redaksi All-in-One"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Temukan teks sensitif di seluruh dokumen dan ganti untuk memastikan privasi."

    # feature loop
    - title: "Overlay Gambar"
      content: "Tutup area gambar yang dipilih atau seluruh visual untuk menyembunyikan informasi pribadi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus metadata yang tersembunyi untuk mencegah berbagi data yang tidak diinginkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tutup Konten Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan cara menyembunyikan gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur dimensi, warna, dan lokasi overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pilih area di halaman pertama untuk ditutupi
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Buka dokumen
          with gr.Redactor("source.docx") as redactor:

              # Terapkan redaksi overlay
              result = redactor.apply(redaction)

              # Simpan dokumen yang diperbarui
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
    title: "Redaksi Konten dalam WORD Menggunakan Python"
    exclude: "WORD"
    description: "Python memungkinkan Anda untuk menyembunyikan atau menghapus konten sensitif dalam file WORD. Solusi terpercaya untuk keamanan dokumen."
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