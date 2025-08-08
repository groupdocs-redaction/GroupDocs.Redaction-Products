
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: id
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sembunyikan Teks Sensitif dalam POWERPOINT Menggunakan Overlay Python"
head_description: "GroupDocs.Redaction for Python via .NET membantu Anda menutup konten pribadi dalam berkas POWERPOINT dengan overlay berwarna. Jaga semuanya pada tempatnya sambil menyembunyikan informasi penting."

############################# Header ############################
title: "Sembunyikan Teks dalam Presentasi POWERPOINT dengan Python" 
description: "Gunakan Python dan GroupDocs.Redaction for Python via .NET untuk menambahkan overlay dan menyembunyikan teks sensitif dalam slide POWERPOINT Anda."
subtitle: "Apa yang Bisa Anda Lakukan dengan GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Pelajari Lebih Lanjut Tentang GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET membantu pengembang Python membersihkan presentasi POWERPOINT dengan menutup atau menghapus teks, gambar, dan info tersembunyi.

############################# Steps ############################
steps:
    enable: true
    title: "Redaksi Informasi dalam Berkas Powerpoint"
    content: |
      Dengan GroupDocs.Redaction for Python via .NET, Anda dapat mempersiapkan berkas Powerpoint untuk dibagikan menggunakan langkah-langkah redaksi yang sederhana.
      
      1. Buat Redactor baru dan muat berkas Anda.
      2. Pilih apa yang ingin disembunyikan dan bagaimana menerapkannya.
      3. Tambahkan pola pencarian dan tetapkan warna overlay.
      4. Terapkan redaksi dan simpan dokumen Anda yang diperbarui.
   
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

        # Tutup teks sensitif dalam POWERPOINT menggunakan overlay

        # Atur cara redaksi akan bekerja
        # Pilih teks dan warna untuk menyembunyikannya
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Gunakan Redactor untuk memuat presentasi Anda
        with gr.Redactor("input.pptx") as redactor:

            # Redaksi dan simpan berkas Anda
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Cara Mudah untuk Menyembunyikan Informasi"
  description: "GroupDocs.Redaction for Python via .NET membuatnya sederhana untuk menyembunyikan atau menghapus bagian sensitif dari dokumen — sempurna untuk penggunaan hukum, pribadi, atau bisnis."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Alat berguna untuk privasi"
  features:
    # feature loop
    - title: "Temukan dan ganti teks"
      content: "Cari kata atau angka dan sembunyikan atau ubah."

    # feature loop
    - title: "Tutupi bagian gambar"
      content: "Gambar overlay untuk menyembunyikan gambar penuh atau titik-titik yang dipilih."

    # feature loop
    - title: "Hapus informasi tersembunyi"
      content: "Hapus metadata seperti nama atau stempel waktu yang tidak terlihat oleh pengguna."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaksi Menggunakan Pencarian Regex"
      content: |
        Lihat bagaimana ekspresi reguler membantu Anda menemukan dan menyembunyikan teks dalam slide Anda.
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

          # Buka berkas POWERPOINT Anda
          with gr.Redactor("source.pptx") as redactor:

              # Jalankan redaksi
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
    title: "Sembunyikan Teks dalam POWERPOINT dengan Python"
    exclude: "POWERPOINT"
    description: "Gunakan Python untuk menambahkan overlay atau menghapus konten dari slide POWERPOINT Anda untuk menjaga data pribadi tetap aman."
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