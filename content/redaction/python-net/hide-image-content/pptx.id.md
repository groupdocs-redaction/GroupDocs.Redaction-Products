
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Tutup Gambar dalam File PPTX dengan Overlay Menggunakan Python"
head_description: "Gunakan GroupDocs.Redaction for Python via .NET untuk menutupi gambar sensitif dalam file PPTX dengan overlay berwarna. Lindungi data penting sambil menjaga format dokumen tetap utuh."

############################# Header ############################
title: "Tutup Gambar Pribadi dalam Dokumen PPTX Menggunakan Overlay dari Python" 
description: "Lindungi visual sensitif dalam file PPTX menggunakan Python. Alat kami memudahkan redaksi gambar dengan cepat dan efisien."
subtitle: "Fitur GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberi pengembang Python alat sederhana untuk menyembunyikan atau menghapus konten dalam file PPTX. Redaksi teks, gambar, dan metadata dalam berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Data Sensitif dalam File Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET membantu aplikasi Python via .NET melindungi dokumen dengan menutupi konten sensitif.
      
      1. Buat instansi Redactor dan muat file Pptx.
      2. Atur opsi redaksi sesuai kebutuhan tugas Anda.
      3. Pilih area gambar dan tetapkan warna overlay.
      4. Terapkan overlay dan simpan file.
   
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

        # Masker area gambar pribadi dalam PPTX

        # Tetapkan warna dan ukuran overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Tentukan area untuk diratakan
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Buka dokumen dengan Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Terapkan overlay dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur untuk Redaksi Dokumen"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda untuk menghapus atau menghapus data rahasia dalam berbagai jenis dokumen. Jaga file Anda tetap bersih dan dilindungi."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Rangkaian Lengkap Alat Redaksi"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Temukan teks sensitif dan redaksi untuk melindungi informasi Anda."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Tutup gambar atau bagian tertentu dengan overlay untuk menyembunyikan visual pribadi."

    # feature loop
    - title: "Hapus Metadata"
      content: "Hapus atau ubah metadata tersembunyi untuk mencegah berbagi informasi pribadi yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tutupi Konten Gambar dengan Overlay Berwarna"
      content: |
        Lihat cara menutupi bagian gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur properti overlay: ukuran, posisi, warna
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pilih area gambar di halaman pertama
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Muat dokumen
          with gr.Redactor("source.pptx") as redactor:

              # Tutup area yang dipilih
              result = redactor.apply(redaction)

              # Simpan dokumen yang dilindungi
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
    title: "Tutup Konten dalam File PPTX dengan Python"
    exclude: "PPTX"
    description: "Gunakan Python untuk menyembunyikan atau menghapus konten pribadi dalam file PPTX. Alat yang dapat diandalkan untuk keamanan dokumen."
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