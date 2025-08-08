
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Teks dalam PPTX Menggunakan Python dan Overlay"
head_description: "Tutup konten sensitif dalam berkas PPTX Anda dengan overlay berwarna menggunakan GroupDocs.Redaction for Python via .NET. Tata letak Anda tetap sama."

############################# Header ############################
title: "Lindungi Teks dalam PPTX dengan Overlay dan Python" 
description: "Gunakan GroupDocs.Redaction for Python via .NET dan Python untuk menyembunyikan informasi pribadi dalam presentasi PPTX dengan menutupinya dengan blok warna."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa yang Ditawarkan GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Dengan GroupDocs.Redaction for Python via .NET, pengembang Python dapat menutup atau menghapus konten dalam berkas PPTX — dari teks hingga gambar hingga data tersembunyi.

############################# Steps ############################
steps:
    enable: true
    title: "Redaksi Info Pribadi dalam Pptx"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET untuk melindungi presentasi Anda dalam beberapa langkah sederhana.
      
      1. Buat Redactor dan muat berkas yang ingin diedit.
      2. Pilih pengaturan redaksi yang sesuai dengan kebutuhan Anda.
      3. Tetapkan pola teks dan pilih warna untuk overlay.
      4. Terapkan redaksi dan simpan perubahan Anda.
   
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

        # Gunakan overlay untuk menyembunyikan teks dalam PPTX

        # Tentukan pengaturan redaksi
        # Pilih teks dan warna
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Mulai dengan memuat berkas Anda menggunakan Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Redaksi dan simpan berkas
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Opsi Redaksi"
  description: "GroupDocs.Redaction for Python via .NET memberikan Anda alat untuk menyembunyikan atau membersihkan data dalam berbagai format berkas tanpa merusak tata letak."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fitur berguna untuk privasi"
  features:
    # feature loop
    - title: "Ubah atau Sembunyikan Teks"
      content: "Lindungi informasi sensitif dengan mengedit atau menyembunyikannya dari tampilan."

    # feature loop
    - title: "Sembunyikan Gambar atau Bagian"
      content: "Gambar overlay untuk menutup gambar penuh atau area yang dipilih."

    # feature loop
    - title: "Hapus Detail Tersembunyi"
      content: "Hapus metadata yang mungkin mencakup informasi pribadi atau sistem."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan Regex untuk Menemukan Teks"
      content: |
        Lihat bagaimana ekspresi reguler membantu Anda menemukan dan menyembunyikan konten sensitif.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tentukan pola dan warna overlay
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Buka berkas PPTX Anda
          with gr.Redactor("source.pptx") as redactor:

              # Terapkan redaksi
              result = redactor.apply(redaction)

              # Simpan versi yang diedit
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
    title: "Lindungi Slide PPTX Menggunakan Python"
    exclude: "PPTX"
    description: "Gunakan Python untuk menutup atau menghapus konten pribadi dalam berkas PPTX sambil menjaga slide tetap bersih."
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