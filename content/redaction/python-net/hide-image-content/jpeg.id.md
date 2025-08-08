
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: id
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Gambar Pribadi dalam JPEG dengan Overlay Menggunakan Python"
head_description: "Amankan file JPEG Anda dengan menambahkan overlay pada gambar menggunakan GroupDocs.Redaction for Python via .NET. Lindungi visual sensitif sambil menjaga tata letak dokumen tidak berubah."

############################# Header ############################
title: "Lindungi Gambar Sensitif dalam File JPEG dengan Overlay Menggunakan Python" 
description: "Jaga gambar Anda aman dalam file JPEG menggunakan Python. Alat yang sederhana untuk membantu Anda melindungi konten pribadi hanya dalam beberapa langkah."
subtitle: "Fitur Terbaik GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberi pengembang Python alat sederhana untuk menyembunyikan atau menghapus konten dalam file JPEG. Lindungi teks, gambar, dan metadata dengan efisien.

############################# Steps ############################
steps:
    enable: true
    title: "Jaga Keamanan File Jpeg"
    content: |
      GroupDocs.Redaction for Python via .NET memungkinkan aplikasi Python via .NET Anda untuk dengan cepat dan efektif menutupi data sensitif.
      
      1. Buat objek Redactor dan tentukan jalur ke file Jpeg.
      2. Tentukan pengaturan redaksi sesuai kebutuhan.
      3. Tandai area gambar dan pilih warna overlay.
      4. Proses redaksi dan simpan file yang dilindungi.
   
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

        # Sembunyikan area gambar dalam file JPEG

        # Tentukan ukuran dan warna overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Pilih area untuk disembunyikan
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Muat file melalui Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Terapkan overlay dan simpan dokumen
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaksi Konten di Berbagai Dokumen"
  description: "GroupDocs.Redaction for Python via .NET membantu Anda menyembunyikan atau menghapus konten sensitif dalam banyak format file. Jaga file Anda aman dan siap dibagikan."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Alat Redaksi yang Kaya Fitur"
  features:
    # feature loop
    - title: "Cari dan Ganti Teks"
      content: "Cari teks pribadi dalam dokumen dan gantikan untuk menjaga data aman."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Terapkan overlay untuk menyembunyikan gambar atau bagian terpilih untuk melindungi visual sensitif."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus metadata tersembunyi untuk mencegah kebocoran data yang tidak disengaja."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Lindungi Area Gambar dengan Overlay"
      content: |
        Contoh ini akan memandu Anda bagaimana menutup bagian gambar sensitif dalam dokumen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur ukuran, warna, dan posisi overlay
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

          # Muat file untuk diedit
          with gr.Redactor("source.jpg") as redactor:

              # Terapkan overlay untuk menyembunyikan area tersebut
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
    title: "Lindungi File JPEG dengan Alat Redaksi Python"
    exclude: "JPEG"
    description: "Dengan Python, Anda dapat menyembunyikan atau menghapus data pribadi dalam file JPEG. Solusi yang dapat diandalkan untuk menjaga dokumen tetap profesional dan aman."
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