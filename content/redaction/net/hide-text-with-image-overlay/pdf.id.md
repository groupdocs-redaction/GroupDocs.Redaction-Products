
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: id
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sembunyikan Teks Sensitif dalam PDF dengan Overlay Menggunakan C#"
head_description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menyembunyikan teks sensitif dalam file PDF dengan menempatkan overlay berbentuk persegi berwarna. Jaga data pribadi Anda tetap aman tanpa mengubah tata letak aslinya."

############################# Header ############################
title: "Sembunyikan Teks Sensitif dalam Dokumen PDF dengan Overlay Menggunakan .NET" 
description: "Kendalikan konten file PDF menggunakan C#. Gunakan penghapusan untuk melindungi informasi hukum, keuangan, dan pribadi."
subtitle: "Fitur GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tentang GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Pelajari lebih lanjut"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET memberikan kepada pengembang C# alat untuk menyembunyikan atau menghapus konten dari file PDF. Ini adalah cara yang sederhana untuk menjaga dokumen tetap aman. Anda dapat menutup teks, gambar, atau metadata dalam banyak jenis file.

############################# Steps ############################
steps:
    enable: true
    title: "Lindungi data bisnis dalam dokumen Pdf"
    content: |
      GroupDocs.Redaction for .NET: dirancang untuk membantu aplikasi .NET Anda menjaga dokumen tetap aman. Hapus informasi pribadi dengan cepat.
      
      1. Buat instance Redactor dan berikan jalur ke file Pdf yang ingin Anda hapus.
      2. Konfigurasikan pengaturan penghapusan untuk mendapatkan hasil yang Anda butuhkan.
      3. Tetapkan pola teks yang akan dicari dan pilih warna overlay.
      4. Redak dokumen dan simpan perubahannya.
   
    code:
      platform: "net"
      copy_title: "Salin"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Contoh redaksi"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "klik untuk menyalin"
        copy_done: "disalin"
      links:
        #  loop
        - title: "Lebih banyak contoh"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Dokumentasi"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Sembunyikan teks sensitif dalam PDF dengan gambar overlay

        // Berikan jalur file ke konstruktor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Atur opsi penghapusan
            // Tentukan pola teks dan warna overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redak dan simpan file PDF yang diperbarui
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hapus konten dalam dokumen"
  description: "Dengan GroupDocs.Redaction for .NET, Anda dapat menghapus atau menyembunyikan konten di berbagai jenis file. Lindungi informasi sensitif sambil menjaga dokumen Anda mudah dibaca dan dibagikan."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opsi Penghapusan Lanjutan"
  features:
    # feature loop
    - title: "Edit teks di mana saja"
      content: "Cari dan ganti teks yang cocok dalam dokumen Anda untuk membantu mengamankan data rahasia."

    # feature loop
    - title: "Tutup gambar"
      content: "Tempatkan overlay di atas gambar penuh atau area yang dipilih untuk menyembunyikan visual pribadi."

    # feature loop
    - title: "Tangani metadata"
      content: "Hapus atau ubah metadata tersembunyi untuk mencegah kebocoran data yang tidak diinginkan."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Gunakan ekspresi reguler untuk menyembunyikan teks"
      content: |
        Contoh ini menunjukkan cara mencari dan menyembunyikan teks menggunakan ekspresi reguler
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Muatan dokumen yang ingin Anda hapus
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Tentukan pengaturan penghapusan: pola teks dan warna
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Terapkan penghapusan ke konten
              redactor.Apply(redaction);

              // Simpan versi yang telah dihapus
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Salin"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Dokumentasi"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Siap untuk memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis atau minta lisensi"
  items:
    #  loop
    - title: "Unduh Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Lisensi"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Lindungi Konten PDF dengan Redaksi .NET"
    exclude: "PDF"
    description: "Gunakan .NET untuk menutupi atau menghapus konten dalam file PDF. Ini adalah pilihan cerdas untuk menjaga dokumen sensitif atau resmi tetap aman."
    items: 
        # format loop 1
        - name: "Redaksi PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Format Dokumen Portabel Adobe"

        # format loop 2
        - name: "Redaksi Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Dokumen MS Word dan Open Office"
          
        # format loop 3
        - name: "Redaksi Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Spreadsheet MS Excel dan Open Office"

        # format loop 4
        - name: "Redaksi PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentasi MS PowerPoint dan Open Office"

        # format loop 5
        - name: "Redaksi DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Dokumen Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redaksi XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Spreadsheet Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redaksi PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Presentasi PowerPoint Open XML"


---