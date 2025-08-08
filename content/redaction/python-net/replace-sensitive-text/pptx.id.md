
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: id
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari PPTX Menggunakan Python"
head_description: "Lindungi berkas PPTX Anda dengan GroupDocs.Redaction for Python via .NET dan Python. Cepat temukan dan hapus konten pribadi."

############################# Header ############################
title: "Edit atau Hapus Teks Pribadi dalam Berkas PPTX dengan Python" 
description: "Gunakan GroupDocs.Redaction for Python via .NET dan Python untuk menemukan dan membersihkan data sensitif dalam dokumen PPTX Anda. Jaga semua file pribadi atau pekerjaan Anda."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan kepada pengembang Python kontrol penuh atas konten PPTX. Bersihkan teks, gambar, catatan, dan metadata dengan mudah.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Meredaksi Teks dalam Dokumen Pptx"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET dalam lingkungan Python via .NET Anda untuk menyembunyikan atau menghapus konten sensitif dengan cepat.
      
      1. Buat Redactor dan buka berkas Pptx Anda.
      2. Pilih pengaturan redaksi Anda.
      3. Masukkan teks yang dicari dan apa yang ingin diganti.
      4. Terapkan redaksi dan simpan berkas yang telah diperbarui.
   
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

        # Cara meredaksi teks dalam berkas PPTX

        # Setel opsi redaksi Anda
        # Pilih teks yang ingin dicari dan yang ingin diganti
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Gunakan konstruktor Redactor untuk memuat berkas Anda
        with gr.Redactor("input.pptx") as redactor:

            # Jalankan redaksi dan simpan berkas PPTX yang diperbarui
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi Tambahan"
  description: "GroupDocs.Redaction for Python via .NET membantu Anda menghapus atau menyembunyikan data sensitif di berbagai format. Bagikan dokumen dengan aman."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ikhtisar fitur redaksi"
  features:
    # feature loop
    - title: "Ganti teks pribadi"
      content: "Cari dan ganti kata atau frasa tertentu. Bekerja dengan regex dan filter cerdas."

    # feature loop
    - title: "Tutup gambar pribadi"
      content: "Overlay atau sembunyikan area tertentu dalam gambar. Sesuaikan pengaturan seperti warna dan tata letak."

    # feature loop
    - title: "Hapus informasi tersembunyi"
      content: "Bersihkan metadata seperti nama penulis, cap waktu, atau catatan internal."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Berdasarkan Pola dengan Regex"
      content: |
        Gunakan ekspresi reguler untuk mencari dan membersihkan teks seperti alamat email, nomor telepon, atau ID.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Tetapkan pola regex EMAIL dan teks pengganti
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Buka berkas yang ingin Anda edit
          with gr.Redactor("source.pptx") as redactor:

              # Jalankan proses redaksi
              result = redactor.apply(redaction)

              # Simpan berkas yang telah dibersihkan
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redaksi Konten di PPTX Menggunakan Python"
    exclude: "PPTX"
    description: "Dengan Python, Anda dapat menghapus teks sensitif dari dokumen PPTX dan menjaga data Anda tetap aman."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Presentasi PowerPoint Open XML"


---