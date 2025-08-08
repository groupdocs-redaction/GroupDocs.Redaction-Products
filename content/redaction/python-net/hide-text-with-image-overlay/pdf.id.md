
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Tutup Teks Sensitif dalam Berkas PDF Menggunakan Overlay Python"
head_description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan teks sensitif dalam berkas PDF dengan menambahkan overlay berwarna. Lindungi data pribadi tanpa mengubah tampilan berkas Anda."

############################# Header ############################
title: "Tutup Teks Sensitif dalam PDF Menggunakan Python" 
description: "Amankan berkas PDF Anda dengan Python. Gunakan overlay untuk memblokir informasi hukum, pribadi, atau rahasia."
subtitle: "Sorotan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan cara mudah bagi pengembang Python untuk menyembunyikan atau menghapus konten dalam berkas PDF. Tutupi teks sensitif, gambar, atau metadata di berbagai format.

############################# Steps ############################
steps:
    enable: true
    title: "Jaga Informasi Sensitif Tetap Aman dalam Berkas Pdf"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET dengan aplikasi Python via .NET Anda untuk menyembunyikan konten pribadi dengan cepat.
      
      1. Siapkan Redactor dan muat berkas Pdf Anda.
      2. Pilih cara redaksi yang diinginkan.
      3. Pilih teks yang ingin disembunyikan dan pilih warna untuk overlay.
      4. Terapkan redaksi dan simpan berkas Anda.
   
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

        # Sembunyikan teks sensitif dalam PDF menggunakan overlay berwarna

        # Atur opsi redaksi
        # Tentukan apa yang akan disembunyikan dan pilih warna
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Muat berkas dengan melewatkan jalurnya ke Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redaksi dan simpan berkas PDF Anda
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan atau Hapus Informasi dari Dokumen"
  description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menyembunyikan teks, gambar, dan data lain dalam berbagai format. Lindungi apa yang penting sambil menjaga dokumen Anda tetap mudah dibaca dan dibagikan."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi Fleksibel"
  features:
    # feature loop
    - title: "Edit Teks Apa Pun"
      content: "Cari dan ganti teks sensitif untuk menjaga keamanan dokumen Anda."

    # feature loop
    - title: "Tutup Gambar"
      content: "Gunakan overlay untuk menutup seluruh gambar atau area tertentu."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus data tersembunyi untuk menghentikan kebocoran informasi yang tidak diinginkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Regex untuk Menemukan dan Menyembunyikan Teks"
      content: |
        Contoh ini menunjukkan cara mencari dan menyembunyikan teks menggunakan pola regex.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur pola teks dan warna overlay
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Muat dokumen Anda
          with gr.Redactor("source.pdf") as redactor:

              # Redaksi konten yang dipilih
              result = redactor.apply(redaction)

              # Simpan berkas yang diperbarui
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Lindungi Berkas PDF dengan Alat Python"
    exclude: "PDF"
    description: "Gunakan Python untuk menyembunyikan atau menghapus konten dalam berkas PDF. Cara yang andal untuk menjaga informasi pribadi tetap aman."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Presentasi PowerPoint Open XML"


---