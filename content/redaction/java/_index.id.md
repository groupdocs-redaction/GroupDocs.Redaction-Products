---
layout: "product"
date: 2022-07-07T12:44:18+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

head_title: "API Redaksi Java | Sembunyikan data sensitif dari PDF Word Excel Image"
head_description: "API redaksi dokumen Java – Sembunyikan data pribadi dari presentasi PDF, Word, Excel, PowerPoint & gambar raster melalui berbagai jenis redaksi."

title: "Redact Informasi Pribadi melalui Java API"
description: "Kecualikan atau sembunyikan informasi & metadata pribadi dari dokumen, lembar kerja, presentasi, PDF, dan file gambar raster menggunakan API redaksi Java."
button:
    enable: true

submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            - link: "#overview"
              text: "Ringkasan"

            - link: "#features"
              text: "Fitur"

            - link: "#support"
              text: "Mendukung"

            - link: "https://products.groupdocs.app/redaction"
              text: "Demo Langsung"

            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Harga"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API memungkinkan pengembang menghapus data sensitif dari format file populer seperti Microsoft Word, Excel, PowerPoint, PDF, dan gambar sehingga dapat digunakan dan didistribusikan, namun tetap melindungi informasi rahasia juga. Pustaka redaksi menawarkan antarmuka format-independen tunggal untuk menyunting semua jenis informasi rahasia termasuk nomor jaminan sosial, informasi medis, keuangan, kepemilikan, hukum, atau bahkan detail perdagangan melalui teks, metadata, dan jenis redaksi anotasi. Ini memungkinkan Anda untuk menyimpan dokumen dalam format aslinya dan membuat dokumen PDF yang disanitasi dengan gambar raster dari halaman asli.
    tabs:
      enable: true     
      
      tab_one:
        description: |
          Berikut ini adalah ikhtisar GroupDocs.Redaction untuk Java:

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
      
      tab_two:
        description: |
          GroupDocs.Redaction untuk Java mendukung [format file dokumen](https://docs.groupdocs.com/redaction/java/supported-document-formats/ berikut):

        right:
          enable: true
          table:
            - title: "Redact Teks, Metadata & Komentar"
              content: |
                * **Kata**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Tata Letak Tetap**: PDF
                * **Gambar Raster**: JPG, BMP, PNG, GIF, TIFF

      tab_three:
        description: |
          GroupDocs.Redaction untuk Java mendukung Sistem Operasi, Kerangka Kerja & Manajer Paket berikut:
        
        left:
          enable: true
          table:
            - icon: "fab fa-windows"
              title: "Sistem operasi"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * MacOS

            - icon: "fas fa-code"
              title: "Kerangka yang Didukung"
              content: |
                * Java 7 (1.7) ke atas

        right:
          enable: true
          table:
            - icon: "fas fa-cogs"
              title: "Lingkungan Pengembangan"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Eclipse
            - icon: "fas fa-tools"
              title: "Bangun Alat Otomatisasi"
              content: |
                * Maven

features:
    enable: true
    title: "GroupDocs.Redaction untuk Fitur Java"

    feature:
      - icon: "fas fa-copy"
        content: "Cari dan edit kecocokan persis dari string pencarian"

      - icon: "fas fa-eye"
        content: "Kontrol proses redaksi dan lewati pertandingan tertentu"

      - icon: "fas fa-bolt"
        content: "Cari dan edit menggunakan ekspresi reguler"
      
      - icon: "fas fa-file-powerpoint"
        content: "Dukungan bawaan untuk format kantor dan PDF"

      - icon: "fas fa-code"
        content: "Hapus metadata atau edit nilai metadata"

      - icon: "fas fa-cloud"
        content: "Batasi redaksi pada lembar kerja dan kolom tertentu"

      - icon: "fas fa-remove-format"
        content: "Hapus anotasi atau edit teksnya"

      - icon: "fas fa-comment-slash"
        content: "Gunakan redaksi tekstual (kode pengecualian) atau grafis (persegi panjang berwarna)"

      - icon: "fas fa-location-arrow"
        content: "Simpan dokumen dalam format aslinya atau sebagai PDF dengan gambar raster dari halaman asli"

      - icon: "fas fa-border-all"
        content: "Dukungan untuk format gambar raster dan redaksi wilayah gambar"

      - icon: "fas fa-wrench"
        content: "Antarmuka integrasi untuk mengimplementasikan redaksi dan format khusus"

      - icon: "fas fa-columns"
        content: "Edit atau Hapus Metadata EXIF dari File Gambar"

      - icon: "fas fa-file-word"
        content: "Redact Gambar Tersemat di dalam Dokumen PDF, Word & Presentasi"

    more_feature:
      - title: "Pastikan Privasi dengan Redacting Data Rahasia Anda"
        content: |
          GroupDocs.Redaction for Java library memberdayakan pengembang untuk menyunting teks dan gambar dari dokumen yang didukung dengan menggunakan berbagai jenis redaksi. Untuk menggunakan Redaction API kami sederhana dan mudah.  

          Contoh kode berikut menggunakan dokumen tabular seperti lembar bentang Microsoft Excel di mana ruang lingkup redaksi dapat dibatasi pada lembar kerja dan/atau kolom tertentu. Ini menggunakan filter untuk menyunting kolom kedua dengan email pada lembar kerja "Pelanggan", membiarkan semua email lain tidak tersentuh dalam dokumen.
          
          ```java
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
          ```

support:
    enable: true

solutions:
    enable: true
    title: "GroupDocs.Redaction menawarkan API tampilan dokumen untuk lingkungan pengembangan populer lainnya"

    solution:
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

back_to_top:
  enable: true
---
