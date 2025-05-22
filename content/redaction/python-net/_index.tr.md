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
head_title: "Python via .NET Redaksiyon API | PDF Word Excel Resimlerden Özel Metni Gizle"
head_description: "Python için belge redaksiyon API'si. PDF, Microsoft Word, Excel, sunumlar ve raster görüntülerdeki hassas içeriği redakte edin, gizleyin veya kaldırın."

############################# Header ############################
title: "Redaction API ile Sınıflandırılmış Verileri Güvence altına alın"
description: "Python API kullanarak belgelerden, çalışma sayfalarından, sunumlardan, PDF ve raster görüntü dosyalarından hassas içerik ve meta verileri düzenleyin, gizleyin veya kaldırın."
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
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Fiyatlandırma"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/python-net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Python via .NET, Microsoft Word, Excel, PowerPoint ve PDF gibi çeşitli dosya biçimlerinden hassas ve sınıflandırılmış verileri silmenize yardımcı olan bir API kitaplığıdır. Redaction API'mizin tek formattan bağımsız arayüzü, metin redaksiyonu, meta veri redaksiyonu, ek açıklama redaksiyonu ve tablo şeklindeki belge redaksiyonu gibi çeşitli türlerde redaksiyonu destekler. GroupDocs.Redaction for Python via .NET API ayrıca parola korumalı dosyaları yeniden düzenlemenizi sağlar. Belgeyi orijinal biçiminde kaydetmenize ve orijinal sayfaların raster görüntüleriyle sterilize edilmiş bir PDF belge oluşturmanıza izin verilir.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Python için GroupDocs.Redaction 'ye genel bir bakış aşağıdadır:
      
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
          Python için GroupDocs.Redaction aşağıdaki [belge dosyası formatlarını] destekler (https://docs.groupdocs.com/redaction/python-net/supported-document-formats)

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
          GroupDocs.Redaction for Python via .NET aşağıdaki İşletim Sistemlerini, Çerçeveler ve Paket Yöneticilerini destekler:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "İşletim Sistemleri"
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
              title: "Desteklenen Çerçeveler"
              content: |
                * .NET 6 or higher

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Paket Yöneticisi"
              content: |
                * PyPi

            # table loop
            - icon: "fas fa-tools"
              title: "Geliştirme Ortamları"
              content: |
                * Atom
                * Sublime
                * Microsoft Visual Code
                * Microsoft Visual Studio


############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET Özellikler"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Tam kelime öbeği redaksiyonu için büyük/küçük harfe duyarlı arama yapın"

      # feature loop
      - icon: "fas fa-eye"
        content: "Dize değiştirme yerine düzeltilmiş metni gizlemek için renk kutusunu kullanın"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Normal ifade aramasını kullanarak herhangi bir metni bulun ve düzenleyin"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Belgenin sınıflandırılmış meta veri bilgilerinin tümünü veya herhangi bir kombinasyonunu filtreleyin"

      # feature loop
      - icon: "fas fa-code"
        content: "Belirli bir belgenin tüm meta veri bilgilerini hızla silin"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Excel içindeki belirli bir çalışma sayfasına ve/veya sütuna redaksiyonun kapsamını ayarlayın"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Belgedeki tüm veya belirli yorumları ve diğer ek açıklamaları kaldırın"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Ek açıklama metninden hassas verileri arayın ve kaldırın"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Kendi formatlarınız ve redaksiyonlarınızla çalışabilme"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Raster görüntü formatları ve görüntü bölgesi redaksiyonları için destek"

      # feature loop
      - icon: "fas fa-wrench"
        content: "XML dosyasında bir dizi redaksiyon kuralı (ilke) belirtin"

      # feature loop
      - icon: "fas fa-columns"
        content: "PDF 'e Dönüştürme sırasında Sayfa Aralığını ve PDF Uyumluluk Düzeyini Belirtin"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Resim Dosyalarından EXIF Meta Verileri Düzenleme veya Silme"

      # feature loop
      - icon: "fas fa-envelope"
        content: "PDF, Word ve Sunum Belgelerinin içindeki Gömülü Görüntüleri Redakt Etme"

      # feature loop
      - icon: "fas fa-print"
        content: "Redaksiyon İlkesini XML Dosyası Olarak Kaydetme"

    more_feature:
      # more_feature_loop
      - title: "Sınıflandırılmış Verilerinizi Kolaylıkla Redakte Edin & Kontrol"
        content: |
          GroupDocs.Redaction for Python via .NET API, önemli sınıflandırılmış bilgilerinizi desteklenen belgeden nasıl gizlemek veya silmek istediğinizi tam olarak kontrol etmenizi sağlar. Redaction API'mizi kullanmak oldukça basit ve basittir.  

          Aşağıdaki örnekte, desteklenen bir belgeyi yükleyip, Python kullanarak “2 basamak, boşluk veya hiçbir şey, 2 basamak, yine boşluk ve 6 basamak” (12 34 567890 gibi) ile eşleşen herhangi bir metni çıkarıyoruz. Bu yapıldıktan sonra, ek bir “Redacted” son ekiyle yeniden adlandırarak belgeyi orijinal biçiminde kaydeder:

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
    title: "GroupDocs.Redaction diğer popüler geliştirme ortamları için belge görüntüleme API'leri sunar"

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