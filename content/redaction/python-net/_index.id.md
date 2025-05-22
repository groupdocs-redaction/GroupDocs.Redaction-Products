---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python via .NET Redaksi API | Sembunyikan Teks Pribadi dari Gambar PDF Word Excel"
head_description: "API redaksi dokumen untuk Python. Redaksi, sembunyikan, atau hapus konten sensitif dari PDF, Microsoft Word, Excel, presentasi, & gambar raster."

############################# Header ############################
title: "Amankan Data Rahasia melalui Redaction API"
description: "Redaksi, sembunyikan, atau hapus konten & metadata sensitif dari dokumen, lembar kerja, presentasi, PDF, dan file gambar raster menggunakan Python API."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Python via .NET"
        image: "/border/groupdocs-redaction-python-net.svg"
        product: "GroupDocs.Redaction"
        platform: "Python via .NET"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Ringkasan"

            # button loop
            - link: "#features"
              text: "Fitur"

            # button loop
            - link: "#support"
              text: "Mendukung"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Demo Langsung"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Harga"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/python-net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction untuk Python adalah pustaka API yang membantu Anda menghapus data sensitif dan rahasia dari berbagai format file, seperti Microsoft Word, Excel, PowerPoint, dan PDF. Antarmuka format-independen tunggal Redaction API kami mendukung redaksi dari berbagai jenis, misalnya, redaksi teks, redaksi metadata, redaksi anotasi, dan redaksi dokumen tabular. GroupDocs.Redaction untuk .NET API juga memungkinkan Anda untuk menyunting file yang dilindungi kata sandi. Anda diizinkan untuk menyimpan dokumen dalam format aslinya serta membuat dokumen PDF yang disanitasi dengan gambar raster dari halaman asli.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Berikut ini adalah ikhtisar GroupDocs.Redaction untuk Python:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Ringkasan"
          content: |
            * Redaksi Teks
            * Redaksi Metadata
            * Redaksi Anotasi
            * Redact Tabular Document
            * Redact File yang Dilindungi
            * Kustomisasi
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction untuk Python mendukung [format file dokumen](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/ berikut):

        right:
          enable: true
          table:
            # table loop
            - title: "Redact Teks, Metadata & Komentar"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Tata Letak Tetap**: PDF
                * **Gambar Raster**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction untuk Python mendukung Sistem Operasi, Kerangka Kerja & Manajer Paket berikut:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Sistem operasi"
              content: |
                * any 32-bit or 64-bit operating system where .NET 6 is installed
                * Mac OS X and so far only the ARM64 architecture
                * Microsoft Windows Server 2003 and later
                * Microsoft Windows XP (x64, x86)
                * Microsoft Windows Vista (x64, x86)
                * Microsoft Windows 7, 8, 8.1 (x64, x86)
                * Microsoft Windows 10 (x64, x86)
                * Microsoft Windows 11 (x64)

            # table loop
            - icon: "fas fa-code"
              title: "Kerangka yang Didukung"
              content: |
                * .NET 6 or higher

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Manajer Paket"
              content: |
                * PyPi

            # table loop
            - icon: "fas fa-tools"
              title: "Lingkungan Pengembangan"
              content: |
                * Atom
                * Sublime
                * Microsoft Visual Code
                * Microsoft Visual Studio


############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction untuk Fitur Python"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Lakukan pencarian peka huruf besar/kecil untuk redaksi frasa yang tepat"

      # feature loop
      - icon: "fas fa-eye"
        content: "Gunakan kotak warna untuk menyembunyikan teks yang diedit alih-alih penggantian string"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Cari & edit teks apa pun menggunakan pencarian ekspresi reguler"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filter semua atau kombinasi apa pun dari informasi metadata rahasia dokumen"

      # feature loop
      - icon: "fas fa-code"
        content: "Hapus informasi metadata lengkap dari dokumen tertentu dengan cepat"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Tetapkan cakupan redaksi ke lembar kerja dan/atau kolom tertentu di Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Hapus semua atau komentar tertentu dan anotasi lain dari dokumen"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Cari & hapus data sensitif dari teks anotasi"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Kemampuan untuk bekerja dengan format & redaksi Anda sendiri"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Dukungan untuk format gambar raster dan redaksi wilayah gambar"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Tentukan satu set aturan redaksi (kebijakan) dalam file XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Tentukan Rentang Halaman dan Tingkat Kepatuhan PDF saat Konversi ke PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Edit atau Hapus Metadata EXIF dari File Gambar"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Redact Gambar Tersemat di dalam Dokumen PDF, Word & Presentasi"

      # feature loop
      - icon: "fas fa-print"
        content: "Simpan Kebijakan Redaksi sebagai File XML"

    more_feature:
      # more_feature_loop
      - title: "Redaksi Data Rahasia Anda dengan Kemudahan & Kontrol"
        content: |
          GroupDocs.Redaction untuk Python API memberi Anda kendali penuh atas bagaimana Anda ingin menyembunyikan atau menghapus informasi rahasia penting Anda dari dokumen yang didukung. Untuk menggunakan Redaction API kami cukup sederhana dan mudah.  

          Dalam contoh berikut, kami memuat dokumen yang didukung, menyunting teks apa pun, mencocokkan "2 digit, spasi atau tidak sama sekali, 2 digit, spasi lagi, dan 6 digit" (seperti 12 34 567890) dengan kotak warna biru menggunakan Python. Setelah selesai, ia menyimpan dokumen dalam format aslinya dengan mengganti namanya dengan akhiran tambahan "_Redacted":

          ```python
            import groupdocs.redaction as gr
            import groupdocs.redaction.redactions as grr
            import groupdocs.pydrawing as grd

            def run():

                # Specify the redaction options
                color = grd.Color.from_argb(255, 220, 20, 60)
                repl_opt = grr.ReplacementOptions(color)
                reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

                # Load the document to be redacted
                with gr.Redactor("source.pdf") as redactor:

                    # Apply the redaction
                    result = redactor.apply(reg_red)
        
                    # Save the redacted document
                    result_path = redactor.save()
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction menawarkan API tampilan dokumen untuk lingkungan pengembangan populer lainnya"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

############################# Back to top ###############################
back_to_top:
  enable: true
---