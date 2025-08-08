
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Area Gambar dalam File XLSX dengan Overlay Menggunakan Python"
head_description: "Lindungi daerah gambar sensitif dalam file XLSX dengan menerapkan overlay menggunakan GroupDocs.Redaction for Python via .NET. Pertahankan struktur dokumen Anda sambil mengamankan visual pribadi."

############################# Header ############################
title: "Sembunyikan Gambar Sensitif dalam Dokumen XLSX Menggunakan Python" 
description: "Lindungi gambar rahasia dalam file XLSX dengan Python. Alat kami menjamin redaksi gambar yang cepat dan efektif."
subtitle: "Fitur Utama GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET menawarkan alat bagi pengembang Python untuk menyembunyikan atau menghapus data sensitif dari dokumen XLSX. Redaksi teks, gambar, dan metadata di berbagai format berbeda.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data Sensitif dalam File Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET memudahkan aplikasi Python via .NET untuk mengamankan dokumen.
      
      1. Inisialisasi Redactor dan muat dokumen Xlsx.
      2. Atur parameter redaksi untuk sesuai dengan tugas Anda.
      3. Tentukan bagian gambar yang ingin ditutupi dan pilih warna.
      4. Terapkan redaksi dan simpan file akhir.
   
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

        # Sembunyikan bagian gambar rahasia dalam XLSX

        # Pilih ukuran dan warna overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Tandai area redaksi
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Muat dokumen dengan Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Terapkan perubahan dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten dalam Dokumen"
  description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan atau menghapus data sensitif dalam banyak format dokumen. Pertahankan dokumen tetap aman dan tampak profesional."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang Efisien"
  features:
    # feature loop
    - title: "Cari & Ganti Teks"
      content: "Mudah menemukan teks pribadi dan mengganti atau menyembunyikannya."

    # feature loop
    - title: "Tutup Gambar dengan Overlay"
      content: "Sembunyikan gambar penuh atau bagian tertentu untuk melindungi visual sensitif."

    # feature loop
    - title: "Hapus Metadata Tersembunyi"
      content: "Bersihkan metadata dari file untuk menghindari berbagi informasi pribadi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cloak Konten Gambar dengan Overlay"
      content: |
        Panduan ini menunjukkan cara menyembunyikan area gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tentukan ukuran, posisi, dan warna overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pilih bagian gambar tertentu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Buka file untuk redaksi
          with gr.Redactor("source.xlsx") as redactor:

              # Terapkan overlay untuk menyembunyikan area tersebut
              result = redactor.apply(redaction)

              # Simpan dokumen yang diubah
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
    title: "Sembunyikan Konten dalam File XLSX dengan Python"
    exclude: "XLSX"
    description: "Gunakan Python untuk meredakan atau menghapus data sensitif dari file XLSX. Ideal untuk usaha dan individu yang ingin melindungi dokumen mereka."
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