
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Tutupi Gambar Sensitif dalam PDF dengan Overlay Menggunakan Python"
head_description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan gambar sensitif dalam file PDF dengan menambahkan overlay. Lindungi data pribadi tanpa mengubah tata letak dokumen."

############################# Header ############################
title: "Sembunyikan Gambar dalam File PDF dengan Overlay Menggunakan Python" 
description: "Amankan gambar pribadi dan bisnis dalam file PDF dengan Python. Alat kami menjadikan perlindungan data cepat dan dapat diandalkan."
subtitle: "Fitur GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberi pengembang Python alat untuk menyembunyikan atau menghapus konten dalam file PDF. Tutupi teks, gambar, dan metadata untuk melindungi dokumen dalam berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi Data Sensitif dalam File Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET memberi kemampuan aplikasi Python via .NET Anda untuk melindungi dokumen. Sembunyikan konten pribadi hanya dengan beberapa klik.
      
      1. Buat objek Redactor dan arahkan ke file Pdf.
      2. Sesuaikan pengaturan sesuai dengan kebutuhan redaksi Anda.
      3. Pilih area gambar yang ingin ditutupi dan pilih warna overlay.
      4. Proses dan simpan file yang telah diredaksi.
   
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

        # Tutup bagian gambar rahasia dalam PDF

        # Atur warna dan ukuran overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Pilih area untuk disunting
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Muat dokumen menggunakan Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Terapkan overlay dan simpan dokumen
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan Konten Sensitif dalam Dokumen"
  description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan atau menghapus data dalam berbagai format file. Lindungi informasi sensitif sambil menjaga dokumen tetap bersih dan bisa dibagi."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fungsi Utama Redaksi"
  features:
    # feature loop
    - title: "Cari & Edit Teks"
      content: "Temukan dan ubah teks sensitif dalam dokumen Anda untuk melindungi informasi pribadi."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Tempatkan overlay pada gambar atau bagian yang dipilih untuk menyembunyikan visual yang bersifat rahasia."

    # feature loop
    - title: "Kelola Metadata"
      content: "Hapus atau edit metadata tersembunyi untuk mencegah bocornya data yang tidak diinginkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sembunyikan Informasi Gambar dengan Overlay"
      content: |
        Contoh ini menunjukkan cara menutup data gambar sensitif dalam dokumen menggunakan overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Sesuaikan pengaturan overlay: ukuran, warna, dan lokasi
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

          # Buka file untuk redaksi
          with gr.Redactor("source.pdf") as redactor:

              # Terapkan overlay untuk menyembunyikan gambar
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
    title: "Lindungi File PDF dengan Python"
    exclude: "PDF"
    description: "Gunakan Python untuk menyembunyikan atau menghapus data sensitif dalam file PDF. Solusi praktis untuk mengamankan dokumen bisnis dan pribadi."
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