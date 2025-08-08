
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: id
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Teks dalam DOCX dengan Overlay Menggunakan Python"
head_description: "Lindungi teks sensitif dalam berkas DOCX dengan GroupDocs.Redaction for Python via .NET. Tambahkan overlay persegi sederhana tanpa mengubah tata letak Anda."

############################# Header ############################
title: "Sembunyikan Konten dalam DOCX Menggunakan Python" 
description: "Gunakan Python untuk menutup konten pribadi dalam berkas DOCX. Ideal untuk dokumen hukum, pribadi, atau bisnis."
subtitle: "Fitur Utama GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET membantu pengembang Python menyembunyikan atau menghapus konten pribadi dalam berkas DOCX. Anda dapat menutup teks, gambar, dan bahkan metadata tersembunyi.

############################# Steps ############################
steps:
    enable: true
    title: "Jaga Info Pribadi Tersimpan dalam Docx"
    content: |
      Dengan GroupDocs.Redaction for Python via .NET, pengembang Python via .NET dapat menyembunyikan konten hanya dalam beberapa baris kode.
      
      1. Buat Redactor dan buka berkas Anda.
      2. Pilih pengaturan redaksi.
      3. Masukkan teks yang ingin disembunyikan dan pilih warna.
      4. Terapkan dan simpan versi yang telah direduksi.
   
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

        # Sembunyikan konten dalam DOCX menggunakan overlay

        # Konfigurasikan opsi redaksi
        # Tentukan teks dan warna overlay
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Persiapkan Redactor dan muat berkas Anda
        with gr.Redactor("input.docx") as redactor:

            # Redaksi dan simpan berkas
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alat Redaksi Tambahan"
  description: "GroupDocs.Redaction for Python via .NET mendukung berbagai jenis berkas sehingga Anda dapat melindungi konten apa pun dengan simpel."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fitur Redaksi Bawaan"
  features:
    # feature loop
    - title: "Temukan dan Edit Teks"
      content: "Cari kata kunci dan sembunyikan atau ganti dengan cepat."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Blokir area sensitif dalam halaman yang dipindai atau foto."

    # feature loop
    - title: "Bersihkan Metadata"
      content: "Hapus informasi tersembunyi yang dapat mengekspos rincian."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Temukan Teks dengan Regex dan Redaksi"
      content: |
        Pelajari cara menggunakan ekspresi reguler untuk menemukan dan menyembunyikan teks.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Atur pola dan warna
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Buka berkas untuk direduksi
          with gr.Redactor("source.docx") as redactor:

              # Jalankan proses redaksi
              result = redactor.apply(redaction)

              # Simpan dokumen yang bersih
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
    title: "Amankan Berkas DOCX dengan Python"
    exclude: "DOCX"
    description: "Tutup atau hapus konten sensitif dalam dokumen DOCX menggunakan alat sederhana dari Python."
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