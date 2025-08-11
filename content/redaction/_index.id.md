---
############################# Static ############################
layout: "family"
date:  2025-08-11T19:33:03
draft: false

product: "Redaction"
product_tag: "redaction"

lang: id

############################# Head ############################
head_title: "Solusi Redaksi Dokumen. Edit atau hapus data sensitif."
head_description: "Hapus, redaksi, atau sembunyikan teks, gambar, atau metadata dalam file PDF, dokumen Word, spreadsheet Excel, presentasi PowerPoint, gambar, dan lainnya. Gunakan perpustakaan kami dalam aplikasi .NET, Java, Python, atau berbasis cloud Anda."

############################# Header ############################
title: "Perpustakaan Redaksi Dokumen"
description:  |
  Sembunyikan atau hapus informasi pribadi dari berbagai jenis file.

  Edit teks atau gambar untuk menghilangkan konten sensitif.

  Kelola metadata file menggunakan fitur canggih kami.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Pilih Platform Anda"
  title: "Independensi Platform"
  description: "Perpustakaan GroupDocs.Redaction mendukung sistem operasi dan kerangka kerja berikut:"
  details_link_title: "Pelajari lebih lanjut"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    .NET Framework 4.6.2 or higher <br> .NET Core 3.1 or higher
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction Dalam Sekilas"
  description: "Solusi untuk mengelola konten dalam file PDF, dokumen Office, gambar, dan file bisnis lainnya."

  items:
    # items loop
    - icon: "text"
      title: "Hapus atau Edit Teks"
      content: "Temukan dan redaksi teks sensitif dalam dokumen Anda."

    # items loop
    - icon: "image"
      title: "Redaksi Gambar"
      content: "Sembunyikan area gambar dalam file Anda tanpa usaha tambahan."

    # items loop
    - icon: "template"
      title: "Kelola Metadata"
      content: "Hapus atau ganti metadata seperti pengarang dalam dokumen Word atau data EXIF dalam gambar."

    # items loop
    - icon: "pdf"
      title: "Fitur Canggih"
      content: "Cari data untuk direduksi menggunakan ekspresi reguler atau integrasi AI."

############################# Code samples ############################
code_samples:
  enable: true
  title: "Contoh Kode GroupDocs.Redaction"
  description: "Kasus penggunaan tipikal operasi redaksi GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Cara Meredaksi Teks dalam Dokumen PDF"
      content: |
       GroupDocs.Redaction adalah solusi terbaik untuk meredaksi teks dalam dokumen Anda hanya dengan beberapa langkah.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Pass file path yang akan direduksi ke instance Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Berikan opsi redaksi
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redaksi dan simpan hasilnya
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Pass file path yang akan direduksi ke instance Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Berikan opsi redaksi
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redaksi dan simpan hasilnya
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # Pass file path yang akan direduksi ke instance Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Berikan opsi redaksi
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Redaksi dan simpan hasilnya
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30+ Format File Didukung"
  description: "GroupDocs.Redaction mendukung operasi redaksi di semua format file bisnis yang umum digunakan."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Pencapaian"
  description: "Temukan Metrik Kunci Yang Menyoroti Keberhasilan Perpustakaan Kami"

  items:
    # items loop
    - number: "30+"
      title: "Format yang Didukung"
      content: "GroupDocs.Redaction mendukung operasi dengan lebih dari 30 format file yang umum digunakan."

    # items loop
    - number: "440k"
      title: "Unduhan NuGet"
      content: "GroupDocs.Redaction untuk .NET telah diunduh lebih dari 440.000 kali dari NuGet."

    # items loop
    - number: "12k"
      title: "Unduhan Maven"
      content: "GroupDocs.Redaction memiliki lebih dari 12.000 unduhan di Maven, menawarkan fitur redaksi Java yang kuat."

    # items loop
    - number: "140+"
      title: "Pelanggan Puas"
      content: "Baik perusahaan global maupun pengembang individu mengandalkan produk GroupDocs untuk membangun solusi inovatif."


############################# Customers ###############################
customers:
  enable: true
  title: "Pelanggan Kami yang Puas"
  description: "Perpustakaan GroupDocs dipercaya oleh merek-merek yang diakui dan dihormati secara global."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "Siap untuk Memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis di platform Anda."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "Pertanyaan yang Sering Diajukan"
  description: "Jawaban untuk pertanyaan yang paling umum diajukan."

  items:
    # items loop
    - question: "Apakah perpustakaan GroupDocs.Redaction memerlukan perangkat lunak pihak ketiga untuk memanipulasi dokumen?"
      answer: "GroupDocs.Redaction tidak memerlukan perangkat lunak eksternal seperti Adobe Acrobat, Microsoft Office, atau lainnya."

    # items loop
    - question: "Bisakah saya mencoba perpustakaan GroupDocs.Redaction sebelum membeli?"
      answer: "Ya, Anda dapat mencoba GroupDocs.Redaction tanpa membeli lisensi. Ini berfungsi dalam mode percobaan, yang menambahkan lencana percobaan dan membatasi output ke halaman pertama 3. Untuk menguji tanpa batasan, minta lisensi sementara selama 30 hari. Untuk informasi lebih lanjut, [lihat](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Opsi lisensi apa yang tersedia?"
      answer: "Kami menawarkan beberapa jenis lisensi berdasarkan kebutuhan pengembangan dan distribusi Anda. Ini termasuk lisensi berbasis pengembang, berbasis situs, dan lisensi Metered tergantung pada penggunaan. Pelajari lebih lanjut [di sini](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction API Low-Code"
  description: "Integrasikan redaksi dokumen ke dalam aplikasi apa pun menggunakan API REST berbasis cloud kami."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Gunakan perintah cURL dengan API Cloud RESTful kami untuk meredaksi dokumen dalam berbagai format file yang didukung."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Ekstrak gambar, teks, dan metadata atau redaksi dokumen menggunakan template dalam aplikasi Microsoft .NET."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "SDK Java untuk meredaksi dokumen dan mengekstrak data dalam aplikasi berbasis Java Anda."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction Aplikasi Tanpa Kode"
  description: "Aplikasi berbasis web yang memungkinkan Anda meredaksi lebih dari 30 format file populer langsung di browser Anda."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Alat online gratis untuk meredaksi Word, Excel, PowerPoint, PDF, dan lebih dari 30 jenis file lainnya."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Redaksi dokumen Word di browser Anda dan ekstrak gambar, teks, atau metadata."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Alat redaksi PDF gratis yang berfungsi di perangkat atau platform apa pun tanpa batasan."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---