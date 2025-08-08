
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Teks Sensitif di PDF Menggunakan Python"
head_description: "Lindungi detail pribadi dalam dokumen PDF Anda dengan GroupDocs.Redaction for Python via .NET. Dengan cepat temukan dan sembunyikan informasi sensitif."

############################# Header ############################
title: "Hapus Teks Sensitif dari Berkas PDF Menggunakan Python" 
description: "Gunakan Python dan GroupDocs.Redaction for Python via .NET untuk mencari dan menghapus data pribadi, hukum, atau personal dari berkas PDF Anda."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET memberikan pengembang Python semua alat yang mereka butuhkan untuk menghapus konten dalam berkas PDF—teks, gambar, komentar, dan lainnya.

############################# Steps ############################
steps:
    enable: true
    title: "Cara Mereduksi Konten di Berkas Pdf"
    content: |
      Jaga konten Anda aman dalam aplikasi Python via .NET apa pun menggunakan GroupDocs.Redaction for Python via .NET.
      
      1. Buat Redactor dan buka berkas Pdf Anda.
      2. Pilih pengaturan redaksi yang Anda inginkan.
      3. Masukkan teks yang dicari dan apa yang ingin Anda ganti.
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fitur Redaksi Lainnya"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda menyembunyikan konten pribadi dalam berbagai jenis berkas. Jaga data Anda tetap aman dan siap dibagikan."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Alat untuk redaksi teks, gambar, dan metadata"
  features:
    # feature loop
    - title: "Temukan dan Ganti Teks Pribadi"
      content: "Cari dan ganti teks yang sesuai. Bekerja dengan regex dan pencarian kata kunci."

    # feature loop
    - title: "Tutup Gambar Pribadi"
      content: "Masking gambar penuh atau sebagian menggunakan overlay. Sesuaikan pengaturan tampilan."

    # feature loop
    - title: "Hapus Metadata Tersembunyi"
      content: "Hapus informasi tersembunyi seperti nama penulis, cap waktu, dan catatan revisi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi dengan Regex"
      content: |
        Gunakan regex untuk menemukan dan menghapus pola seperti email, ID, atau nomor.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Tentukan pola regex dan teks pengganti
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Buka berkas yang ingin Anda bersihkan
          with gr.Redactor("source.pdf") as redactor:

              # Terapkan aturan redaksi Anda
              result = redactor.apply(redaction)

              # Simpan berkas yang telah dihapus
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
    title: "Redaksi Konten di PDF Menggunakan Python"
    exclude: "PDF"
    description: "Lindungi data pribadi atau bisnis Anda dengan menghapus teks dalam berkas PDF menggunakan alat Python."
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