
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: id
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Konten dalam EXCEL Menggunakan Overlay Python"
head_description: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat menutup teks dalam berkas EXCEL menggunakan overlay berwarna. Cara sederhana untuk melindungi konten pribadi."

############################# Header ############################
title: "Overlay Penyembunyi Teks untuk EXCEL di Python" 
description: "Tulis kode Python untuk menyembunyikan teks dan mengamankan informasi dalam berkas EXCEL Anda. Jaga dokumen Anda tetap aman dan bersih."
subtitle: "Apa yang Anda Dapatkan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Mengapa Menggunakan GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET dirancang untuk pengembang Python yang perlu menyembunyikan atau menghapus konten dalam berkas EXCEL. Bekerja dengan teks, gambar, dan metadata dengan mudah.

############################# Steps ############################
steps:
    enable: true
    title: "Sembunyikan Data Sensitif dalam Excel"
    content: |
      GroupDocs.Redaction for Python via .NET memudahkan pengembang Python via .NET untuk mempersiapkan dokumen sebelum dibagikan.
      
      1. Buat Redactor dan buka berkas Excel Anda.
      2. Pilih pengaturan redaksi yang sesuai dengan tugas Anda.
      3. Masukkan teks atau frasa untuk ditutup dan pilih warna.
      4. Terapkan redaksi dan simpan berkas.
   
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

        # Gunakan overlay untuk menyembunyikan teks dalam EXCEL

        # Pilih pengaturan redaksi Anda
        # Pilih apa yang ingin disembunyikan dan warna yang digunakan
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Mulai dengan memuat berkas Anda menggunakan Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Terapkan perubahan dan simpan berkas
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Berguna untuk Meredaksi Data"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda menyembunyikan atau menghapus data dalam dokumen sambil menjaga tata letak dan konten tetap jelas."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Dibuat untuk melindungi berkas Anda"
  features:
    # feature loop
    - title: "Sembunyikan atau ubah teks"
      content: "Cari dan ganti bagian teks yang perlu disembunyikan."

    # feature loop
    - title: "Tutup gambar dan visual"
      content: "Tambahkan overlay untuk menghapus bagian sensitif dari gambar atau grafik."

    # feature loop
    - title: "Bersihkan metadata tersembunyi"
      content: "Hapus informasi latar belakang seperti nama penulis atau stempel waktu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Menggunakan Regex"
      content: |
        Pelajari cara menggunakan pola regex untuk menemukan dan menyembunyikan konten.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tambahkan pola regex dan pengaturan warna
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Buka berkas yang ingin Anda bersihkan
          with gr.Redactor("source.xslx") as redactor:

              # Terapkan redaksi
              result = redactor.apply(redaction)

              # Simpan versi yang telah direduksi
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
    title: "Lindungi EXCEL dengan Redaksi Python"
    exclude: "EXCEL"
    description: "Sembunyikan konten dalam EXCEL menggunakan overlay persegi atau hapus sepenuhnya dengan fitur dari Python."
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