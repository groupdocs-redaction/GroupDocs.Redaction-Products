---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Redaksiyon API'si | PDF Word Excel Görüntüden hassas verileri gizle"
head_description: "Java belge redaksiyon API'si — Çeşitli redaksiyon türleri aracılığıyla PDF, Word, Excel, PowerPoint sunumlar ve raster görüntülerden kişisel verileri gizleyin."

############################# Header ############################
title: "Java API aracılığıyla Özel Bilgileri Redakt"
description: "Java redaksiyon API'sini kullanarak kişisel bilgileri ve meta verileri belgelerden, çalışma sayfalarından, sunulardan, PDF ve raster görüntü dosyalarından hariç tutun veya gizleyin."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Genel Bakış"

            # button loop
            - link: "#features"
              text: "Özellikler"

            # button loop
            - link: "#support"
              text: "Destek"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Canlı Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Fiyatlandırma"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API, geliştiricilerin Microsoft Word, Excel, PowerPoint, PDF ve resimler gibi popüler dosya biçimlerinden hassas verileri kaldırmasına olanak tanır, böylece kullanılabilir ve dağıtılabilir, ancak yine de gizli bilgileri korur. Redaksiyon kitaplığı, sosyal güvenlik numaraları, tıbbi bilgiler, parasal, tescilli, yasal ve hatta ticari ayrıntılar dahil olmak üzere her türlü sınıflandırılmış bilgiyi metin, meta veriler ve ek açıklama redaksiyon türleri aracılığıyla yeniden düzene etmek için formattan bağımsız tek bir arayüz sunar. Belgeyi orijinal biçiminde kaydetmenize ve orijinal sayfaların raster görüntüleriyle sterilize edilmiş bir PDF belge oluşturmanıza olanak tanır.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Java için GroupDocs.Redaction 'ye genel bir bakış aşağıdadır:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Genel Bakış"
          content: |
            * Redact Metni
            * Meta Verileri Redakt
            * Redact Ek Açıklama
            * Redact Tablo Belgesi
            * Korumalı Dosyaları Redakt
            * Özelleştirme
      
      ## TAB TWO ##
      tab_two:
        description: |
          Java için GroupDocs.Redaction aşağıdaki [belge dosyası formatlarını] destekler (https://docs.groupdocs.com/redaction//supported-document-formats/java):

        right:
          enable: true
          table:
            # table loop
            - title: "Metni Redakt Et, Meta Veriler ve Yorumlar"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Sabit Düzen**: PDF
                * **Raster Görüntüler**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java aşağıdaki İşletim Sistemlerini, Çerçeveler ve Paket Yöneticilerini destekler:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "İşletim Sistemleri"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * Mac OS

            # table loop
            - icon: "fas fa-code"
              title: "Desteklenen Çerçeveler"
              content: |
                * Java 7 (1.7) ve üzeri

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-cogs"
              title: "Geliştirme Ortamları"
              content: |
                * NetBeans
                * IntelliJ FİKİR
                * Tutulma

            # table loop
            - icon: "fas fa-tools"
              title: "Otomasyon Aracı Oluşturun"
              content: |
                * Maven

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Java Özellikler"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Bir arama dizesinin tam eşleşmelerini arayın ve yeniden akte edin"

      # feature loop
      - icon: "fas fa-eye"
        content: "Redaksiyon işlemini kontrol edin ve belirli eşleşmeleri atlayın"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Düzenli ifadeleri kullanarak bulun ve düzenle"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Ofis formatları ve PDF için yerleşik destek"

      # feature loop
      - icon: "fas fa-code"
        content: "Meta verileri silin veya meta veri değerlerini yeniden düzenleyin"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Redaksiyonları belirli çalışma sayfaları ve sütunlarla sınırlayın"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Ek açıklamaları kaldırın veya metinlerini yeniden akte edin"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Metinsel (muafiyet kodları) veya grafik (renkli dikdörtgenler) redaksiyonları kullanın"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Belgeyi orijinal biçiminde veya orijinal sayfaların raster görüntüleriyle PDF olarak kaydedin"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Raster görüntü formatları ve görüntü bölgesi redaksiyonları için destek"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Özel redaksiyon ve formatları uygulamak için entegrasyon arayüzü"

      # feature loop
      - icon: "fas fa-columns"
        content: "EXIF Meta Verileri Görüntü Dosyalarından Düzenleme veya Kaldırma"

      # feature loop
      - icon: "fas fa-file-word"
        content: "PDF, Word ve Sunum Belgelerinin içindeki Gömülü Görüntüleri Redakt Etme"

    more_feature:
      # more_feature_loop
      - title: "Sınıflandırılmış Verilerinizi Reddakte ederek Gizliliği Sağlayın"
        content: |
          GroupDocs.Redaction for Java kütüphane, geliştiricilerin çeşitli redaksiyon türleri kullanarak desteklenen belgelerdeki metin ve görüntüleri yeniden düzenlemelerini sağlar. Redaction API'mizi kullanmak basit ve anlaşılır.  

          Aşağıdaki kod örneği, Redaksiyon kapsamının belirli bir çalışma sayfası ve/veya sütunla sınırlandırılabileceği Microsoft Excel elektronik tablosu gibi tablo şeklinde bir belge kullanır. İkinci sütunu “Müşteriler” çalışma sayfasındaki e-postalarla redakte etmek için filtreler kullanır ve diğer tüm e-postaları belgede el değmeden bırakır.

          ```java
          // Redactor sınıfının bir örneğini oluşturma
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // Redaksiyon uygula
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

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction diğer popüler geliştirme ortamları için belge görüntüleme API'leri sunar"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-python-net.svg"
          product: "GroupDocs.Redaction"
          platform: "Python via .NET"
          link: "/redaction/python-net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---