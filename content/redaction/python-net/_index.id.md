---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: id
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Hapus informasi rahasia dari dokumen dengan Python"
head_description: "Amankan file Anda menggunakan GroupDocs.Redaction for Python via .NET. Dengan cepat meredaksi, menyembunyikan, atau menghapus konten sensitif dalam file PDF, Word, Excel, PowerPoint, dan gambar."

############################# Header ############################
title: "Pastikan Dokumen Anda Aman dengan GroupDocs.Redaction"
description: "Hapus data pribadi dengan mudah, redaksi teks, dan bersihkan metadata tersembunyi dari PDF, file Office, dan gambar menggunakan toolkit Python yang canggih."
words:
  for: "untuk"

actions:
  main: "Unduh PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Lisensi"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Siap untuk Memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis atau minta lisensi."

release:
  title: "Versi {0} Diluncurkan"
  notes: "Lihat apa yang baru"
  downloads: "Unduhan"

code:
  title: "Meredaksi Konten Dokumen"
  more: "Lebih banyak contoh"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Atur parameter redaksi
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Muat file Anda ke dalam instance Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Mulai proses redaksi
            result = redactor.apply(red)
        
            # Ekspor file yang telah dibersihkan
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction Dalam Sekilas"
  description: "Integrasikan kemampuan redaksi yang kuat ke dalam proyek Python Anda"
  features:
    # feature loop
    - title: "Redaksi Teks Sensitif"
      content: "Dengan GroupDocs.Redaction for Python via .NET, Anda dapat secara otomatis menemukan dan menutup kata atau frasa sensitif. Ganti atau tutupi teks dengan kotak berwarna untuk perlindungan lebih baik di seluruh PDF, dokumen Word, dan format lainnya."

    # feature loop
    - title: "Menutupi Gambar"
      content: "Teknologi kami dapat mendeteksi gambar dan memburamkan, menyembunyikan, atau memblokirnya berdasarkan kriteria yang Anda pilih. Tentukan area spesifik atau biarkan deteksi otomatis untuk kontrol penuh."

    # feature loop
    - title: "Hapus Metadata Tersembunyi"
      content: "Hilangkan detail pribadi atau pelacakan yang tersembunyi dalam metadata, seperti kepemilikan atau informasi perangkat. GroupDocs.Redaction for Python via .NET memastikan dokumen Anda benar-benar bersih dan aman untuk dibagikan."

    # feature loop
    - title: "Redaksi Elemen Khusus"
      content: "Melangkah lebih jauh dari teks dengan meredaksi item tertanam seperti komentar, anotasi, dan elemen spesifik file lainnya untuk mencapai kerahasiaan total."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independensi Platform"
  description: "GroupDocs.Redaction for Python via .NET berfungsi di semua sistem operasi utama, mendukung kerangka kerja populer, dan terintegrasi dengan manajer paket umum."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Format File yang Didukung"
  description: |
    GroupDocs.Redaction for Python via .NET mendukung format [file](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/) berikut.
  groups:
    # group loop
    - color: "green"
      content: |
        ### Format MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Format Office Lainnya
        * **Portabel:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Format Teks:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Format Lainnya
        * **Web:** HTM, HTML, MD
        * **Gambar:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBook:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Fitur Utama GroupDocs.Redaction for Python via .NET"
  description: "Dengan mudah memindai, menemukan, dan meredaksi konten sensitif dalam PDF, gambar, dan file Office."

  items:
    # feature loop
    - icon: "search"
      title: "Pencarian yang Dapat Disesuaikan"
      content: "Gunakan mode pencarian fleksibel untuk menemukan kecocokan yang tepat atau kata kunci untuk dihapus."

    # feature loop
    - icon: "text"
      title: "Temukan, Ganti, atau Hapus Teks"
      content: "Temukan data sensitif dan ganti dengan teks yang aman atau hapus sepenuhnya."

    # feature loop
    - icon: "image"
      title: "Penutupan Visual"
      content: "Tumpangkan bentuk atau pola berwarna untuk secara visual menutup bagian yang telah direduksi."

    # feature loop
    - icon: "search"
      title: "Deteksi Berbasis Regex"
      content: "Manfaatkan ekspresi reguler untuk ketepatan penentuan dalam pencarian teks canggih."

    # feature loop
    - icon: "table"
      title: "Redaksi Tertarget"
      content: "Terapkan redaksi hanya ke halaman tertentu atau wilayah yang ditentukan untuk menghemat waktu dan fokus pada area kunci."

    # feature loop
    - icon: "template"
      title: "Sanitasi Metadata"
      content: "Dengan mudah menghapus bidang metadata seperti pencipta, perusahaan, atau timestamp dari file Anda."

    # feature loop
    - icon: "pdf"
      title: "Opsi Ekspor"
      content: "Simpan dokumen yang telah diproses dalam PDF atau format lain yang kompatibel tanpa kehilangan fidelitas tata letak."

    # feature loop
    - icon: "template"
      title: "Pembersihan Metadata Lengkap"
      content: "Hapus semua metadata tertanam dengan satu klik untuk perlindungan data maksimum."

    # feature loop
    - icon: "hyperlink"
      title: "Kebijakan XML yang Dapat Digunakan Ulang"
      content: "Simpan konfigurasi redaksi kustom Anda sebagai template XML untuk mengotomatisasi tugas di masa depan."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Contoh Kode"
  description: "Jelajahi bagaimana GroupDocs.Redaction for Python via .NET menyederhanakan tugas redaksi"
  items:
    # code sample loop
    - title: "Redaksi Berbasis Regex"
      content: |
        Pengembang yang menggunakan Python dapat menerapkan [aturan berbasis regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) untuk menemukan dan menutupi teks sensitif dengan masker gambar:
        {{< landing/code title="Redaksi Dokumen Word Menggunakan Ekspresi Reguler">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Tentukan aturan redaksi menggunakan ekspresi reguler
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Buat instance dari kelas Redactor
            with gr.Redactor("source.docx") as redactor:

                # Sembunyikan semua teks yang cocok dengan overlay kotak biru
                result = redactor.apply(reg_red)
        
                # Simpan dokumen Word yang telah direduksi
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Hapus Metadata"
      content: |
        Gunakan API untuk [menghapus metadata](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) di berbagai jenis file dalam beberapa langkah:
        {{< landing/code title="Hapus Semua Metadata dari Presentasi">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Konfigurasikan opsi redaksi
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Berikan path presentasi ke Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Hapus semua metadata dari presentasi
            result = redactor.apply(red)
        
            # Simpan file presentasi yang telah dibersihkan
            redactor.save()
        ```
        {{< /landing/code >}}

---
