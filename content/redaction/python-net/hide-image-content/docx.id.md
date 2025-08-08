
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Konten Gambar dalam DOCX dengan Overlay Menggunakan Python"
head_description: "Lindungi gambar sensitif dalam file DOCX dengan menambahkan overlay menggunakan GroupDocs.Redaction for Python via .NET. Pertahankan format dokumen sambil mengamankan visual pribadi."

############################# Header ############################
title: "Lindungi Gambar dalam Dokumen DOCX Menggunakan Overlay dengan Python" 
description: "Aman kan visual pribadi dan bisnis dalam file DOCX menggunakan Python. Alat redaksi kami menjadikan keamanan dokumen efektif."
subtitle: "Sorotan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan kemampuan kepada pengembang Python untuk menyembunyikan atau menghapus konten dalam file DOCX. Lindungi teks, gambar, dan metadata di banyak format dokumen.

############################# Steps ############################
steps:
    enable: true
    title: "Amankan Data dalam File Docx"
    content: |
      GroupDocs.Redaction for Python via .NET memudahkan aplikasi Python via .NET untuk melindungi dokumen. Redaksi data sensitif hanya dalam beberapa langkah.
      
      1. Buat instance Redactor dan tentukan jalur ke file Docx.
      2. Siapkan preferensi redaksi untuk sesuai dengan tugas Anda.
      3. Pilih bagian gambar yang ingin ditutupi dan definisikan warna overlay.
      4. Jalankan proses dan simpan file yang telah diredaksi.
   
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

        # Sembunyikan bagian sensitif dari gambar dalam DOCX

        # Tentukan ukuran dan warna overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Tentukan area untuk diratakan
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Muat file menggunakan Redactor
        with gr.Redactor("input.docx") as redactor:

            # Terapkan overlay dan simpan dokumen Anda
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan Konten dalam Dokumen"
  description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan atau menghapus informasi sensitif dari berbagai jenis dokumen. Jaga file tetap aman dan dapat dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi yang Efektif"
  features:
    # feature loop
    - title: "Cari & Edit Teks"
      content: "Temukan kata-kata sensitif dan ganti untuk melindungi data Anda."

    # feature loop
    - title: "Tutup Gambar"
      content: "Terapkan overlay pada gambar penuh atau bagian terpilih untuk melindungi data visual."

    # feature loop
    - title: "Bersihkan Metadata Tersembunyi"
      content: "Hapus atau perbarui metadata untuk mencegah berbagi data secara tidak sengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Data Gambar Menggunakan Overlay"
      content: |
        Contoh ini menunjukkan cara melindungi area gambar sensitif dalam dokumen dengan overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur pengaturan overlay: warna, ukuran, posisi
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pilih area yang mau direduksi di halaman satu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Muat file yang ingin di-redaksi
          with gr.Redactor("source.docx") as redactor:

              # Terapkan overlay untuk menutupi gambar
              result = redactor.apply(redaction)

              # Simpan file yang telah diredaksi
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
    title: "Sembunyikan Data Sensitif dalam File DOCX dengan Python"
    exclude: "DOCX"
    description: "Gunakan Python untuk menutupi atau menghapus data pribadi dalam file DOCX. Alat yang tepat untuk menjaga dokumen rahasia aman."
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