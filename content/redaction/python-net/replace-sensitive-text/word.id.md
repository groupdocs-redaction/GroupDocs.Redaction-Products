
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: id
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Teks Pribadi dari WORD Menggunakan Python"
head_description: "Lindungi data pribadi dalam berkas WORD Anda dengan GroupDocs.Redaction for Python via .NET dan Python. Proses penghapusan teks yang cepat dan efisien."

############################# Header ############################
title: "Edit atau Sembunyikan Teks Pribadi dalam Berkas WORD dengan Python" 
description: "Bersihkan konten sensitif dalam berkas WORD Anda menggunakan GroupDocs.Redaction for Python via .NET dan Python. Jaga dokumen pribadi atau kerja Anda tetap aman."
subtitle: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Kenali GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET membantu pengembang Python dengan mudah membersihkan berkas WORD. Hapus teks, gambar, catatan, dan metadata hanya dengan beberapa langkah.

############################# Steps ############################
steps:
    enable: true
    title: "Langkah-langkah untuk Meredaksi Teks dalam Berkas Word"
    content: |
      Gunakan GroupDocs.Redaction for Python via .NET dalam aplikasi Python via .NET Anda untuk dengan cepat menghapus atau menyembunyikan informasi sensitif.
      
      1. Mulai Redactor dan buka berkas Word.
      2. Pilih pengaturan redaksi yang Anda inginkan.
      3. Masukkan teks yang akan dicari dan apa yang ingin diganti.
      4. Jalankan redaksi dan simpan dokumen Anda.
   
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

        # Cara meredaksi teks dalam berkas WORD

        # Atur opsi redaksi
        # Pilih teks untuk diganti dan nilai pengganti baru
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Muatan berkas menggunakan konstruktor Redactor
        with gr.Redactor("input.docx") as redactor:

            # Terapkan dan simpan berkas WORD yang telah diputihkan
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Lebih Banyak Alat untuk Redaksi"
  description: "GroupDocs.Redaction for Python via .NET memberi Anda alat untuk membersihkan konten sensitif di banyak format file. Jaga dokumen Anda aman untuk dibagikan."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ikhtisar opsi redaksi"
  features:
    # feature loop
    - title: "Ganti teks sensitif"
      content: "Cari teks atau pola dan ganti dengan sesuatu yang lain. Regex juga disupport."

    # feature loop
    - title: "Tutup gambar pribadi"
      content: "Sembunyikan atau overlay bagian gambar. Sesuaikan tampilan dan ukuran sesuai kebutuhan."

    # feature loop
    - title: "Bersihkan metadata tersembunyi"
      content: "Hapus detail tersembunyi seperti nama penulis, tanggal pembuatan, dan komentar."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Pola dengan Regex"
      content: |
        Gunakan ekspresi reguler untuk menemukan dan membersihkan pola teks seperti email, nama, atau ID.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Tentukan aturan regex EMAIL dan teks pengganti
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Buka dokumen Anda
          with gr.Redactor("source.docx") as redactor:

              # Terapkan pengaturan redaksi
              result = redactor.apply(redaction)

              # Simpan versi akhir
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
    title: "Redaksi Konten dalam WORD Menggunakan Python"
    exclude: "WORD"
    description: "Gunakan alat Python untuk membersihkan dan melindungi dokumen WORD dengan meredaksi teks sensitif dan detail."
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