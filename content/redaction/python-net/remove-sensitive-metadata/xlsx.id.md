
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: id
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hapus Metadata dari XLSX Menggunakan Python"
head_description: "Bersihkan metadata tersembunyi dalam dokumen XLSX Anda menggunakan GroupDocs.Redaction for Python via .NET. Cara yang bersih untuk melindungi privasi Anda."

############################# Header ############################
title: "Hapus Metadata di File XLSX dengan Python" 
description: "Dengan Python, Anda dapat dengan aman menghapus detail pribadi dari file XLSX Anda. Sempurna untuk penggunaan pribadi dan profesional."
subtitle: "Fitur Utama GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Apa itu GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction memberikan pengembang Python alat untuk menghapus atau menyembunyikan konten sensitif dalam file XLSX — dari teks hingga gambar hingga metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Hapus Metadata dari File Xlsx"
    content: |
      GroupDocs.Redaction memungkinkan proyek Python via .NET Anda menghapus data file yang tidak diinginkan dengan cepat.
      
      1. Buat instansi Redactor dan muat file Xlsx Anda.
      2. Pilih entri metadata yang ingin Anda hapus.
      3. Jalankan redaksi untuk membersihkan entri tersebut.
      4. Simpan file yang diperbarui.
   
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

        # Hapus metadata tersembunyi dalam dokumen XLSX Anda

        # Tentukan bidang metadata yang harus dihapus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Buka file menggunakan Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Terapkan perubahan dan simpan file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sembunyikan Konten Sensitif di Mana Saja dalam File"
  description: "GroupDocs.Redaction for Python via .NET memungkinkan Anda membersihkan informasi pribadi dari berbagai format file. Persiapkan konten Anda untuk dibagikan."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Redaksi Metadata dan Konten"
  features:
    # feature loop
    - title: "Hapus Teks Sensitif"
      content: "Temukan dan hapus nama, email, atau detail pribadi lainnya dari dokumen."

    # feature loop
    - title: "Tutup Area Gambar"
      content: "Tempatkan overlay untuk menyembunyikan area dalam gambar yang tidak boleh terlihat."

    # feature loop
    - title: "Pembersih Metadata"
      content: "Hapus bidang tersembunyi seperti Penulis, Judul, atau tanggal pembuatan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hapus Metadata dari Dokumen"
      content: |
        Inilah cara menghapus metadata dari file XLSX Anda dengan beberapa baris kode.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Tandai bidang Penulis untuk dihapus
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Tandai bidang Judul untuk dihapus
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Buka dokumen
          with gr.Redactor("source.xslx") as redactor:

              # Jalankan aturan redaksi
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Simpan file yang bersih
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Hapus Metadata di XLSX dengan Python"
    exclude: "XLSX"
    description: "Gunakan Python untuk membersihkan metadata pribadi di file XLSX Anda. Cara yang baik untuk mempersiapkan file sebelum berbagi atau menerbitkan."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi Gambar"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Format gambar populer"

        # format loop 6
        - name: "Redaksi Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Format foto"

        # format loop 7
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Presentasi PowerPoint Open XML"

        # format loop 10
        - name: "Redaksi JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Gambar JPEG"


---