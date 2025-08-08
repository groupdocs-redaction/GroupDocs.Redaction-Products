
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Tutup Gambar dalam EXCEL Menggunakan Overlay di Python"
head_description: "Lindungi area gambar sensitif dalam file EXCEL dengan GroupDocs.Redaction for Python via .NET. Tambahkan overlay untuk menyembunyikan visual pribadi tanpa mengubah penampilan dokumen."

############################# Header ############################
title: "Lindungi Gambar Sensitif dalam File EXCEL dengan Overlay Menggunakan Python" 
description: "Amankan gambar pribadi dan bisnis di file EXCEL dengan Python. Dapatkan perlindungan yang handal dengan alat kami yang mudah digunakan."
subtitle: "Fitur Utama GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan pengembang Python dengan alat sederhana untuk menyembunyikan atau menghapus konten sensitif dalam file EXCEL. Tutupi gambar, teks, dan metadata untuk melindungi dokumen Anda.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data dalam File Excel"
    content: |
      GroupDocs.Redaction for Python via .NET membantu aplikasi Python via .NET menyembunyikan informasi pribadi dengan cepat.
      
      1. Buat instance Redactor dan muat file Excel.
      2. Atur opsi redaksi sesuai kebutuhan.
      3. Pilih area gambar dan pilih warna overlay.
      4. Terapkan redaksi dan simpan file yang diedit.
   
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

        # Tutup area gambar dalam EXCEL

        # Sesuaikan ukuran dan warna overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Pilih area yang akan ditutup
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Buka dokumen dengan Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Terapkan overlay dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan atau Hapus Konten Sensitif"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda untuk melindungi dokumen dengan menyembunyikan atau menghapus data sensitif dalam berbagai format. Jaga file tetap aman dan mudah dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang Kaya Fitur"
  features:
    # feature loop
    - title: "Edit Teks dengan Aman"
      content: "Temukan teks sensitif dalam dokumen dan gantikan untuk melindungi privasi."

    # feature loop
    - title: "Sembunyikan Bagian Gambar"
      content: "Tutup area gambar yang dipilih atau seluruh visual dengan overlay."

    # feature loop
    - title: "Hapus Metadata Tersembunyi"
      content: "Hapus lapangan metadata tak terlihat untuk mencegah bocornya data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Overlay untuk Menyembunyikan Data Gambar"
      content: |
        Contoh ini menunjukkan cara menerapkan overlay untuk menutupi gambar sensitif di dokumen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tentukan warna, ukuran, dan posisi overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pilih bagian gambar tertentu di halaman pertama
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Muat dokumen untuk diedit
          with gr.Redactor("source.xlsx") as redactor:

              # Terapkan overlay untuk menyembunyikannya
              result = redactor.apply(redaction)

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
    title: "Sembunyikan Konten dalam EXCEL dengan Python"
    exclude: "EXCEL"
    description: "Dengan Python, Anda dapat menyembunyikan atau menghapus informasi sensitif dalam file EXCEL. Cara efektif untuk memastikan keamanan dokumen."
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