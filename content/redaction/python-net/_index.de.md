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
head_title: "Python via .NET Schwärzungs-API | Verstecken Sie privaten Text aus PDF-Word-Excel-Bildern"
head_description: "Dokumentschwärzungs-API für Python. Schwärzen, verbergen oder entfernen Sie vertrauliche Inhalte aus PDFs, Microsoft Word, Excel, Präsentationen und Rasterbildern."

############################# Header ############################
title: "Sichere klassifizierte Daten über die Schwärzungs-API"
description: "Schwärzen, verbergen oder entfernen Sie vertrauliche Inhalte und Metadaten aus Dokumenten, Arbeitsblättern, Präsentationen, PDF- und Rasterbilddateien mithilfe der Python-API."
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
              text: "Überblick"

            # button loop
            - link: "#features"
              text: "Merkmale"

            # button loop
            - link: "#support"
              text: "Support"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Preisgestaltung"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/python-net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction für Python ist eine API-Bibliothek, mit der Sie vertrauliche und klassifizierte Daten aus verschiedenen Dateiformaten wie Microsoft Word, Excel, PowerPoint und PDF löschen können. Die einzige formatunabhängige Schnittstelle unserer Schwärzungs-API unterstützt die Schwärzung verschiedener Typen, z. B. Schwärzung von Text, Schwärzung von Metadaten, Schwärzung von Anmerkungen und Schwärzung von tabellarischen Dokumenten. Mit GroupDocs.Redaction for Python via .NET API können Sie auch passwortgeschützte Dateien redigieren. Sie dürfen das Dokument in seinem Originalformat speichern sowie ein bereinigtes PDF-Dokument mit Rasterbildern der Originalseiten erstellen.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Nachfolgend finden Sie eine Übersicht über GroupDocs.Redaction für Python:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Überblick"
          content: |
            * Text schwärzen
            * Metadaten schwärzen
            * Anmerkung schwärzen
            * Tabellarisches Dokument schwärzen
            * Geschützte Dateien schwärzen
            * Anpassung
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction für Python unterstützt die folgenden [Dokumentdateiformate](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/):

        right:
          enable: true
          table:
            # table loop
            - title: "Text schwärzen, Metadata & Comments"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Fixed Layout**: PDF
                * **Raster Images**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Python via .NET unterstützt das Folgen Betriebssysteme & Paket-Managers:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Betriebssysteme"
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
              title: "Unterstützte Frameworks"
              content: |
                * .NET 6 or higher

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Paket-Manager"
              content: |
                * PyPi

            # table loop
            - icon: "fas fa-tools"
              title: "Entwicklungsumgebungen"
              content: |
                * Atom
                * Sublime
                * Microsoft Visual Code
                * Microsoft Visual Studio


############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET Merkmale"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Führen Sie eine Suche mit Berücksichtigung der Groß-/Kleinschreibung durch, um eine exakte Phrasenschwärzung zu erhalten"

      # feature loop
      - icon: "fas fa-eye"
        content: "Verwenden Sie das Farbfeld, um geschwärzten Text auszublenden, anstatt die Zeichenfolge zu ersetzen"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Suchen und schwärzen Sie jeden Text mit der Suche nach regulären Ausdrücken"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtern Sie alle oder eine beliebige Kombination von klassifizierten Metadateninformationen des Dokuments"

      # feature loop
      - icon: "fas fa-code"
        content: "Löschen Sie schnell vollständige Metadateninformationen eines bestimmten Dokuments"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Legen Sie einen Umfang der Schwärzung auf ein bestimmtes Arbeitsblatt und/oder eine bestimmte Spalte in Excel fest"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Entfernen Sie alle oder bestimmte Kommentare und andere Anmerkungen aus dem Dokument"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Suchen und entfernen Sie vertrauliche Daten aus dem Anmerkungstext"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Fähigkeit, mit Ihren eigenen Formaten und Schwärzungen zu arbeiten"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Unterstützung für Rasterbildformate und Schwärzungen von Bildbereichen"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Geben Sie eine Reihe von Schwärzungsregeln (Richtlinie) in der XML-Datei an"

      # feature loop
      - icon: "fas fa-columns"
        content: "Geben Sie den Seitenbereich und die PDF-Konformitätsstufe während der Konvertierung in PDF an"

      # feature loop
      - icon: "fas fa-file-word"
        content: "EXIF-Metadaten aus Bilddateien bearbeiten oder löschen"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Schwärzen Sie eingebettete Bilder in PDF-, Word- und Präsentationsdokumenten"

      # feature loop
      - icon: "fas fa-print"
        content: "Speichern Sie eine Schwärzungsrichtlinie als XML-Datei"

    more_feature:
      # more_feature_loop
      - title: "Schwärzen Sie Ihre klassifizierten Daten mit Leichtigkeit und Kontrolle"
        content: |
          GroupDocs.Redaction for Python via .NET API gibt Ihnen die vollständige Kontrolle darüber, wie Sie Ihre wichtigen klassifizierten Informationen aus unterstützten Dokumenten verbergen oder löschen möchten. Die Verwendung unserer Schwärzungs-API ist ziemlich einfach und unkompliziert.  

          Im folgenden Beispiel laden wir ein unterstütztes Dokument, schwärzen jeglichen Text und gleichen „2 Ziffern, Leerzeichen oder nichts, 2 Ziffern, wieder Leerzeichen und 6 Ziffern“ (z. B. 12 34 567890) mit einem blauen Farbfeld unter Verwendung von Python ab. Sobald dies erledigt ist, speichert es das Dokument in seinem ursprünglichen Format, indem es mit einem hinzugefügten Suffix „_Redacted“: umbenannt wird

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
    title: "GroupDocs.Redaction bietet APIs zum Anzeigen von Dokumenten für andere beliebte Entwicklungsumgebungen"

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